//
//  OverdoTagHelper().swift

import Foundation
import UIKit

@objc public enum ParseTagTextType: UInt {
    case ParseTagTextType_Normal = 0
    case ParseTagTextType_Tip
}

private let kJumpInfo = "jumpInfo"

/// 解析带有html标签的文本
@objcMembers public class OverdoTagHelper: NSObject {

    public var type: ParseTagTextType = .ParseTagTextType_Normal
    public var colorHex: String?
    public var containImg: Bool = false
    public var content: String = ""
    public var jumps: [Any] = []

    public var jumpActionBlock: (([String: Any]) -> Void)?

    // MARK: - 私有属性
    private var _pure_content: String?
    private var _contentTextAttrString: NSMutableAttributedString?
    private var _contentAttrArray: NSMutableArray?
    private var _jumpArray: NSMutableArray?

    // MARK: - 计算属性
    private var pure_content: String {
        if _pure_content == nil {
            analysisContent()
        }
        return _pure_content ?? ""
    }

    // MARK: - 方法实现
    private func analysisContent() {
        if _contentAttrArray == nil || _pure_content == nil {
            _contentAttrArray = NSMutableArray()
            _pure_content = parseXML(
                source: self.content, into: _contentAttrArray!)
        }
    }

    public func contentParse(
        withFontSize fontSize: CGFloat, insert insertString: String?,
        atIndex loc: UInt
    ) -> NSMutableAttributedString {

        if let _contentTextAttrString = _contentTextAttrString {
            return _contentTextAttrString
        }

        analysisContent()
        return rendering(
            attrArray: _contentAttrArray!, fontSize: fontSize,
            insert: insertString, atIndex: loc)
    }

    private func rendering(
        attrArray: NSMutableArray, fontSize: CGFloat,
        insert insertString: String?, atIndex loc: UInt
    ) -> NSMutableAttributedString {

        let textAttributedString = NSMutableAttributedString()

        var font = UIFont.systemFont(ofSize: fontSize)
        textAttributedString.append(NSAttributedString(string: " "))

        for textInfo in attrArray {
            guard let textInfoDict = textInfo as? [String: Any] else {
                continue
            }

            let type = textInfoDict["type"] as? String ?? ""

            if type.lowercased() == "text" {

                let text = textInfoDict["text"] as? String ?? ""
                let isB = textInfoDict["b"] as? Bool ?? false
                let attr = textInfoDict["attr"] as? [String: Any] ?? [:]

                var textColor: UIColor?
                if let colorStr = attr["color"] as? String {
                    textColor = UIColor(hexString: colorStr)
                }
                let underLine = attr["underLine"] as? Bool ?? false

                if isB {
                    font = UIFont.boldSystemFont(ofSize: fontSize)
                } else {
                    font = UIFont.systemFont(ofSize: fontSize)
                }

                if let infoFont = attr["font"] as? UIFont {
                    font = infoFont
                }

                var attributes: [NSAttributedString.Key: Any] = [
                    NSAttributedString.Key.font: font
                ]
                if let textColor = textColor {
                    attributes[NSAttributedString.Key.foregroundColor] =
                        textColor
                }
                if underLine {
                    attributes[NSAttributedString.Key.underlineStyle] =
                        NSUnderlineStyle.single.rawValue
                }

                if !text.isEmpty {
                    let attText = NSMutableAttributedString(
                        string: text, attributes: attributes)

                    if let jumpInfo = attr[kJumpInfo] as? [String: Any] {
                        attText.yy_setTextHighlight(
                            NSRange(location: 0, length: attText.length),
                            color: nil, backgroundColor: nil
                        ) { [weak self] (containerView, text, range, rect) in
                            self?.jumpActionBlock?(jumpInfo)
                        }
                    }

                    textAttributedString.append(attText)
                }

            } else if type.lowercased() == "img" {

                if self.containImg {

                    let width = max(180, UserTextMacroDefine.requestFor() - 150)
                    let height = 94.0 / 230.0 * width
                    let imgUrl = textInfoDict["name"] as? String ?? ""

                    let imageView = UIImageView()
                    imageView.bounds = CGRect(
                        x: 0, y: 0, width: width, height: height)
                    imageView.clipsToBounds = true
                    imageView.setUrlImage(
                        urlStr: imgUrl, placeImg: nil, loadFinish: nil)

                    let imageAtt =
                        NSMutableAttributedString.yy_attachmentString(
                            withContent: imageView,
                            contentMode: .scaleAspectFill,
                            attachmentSize: CGSize(
                                width: width, height: height),
                            alignTo: UIFont.systemFont(ofSize: 15),
                            alignment: .center)

                    textAttributedString.append(imageAtt)
                }
            }
        }

        if let insertString = insertString, !insertString.isEmpty {
            textAttributedString.insert(
                NSAttributedString(
                    string: insertString,
                    attributes: [NSAttributedString.Key.font: font]),
                at: Int(loc))
        }

        textAttributedString.append(NSAttributedString(string: "\u{202C}"))
        _contentTextAttrString = textAttributedString
        return _contentTextAttrString!
    }

    private func parseXML(source: String, into attrArray: NSMutableArray)
        -> String
    {

        do {
            let document = try ONOXMLDocument(
                string: "<_>\(source)</_>",
                encoding: CFStringConvertEncodingToNSStringEncoding(
                    CFStringBuiltInEncodings.UTF8.rawValue))

            guard let element = document.rootElement else {
                return source
            }

            parse(
                element: element, into: attrArray, defaultB: false,
                defaultAttr: [:])

            var retStr = ""
            let childrenElements = element.children as NSArray

            if childrenElements.count == 0 {
                retStr = ""
            } else {
                var hasTitle = false

                for aChildEle in childrenElements {
                    guard let childElement = aChildEle as? ONOXMLElement else {
                        continue
                    }

                    if childElement.tag == "title" {
                        retStr = retStr + (childElement.stringValue() ?? "")
                        hasTitle = true
                    } else if childElement.tag == "img" {
                        retStr = retStr + "[图片]"
                    } else if childElement.tag == "content" {
                        if !hasTitle {  // 需求：有标题时不展示内容信息
                            retStr = retStr + (childElement.stringValue() ?? "")
                        }
                    } else {
                        retStr = retStr + (childElement.stringValue() ?? "")
                    }
                }
            }

            // 消息的纯文本显示信息
            let result =
                !retStr.isEmpty
                ? retStr.replacingOccurrences(of: "\n", with: " ")
                : (element.stringValue() ?? "")
            return result

        } catch {
            print("[Error] \(error)")
            attrArray.add(["text": source, "b": false])
            return source
        }
    }

    private func parse(
        element: ONOXMLElement, into attrArray: NSMutableArray,
        defaultB isB: Bool, defaultAttr: [String: Any]
    ) {

        var newIsB = isB
        if element.tag == "b" {
            newIsB = true
        }

        let children = element.children as NSArray
        var mDefaultAttr = defaultAttr

        if let color = element.value(forAttribute: "color") as? String {
            mDefaultAttr["color"] = color
        } else if mDefaultAttr["color"] == nil {
            if self.type == .ParseTagTextType_Normal {
                mDefaultAttr["color"] = self.colorHex ?? "#333333"
            } else {
                mDefaultAttr["color"] = "#FFFFFF"
            }
        }

        if element.tag.lowercased() == "u" {
            mDefaultAttr["u"] = true
            mDefaultAttr["underLine"] = true
        }

        if let underLine = element.value(forAttribute: "underLine") as? String {
            mDefaultAttr["underLine"] = underLine
        }

        if element.tag.lowercased() == "jump" {
            if let color = element.value(forAttribute: "color") as? String {
                mDefaultAttr["color"] = color
            } else {
                mDefaultAttr["color"] = "#0084FF"
            }

            if _jumpArray == nil && !self.jumps.isEmpty {
                _jumpArray = NSMutableArray()
                _jumpArray?.addObjects(from: self.jumps)
            }

            if let jumpArray = _jumpArray, jumpArray.count > 0 {
                mDefaultAttr[kJumpInfo] = jumpArray[0]
                jumpArray.removeObject(at: 0)
            }
        }

        if children.count > 0 {
            for child in children {
                if let childElement = child as? ONOXMLElement {
                    parse(
                        element: childElement, into: attrArray,
                        defaultB: newIsB, defaultAttr: mDefaultAttr)
                }
            }
        } else {
            let text = element.stringValue() ?? ""
            let eleTag = element.parent?.tag ?? ""

            if eleTag == "title" {
                var attributes = mDefaultAttr
                attributes["font"] = UIFont.systemFont(
                    ofSize: 16, weight: .regular)
                if mDefaultAttr["color"] == nil {
                    attributes["color"] = "#333333"
                }

                attrArray.add([
                    "type": "text",
                    "text": "\(text)\n",
                    "attr": attributes,
                ])

            } else if eleTag == "img" {
                let imgInfo: [String: Any] = [
                    "type": "img",
                    "name": element.stringValue() ?? "",
                    "maxFont": UIFont.systemFont(ofSize: 16, weight: .regular),
                    "size": NSValue(cgSize: CGSize.zero),
                    "margin": NSValue(uiEdgeInsets: UIEdgeInsets.zero),
                ]

                if !imgInfo.isEmpty && !(element.stringValue() ?? "").isEmpty {
                    if attrArray.count > 0 {
                        if let preInfo = attrArray.lastObject as? [String: Any],
                            let preText = preInfo["text"] as? String,
                            !preText.isEmpty && !preText.hasSuffix("\n")
                        {

                            var attributes = mDefaultAttr
                            attributes["font"] = UIFont.systemFont(
                                ofSize: 3, weight: .thin)
                            attrArray.add([
                                "type": "text",
                                "text": "\n\n",
                                "attr": attributes,
                            ])
                        }
                    }

                    attrArray.add(imgInfo)
                    containImg = true
                }

            } else {
                if !text.isEmpty {
                    attrArray.add([
                        "type": "text",
                        "text": text,
                        "attr": mDefaultAttr,
                    ])
                }
            }
        }
    }
}
