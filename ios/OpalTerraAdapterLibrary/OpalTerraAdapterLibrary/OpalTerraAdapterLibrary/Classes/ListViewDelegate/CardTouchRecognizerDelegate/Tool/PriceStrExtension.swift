
//: Declare String Begin

/*: "Free" :*/
fileprivate let k_intimateValue:[Character] = ["F","r","e","e"]

/*: " Free 1min" :*/
fileprivate let kRetData:String = "if color size F"
fileprivate let k_cancelMessage:String = "ree gift float model"

/*: "Video Call" :*/
fileprivate let kArrayStr:String = "text self model withVide"

/*: "icon_video_bd" :*/
fileprivate let k_maxName:String = "view viewicon_"
fileprivate let kEquipmentText:String = "content type view you_bd"

/*: "\n %@/min" :*/
fileprivate let kUserValue:[Character] = ["\n"," ","%","@","/","m","i"]
fileprivate let kFrameId:[Character] = ["n"]

/*: "icon_coin_pre" :*/
fileprivate let kLabelUrl:[Character] = ["i","c","o","n","_"]
fileprivate let k_viewUrl:String = "model usercoin_pre"

/*: "\n %@ %@/min" :*/
fileprivate let k_mainCurrentMessage:String = "\n %@ "
fileprivate let kSharedContent:[Character] = ["n"]

/*: "%@/min" :*/
fileprivate let k_frameKey:String = "app data feature%@/min"

/*: "#D8D8D8" :*/
fileprivate let kLayerPath:[Character] = ["#","D","8","D","8","D","8"]

/*: "Free 1 min" :*/
fileprivate let k_pathMsg:[Character] = ["F","r","e","e"," ","1"," ","m","i","n"]

/*: "%@ Coins/min" :*/
fileprivate let kCenterPath:[Character] = ["%","@"," ","C","o","i","n","s","/"]
fileprivate let kListName:[Character] = ["m","i","n"]

/*: "%@ Gold coins / Min" :*/
fileprivate let k_failStr:String = "%@ Goself app intimate"
fileprivate let kResponseData:[Character] = ["o"]
fileprivate let k_pointWithData:[Character] = ["i","n","s"," ","/"," ","M","i","n"]

/*: "Video Call (%@ Coins/min)" :*/
fileprivate let k_appearanceData:[Character] = ["V","i","d","e","o"," ","C","a","l","l"," ","(","%","@"," ","C","o","i","n","s","/","m","i","n",")"]

/*: "Voice Call" :*/
fileprivate let k_directionName:[Character] = ["V","o","i","c","e"," ","C"]
fileprivate let k_textMsg:String = "amake"

/*: "Voice Call (%@ Coins/min)" :*/
fileprivate let k_addId:String = "Voice model equal super pic interval"
fileprivate let k_interactionName:String = "text player true return(%@ Co"
fileprivate let k_kitUrl:[Character] = ["n",")"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PriceStrExtension.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/15.
//

//: import Foundation
import Foundation

//: extension String {
extension String {
    //: static func setPriceStr(fee: Int, originalFee: Int, freeCallTimes: Int = 0, callBtnStyle: Int = 0)-> NSMutableAttributedString {
    static func fromUser(fee: Int, originalFee: Int, freeCallTimes: Int = 0, callBtnStyle: Int = 0) -> NSMutableAttributedString {
        //: if DistanceAppManager.share.appStatus == AppSkinStatus.special.rawValue {
        if DistanceAppManager.share.appStatus == NameQuickLookable.special.rawValue {
            //: return NSMutableAttributedString.init(string: "Free".localized)
            return NSMutableAttributedString(string: (String(k_intimateValue)).localized)
            //: } else if freeCallTimes > 0 || fee == 0 {
        } else if freeCallTimes > 0 || fee == 0 {
            //: var text = ""
            var text = ""
            //: if fee == 0 {
            if fee == 0 {
                //: text = "Free".localized
                text = (String(k_intimateValue)).localized
                //: } else {
            } else {
                //: if callBtnStyle == 1 {
                if callBtnStyle == 1 {
                    //: text = " Free 1min".localized
                    text = (String(kRetData.suffix(2)) + String(k_cancelMessage.prefix(4)) + "1min").localized
                    //: } else {
                } else {
                    //: text = "Video Call".localized
                    text = (String(kArrayStr.suffix(4)) + "o Call").localized
                }
            }
            //: let attrS = NSMutableAttributedString(string: text)
            let attrS = NSMutableAttributedString(string: text)
            //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.fontChange(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.white, .font: UIFont.fontChange(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            //: attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))
            attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))

            //: let attach = NSTextAttachment()
            let attach = NSTextAttachment()
            //: attach.image = UIImage.submitGift(name: "icon_video_bd")
            attach.image = UIImage.submitGift(name: (String(k_maxName.suffix(5)) + "video" + String(kEquipmentText.suffix(3))))
            //: attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            //: let attachImage = NSMutableAttributedString(attachment: attach)
            let attachImage = NSMutableAttributedString(attachment: attach)
            //: attrS.insert(attachImage, at: 0)
            attrS.insert(attachImage, at: 0)
            //: return attrS
            return attrS

            //: } else if fee != 0 || originalFee != 0 {
        } else if fee != 0 || originalFee != 0 {
            //: let text = "Video Call".localized
            let text = (String(kArrayStr.suffix(4)) + "o Call").localized
            //: let attrS = NSMutableAttributedString(string: text)
            let attrS = NSMutableAttributedString(string: text)
            //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.fontChange(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.white, .font: UIFont.fontChange(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
            //: attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))
            attrS.addAttributes(attributes, range: NSRange(location: 0, length: attrS.length))

            //: let attach = NSTextAttachment()
            let attach = NSTextAttachment()
            //: attach.image = UIImage.submitGift(name: "icon_video_bd")
            attach.image = UIImage.submitGift(name: (String(k_maxName.suffix(5)) + "video" + String(kEquipmentText.suffix(3))))
            //: attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            attach.bounds = CGRect(x: 0, y: -8, width: 22, height: 22)
            //: let attachImage = NSMutableAttributedString(attachment: attach)
            let attachImage = NSMutableAttributedString(attachment: attach)
            //: attrS.insert(attachImage, at: 0)
            attrS.insert(attachImage, at: 0)

            //: if fee == originalFee {
            if fee == originalFee {
                //: let feetext = "\n %@/min".localizedArguments(fee)
                let feetext = (String(kUserValue) + String(kFrameId)).edgeDelay(fee)
                //: let feetattrS = NSMutableAttributedString(string: feetext)
                let feetattrS = NSMutableAttributedString(string: feetext)
                //: let attach2 = NSTextAttachment()
                let attach2 = NSTextAttachment()
                //: attach2.image = UIImage.submitGift(name: "icon_coin_pre")
                attach2.image = UIImage.submitGift(name: (String(kLabelUrl) + String(k_viewUrl.suffix(8))))
                //: attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                //: let attachImage2 = NSMutableAttributedString(attachment: attach2)
                let attachImage2 = NSMutableAttributedString(attachment: attach2)
                //: feetattrS.insert(attachImage2, at: 1)
                feetattrS.insert(attachImage2, at: 1)

                //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.fontChange(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                let attributes = [.foregroundColor: UIColor.white, .font: UIFont.fontChange(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                //: feetattrS.addAttributes(attributes, range: NSRange(location: 2, length: feetext.count-1))
                feetattrS.addAttributes(attributes, range: NSRange(location: 2, length: feetext.count - 1))
                //: attrS.insert(feetattrS, at: text.count+1)
                attrS.insert(feetattrS, at: text.count + 1)

                //: let paragraphStyle = NSMutableParagraphStyle.init()
                let paragraphStyle = NSMutableParagraphStyle()
                //: paragraphStyle.lineSpacing = 0
                paragraphStyle.lineSpacing = 0
                //: paragraphStyle.alignment = .center
                paragraphStyle.alignment = .center
                //: attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + feetext.count))
                attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + feetext.count))
                //: return attrS
                return attrS
                //: } else {
            } else {
                //: let ptext = "\n %@ %@/min".localizedArguments(fee, originalFee)
                let ptext = (k_mainCurrentMessage + "%@/mi" + String(kSharedContent)).edgeDelay(fee, originalFee)
                //: let newAttrS = NSMutableAttributedString(string: ptext)
                let newAttrS = NSMutableAttributedString(string: ptext)

                //: let attach2 = NSTextAttachment()
                let attach2 = NSTextAttachment()
                //: attach2.image = UIImage.submitGift(name: "icon_coin_pre")
                attach2.image = UIImage.submitGift(name: (String(kLabelUrl) + String(k_viewUrl.suffix(8))))
                //: attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                attach2.bounds = CGRect(x: 0, y: -3, width: 14, height: 14)
                //: let attachImage2 = NSMutableAttributedString(attachment: attach2)
                let attachImage2 = NSMutableAttributedString(attachment: attach2)
                //: newAttrS.insert(attachImage2, at: 1)
                newAttrS.insert(attachImage2, at: 1)

                //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.fontChange(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                let attributes = [.foregroundColor: UIColor.white, .font: UIFont.fontChange(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                //: newAttrS.addAttributes(attributes, range: NSRange(location: 2, length: ptext.count-1))
                newAttrS.addAttributes(attributes, range: NSRange(location: 2, length: ptext.count - 1))
                //: let originalFeemin = "%@/min".localizedArguments(originalFee)
                let originalFeemin = (String(k_frameKey.suffix(6))).edgeDelay(originalFee)
                //: let range: Range = ptext.range(of: originalFeemin)!
                let range: Range = ptext.range(of: originalFeemin)!
                //: let location = ptext.distance(from: ptext.startIndex, to: range.lowerBound )
                let location = ptext.distance(from: ptext.startIndex, to: range.lowerBound)
                //: let attributes2 = [.foregroundColor: UIColor.init(hex: "#D8D8D8")!, .font: UIFont.fontChange(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                let attributes2 = [.foregroundColor: UIColor(hex: (String(kLayerPath)))!, .font: UIFont.fontChange(type: .Medium, fontSize: 10)] as [NSAttributedString.Key: Any]
                //: newAttrS.addAttributes(attributes2, range: NSRange(location: location+1, length: originalFeemin.count))
                newAttrS.addAttributes(attributes2, range: NSRange(location: location + 1, length: originalFeemin.count))

                //: newAttrS.addAttribute(.strikethroughStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: location+1, length: originalFeemin.count))
                newAttrS.addAttribute(.strikethroughStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: location + 1, length: originalFeemin.count))

                //: attrS.insert(newAttrS, at: text.count+1)
                attrS.insert(newAttrS, at: text.count + 1)

                //: let paragraphStyle = NSMutableParagraphStyle.init()
                let paragraphStyle = NSMutableParagraphStyle()
                //: paragraphStyle.lineSpacing = 0
                paragraphStyle.lineSpacing = 0
                //: paragraphStyle.alignment = .center
                paragraphStyle.alignment = .center
                //: attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + ptext.count))
                attrS.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: text.count + ptext.count))
                //: return attrS
                return attrS
            }
        }
        //: return NSMutableAttributedString.init()
        return NSMutableAttributedString()
    }

    /// 免费1分钟通话结束弹窗
    /// - Parameters:
    ///   - originalFee: 原价
    ///   - vipFee: VIP价格（0：执行原价逻辑）
    /// - Returns: string
    //: static func setFreeStopPriceStr(originalFee: Int, vipFee: Int = 0) -> String {
    static func towardPostSend(originalFee: Int, vipFee: Int = 0) -> String {
        //: guard DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue else {
        guard DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue else {
            //: return "Video Call".localized
            return (String(kArrayStr.suffix(4)) + "o Call").localized
        }
        //: if DistanceAppManager.share.loginUserMode.freeCallTimes > 0 {
        if DistanceAppManager.share.loginUserMode.freeCallTimes > 0 {
            //: if DistanceAppManager.share.appUserConfigMode.callBtnStyle == 1 {
            if DistanceAppManager.share.appUserConfigMode.callBtnStyle == 1 {
                //: return "Free 1 min".localized
                return (String(k_pathMsg)).localized
                //: } else {
            } else {
                //: return "Video Call".localized
                return (String(kArrayStr.suffix(4)) + "o Call").localized
            }
            //: } else {
        } else {
            //: if vipFee > 0 {
            if vipFee > 0 {
                //: return "%@ Coins/min".localizedArguments(vipFee)
                return (String(kCenterPath) + String(kListName)).edgeDelay(vipFee)
                //: } else {
            } else {
                //: return  "%@ Gold coins / Min".localizedArguments(originalFee)
                return (String(k_failStr.prefix(5)) + "ld c" + String(kResponseData) + String(k_pointWithData)).edgeDelay(originalFee)
            }
        }
    }

    /// 视频通话价格
    //: static func setVideoPriceStr(VideoPrice: Int) -> NSMutableAttributedString {
    static func terrace(VideoPrice: Int) -> NSMutableAttributedString {
        //: let index = EnableFreeCallType.nor
        let index = NameBinaryCount.nor
        //: if DistanceAppManager.share.loginUserMode.freeCallTimes > 0 && DistanceAppManager.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
        if DistanceAppManager.share.loginUserMode.freeCallTimes > 0 && DistanceAppManager.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
            //: var text = ""
            var text = ""
            //: if DistanceAppManager.share.appUserConfigMode.callBtnStyle == 1 {
            if DistanceAppManager.share.appUserConfigMode.callBtnStyle == 1 {
                //: text = "Free 1 min".localized
                text = (String(k_pathMsg)).localized
                //: } else {
            } else {
                //: text = "Video Call".localized
                text = (String(kArrayStr.suffix(4)) + "o Call").localized
            }

            //: let attrString = NSMutableAttributedString(string: text)
            let attrString = NSMutableAttributedString(string: text)
            //: let attributes = [.foregroundColor: UIColor.colorStatuteNameApp(), .font: UIFont.fontChange(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.colorStatuteNameApp(), .font: UIFont.fontChange(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            //: return attrString
            return attrString

            //: } else {
        } else {
            //: let VideoCall = "Video Call".localized
            let VideoCall = (String(kArrayStr.suffix(4)) + "o Call").localized
            //: let videoStr = "Video Call (%@ Coins/min)".localizedArguments(VideoPrice)
            let videoStr = (String(k_appearanceData)).edgeDelay(VideoPrice)
            //: let attrString = NSMutableAttributedString(string: videoStr)
            let attrString = NSMutableAttributedString(string: videoStr)
            //: let attributes = [.foregroundColor: UIColor.colorStatuteNameApp(), .font: UIFont.fontChange(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.colorStatuteNameApp(), .font: UIFont.fontChange(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            //: let attributes2 = [.foregroundColor: UIColor.appThemeColor(), .font: UIFont.fontChange(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            let attributes2 = [.foregroundColor: UIColor.increase(), .font: UIFont.fontChange(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes2, range: NSRange(location: VideoCall.count, length: attrString.length-VideoCall.count))
            attrString.addAttributes(attributes2, range: NSRange(location: VideoCall.count, length: attrString.length - VideoCall.count))
            //: return attrString
            return attrString
        }
    }

    /// 音频通话价格
    //: static func setVoicePriceStr(VoicePrice: Int)-> NSMutableAttributedString {
    static func beyondWith(VoicePrice: Int) -> NSMutableAttributedString {
        //: let index = EnableFreeCallType.nor
        let index = NameBinaryCount.nor
        //: if DistanceAppManager.share.loginUserMode.freeCallTimes > 0 && DistanceAppManager.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
        if DistanceAppManager.share.loginUserMode.freeCallTimes > 0 && DistanceAppManager.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
            //: var text = ""
            var text = ""
            //: if DistanceAppManager.share.appUserConfigMode.callBtnStyle == 1 {
            if DistanceAppManager.share.appUserConfigMode.callBtnStyle == 1 {
                //: text = "Free 1 min".localized
                text = (String(k_pathMsg)).localized
                //: } else {
            } else {
                //: text = "Voice Call".localized
                text = (String(k_directionName) + k_textMsg.replacingOccurrences(of: "make", with: "ll")).localized
            }

            //: let attrString = NSMutableAttributedString(string: text)
            let attrString = NSMutableAttributedString(string: text)
            //: let attributes = [.foregroundColor: UIColor.colorStatuteNameApp(), .font: UIFont.fontChange(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.colorStatuteNameApp(), .font: UIFont.fontChange(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            //: return attrString
            return attrString

            //: } else {
        } else {
            //: let VoiceCall = "Voice Call".localized
            let VoiceCall = (String(k_directionName) + k_textMsg.replacingOccurrences(of: "make", with: "ll")).localized
            //: let videoStr = "Voice Call (%@ Coins/min)".localizedArguments(VoicePrice)
            let videoStr = (String(k_addId.prefix(6)) + "Call " + String(k_interactionName.suffix(6)) + "ins/mi" + String(k_kitUrl)).edgeDelay(VoicePrice)
            //: let attrString = NSMutableAttributedString(string: videoStr)
            let attrString = NSMutableAttributedString(string: videoStr)
            //: let attributes = [.foregroundColor: UIColor.colorStatuteNameApp(), .font: UIFont.fontChange(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.colorStatuteNameApp(), .font: UIFont.fontChange(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            attrString.addAttributes(attributes, range: NSRange(location: 0, length: attrString.length))
            //: let attributes2 = [.foregroundColor: UIColor.appThemeColor(), .font: UIFont.fontChange(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            let attributes2 = [.foregroundColor: UIColor.increase(), .font: UIFont.fontChange(type: .Regular, fontSize: 14)] as [NSAttributedString.Key: Any]
            //: attrString.addAttributes(attributes2, range: NSRange(location: VoiceCall.count, length: attrString.length-VoiceCall.count))
            attrString.addAttributes(attributes2, range: NSRange(location: VoiceCall.count, length: attrString.length - VoiceCall.count))
            //: return attrString
            return attrString
        }
    }
}

// MARK: - 男性VIP价格

//: extension String {
extension String {
    /// 获取男性侧视频通话VIP展示字符串
    /// - Parameters: videoPrice: 视频通话价格
    /// - Returns: 字符串
    //: static func getMaleVIPVideoPriceString(videoPrice: String) -> String {
    static func behindRealize(videoPrice: String) -> String {
        //: guard DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue else {
        guard DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue else {
            //: return "Video Call".localized
            return (String(kArrayStr.suffix(4)) + "o Call").localized
        }
        //: let index = EnableFreeCallType.nor
        let index = NameBinaryCount.nor
        //: if DistanceAppManager.share.loginUserMode.freeCallTimes > 0 && DistanceAppManager.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
        if DistanceAppManager.share.loginUserMode.freeCallTimes > 0 && DistanceAppManager.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue {
            //: if DistanceAppManager.share.appUserConfigMode.callBtnStyle == 1 {
            if DistanceAppManager.share.appUserConfigMode.callBtnStyle == 1 {
                //: return "Free 1 min".localized
                return (String(k_pathMsg)).localized
                //: } else {
            } else {
                //: return "Video Call".localized
                return (String(kArrayStr.suffix(4)) + "o Call").localized
            }
            //: } else {
        } else {
            //: return "%@ Coins/min".localizedArguments(videoPrice)
            return (String(kCenterPath) + String(kListName)).edgeDelay(videoPrice)
        }
    }
}
