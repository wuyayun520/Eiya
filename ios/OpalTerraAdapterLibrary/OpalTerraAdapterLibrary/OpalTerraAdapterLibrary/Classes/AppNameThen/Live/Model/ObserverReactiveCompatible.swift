
//: Declare String Begin

/*: "MF:LiveChatWelMsg" :*/
fileprivate let k_equalGiftName:String = "self var time gesture viewMF:Li"
fileprivate let kCountData:String = "atWegift time var"

/*: "MF:PartyChatWelMsg" :*/
fileprivate let kQuickActiveCenterMsg:[Character] = ["M","F",":","P","a","r","t"]
fileprivate let kVideoPath:String = "file bottom warn add textyChatW"
fileprivate let k_titleCenterMsg:[Character] = ["e","l","M","s","g"]

/*: "MF:LiveChatPrizeMsg" :*/
fileprivate let k_byStr:String = "MF:Lindex text"
fileprivate let kActionExtraFormat:String = "tPrizeshow color gift string make"
fileprivate let kRequestPath:String = "if errorMsg"

/*: "MF:PartyChatPrizeMsg" :*/
fileprivate let k_topKey:String = "kit main you count succeedMF:Par"
fileprivate let k_equalValue:String = "model app request from labatPri"
fileprivate let k_middleColorPath:String = "let label top equal indexzeMsg"

/*: "MF:LiveChatAttentionMsg" :*/
fileprivate let k_dataMessage:[Character] = ["M","F",":","L","i","v","e","C"]
fileprivate let kMakeMessage:String = "detail false namehatAtte"
fileprivate let kNoMessage:[Character] = ["n","t","i","o","n","M","s","g"]

/*: "MF:PartyChatAttentionMsg" :*/
fileprivate let k_postId:String = "MF:Pmodel index list view"
fileprivate let kViewValue:String = "atAtreading to equal make"
fileprivate let kValueLinkFormat:[Character] = ["o","n","M","s","g"]

/*: ：" :*/
fileprivate let kCommentTitle:[Character] = ["："]

/*: "#BAFBFF" :*/
fileprivate let kExamineName:[Character] = ["#","B","A","F","B","F"]
fileprivate let kErrorUrl:[Character] = ["F"]

/*: "uid" :*/
fileprivate let kHiddenKey:String = "priced"

/*: "<at>@[\\S\\s]+?</at>" :*/
fileprivate let kQuantityimateUrl:[Character] = ["<","a","t",">","@","[","\\","S","\\","s","]","+"]
fileprivate let kEqualPlayerKey:[Character] = ["?","<","/","a","t",">"]

/*: "Sent " :*/
fileprivate let kListNeedId:String = "kind remove show player modelSent "

/*:  " :*/
fileprivate let k_commitSelectLetKey:String = " "

/*: "#FFA4CF" :*/
fileprivate let kLockData:[Character] = ["#","F","F","A","4","C","F"]

/*: "* :*/
fileprivate let k_errorMenuData:String = "*"

/*: "Here comes " :*/
fileprivate let kInsideRequestFormat:String = "try cellHere c"
fileprivate let kPushMsg:String = "in view var self touchomes "

/*: "#FFE386" :*/
fileprivate let k_acceptData:String = "#FFE386voice center false"

/*:   :*/
fileprivate let k_managerKey:String = " "

/*: "followed the anchor" :*/
fileprivate let kWillValue:String = "normalll"
fileprivate let kReportPath:[Character] = ["t","h","e"," ","a","n","c","h","o","r"]

/*: "party_seat_host" :*/
fileprivate let k_addDataName:[Character] = ["p","a","r","t","y","_","s"]
fileprivate let k_topPath:String = "eat_hosttable if import"

/*: "level_ :*/
fileprivate let k_indexSortStr:String = "plus"
fileprivate let kInsideTitle:[Character] = ["e","v","e","l","_"]

/*: "icon_lounge" :*/
fileprivate let k_sessionKey:[Character] = ["i","c","o","n","_","l","o","u","n","g","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ObserverReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/11.
//

//: import UIKit
import UIKit

//: typealias ActionUserBlock = (_ atUid: String?) -> Void
typealias ActionUserBlock = (_ atUid: String?) -> Void

//: class TalkingLiveRoomDammuCellData: NSObject {
class ObserverReactiveCompatible: NSObject {
    //: var actionUserBlock: ActionUserBlock?
    var actionUserBlock: ActionUserBlock?
    //: var longUserBlock: ActionUserBlock?
    var longUserBlock: ActionUserBlock?

    //: var model = TalkingLiveRoomDanmuModel.init()
    var model = MakeDanmuModel()

    //: func caculateMsgHeight(model: TalkingLiveRoomDanmuModel) -> TalkingLiveRoomDanmuModel {
    func lagSub(model: MakeDanmuModel) -> MakeDanmuModel {
        //: self.model = model
        self.model = model
        /// 普通文本消息,礼物消息
        //: if self.model.msgInfo?.messageType == 1 || self.model.msgInfo?.messageType == 2 || self.model.msgInfo?.messageType == 3 {
        if self.model.msgInfo?.messageType == 1 || self.model.msgInfo?.messageType == 2 || self.model.msgInfo?.messageType == 3 {
            //: caculateComment()
            atViewComment()
            /// 欢迎消息
            //: } else if self.model.MsgExtension == "MF:LiveChatWelMsg" || self.model.MsgExtension == "MF:PartyChatWelMsg" {
        } else if self.model.MsgExtension == (String(k_equalGiftName.suffix(5)) + "veCh" + String(kCountData.prefix(4)) + "lMsg") || self.model.MsgExtension == (String(kQuickActiveCenterMsg) + String(kVideoPath.suffix(6)) + String(k_titleCenterMsg)) {
            //: caculateWelMsg()
            latestMsg()
            /// 中奖消息
            //: } else if self.model.MsgExtension == "MF:LiveChatPrizeMsg" || self.model.MsgExtension == "MF:PartyChatPrizeMsg" {
        } else if self.model.MsgExtension == (String(k_byStr.prefix(4)) + "iveCha" + String(kActionExtraFormat.prefix(6)) + String(kRequestPath.suffix(3))) || self.model.MsgExtension == (String(k_topKey.suffix(6)) + "tyCh" + String(k_equalValue.suffix(5)) + String(k_middleColorPath.suffix(5))) {
            //: self.model.bgColor = UIColor.init(rgb: 0x8C7BFD, alpha: 0.4)
            self.model.bgColor = UIColor(rgb: 0x8C7BFD, alpha: 0.4)
            //: caculatewinningMsg()
            link()
            /// 关注消息
            //: } else if self.model.MsgExtension == "MF:LiveChatAttentionMsg" || self.model.MsgExtension == "MF:PartyChatAttentionMsg"  {
        } else if self.model.MsgExtension == (String(k_dataMessage) + String(kMakeMessage.suffix(7)) + String(kNoMessage)) || self.model.MsgExtension == (String(k_postId.prefix(4)) + "artyCh" + String(kViewValue.prefix(4)) + "tenti" + String(kValueLinkFormat)) {
            //: caculAttionMsg()
            dismissComment()
        }
        //: return self.model
        return self.model
    }

    /// 弹幕消息
    //: func caculateComment() {
    func atViewComment() {
        //: let paraStyle = paragraphStyle()
        let paraStyle = sizeStyle()
        //: paraStyle.lineSpacing = 3.0
        paraStyle.lineSpacing = 3.0 // 行间距
        //: let totalAttr = getImagesAttributedString()
        let totalAttr = withTitle()
        // 名字
        //: let firstStr = "\(self.model.user?.nickname ?? "")："
        let firstStr = "\(self.model.user?.nickname ?? "")："
        //: let nameAttr = getAttributed(text: firstStr, font: UIFont.pingfangMediumFont(fontSize: 14), color: UIColor.init(hex: "#BAFBFF")!, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        let nameAttr = comeTotalo(text: firstStr, font: UIFont.tapShared(fontSize: 14), color: UIColor(hex: (String(kExamineName) + String(kErrorUrl)))!, isTap: true, atUid: String(self.model.user?.uid ?? 0))

        //: if self.model.msgInfo?.messageType == 1 {
        if self.model.msgInfo?.messageType == 1 {
            // 内容
            //: let content = getAttributed(text: self.model.msgInfo?.content ?? "", font: UIFont.pingfangMediumFont(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
            let content = comeTotalo(text: self.model.msgInfo?.content ?? "", font: UIFont.tapShared(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
            //: nameAttr.append(content)
            nameAttr.append(content)

            //: } else if self.model.msgInfo?.messageType == 2 {
        } else if self.model.msgInfo?.messageType == 2 {
            //: let jumps = self.model.msgInfo?.jumps.first
            let jumps = self.model.msgInfo?.jumps.first
            //: let atUid = jumps?["uid"] as? Int ?? 0
            let atUid = jumps?[(kHiddenKey.replacingOccurrences(of: "price", with: "ui"))] as? Int ?? 0
            //: let text = self.model.msgInfo?.content ?? ""
            let text = self.model.msgInfo?.content ?? ""
            //: let regex = try! NSRegularExpression(pattern: "<at>@[\\S\\s]+?</at>", options: [])
            let regex = try! NSRegularExpression(pattern: (String(kQuantityimateUrl) + String(kEqualPlayerKey)), options: [])
            //: let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
            let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
            //: let matchRange =  result.first?.range
            let matchRange = result.first?.range
            //: if  matchRange?.length ?? 0 > 9 {
            if matchRange?.length ?? 0 > 9 {
                //: let subStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.location ?? 0) + 4, to: (matchRange?.length ?? 0) - 5)
                let subStr = String.book(str: text, from: (matchRange?.location ?? 0) + 4, to: (matchRange?.length ?? 0) - 5)
                //: let contentStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.length ?? 0), to: text.utf16.count )
                let contentStr = String.book(str: text, from: (matchRange?.length ?? 0), to: text.utf16.count)
                //: let atName = getAttributed(text: subStr, font: UIFont.pingfangMediumFont(fontSize: 14), color: UIColor.init(hex: "#BAFBFF")!, isTap: true, atUid: "\(atUid)")
                let atName = comeTotalo(text: subStr, font: UIFont.tapShared(fontSize: 14), color: UIColor(hex: (String(kExamineName) + String(kErrorUrl)))!, isTap: true, atUid: "\(atUid)")
                //: let content = getAttributed(text: contentStr, font: UIFont.pingfangMediumFont(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
                let content = comeTotalo(text: contentStr, font: UIFont.tapShared(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
                //: nameAttr.append(atName)
                nameAttr.append(atName)
                //: nameAttr.append(content)
                nameAttr.append(content)
            }

            //: } else if self.model.msgInfo?.messageType == 3 {
        } else if self.model.msgInfo?.messageType == 3 {
            //: guard self.model.gift != nil else { return }
            guard self.model.gift != nil else { return }
            //: let sentAttr = getAttributed(text:  "Sent ".localized, font: UIFont.pingfangMediumFont(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
            let sentAttr = comeTotalo(text: (String(kListNeedId.suffix(5))).localized, font: UIFont.tapShared(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
            //: nameAttr.append(sentAttr)
            nameAttr.append(sentAttr)
            //: if let toUser = self.model.toUser {
            if let toUser = self.model.toUser { // 送礼接收人
                //: let nickNameAttr = getAttributed(text: "\(toUser.nickname) ", font: UIFont.fontChange(type: .Medium, fontSize: 14), color: UIColor(hex: "#FFA4CF")!, isTap: true, atUid: String(toUser.uid))
                let nickNameAttr = comeTotalo(text: "\(toUser.nickname) ", font: UIFont.fontChange(type: .Medium, fontSize: 14), color: UIColor(hex: (String(kLockData)))!, isTap: true, atUid: String(toUser.uid))
                //: nameAttr.append(nickNameAttr)
                nameAttr.append(nickNameAttr)
            }
            //: let giftnameStr = changeGiftName(giftmodel: self.model.gift!)
            let giftnameStr = self.giftmodel(giftmodel: self.model.gift!)
            //: let giftAttr = getAttributed(text: giftnameStr, font: UIFont.fontChange(type: .Medium, fontSize: 14), color: UIColor(hex: "#FFA4CF")!, isTap: false, atUid: nil)
            let giftAttr = comeTotalo(text: giftnameStr, font: UIFont.fontChange(type: .Medium, fontSize: 14), color: UIColor(hex: (String(kLockData)))!, isTap: false, atUid: nil)
            //: nameAttr.append(giftAttr)
            nameAttr.append(giftAttr)

            //: let size = CGSize(width: 24, height: 24)
            let size = CGSize(width: 24, height: 24)
            //: let imag = self.model.gift?.giftImg?.resize(with: size)
            let imag = self.model.gift?.giftImg?.streetSmartEqual(with: size)
            //: let giftIcon = NSMutableAttributedString.yy_attachmentString(withContent: imag, contentMode: .center, attachmentSize: size, alignTo: UIFont.pingfangMediumFont(fontSize: 14), alignment: .center)
            let giftIcon = NSMutableAttributedString.yy_attachmentString(withContent: imag, contentMode: .center, attachmentSize: size, alignTo: UIFont.tapShared(fontSize: 14), alignment: .center)
            //: giftIcon.yy_paragraphStyle = paragraphStyle()
            giftIcon.yy_paragraphStyle = sizeStyle()
            //: nameAttr.append(giftIcon)
            nameAttr.append(giftIcon)

            //: let numAttr = self.getAttributed(text: "*\(self.model.gift?.num ?? 0)", font: UIFont.pingfangMediumFont(fontSize: 14), color: UIColor.init(hex: "#FFA4CF")!, isTap: false, atUid: nil)
            let numAttr = self.comeTotalo(text: "*\(self.model.gift?.num ?? 0)", font: UIFont.tapShared(fontSize: 14), color: UIColor(hex: (String(kLockData)))!, isTap: false, atUid: nil)
            //: nameAttr.append(numAttr)
            nameAttr.append(numAttr)
        }

        //: totalAttr.append(nameAttr)
        totalAttr.append(nameAttr)
        //: nameAttr.yy_paragraphStyle = paraStyle
        nameAttr.yy_paragraphStyle = paraStyle
        //: self.model.msgAttribText = totalAttr
        self.model.msgAttribText = totalAttr
        //: YYTextLayoutSize(attribText: self.model.msgAttribText)
        evaluate(attribText: self.model.msgAttribText)
    }

    /// 公告富文本
    //: func showAnnouncementMsg(model: TalkingLiveRoomDanmuModel) -> TalkingLiveRoomDanmuModel {
    func unusedOf(model: MakeDanmuModel) -> MakeDanmuModel {
        //: self.model = model
        self.model = model
        // 内容
        //: let paraStyle = paragraphStyle()
        let paraStyle = sizeStyle()
        //: let attachText = NSMutableAttributedString.init()
        let attachText = NSMutableAttributedString()
        //: let content = getAttributed(text: self.model.msgInfo?.content ?? "", font: UIFont.pingfangMediumFont(fontSize: 14), color: UIColor.init(hex: "#BAFBFF")!, isTap: false, atUid: nil)
        let content = comeTotalo(text: self.model.msgInfo?.content ?? "", font: UIFont.tapShared(fontSize: 14), color: UIColor(hex: (String(kExamineName) + String(kErrorUrl)))!, isTap: false, atUid: nil)
        //: attachText.append(content)
        attachText.append(content)

        //: attachText.yy_paragraphStyle = paraStyle
        attachText.yy_paragraphStyle = paraStyle

        //: self.model.msgAttribText = attachText
        self.model.msgAttribText = attachText

        //: YYTextLayoutSize(attribText: self.model.msgAttribText)
        evaluate(attribText: self.model.msgAttribText)

        //: return self.model
        return self.model
    }

    /// 欢迎消息
    //: func caculateWelMsg() {
    func latestMsg() {
        //: let paraStyle = paragraphStyle()
        let paraStyle = sizeStyle()
        //: paraStyle.lineSpacing = 3.0
        paraStyle.lineSpacing = 3.0 // 行间距
        //: let textView = getImagesAttributedString()
        let textView = withTitle()
        //: let strnor = "Here comes ".localized
        let strnor = (String(kInsideRequestFormat.suffix(6)) + String(kPushMsg.suffix(5))).localized
        //: let strc =  "\(self.model.user?.nickname ?? "")"
        let strc = "\(self.model.user?.nickname ?? "")"
        //: let content = getAttributed(text: strnor, font: UIFont.pingfangMediumFont(fontSize: 14), color: UIColor.init(hex: "#FFE386")!, isTap: false, atUid: nil)
        let content = comeTotalo(text: strnor, font: UIFont.tapShared(fontSize: 14), color: UIColor(hex: (String(k_acceptData.prefix(7))))!, isTap: false, atUid: nil)
        //: let attachText = getAttributed(text: strc, font: UIFont.pingfangMediumFont(fontSize: 14), color: UIColor.init(hex: "#BAFBFF")!, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        let attachText = comeTotalo(text: strc, font: UIFont.tapShared(fontSize: 14), color: UIColor(hex: (String(kExamineName) + String(kErrorUrl)))!, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        //: textView.append(content)
        textView.append(content)
        //: textView.append(attachText)
        textView.append(attachText)
        //: self.model.msgAttribText = textView
        self.model.msgAttribText = textView
        //: YYTextLayoutSize(attribText: self.model.msgAttribText)
        evaluate(attribText: self.model.msgAttribText)
    }

    /// 中奖消息
    //: func caculatewinningMsg() {
    func link() {
        //: let paraStyle = paragraphStyle()
        let paraStyle = sizeStyle()
        //: paraStyle.lineSpacing = 3.0
        paraStyle.lineSpacing = 3.0 // 行间距
        //: let textView = getImagesAttributedString()
        let textView = withTitle()
        // 内容
        //: let firstStr = "\(self.model.user?.nickname ?? "") \(self.model.msgInfo?.content ?? "")"
        let firstStr = "\(self.model.user?.nickname ?? "") \(self.model.msgInfo?.content ?? "")"
        //: let content = getAttributed(text: firstStr, font: UIFont.pingfangMediumFont(fontSize: 14), color: UIColor.white, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        let content = comeTotalo(text: firstStr, font: UIFont.tapShared(fontSize: 14), color: UIColor.white, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        //: textView.append(content)
        textView.append(content)
        //: self.model.msgAttribText = textView
        self.model.msgAttribText = textView
        //: YYTextLayoutSize(attribText: self.model.msgAttribText)
        evaluate(attribText: self.model.msgAttribText)
    }

    /// 关注消息
    //: func caculAttionMsg() {
    func dismissComment() {
        //: let paraStyle = paragraphStyle()
        let paraStyle = sizeStyle()
        //: paraStyle.lineSpacing = 3.0
        paraStyle.lineSpacing = 3.0 // 行间距
        //: let attachText = NSMutableAttributedString()
        let attachText = NSMutableAttributedString()
        // 内容
        //: let strnor = "followed the anchor".localized
        let strnor = (kWillValue.replacingOccurrences(of: "normal", with: "fo") + "owed " + String(kReportPath)).localized
        //: let strc =  "\(self.model.user?.nickname ?? "") "
        let strc = "\(self.model.user?.nickname ?? "") "
        //: let content = getAttributed(text: strnor, font: UIFont.pingfangMediumFont(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
        let content = comeTotalo(text: strnor, font: UIFont.tapShared(fontSize: 14), color: UIColor.white, isTap: false, atUid: nil)
        //: let nameText = getAttributed(text: strc, font: UIFont.pingfangMediumFont(fontSize: 14), color: UIColor.init(hex: "#BAFBFF")!, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        let nameText = comeTotalo(text: strc, font: UIFont.tapShared(fontSize: 14), color: UIColor(hex: (String(kExamineName) + String(kErrorUrl)))!, isTap: true, atUid: String(self.model.user?.uid ?? 0))
        //: attachText.append(nameText)
        attachText.append(nameText)
        //: attachText.append(content)
        attachText.append(content)
        //: self.model.msgAttribText = attachText
        self.model.msgAttribText = attachText
        //: YYTextLayoutSize(attribText: self.model.msgAttribText)
        evaluate(attribText: self.model.msgAttribText)
    }

    //: func paragraphStyle()-> NSMutableParagraphStyle {
    func sizeStyle() -> NSMutableParagraphStyle {
        //: let paraStyle = NSMutableParagraphStyle.init()
        let paraStyle = NSMutableParagraphStyle()
        //: paraStyle.lineSpacing = 0.0
        paraStyle.lineSpacing = 0.0 // 行间距
        //: paraStyle.alignment = .left
        paraStyle.alignment = .left
        //: paraStyle.baseWritingDirection = .leftToRight
        paraStyle.baseWritingDirection = .leftToRight
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeLanguageManager.shared.direction == .rightToLeft {
            //: paraStyle.baseWritingDirection = .rightToLeft
            paraStyle.baseWritingDirection = .rightToLeft
            //: paraStyle.alignment = .right
            paraStyle.alignment = .right
        }

        //: return paraStyle
        return paraStyle
    }

    /**
     字符串生成富文本
     @param isTap 是否添加点击事件
     */
    //: func getAttributed(text: String, font: UIFont, color: UIColor, isTap: Bool, atUid: String?) -> NSMutableAttributedString {
    func comeTotalo(text: String, font: UIFont, color: UIColor, isTap: Bool, atUid: String?) -> NSMutableAttributedString {
        //: let attribute = NSMutableAttributedString.init(string: text)
        let attribute = NSMutableAttributedString(string: text)
        //: attribute.yy_font = font
        attribute.yy_font = font
        //: attribute.yy_color = color
        attribute.yy_color = color
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeLanguageManager.shared.direction == .rightToLeft {
//            attribute.yy_writingDirection = [3]
            //: } else {
        } else {
            //: attribute.yy_baseWritingDirection = .leftToRight
            attribute.yy_baseWritingDirection = .leftToRight
        }
        //: attribute.yy_paragraphStyle = paragraphStyle()
        attribute.yy_paragraphStyle = sizeStyle()

        //: if isTap == true {
        if isTap == true {
            //: guard text.count > 0 else {
            guard text.count > 0 else {
                //: return NSMutableAttributedString.init()
                return NSMutableAttributedString()
            }
            //: let range = NSRange(location: 0, length: text.count)
            let range = NSRange(location: 0, length: text.count)
            //: attribute.yy_setTextHighlight(range, color: color, backgroundColor: .clear, userInfo: nil) {  containerView, text, range, rect in
            attribute.yy_setTextHighlight(range, color: color, backgroundColor: .clear, userInfo: nil) { _, _, _, _ in
                //: if self.actionUserBlock != nil {
                if self.actionUserBlock != nil {
                    //: self.actionUserBlock!(atUid)
                    self.actionUserBlock!(atUid)
                }
                //: } longPressAction: { containerView, text, range, rect in
            } longPressAction: { _, _, _, _ in
                /// 不能@自己
                //: if atUid != DistanceAppManager.share.loginUserMode.userID {
                if atUid != DistanceAppManager.share.loginUserMode.userID {
                    //: if self.longUserBlock != nil {
                    if self.longUserBlock != nil {
                        //: self.longUserBlock!(atUid)
                        self.longUserBlock!(atUid)
                    }
                }
            }
        }

        //: return attribute
        return attribute
    }

    /// 获取cell高度
    //: func YYTextLayoutSize(attribText: NSMutableAttributedString) {
    func evaluate(attribText: NSMutableAttributedString) {
        // 距离左边8  距离右边也为8
        //: let maxWidth = MsgTableViewWidth - 16
        let maxWidth = dataScreenName - 16

        //: let layout = YYTextLayout.init(containerSize: CGSize(width: maxWidth, height: CGFloat(MAXFLOAT)), text: attribText)
        let layout = YYTextLayout(containerSize: CGSize(width: maxWidth, height: CGFloat(MAXFLOAT)), text: attribText)
        //: let layoutSize = layout?.textBoundingRect.size ?? .zero
        let layoutSize = layout?.textBoundingRect.size ?? .zero
        //: var size = CGSize(width: ceil(layoutSize.width), height: ceil(layoutSize.height))
        var size = CGSize(width: ceil(layoutSize.width), height: ceil(layoutSize.height))

        //: if  size.height < 28 {
        if size.height < 28 {
            //: size.height = 28
            size.height = 28
            //: } else {
        } else {
            // 再加上6=文字距离上下的间距
            //: size.height += 6
            size.height += 6
        }

        //: self.model.msgHeight = Double(size.height)
        self.model.msgHeight = Double(size.height)
        //: self.model.msgWidth = Double(size.width)
        self.model.msgWidth = Double(size.width)
    }

    //: private func changeGiftName(giftmodel: TalkingGiftMsgAnimatModel) -> String {
    private func giftmodel(giftmodel: TitleManagerMeasurable) -> String {
        //: var gameName = giftmodel.pname
        var gameName = giftmodel.pname
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.en.rawValue {
        if UserViewToolThen.share.interfaceLang == PlayerSubqueryConvertible.en.rawValue {
            //: gameName = giftmodel.nameI18n.en
            gameName = giftmodel.nameI18n.en
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
        } else if UserViewToolThen.share.interfaceLang == PlayerSubqueryConvertible.ar.rawValue {
            //: gameName = giftmodel.nameI18n.ar
            gameName = giftmodel.nameI18n.ar
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
        } else if UserViewToolThen.share.interfaceLang == PlayerSubqueryConvertible.es.rawValue {
            //: gameName = giftmodel.nameI18n.es
            gameName = giftmodel.nameI18n.es
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
        } else if UserViewToolThen.share.interfaceLang == PlayerSubqueryConvertible.pt.rawValue {
            //: gameName = giftmodel.nameI18n.pt
            gameName = giftmodel.nameI18n.pt
        }
        //: return gameName
        return gameName
    }
}

// MARK: - 弹幕消息拼接图片

//: extension TalkingLiveRoomDammuCellData {
extension ObserverReactiveCompatible {
    /// 获取弹幕富文本图片
    //: func getImagesAttributedString() -> NSMutableAttributedString {
    func withTitle() -> NSMutableAttributedString {
        //: let mAttrStr = NSMutableAttributedString(string: "")
        let mAttrStr = NSMutableAttributedString(string: "")
        // 语聊房房主
        //: if TalkingVoiceRoomManager.shared().isParty, model.user?.uid == TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid {
        if CoverManager.byRest().isParty, model.user?.uid == CoverManager.byRest().partyModel.streamerInfo.uid {
            //: let hostImgV = UIImageView()
            let hostImgV = UIImageView()
            //: hostImgV.size = CGSize(width: 16, height: 16)
            hostImgV.size = CGSize(width: 16, height: 16)
            //: hostImgV.image = UIImage.submitGift(name: "party_seat_host")
            hostImgV.image = UIImage.submitGift(name: (String(k_addDataName) + String(k_topPath.prefix(8))))
            //: let hostAttr = getAttachText(imageView: hostImgV)
            let hostAttr = giftMake(imageView: hostImgV)
            //: mAttrStr.append(hostAttr)
            mAttrStr.append(hostAttr)
            //: mAttrStr.append(NSAttributedString.init(string: " "))
            mAttrStr.append(NSAttributedString(string: " "))
        }

        // 等级
        //: let levelImgV = UIImageView()
        let levelImgV = UIImageView()
        //: levelImgV.size = CGSize(width: 35, height: 16)
        levelImgV.size = CGSize(width: 35, height: 16)
        //: levelImgV.image = UIImage.submitGift(name: "level_\(self.model.user?.level ?? 1)")
        levelImgV.image = UIImage.submitGift(name: (k_indexSortStr.replacingOccurrences(of: "plus", with: "l") + String(kInsideTitle)) + "\(self.model.user?.level ?? 1)")
        //: let levelAttr = getAttachText(imageView: levelImgV)
        let levelAttr = giftMake(imageView: levelImgV)
        //: mAttrStr.append(levelAttr)
        mAttrStr.append(levelAttr)
        //: mAttrStr.append(NSAttributedString.init(string: " "))
        mAttrStr.append(NSAttributedString(string: " "))

        // 会员
        //: if self.model.user?.loungePlus == true {
        if self.model.user?.loungePlus == true {
            //: let vipImgV = UIImageView()
            let vipImgV = UIImageView()
            //: vipImgV.size = CGSize(width: 16, height: 16)
            vipImgV.size = CGSize(width: 16, height: 16)
            //: vipImgV.image = UIImage.submitGift(name: "icon_lounge")
            vipImgV.image = UIImage.submitGift(name: (String(k_sessionKey)))
            //: let vipAttr = getAttachText(imageView: vipImgV)
            let vipAttr = giftMake(imageView: vipImgV)
            //: mAttrStr.append(vipAttr)
            mAttrStr.append(vipAttr)
            //: mAttrStr.append(NSAttributedString.init(string: " "))
            mAttrStr.append(NSAttributedString(string: " "))
        }
        //: return mAttrStr
        return mAttrStr
    }

    // 图片、view生成富文本
    //: func getAttachText(imageView: UIImageView) -> NSMutableAttributedString {
    func giftMake(imageView: UIImageView) -> NSMutableAttributedString {
        //: let attachText = NSMutableAttributedString.yy_attachmentString(withContent: imageView.image, contentMode: .scaleToFill, attachmentSize: imageView.size, alignTo: UIFont.pingfangRugularFont(fontSize: 12), alignment: .center)
        let attachText = NSMutableAttributedString.yy_attachmentString(withContent: imageView.image, contentMode: .scaleToFill, attachmentSize: imageView.size, alignTo: UIFont.targetFor(fontSize: 12), alignment: .center)
        //: attachText.yy_paragraphStyle = paragraphStyle()
        attachText.yy_paragraphStyle = sizeStyle()
        //: return attachText
        return attachText
    }
}
