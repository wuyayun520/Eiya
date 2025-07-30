
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_kitWithFormat:[UInt8] = [0x6b,0x70,0x6b,0x76,0x2a,0x65,0x71,0x66,0x67,0x74,0x3c,0x2b,0x22,0x6a,0x63,0x75,0x22,0x70,0x71,0x76,0x22,0x64,0x67,0x67,0x70,0x22,0x6b,0x6f,0x72,0x6e,0x67,0x6f,0x67,0x70,0x76,0x67,0x66]

fileprivate func centerEach(view num: UInt8) -> UInt8 {
    let value = Int(num) - 2
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "[未知消息]" :*/
fileprivate let kInfoValue:[Character] = ["["]
fileprivate let kHandleName:String = "未知消息]"

/*: "extra" :*/
fileprivate let kMakeUpValue:[Character] = ["e","x","t","r","a"]

/*: "rYMsgType" :*/
fileprivate let k_labelResultData:[Character] = ["r","Y"]
fileprivate let k_equalStr:String = "MsgTypeview height make"

/*: "GJ:CallCustom" :*/
fileprivate let kQuoteDeviceValue:[Character] = ["G","J",":","C","a","l","l","C","u"]
fileprivate let kPathData:String = "streport"

/*: "stopCall" :*/
fileprivate let k_willId:[Character] = ["s","t","o","p","C","a","l"]
fileprivate let k_postUrl:String = "log"

/*: "#FF5A4D" :*/
fileprivate let k_tableValue:String = "#FF5Aright location angle of"
fileprivate let kFiniteBorderMessage:String = "4Dprice content gift"

/*: "msgInfo" :*/
fileprivate let k_showKey:String = "manager"
fileprivate let k_formalRawPath:String = "color name make data cornersgInfo"

/*: "logType" :*/
fileprivate let k_photoMessage:[Character] = ["l","o","g","T","y"]
fileprivate let k_choicePath:String = "player"

/*: "  " :*/
fileprivate let k_toImageId:[Character] = [" "," "]

/*: "jumps" :*/
fileprivate let k_contentData:String = "jumpmanager"

/*: "jumpKey" :*/
fileprivate let kArrayMsg:[Character] = ["j","u","m","p","K","e","y"]

/*: "chat_video_me" :*/
fileprivate let kGenerateCenterPath:[UInt8] = [0x97,0x9c,0x95,0x80,0xab,0x82,0x9d,0x90,0x91,0x9b,0xab,0x99,0x91]

private func popFirstChannel(to num: UInt8) -> UInt8 {
    return num ^ 244
}

/*: "chat_voice_me" :*/
fileprivate let k_aboutMessage:[Character] = ["c","h","a","t","_","v","o","i","c","e","_","m"]
fileprivate let k_picStr:String = "sign"

/*: "chat_video_call" :*/
fileprivate let kBackgroundPath:[UInt8] = [0x96,0x9d,0x94,0x81,0xaa,0x83,0x9c,0x91,0x90,0x9a,0xaa,0x96,0x94,0x99,0x99]

private func sourceCharacter(place num: UInt8) -> UInt8 {
    return num ^ 245
}

/*: "chat_voice_call" :*/
fileprivate let kInputText:[Character] = ["c","h","a","t","_"]
fileprivate let kMakeTitle:String = "voineede"
fileprivate let kLengthPath:String = "_callbottom array effect super"

/*: "chat_video_cancel" :*/
fileprivate let kAdjustmentName:[UInt8] = [0x8b,0x90,0x89,0x9c,0x87,0x9e,0x91,0x8c,0x8d,0x97,0x87,0x8b,0x89,0x96,0x8b,0x8d,0x94]

fileprivate func sectionTo(player num: UInt8) -> UInt8 {
    let value = Int(num) - 40
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "chat_voice_cancel" :*/
fileprivate let kBottomText:String = "CHAT"
fileprivate let k_scaleUrl:String = "_cancelfalse true equal title"

/*: "#16D073" :*/
fileprivate let kHiddenMsg:String = "extension title extension else color#16D073"

/*: "#F95644" :*/
fileprivate let k_makeTitle:String = "self make hidden#F95644"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToCellData.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/2.
//

//: import UIKit
import UIKit

//: @objcMembers public class ToCellData: TalkingChatMsgBaseCellData {
@objcMembers public class ToCellData: GroupReactiveCompatible {
    //: var textColor: UIColor?
    var textColor: UIColor?
    //: let textFont = UIFont.pingfangRugularFont(fontSize: 16)
    let textFont = UIFont.targetFor(fontSize: 16)
    //: var textSize = CGSize.zero
    var textSize = CGSize.zero
    //: var textOrigin = CGPoint.zero
    var textOrigin = CGPoint.zero
    //: var quoteSize = CGSize.zero
    var quoteSize = CGSize.zero

    //: var transTextSize = CGSize.zero
    var transTextSize = CGSize.zero
    //: var isVoiceVideo = false
    var isVoiceVideo = false
    /// 获取翻译内容富文本（get）
    //: var transAttrString: NSMutableAttributedString {
    var transAttrString: NSMutableAttributedString {
        //: let attr = formatTextTransMsgString()
        let attr = deliver()
        //: return attr
        return attr
    }

    //: @objc public var hasJump = false
    public var hasJump = false
    //: @objc public var contentStr: String?
    public var contentStr: String?

    //: override public init(direction: TMsgDirection) {
    override public init(direction: UserAppMeasurable) {
        //: super.init(direction: direction)
        super.init(direction: direction)
        //: if direction == .MsgDirectionIncoming {
        if direction == .MsgDirectionIncoming {
            //: textColor = UIColor.colorStatuteNameApp()
            textColor = UIColor.colorStatuteNameApp()
            //: } else {
        } else {
            //: textColor = UIColor.white
            textColor = UIColor.white
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_kitWithFormat.map{centerEach(view: $0)}, encoding: .utf8)!)
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
                contentStr = (String(kInfoValue) + kHandleName.capitalized)
                //: } else {
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

        //: if self.msgModel.quoteMsgInfo.isQuoteMsg() {
        if self.msgModel.quoteMsgInfo.isQuoteMsg() {
            //: self.quoteSize = self.msgModel.quoteMsgInfo.quoteSize(Int(maxWidth - 20))
            self.quoteSize = self.msgModel.quoteMsgInfo.quoteSize(Int(maxWidth - 20))
        }

        //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: maxWidth - 20, height: CGFLOAT_MAX), text: self.contentAttrString)
        let yyLayout = YYTextLayout(containerSize: CGSize(width: maxWidth - 20, height: CGFLOAT_MAX), text: self.contentAttrString)
        //: let yySize = yyLayout?.textBoundingSize ?? .zero
        let yySize = yyLayout?.textBoundingSize ?? .zero
        //: var temTextSize = CGSize(width:  ceil(yySize.width), height: ceil(yySize.height))
        var temTextSize = CGSize(width: ceil(yySize.width), height: ceil(yySize.height))
        //: self.textSize = temTextSize
        self.textSize = temTextSize

        //: self.textOrigin = CGPoint(x: self.cellLayout.bubbleInsets.left, y: self.cellLayout.bubbleInsets.top + self.quoteSize.height + (self.quoteSize.height > 0 ? 6:0))
        self.textOrigin = CGPoint(x: self.cellLayout.bubbleInsets.left, y: self.cellLayout.bubbleInsets.top + self.quoteSize.height + (self.quoteSize.height > 0 ? 6 : 0))

        //: if self.translateStatus != .MsgTranslate_init {
        if self.translateStatus != .MsgTranslate_init {
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: maxWidth-20, height: CGFLOAT_MAX), text: self.transAttrString)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: maxWidth - 20, height: CGFLOAT_MAX), text: self.transAttrString)
            //: let transTextSize = yyLayout?.textBoundingRect.size ?? CGSize.zero
            let transTextSize = yyLayout?.textBoundingRect.size ?? CGSize.zero
            //: self.transTextSize = transTextSize
            self.transTextSize = transTextSize
        }

        //: temTextSize.width = max(temTextSize.width, self.quoteSize.width)
        temTextSize.width = max(temTextSize.width, self.quoteSize.width)

        //: temTextSize.height += self.cellLayout.bubbleInsets.top + self.cellLayout.bubbleInsets.bottom + self.quoteSize.height +  (self.quoteSize.height > 0 ? 6:0)
        temTextSize.height += self.cellLayout.bubbleInsets.top + self.cellLayout.bubbleInsets.bottom + self.quoteSize.height + (self.quoteSize.height > 0 ? 6 : 0)
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

        //: if self.transTextSize.height > 0 {
        if self.transTextSize.height > 0 {
            //: cellHeight += (self.transTextSize.height + 10)
            cellHeight += (self.transTextSize.height + 10)
        }

        //: if self.msgIncome > 0 {
        if self.msgIncome > 0 { // 有收益
            //: cellHeight += 15
            cellHeight += 15
        }
        // 判断是否展示未回复付费消息提示
        //: if TalkingPrivateChatManager.needShowReplyTipsMessage(self.direction,
        if JoinThen.viewVideo(self.direction,
                                               //: msgType: self.messageType,
                                               msgType: self.messageType,
                                               //: msgTime: self.innerMessage.timestamp) {
                                               msgTime: self.innerMessage.timestamp)
        {
            //: cellHeight += 20
            cellHeight += 20
        }

        //: return max(65, cellHeight)
        return max(65, cellHeight)
    }

    //: public lazy var contentAttrString: NSMutableAttributedString = {
    public lazy var contentAttrString: NSMutableAttributedString = {
        //: let attr = formatTextMsgString(msgInfoModel: self.msgModel.msgInfo)
        let attr = sight(msgInfoModel: self.msgModel.msgInfo)
        //: return attr
        return attr
        //: }()
    }()

    //: func formatTextMsgString(msgInfoModel: AbTalkingChatMsgInfoModel) -> NSMutableAttributedString {
    func sight(msgInfoModel: WithSizeModel) -> NSMutableAttributedString {
        //: if msgInfoModel.content.isEmptyString {
        if msgInfoModel.content.isEmptyString {
            //: return NSMutableAttributedString.init(string: "")
            return NSMutableAttributedString(string: "")
        }

        //: let dic = DistrictManagerReactiveCompatible.parseTXMessageData(data: self.innerMessage.customElem.data)
        let dic = DistrictManagerReactiveCompatible.productData(data: self.innerMessage.customElem.data)
        //: guard let extraDic = dic["extra"] as? Dictionary<String, Any> else {
        guard let extraDic = dic[(String(kMakeUpValue))] as? [String: Any] else {
            //: return NSMutableAttributedString.init(string: "")
            return NSMutableAttributedString(string: "")
        }

        // 创建富文本
        //: let attributes: [NSAttributedString.Key: Any] = [
        let attributes: [NSAttributedString.Key: Any] = [
            //: .font: UIFont.pingfangRugularFont(fontSize: 16),
            .font: UIFont.targetFor(fontSize: 16),
            //: .foregroundColor: self.direction == .MsgDirectionIncoming ? UIColor.colorStatuteNameApp() : UIColor.white
            .foregroundColor: self.direction == .MsgDirectionIncoming ? UIColor.colorStatuteNameApp() : UIColor.white,
        ]
        //: let attr = NSMutableAttributedString(string: msgInfoModel.content, attributes: attributes)
        let attr = NSMutableAttributedString(string: msgInfoModel.content, attributes: attributes)

        // 音视频通话更改颜色
        //: if self.direction == .MsgDirectionIncoming &&
        if self.direction == .MsgDirectionIncoming &&
            //: dic["rYMsgType"] as? String == "GJ:CallCustom" &&
            dic[(String(k_labelResultData) + String(k_equalStr.prefix(7)))] as? String == (String(kQuoteDeviceValue) + kPathData.replacingOccurrences(of: "report", with: "om")) &&
            //: msgInfoModel.callCmd != "stopCall" {
            msgInfoModel.callCmd != (String(k_willId) + k_postUrl.replacingOccurrences(of: "log", with: "l"))
        {
            //: attr.addAttribute(.foregroundColor, value: UIColor(hex: "#FF5A4D")!, range: NSRange(location: 0, length: attr.length))
            attr.addAttribute(.foregroundColor, value: UIColor(hex: (String(k_tableValue.prefix(5)) + String(kFiniteBorderMessage.prefix(2))))!, range: NSRange(location: 0, length: attr.length))
        }

        // 音视频通话添加icon
        //: if  dic["rYMsgType"] as? String == "GJ:CallCustom" {
        if dic[(String(k_labelResultData) + String(k_equalStr.prefix(7)))] as? String == (String(kQuoteDeviceValue) + kPathData.replacingOccurrences(of: "report", with: "om")) {
            //: isVoiceVideo = true
            isVoiceVideo = true
            //: var isVideoChat = true
            var isVideoChat = true
            //: let extraDic = dic["extra"] as? Dictionary<String, Any> ??  Dictionary<String, Any>.init()
            let extraDic = dic[(String(kMakeUpValue))] as? [String: Any] ?? Dictionary<String, Any>.init()
            //: let extraJson = JSON(extraDic)
            let extraJson = JSON(extraDic)
            //: if extraJson["msgInfo"]["logType"].intValue == 1 {
            if extraJson[(k_showKey.replacingOccurrences(of: "manager", with: "m") + String(k_formalRawPath.suffix(6)))][(String(k_photoMessage) + k_choicePath.replacingOccurrences(of: "layer", with: "e"))].intValue == 1 {
                //: isVideoChat = false
                isVideoChat = false
            }
            //: let callImgAttr = self.getCallImageAttributedString(msgInfoModel: msgInfoModel, isVideoChat: isVideoChat)
            let callImgAttr = self.calendar(msgInfoModel: msgInfoModel, isVideoChat: isVideoChat)
            //: let spaceAttr = NSMutableAttributedString.init(string: "  ")
            let spaceAttr = NSMutableAttributedString(string: "  ")
            //: attr.insert(spaceAttr, at: 0)
            attr.insert(spaceAttr, at: 0)
            //: attr.insert(callImgAttr, at: 0)
            attr.insert(callImgAttr, at: 0)
        }

        //: if extraDic.keys.contains("jumps") {
        if extraDic.keys.contains((k_contentData.replacingOccurrences(of: "manager", with: "s"))) {
            //: hasJump = true
            hasJump = true
        }
        //: if extraDic.keys.contains("jumpKey") {
        if extraDic.keys.contains((String(kArrayMsg))) {
            //: hasJump = true
            hasJump = true
        }

        //: return attr
        return attr
    }

    //: func getCallImageAttributedString(msgInfoModel: AbTalkingChatMsgInfoModel, isVideoChat: Bool) -> NSMutableAttributedString {
    func calendar(msgInfoModel: WithSizeModel, isVideoChat: Bool) -> NSMutableAttributedString {
        //: let callImgView = UIImageView.init()
        let callImgView = UIImageView()
        //: callImgView.size = CGSize(width: 22, height: 17)
        callImgView.size = CGSize(width: 22, height: 17)
        //: callImgView.contentMode = .scaleAspectFit
        callImgView.contentMode = .scaleAspectFit
        //: var imgStr = isVideoChat ? "chat_video_me" : "chat_voice_me"
        var imgStr = isVideoChat ? String(bytes: kGenerateCenterPath.map{popFirstChannel(to: $0)}, encoding: .utf8)! : (String(k_aboutMessage) + k_picStr.replacingOccurrences(of: "sign", with: "e"))

        //: if self.direction == .MsgDirectionIncoming {
        if self.direction == .MsgDirectionIncoming {
            //: if msgInfoModel.callCmd == "stopCall" {
            if msgInfoModel.callCmd == (String(k_willId) + k_postUrl.replacingOccurrences(of: "log", with: "l")) {
                //: imgStr = isVideoChat ?"chat_video_call":"chat_voice_call"
                imgStr = isVideoChat ?String(bytes: kBackgroundPath.map{sourceCharacter(place: $0)}, encoding: .utf8)! : (String(kInputText) + kMakeTitle.replacingOccurrences(of: "need", with: "c") + String(kLengthPath.prefix(5)))
                //: } else {
            } else {
                //: imgStr = isVideoChat ?"chat_video_cancel":"chat_voice_cancel"
                imgStr = isVideoChat ?String(bytes: kAdjustmentName.map{sectionTo(player: $0)}, encoding: .utf8)! : (kBottomText.lowercased() + "_voice" + String(k_scaleUrl.prefix(7)))
            }
        }
        //: callImgView.image = UIImage.submitGift(name: imgStr)
        callImgView.image = UIImage.submitGift(name: imgStr)

        let attachText = NSMutableAttributedString.yy_attachmentString(withContent: callImgView, contentMode: .center, attachmentSize: callImgView.size, alignTo: UIFont.targetFor(fontSize: 17), alignment: .center)

        //: return attachText
        return attachText
    }

    //: func formatTextTransMsgString() -> NSMutableAttributedString {
    func deliver() -> NSMutableAttributedString {
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
        var color = UIColor(hex: (String(kHiddenMsg.suffix(7))))!
        //: if self.translateStatus == .MsgTranslate_fail {
        if self.translateStatus == .MsgTranslate_fail {
            //: color = UIColor(hex: "#F95644")!
            color = UIColor(hex: (String(k_makeTitle.suffix(7))))!
        }
        //: transAttrStr.addAttributes([.paragraphStyle: paragraphStyle, .font: UIFont.pingfangRugularFont(fontSize: 16), .foregroundColor: color], range: NSRange(location: 0, length: tempText.count))
        transAttrStr.addAttributes([.paragraphStyle: paragraphStyle, .font: UIFont.targetFor(fontSize: 16), .foregroundColor: color], range: NSRange(location: 0, length: tempText.count))
        //: return transAttrStr
        return transAttrStr
    }
}
