
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_showMsg:[UInt8] = [0x29,0x2e,0x29,0x34,0x68,0x23,0x2f,0x24,0x25,0x32,0x7a,0x69,0x60,0x28,0x21,0x33,0x60,0x2e,0x2f,0x34,0x60,0x22,0x25,0x25,0x2e,0x60,0x29,0x2d,0x30,0x2c,0x25,0x2d,0x25,0x2e,0x34,0x25,0x24]

private func fromSelfTag(increase num: UInt8) -> UInt8 {
    return num ^ 64
}

/*: "[未知消息]" :*/
fileprivate let kBeginTitle:[Character] = ["[","未","知","消","息","]"]

/*: "extra" :*/
fileprivate let kMakeKey:String = "completetra"

/*: "</at> " :*/
fileprivate let kCharmId:String = "<"
fileprivate let kRawUrl:String = "/at> equal bottom mode model in"

/*: "#0084FF" :*/
fileprivate let kAttributePath:String = "#0084FFcount gift product user"

/*: "#FFEE4B" :*/
fileprivate let kInfoStr:String = "#FFEEfrom type name"
fileprivate let k_sizeIntervalData:String = "button if manager content any4B"

/*: "<at>@[\\S\\s]+?</at>" :*/
fileprivate let kIndexData:[Character] = ["<","a","t",">","@","["]
fileprivate let kValueMsg:String = "\\S\\"
fileprivate let k_picFormat:[Character] = ["s","]","+","?","<","/","a","t",">"]

/*: "jumpKey" :*/
fileprivate let kSectionData:[Character] = ["j","u","m","p","K","e","y"]

/*: "user" :*/
fileprivate let kEqualValue:String = "uselist"

/*: "uid" :*/
fileprivate let kPathData:[UInt8] = [0xf1,0xe5,0xe0]

fileprivate func blackArray(sound num: UInt8) -> UInt8 {
    let value = Int(num) + 132
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "#16D073" :*/
fileprivate let kMakeMsg:[Character] = ["#"]
fileprivate let kCurrentAppId:[Character] = ["1","6","D","0","7","3"]

/*: "#F95644" :*/
fileprivate let k_valueText:[Character] = ["#","F","9","5","6","4","4"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToModelCellData.swift
//  AbroadTalking
//
//  Created by young on 2023/4/7.
//

//: import UIKit
import UIKit

//: typealias GroupAtBlock = (_ uid: Int) -> Void
typealias GroupAtBlock = (_ uid: Int) -> Void

//: @objcMembers public class ToModelCellData: TalkingChatMsgBaseCellData {
@objcMembers public class ToModelCellData: GroupReactiveCompatible {
    //: var textColor: UIColor?
    var textColor: UIColor?
    //: let textFont = UIFont.pingfangRugularFont(fontSize: 16)
    let textFont = UIFont.targetFor(fontSize: 16)
    //: var textSize = CGSize.zero
    var textSize = CGSize.zero
    //: var textOrigin = CGPoint.zero
    var textOrigin = CGPoint.zero
    //: var atBlock: GroupAtBlock?
    var atBlock: GroupAtBlock?
    //: @objc var contentStr: String?
    var contentStr: String?
    //: var transTextSize = CGSize.zero
    var transTextSize = CGSize.zero
    /// 获取翻译内容富文本（get）
    //: var transAttrString: NSMutableAttributedString {
    var transAttrString: NSMutableAttributedString {
        //: let attr = formatTextTransMsgString()
        let attr = quantityImage()
        //: return attr
        return attr
    }

    //: override public init(direction: TMsgDirection) {
    override public init(direction: UserAppMeasurable) {
        //: super.init(direction: direction)
        super.init(direction: direction)
        //: if direction == .MsgDirectionIncoming {
        if direction == .MsgDirectionIncoming {
            //: textColor = UIColor.colorStatuteNameApp()
            textColor = UIColor.colorStatuteNameApp()
            //: }else {
        } else {
            //: textColor = UIColor.white
            textColor = UIColor.white
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_showMsg.map{fromSelfTag(increase: $0)}, encoding: .utf8)!)
    }

    //: public override var msgModel: AbTalkingChatMsgBaseModel {
    override public var msgModel: ContentModel {
        //: get {
        get {
            //: return super.msgModel
            return super.msgModel
        }
        //: set {
        set {
            //: super.msgModel = newValue
            super.msgModel = newValue
            //: if newValue.msgInfo.content.isEmptyString {
            if newValue.msgInfo.content.isEmptyString {
                //: contentStr = "[未知消息]"
                contentStr = (String(kBeginTitle))
                //: }else {
            } else {
                //: contentStr = newValue.msgInfo.content
                contentStr = newValue.msgInfo.content
            }
        }
    }

    //: public override func voiceOver() -> CGSize {
    override public func voiceOver() -> CGSize {
        //: let maxWidth = ScreenWidth - (25 + self.cellLayout.avatarSize.width) * 2 - 44
        let maxWidth = constFormalContent - (25 + self.cellLayout.avatarSize.width) * 2 - 44
        //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: maxWidth - 20, height: CGFLOAT_MAX), text: self.contentAttrString)
        let yyLayout = YYTextLayout(containerSize: CGSize(width: maxWidth - 20, height: CGFLOAT_MAX), text: self.contentAttrString)
        //: let yySize = yyLayout?.textBoundingRect.size ?? .zero
        let yySize = yyLayout?.textBoundingRect.size ?? .zero
        //: var temTextSize = CGSize(width: ceil(yySize.width), height: ceil(yySize.height))
        var temTextSize = CGSize(width: ceil(yySize.width), height: ceil(yySize.height))
        //: self.textSize = temTextSize
        self.textSize = temTextSize
        //: self.textOrigin = CGPoint(x: self.cellLayout.bubbleInsets.left, y: self.cellLayout.bubbleInsets.top)
        self.textOrigin = CGPoint(x: self.cellLayout.bubbleInsets.left, y: self.cellLayout.bubbleInsets.top)

        //: if self.translateStatus != .MsgTranslate_init {
        if self.translateStatus != .MsgTranslate_init {
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: maxWidth-20, height: CGFLOAT_MAX), text: self.transAttrString)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: maxWidth - 20, height: CGFLOAT_MAX), text: self.transAttrString)
            //: let transTextSize = yyLayout?.textBoundingSize ?? CGSize.zero
            let transTextSize = yyLayout?.textBoundingSize ?? CGSize.zero
            //: self.transTextSize = transTextSize
            self.transTextSize = transTextSize
        }

        //: temTextSize.height += self.cellLayout.bubbleInsets.top+self.cellLayout.bubbleInsets.bottom
        temTextSize.height += self.cellLayout.bubbleInsets.top + self.cellLayout.bubbleInsets.bottom
        //: temTextSize.width += self.cellLayout.bubbleInsets.left+self.cellLayout.bubbleInsets.right
        temTextSize.width += self.cellLayout.bubbleInsets.left + self.cellLayout.bubbleInsets.right
        //: return CGSize(width: max(60, temTextSize.width), height: temTextSize.height)
        return CGSize(width: max(60, temTextSize.width), height: temTextSize.height)
    }

    //: public override func pathDetail(_ width: CGFloat) -> CGFloat {
    override public func pathDetail(_: CGFloat) -> CGFloat {
        //: var cellHeight = self.cellLayout.messageInsets.top
        var cellHeight = self.cellLayout.messageInsets.top // 气泡与顶部的距离
        //: let containerSize = self.voiceOver()
        let containerSize = self.voiceOver() // 实际气泡的高度
        //: cellHeight += containerSize.height
        cellHeight += containerSize.height
        //: cellHeight += self.cellLayout.messageInsets.bottom
        cellHeight += self.cellLayout.messageInsets.bottom // 气泡与底部的距离

        //: if self.showName {
        if self.showName {
            //: cellHeight += 22
            cellHeight += 22
        }
        //: if self.transTextSize.height > 0 {
        if self.transTextSize.height > 0 {
            //: cellHeight += (self.transTextSize.height + 10)
            cellHeight += (self.transTextSize.height + 10)
        }
        //: return max(65, cellHeight)
        return max(65, cellHeight)
    }

    //: public lazy var contentAttrString: NSMutableAttributedString = {
    public lazy var contentAttrString: NSMutableAttributedString = {
        //: let attr = formatTextMsgString(msgInfoModel: self.msgModel.msgInfo)
        let attr = speedy(msgInfoModel: self.msgModel.msgInfo)
        //: return attr
        return attr
        //: }()
    }()

    //: func formatTextMsgString(msgInfoModel: AbTalkingChatMsgInfoModel) -> NSMutableAttributedString {
    func speedy(msgInfoModel: WithSizeModel) -> NSMutableAttributedString {
        //: if msgInfoModel.content.isEmptyString {
        if msgInfoModel.content.isEmptyString {
            //: return NSMutableAttributedString.init(string: "")
            return NSMutableAttributedString(string: "")
        }

        //: let dic = DistrictManagerReactiveCompatible.parseTXMessageData(data: self.innerMessage.customElem.data)
        let dic = DistrictManagerReactiveCompatible.productData(data: self.innerMessage.customElem.data)
        //: guard dic["extra"] is Dictionary<String, Any> else {
        guard dic[(kMakeKey.replacingOccurrences(of: "complete", with: "ex"))] is [String: Any] else {
            //: return NSMutableAttributedString.init(string: "")
            return NSMutableAttributedString(string: "")
        }

        //: var text = msgInfoModel.content
        var text = msgInfoModel.content
        //: let hasAtEnd = msgInfoModel.content.hasSuffix("</at> ")
        let hasAtEnd = msgInfoModel.content.hasSuffix("</at> ")
        //: if hasAtEnd {
        if hasAtEnd { // 去掉最后@的空格
            //: text = (text as NSString).replacingCharacters(in: NSRange(location: text.count - 1, length: 1), with: "")
            text = (text as NSString).replacingCharacters(in: NSRange(location: text.count - 1, length: 1), with: "")
        }

        //: var attr = NSMutableAttributedString(string: text)
        var attr = NSMutableAttributedString(string: text)
        //: let textColor = (self.direction == .MsgDirectionIncoming) ? UIColor.colorStatuteNameApp() : .white
        let textColor = (self.direction == .MsgDirectionIncoming) ? UIColor.colorStatuteNameApp() : .white
        //: let atColor = (self.direction == .MsgDirectionIncoming) ? UIColor(hex: "#0084FF")! : UIColor(hex: "#FFEE4B")!
        let atColor = (self.direction == .MsgDirectionIncoming) ? UIColor(hex: (String(kAttributePath.prefix(7))))! : UIColor(hex: (String(kInfoStr.prefix(5)) + String(k_sizeIntervalData.suffix(2))))!
        //: let font = UIFont.pingfangRugularFont(fontSize: 16)
        let font = UIFont.targetFor(fontSize: 16)
        //: attr.addAttributes([.foregroundColor: textColor, .font: font], range: NSRange(location: 0, length: attr.string.utf16.count))
        attr.addAttributes([.foregroundColor: textColor, .font: font], range: NSRange(location: 0, length: attr.string.utf16.count))

        // 有@消息
        //: guard msgInfoModel.jumps.count > 0 else { return attr }
        guard msgInfoModel.jumps.count > 0 else { return attr }
        //: let regex = try! NSRegularExpression(pattern: "<at>@[\\S\\s]+?</at>", options: [])
        let regex = try! NSRegularExpression(pattern: (String(kIndexData) + kValueMsg + String(k_picFormat)), options: [])
        //: let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
        let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
        //: attr = NSMutableAttributedString()
        attr = NSMutableAttributedString()
        //: let string = NSMutableString()
        let string = NSMutableString()
        //: var startLocation = 0
        var startLocation = 0
        //: var rangeArr: [NSValue] = []
        var rangeArr: [NSValue] = []
        //: for match in result {
        for match in result {
            //: let matchRange = match.range
            let matchRange = match.range
            //: if startLocation < matchRange.location {
            if startLocation < matchRange.location {
                //: let subStr = (text as NSString).substring(with: NSRange(location: startLocation, length: matchRange.location-startLocation))
                let subStr = (text as NSString).substring(with: NSRange(location: startLocation, length: matchRange.location - startLocation))
                //: let norStr = NSAttributedString(string: subStr, attributes: [.foregroundColor: textColor, .font: font])
                let norStr = NSAttributedString(string: subStr, attributes: [.foregroundColor: textColor, .font: font])
                //: attr.append(norStr)
                attr.append(norStr)
                //: string.append(subStr)
                string.append(subStr)
            }
            //: var actionStr = (text as NSString).substring(with: matchRange)
            var actionStr = (text as NSString).substring(with: matchRange)
            //: let endLength = 5
            let endLength = 5
            //: actionStr = (actionStr as NSString).replacingCharacters(in: NSRange(location: actionStr.utf16.count-endLength, length: endLength), with: "")
            actionStr = (actionStr as NSString).replacingCharacters(in: NSRange(location: actionStr.utf16.count - endLength, length: endLength), with: "")
            //: actionStr = (actionStr as NSString).replacingCharacters(in: NSRange(location: 0, length: 4), with: "")
            actionStr = (actionStr as NSString).replacingCharacters(in: NSRange(location: 0, length: 4), with: "")
            //: let actionAttrStr = NSAttributedString(string: actionStr, attributes: [.font: font, .foregroundColor: atColor])
            let actionAttrStr = NSAttributedString(string: actionStr, attributes: [.font: font, .foregroundColor: atColor])
            //: attr.append(actionAttrStr)
            attr.append(actionAttrStr)
            //: let range = NSRange(location: string.length, length: actionStr.utf16.count)
            let range = NSRange(location: string.length, length: actionStr.utf16.count)
            //: string.append(actionStr)
            string.append(actionStr)
            //: rangeArr.append(NSValue(range: range))
            rangeArr.append(NSValue(range: range))
            //: startLocation = matchRange.location + matchRange.length
            startLocation = matchRange.location + matchRange.length
        }
        //: if startLocation < text.utf16.count {
        if startLocation < text.utf16.count {
            //: let str = (text as NSString).substring(with: NSRange(location: startLocation, length: text.utf16.count-startLocation))
            let str = (text as NSString).substring(with: NSRange(location: startLocation, length: text.utf16.count - startLocation))
            //: let norStr = NSAttributedString(string: str, attributes: [.font: font, .foregroundColor: textColor])
            let norStr = NSAttributedString(string: str, attributes: [.font: font, .foregroundColor: textColor])
            //: attr.append(norStr)
            attr.append(norStr)
        }

        // 跳转逻辑处理
        //: for (index, value) in rangeArr.enumerated() {
        for (index, value) in rangeArr.enumerated() {
            //: let range = value.rangeValue
            let range = value.rangeValue
            //: if index >= msgInfoModel.jumps.count {
            if index >= msgInfoModel.jumps.count {
                //: break
                break
            }

            //: var uid = -1
            var uid = -1
            //: let jumpInfo = JSON(msgInfoModel.jumps[index])
            let jumpInfo = JSON(msgInfoModel.jumps[index])
            //: if jumpInfo["jumpKey"].stringValue == "user" {
            if jumpInfo[(String(kSectionData))].stringValue == (kEqualValue.replacingOccurrences(of: "list", with: "r")) {
                //: uid = jumpInfo["uid"].intValue
                uid = jumpInfo[String(bytes: kPathData.map{blackArray(sound: $0)}, encoding: .utf8)!].intValue
            }
            //: if uid != -1 {
            if uid != -1 {
                //: attr.yy_setTextHighlight(range, color: atColor, backgroundColor: .clear, userInfo: ["uid": uid]) { [weak self] containerView, text, range, rect in
                attr.yy_setTextHighlight(range, color: atColor, backgroundColor: .clear, userInfo: [String(bytes: kPathData.map{blackArray(sound: $0)}, encoding: .utf8)!: uid]) { [weak self] _, _, _, _ in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: guard self.atBlock != nil else { return }
                    guard self.atBlock != nil else { return }
                    //: self.atBlock!(uid)
                    self.atBlock!(uid)

                    //: } longPressAction: { [weak self] containerView, text, range, rect in
                } longPressAction: { [weak self] _, _, _, _ in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: guard self.atBlock != nil else { return }
                    guard self.atBlock != nil else { return }
                    //: self.atBlock!(uid)
                    self.atBlock!(uid)
                }
            }
        }

        //: return attr
        return attr
    }

    //: func formatTextTransMsgString() -> NSMutableAttributedString {
    func quantityImage() -> NSMutableAttributedString {
        //: let tempText = self.translatedContent ?? ""
        let tempText = self.translatedContent ?? ""
        //: let transAttrStr = NSMutableAttributedString.init(string: tempText)
        let transAttrStr = NSMutableAttributedString(string: tempText)

        //: let paragraphStyle = NSMutableParagraphStyle.init()
        let paragraphStyle = NSMutableParagraphStyle()
        //: paragraphStyle.lineBreakMode = .byWordWrapping
        paragraphStyle.lineBreakMode = .byWordWrapping
        //: paragraphStyle.alignment = .left
        paragraphStyle.alignment = .left

        //: var color = UIColor(hex: "#16D073")!
        var color = UIColor(hex: (String(kMakeMsg) + String(kCurrentAppId)))!
        //: if self.translateStatus == .MsgTranslate_fail {
        if self.translateStatus == .MsgTranslate_fail {
            //: color = UIColor(hex: "#F95644")!
            color = UIColor(hex: (String(k_valueText)))!
        }
        //: transAttrStr.addAttributes([.paragraphStyle: paragraphStyle, .font: UIFont.pingfangRugularFont(fontSize: 16), .foregroundColor: color], range: NSRange(location: 0, length: tempText.count))
        transAttrStr.addAttributes([.paragraphStyle: paragraphStyle, .font: UIFont.targetFor(fontSize: 16), .foregroundColor: color], range: NSRange(location: 0, length: tempText.count))
        //: return transAttrStr
        return transAttrStr
    }
}
