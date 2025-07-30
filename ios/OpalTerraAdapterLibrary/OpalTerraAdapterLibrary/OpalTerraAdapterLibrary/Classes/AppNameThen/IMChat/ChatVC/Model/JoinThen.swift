
//: Declare String Begin

/*: "CacheIntimatePhotoUnlockMsgIdArrayKey" :*/
fileprivate let k_errorData:[UInt8] = [0x79,0x65,0x4b,0x79,0x61,0x72,0x72,0x41,0x64,0x49,0x67,0x73,0x4d,0x6b,0x63,0x6f,0x6c,0x6e,0x55,0x6f,0x74,0x6f,0x68,0x50,0x65,0x74,0x61,0x6d,0x69,0x74,0x6e,0x49,0x65,0x68,0x63,0x61,0x43]

/*: "CachePrivateChatVideoTipsIsShow_ :*/
fileprivate let k_darkFormat:[UInt8] = [0x5a,0x78,0x7a,0x71,0x7c,0x49,0x6b,0x70,0x6f,0x78,0x6d,0x7c,0x5a,0x71,0x78,0x6d,0x4f,0x70,0x7d,0x7c,0x76,0x4d,0x70,0x69,0x6a,0x50,0x6a,0x4a,0x71,0x76,0x6e,0x46]

private func labDelete(group num: UInt8) -> UInt8 {
    return num ^ 25
}

/*: _ :*/
fileprivate let kToMsg:String = "enter"

/*: "Quick greeting can only be sent to him once" :*/
fileprivate let k_playerPath:[UInt8] = [0x31,0x15,0x9,0x3,0xb,0x40,0x7,0x12,0x5,0x5,0x14,0x9,0xe,0x7,0x40,0x3,0x1,0xe,0x40,0xf,0xe,0xc,0x19,0x40,0x2,0x5,0x40,0x13,0x5,0xe,0x14,0x40,0x14,0xf,0x40,0x8,0x9,0xd,0x40,0xf,0xe,0x3,0x5]

/*: "txt" :*/
fileprivate let k_valueLevelKey:[Character] = ["t","x","t"]

/*: "audio" :*/
fileprivate let k_viewId:String = "audto"

/*: "Please add greeting text" :*/
fileprivate let k_contentMsg:[Character] = ["P","l","e","a","s","e"," ","a","d","d"," ","g","r","e","e","t","i","n","g"," ","t","e"]
fileprivate let k_pointUpMessage:String = "XT"

/*: "You have not set up a photo greeting, please set it up before sending!" :*/
fileprivate let kStartData:[UInt8] = [0x21,0x67,0x6e,0x69,0x64,0x6e,0x65,0x73,0x20,0x65,0x72,0x6f,0x66,0x65,0x62,0x20,0x70,0x75,0x20,0x74,0x69,0x20,0x74,0x65,0x73,0x20,0x65,0x73,0x61,0x65,0x6c,0x70,0x20,0x2c,0x67,0x6e,0x69,0x74,0x65,0x65,0x72,0x67,0x20,0x6f,0x74,0x6f,0x68,0x70,0x20,0x61,0x20,0x70,0x75,0x20,0x74,0x65,0x73,0x20,0x74,0x6f,0x6e,0x20,0x65,0x76,0x61,0x68,0x20,0x75,0x6f,0x59]

/*: "Cancel" :*/
fileprivate let k_indexTitle:String = "user view add for typeCance"
fileprivate let kListText:String = "size"

/*: "Go to set" :*/
fileprivate let k_cloudToName:[Character] = ["G","o"," ","t","o"," ","s"]
fileprivate let kVerticalFormat:String = "etap"

/*: "#startTime#" :*/
fileprivate let k_showVideoTitle:[Character] = ["#","s","t","a","r","t"]
fileprivate let kDataValue:String = "than manager ifTime#"

/*: "#endTime#" :*/
fileprivate let k_giftCameraStr:String = "#endTimereturn view show style action"
fileprivate let kEditUrl:String = "back"

/*: "text" :*/
fileprivate let kChooseId:[Character] = ["t","e","x","t"]

/*: "img" :*/
fileprivate let k_toValue:[Character] = ["i","m","g"]

/*: "video" :*/
fileprivate let kArrayKey:[Character] = ["v","i","d","e","o"]

/*: "gift" :*/
fileprivate let kSizeMessage:String = "giaction"

/*: "PrivateChat 点击引用消息 :*/
fileprivate let kLabKey:String = "PrivateChhome title text cell gesture"
fileprivate let k_indexName:[Character] = ["a","t"," ","点","击","引","用","\u{6d88}","\u{606f}"]

/*: ." :*/
fileprivate let k_infoKey:[Character] = ["."]

/*: "Sent " :*/
fileprivate let kErrorStr:String = "Sent image image edit then head"

/*: " x :*/
fileprivate let k_kindMsg:[Character] = [" ","x"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  JoinThen.swift
//  AbroadTalking
//
//  Created by young on 2023/1/5.
//

//: import UIKit
import UIKit

/// 一键打招呼Block
//: typealias QuickGreetingBlock = (_ errorCode: Int?, _ errorMsg: String?, _ textDict: [String: Any]?, _ audioDict: [String: Any]?) -> Void
typealias QuickGreetingBlock = (_ errorCode: Int?, _ errorMsg: String?, _ textDict: [String: Any]?, _ audioDict: [String: Any]?) -> Void

/// 图片打招呼Block
//: typealias BeautyPhotosBlock = (_ isPushSet: Bool, _ PhotoDict: [String: Any]?) -> Void
typealias BeautyPhotosBlock = (_ isPushSet: Bool, _ PhotoDict: [String: Any]?) -> Void

//: public class TalkingPrivateChatManager: NSObject {
public class JoinThen: NSObject {
    /// 记录私信对端已读回执时间 [key：userID，value：对端最后已读回执时间]
    //: var readReceiptDict = [String: Int]()
    var readReceiptDict = [String: Int]()

    //: @objc static let share = TalkingPrivateChatManager()
    @objc static let share = JoinThen()
    //: private override init() {}
    override private init() {}

    //: @objc let UnlockMsgIdArrayKey = "CacheIntimatePhotoUnlockMsgIdArrayKey"  // 私密照片已解锁礼物消息数组的key
    @objc let UnlockMsgIdArrayKey = String(bytes: k_errorData.reversed(), encoding: .utf8)! // 私密照片已解锁礼物消息数组的key
}

// MARK: - 插入音视频通话提示消息

//: extension TalkingPrivateChatManager {
extension JoinThen {
    /// 判断是否需要插入音视频通话提示消息
    /// - Parameters:
    ///   - toUid: 对方Id
    ///   - msgView: TUI视图
    ///   - completionHandler: 回调
    //: static func chat_privateChatVideo_insertTipMsg(toUid: String, msgView: TUIMessageController, needInsertHandler: (() -> Void)?) {
    static func sinceClick(toUid: String, msgView: MagnitudeernationalismTableViewController, needInsertHandler: (() -> Void)?) {
        // 非审核模式
        //: guard DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue else { return }
        guard DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue else { return }
        // 男性
        //: guard DistanceAppManager.share.loginUserMode.sex == Gender.male.rawValue else { return }
        guard DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.male.rawValue else { return }

        // 是否展示过提示文案
        //: let TalkingPrivateChatVideoTipsIsShow = "CachePrivateChatVideoTipsIsShow_\(String(DistanceAppManager.share.loginUserMode.userID))_\(toUid)"
        let TalkingPrivateChatVideoTipsIsShow = String(bytes: k_darkFormat.map{labDelete(group: $0)}, encoding: .utf8)! + "\(String(DistanceAppManager.share.loginUserMode.userID))_\(toUid)"
        //: let isShow = Defaults.bool(forKey: TalkingPrivateChatVideoTipsIsShow)
        let isShow = show_blockText.bool(forKey: TalkingPrivateChatVideoTipsIsShow)
        //: guard isShow == false else { return }
        guard isShow == false else { return }

        // 消息达到5条
        //: guard msgView.uiMsgs.count >= 5 else { return }
        guard msgView.uiMsgs.count >= 5 else { return }

        //: var hasVoiceVideo = false
        var hasVoiceVideo = false // 是否有音视频通话消息
        //: var outgoingMsgCount = 0
        var outgoingMsgCount = 0 // 消息发送方已发送消息数量
        //: for indexModel in msgView.uiMsgs {
        for indexModel in msgView.uiMsgs {
            //: let indexModel = indexModel as? InscriptionThen
            let indexModel = indexModel as? InscriptionThen
            //: if indexModel != nil {
            if indexModel != nil {
                //: if indexModel!.isKind(of: ToCellData.self) {
                if indexModel!.isKind(of: ToCellData.self) { // 是否包含音视频文本
                    //: let textMsgModel = indexModel as! ToCellData
                    let textMsgModel = indexModel as! ToCellData
                    //: if textMsgModel.isVoiceVideo == true {
                    if textMsgModel.isVoiceVideo == true {
                        //: hasVoiceVideo = true
                        hasVoiceVideo = true
                        //: break
                        break
                    }
                }

                // 语音消息 || 文本消息 || 图片消息 || 视频消息
                //: if indexModel!.isKind(of: TitleCellData.self) ||
                if indexModel!.isKind(of: TitleCellData.self) ||
                    //: indexModel!.isKind(of: ToCellData.self) ||
                    indexModel!.isKind(of: ToCellData.self) ||
                    //: indexModel!.isKind(of: ChatCellData.self) ||
                    indexModel!.isKind(of: ChatCellData.self) ||
                    //: indexModel!.isKind(of: EqualKeyCellData.self) {
                    indexModel!.isKind(of: EqualKeyCellData.self)
                {
                    //: if indexModel?.direction == .MsgDirectionOutgoing {
                    if indexModel?.direction == .MsgDirectionOutgoing { // 消息发送方
                        //: outgoingMsgCount += 1
                        outgoingMsgCount += 1
                    }
                }
            }
        }

        //: guard hasVoiceVideo == false else {
        guard hasVoiceVideo == false else {
            //: Defaults.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            show_blockText.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            //: return
            return
        }
        //: guard outgoingMsgCount >= 5 else { return }
        guard outgoingMsgCount >= 5 else { return }

        // 回调外部插入音视频提示消息
        //: if needInsertHandler != nil {
        if needInsertHandler != nil {
            //: needInsertHandler!()
            needInsertHandler!()
            //: Defaults.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
            show_blockText.set(true, forKey: TalkingPrivateChatVideoTipsIsShow)
        }
    }
}

// MARK: - 一键打招呼

//: extension TalkingPrivateChatManager {
extension JoinThen {
    /// 判断是否可以一键打招呼，回调结果
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - handler: errorCode：1 = 已发送过；2=未添加打招呼数据;
    //: static func chat_sendQuickGreeting(toUserId: String, completionHandler: @escaping QuickGreetingBlock) {
    static func outsidePhotoUser(toUserId: String, completionHandler: @escaping QuickGreetingBlock) {
        //: let key = "\(DistanceAppManager.share.loginUserMode.userID)_\(TalkingSendAutoGreetIsToKey)_\(toUserId)"
        let key = "\(DistanceAppManager.share.loginUserMode.userID)_\(data_voiceValue)_\(toUserId)"
        //: let ishave = UserDefaults.standard.bool(forKey: key)
        let ishave = UserDefaults.standard.bool(forKey: key)
        //: guard !ishave else {
        guard !ishave else {
            //: completionHandler(1, "Quick greeting can only be sent to him once".localized, nil, nil)
            completionHandler(1, String(bytes: k_playerPath.map{$0^96}, encoding: .utf8)!.localized, nil, nil)
            //: return
            return
        }

        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: PlayerRequestTool.req_getAutoGreetContent { succeed, result, errorModel in
        PlayerRequestTool.nor { succeed, result, errorModel in
            //: EndProgressHUD.popEnable()
            EndProgressHUD.popEnable()
            //: guard succeed == true else {
            guard succeed == true else {
                //: if errorModel?.errorCode == 60003, !DistanceAppManager.share.loginUserMode.isNaUser {
                if errorModel?.errorCode == 60003, !DistanceAppManager.share.loginUserMode.isNaUser {
                    /// 真人认证提示弹窗
                    //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                    FrameReactiveCompatible.shared.clickTo()
                    //: return
                    return
                }
                //: completionHandler(2, errorModel?.errorMsg ?? "", nil, nil)
                completionHandler(2, errorModel?.errorMsg ?? "", nil, nil)
                //: return
                return
            }
            //: guard let dict = result as? [String: Any] else {
            guard let dict = result as? [String: Any] else {
                //: completionHandler(2, "", nil, nil)
                completionHandler(2, "", nil, nil)
                //: return
                return
            }
            //: let textDict = dict["txt"] as? [String: Any]
            let textDict = dict[(String(k_valueLevelKey))] as? [String: Any]
            //: let audioDict = dict["audio"] as? [String: Any]
            let audioDict = dict[(k_viewId.replacingOccurrences(of: "to", with: "io"))] as? [String: Any]
            //: if textDict?.count == 0 && audioDict?.count == 0 {
            if textDict?.count == 0, audioDict?.count == 0 {
                //: completionHandler(2, "Please add greeting text".localized, nil, nil)
                completionHandler(2, (String(k_contentMsg) + k_pointUpMessage.lowercased()).localized, nil, nil)
                //: return
                return
            }

            // 一键打招呼本地存储
            //: chat_changeSaveGreetData(toUserId: toUserId, isHave: true)
            purlHave(toUserId: toUserId, isHave: true)
            //: completionHandler(nil, nil, textDict, audioDict)
            completionHandler(nil, nil, textDict, audioDict)
        }
    }

    /// 一键打招呼状态本地存储
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - isHave: 是否已发送
    //: static func chat_changeSaveGreetData(toUserId: String, isHave: Bool) {
    static func purlHave(toUserId: String, isHave: Bool) {
        // 一键打招呼本地cunc
        //: let key = "\(DistanceAppManager.share.loginUserMode.userID)_\(TalkingSendAutoGreetIsToKey)_\(toUserId)"
        let key = "\(DistanceAppManager.share.loginUserMode.userID)_\(data_voiceValue)_\(toUserId)"
        //: UserDefaults.standard.set(isHave, forKey: key)
        UserDefaults.standard.set(isHave, forKey: key)
    }

    /// 图片打招呼
    /// - Parameters:
    ///   - toUserId: 接收方UserId
    ///   - handler: errorCode：1 = 已发送过；2=未添加打招呼数据；
    //: static func chat_sendBeautyPhotos(toUserId: String, completionHandler: @escaping BeautyPhotosBlock) {
    static func chatInHandler(toUserId: String, completionHandler: @escaping BeautyPhotosBlock) {
        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: PlayerRequestTool.req_getIntimatePhoto(toUid: toUserId) { succeed, result, errorModel in
        PlayerRequestTool.endUserDisable(toUid: toUserId) { succeed, result, errorModel in
            //: EndProgressHUD.popEnable()
            EndProgressHUD.popEnable()
            /// 未添加打招呼图片
            //: if errorModel?.errorCode == 111 {
            if errorModel?.errorCode == 111 {
                //: let config = ShowAlertConfig()
                let config = VideoAlertConfig()
                //: config.alignment = .center
                config.alignment = .center
                //: if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
                if UserViewToolThen.share.interfaceLang == PlayerSubqueryConvertible.pt.rawValue {
                    //: config.width = 330
                    config.width = 330
                }
                //: TalkingAlertShow.customAlert(message: "You have not set up a photo greeting, please set it up before sending!".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Go to set".localized, leftBlock: {
                FrameHiddenReactiveCompatible.systemToConfig(message: String(bytes: kStartData.reversed(), encoding: .utf8)!.localized, leftBtnTitle: (String(k_indexTitle.suffix(5)) + kListText.replacingOccurrences(of: "size", with: "l")).localized, rightBtnTitle: (String(k_cloudToName) + kVerticalFormat.replacingOccurrences(of: "tap", with: "t")).localized, leftBlock: {
                    //: TalkingAlertShow.hideAlert()
                    FrameHiddenReactiveCompatible.middleText()

                    //: }, rightBlock: {
                }, rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    FrameHiddenReactiveCompatible.middleText()
                    //: completionHandler(true, nil)
                    completionHandler(true, nil)
                    //: }, config: config)
                }, config: config)
                //: return
                return
                    //: } else if errorModel?.errorCode == 60003, !DistanceAppManager.share.loginUserMode.isNaUser {
            } else if errorModel?.errorCode == 60003, !DistanceAppManager.share.loginUserMode.isNaUser {
                /// 真人认证提示弹窗
                //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                FrameReactiveCompatible.shared.clickTo()
                //: return
                return
            }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? [String: Any] else {
                guard let dict = result as? [String: Any] else {
                    //: return
                    return
                }
                //: completionHandler(false, dict)
                completionHandler(false, dict)
            }
        }
    }
}

// MARK: - 插入与官方客服聊天提示消息

//: extension TalkingPrivateChatManager {
extension JoinThen {
    ///  判断是否需要插入与官方客服聊天提示消息
    /// - Parameter needInsertHandler: 回调
    //: static func chat_customerServiceCenter_insertTipMsg(needInsertHandler: ((_ tipsStr: String?) -> Void)?) {
    static func teamFile(needInsertHandler: ((_ tipsStr: String?) -> Void)?) {
        //: guard DistanceAppManager.share.appConfigMode.CSConfig.systemTips.count > 0 else {
        guard DistanceAppManager.share.appConfigMode.CSConfig.systemTips.count > 0 else { // 接口没下发，无需提示
            //: if needInsertHandler != nil {
            if needInsertHandler != nil {
                //: needInsertHandler!(nil)
                needInsertHandler!(nil)
            }
            //: return
            return
        }

        // 根据设备所在时区转换时间
        //: let startTime = NSDate.getCurrentZoneDateString(shDateStr: DistanceAppManager.share.appConfigMode.CSConfig.startTime)
        let startTime = NSDate.actionEqual(shDateStr: DistanceAppManager.share.appConfigMode.CSConfig.startTime)
        //: let endTime = NSDate.getCurrentZoneDateString(shDateStr: DistanceAppManager.share.appConfigMode.CSConfig.endTime)
        let endTime = NSDate.actionEqual(shDateStr: DistanceAppManager.share.appConfigMode.CSConfig.endTime)
        //: let isIncluded = NSDate.compareCurrentTimeIsIncluded(startTime: startTime, endTime: endTime)
        let isIncluded = NSDate.buss(startTime: startTime, endTime: endTime)

        //: guard isIncluded == false else {
        guard isIncluded == false else {
            //: if needInsertHandler != nil {
            if needInsertHandler != nil {
                //: needInsertHandler!(nil)
                needInsertHandler!(nil)
            }
            //: return
            return
        }

        // 非工作时间段内，添加提示
        //: var tips = DistanceAppManager.share.appConfigMode.CSConfig.systemTips
        var tips = DistanceAppManager.share.appConfigMode.CSConfig.systemTips
        //: tips = tips.replacingOccurrences(of: "#startTime#", with: "\(startTime)")
        tips = tips.replacingOccurrences(of: (String(k_showVideoTitle) + String(kDataValue.suffix(5))), with: "\(startTime)")
        //: tips = tips.replacingOccurrences(of: "#endTime#", with: "\(endTime)")
        tips = tips.replacingOccurrences(of: (String(k_giftCameraStr.prefix(8)) + kEditUrl.replacingOccurrences(of: "back", with: "#")), with: "\(endTime)")
        //: if needInsertHandler != nil {
        if needInsertHandler != nil {
            //: needInsertHandler!(tips)
            needInsertHandler!(tips)
        }
    }
}

// MARK: - 刷新私密消息（照片、视频）展示状态

//: extension TalkingPrivateChatManager {
extension JoinThen {
    /// 接收到解锁私密消息（照片、视频）的礼物，刷新本地消息状态
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static func chat_onNewMessage_refreshLocalIntimateMsgStatus(cellData: InscriptionThen, msgView: TUIMessageController) {
    static func itemThen(cellData: InscriptionThen, msgView: MagnitudeernationalismTableViewController) {
        //: guard msgView.uiMsgs.count > 0 else {
        guard msgView.uiMsgs.count > 0 else {
            // --------- 【外部页面】收到了解锁礼物消息 ---------
            // 首次进入到当前页面，刷新消息状态
            //: var array = Defaults.object(forKey: TalkingPrivateChatManager.share.UnlockMsgIdArrayKey) as? [String]
            var array = show_blockText.object(forKey: JoinThen.share.UnlockMsgIdArrayKey) as? [String]

            // 本地有私密消息解锁礼物缓存，且是图片消息 或 视频消息
            //: guard array?.count ?? 0 > 0 &&
            guard array?.count ?? 0 > 0,
                  //: (cellData.isKind(of: ChatCellData.self) ||
                  cellData.isKind(of: ChatCellData.self) ||
                  //: cellData.isKind(of: EqualKeyCellData.self)) else { return }
                  cellData.isKind(of: EqualKeyCellData.self) else { return }

            // 找到本人发送的私密消息，更新状态为已解锁
            //: if array!.contains(cellData.msgModel.msgInfo.msgId) {
            if array!.contains(cellData.msgModel.msgInfo.msgId) {
                //: inner_changeIntimateMsg(cellData, msgView)
                makeBy(cellData, msgView)

                // 更新本地缓存
                //: array!.removeAll(where: { $0 == cellData.msgModel.msgInfo.msgId })
                array!.removeAll(where: { $0 == cellData.msgModel.msgInfo.msgId })
                //: Defaults.set(array, forKey: TalkingPrivateChatManager.share.UnlockMsgIdArrayKey)
                show_blockText.set(array, forKey: JoinThen.share.UnlockMsgIdArrayKey)
            }

            //: return
            return
        }

        //  --------- 在【当前页面】收到解锁礼物消息 ---------
        // 只有收到礼物解锁消息才刷新
        //: guard cellData.isKind(of: PitchReactiveCompatible.self) && cellData.msgModel.gift.unlockMsgId.count > 0 else { return }
        guard cellData.isKind(of: PitchReactiveCompatible.self), cellData.msgModel.gift.unlockMsgId.count > 0 else { return }

        // 找到本人发送的私密消息，更新状态为已解锁
        //: let unlockMsgId = cellData.msgModel.gift.unlockMsgId
        let unlockMsgId = cellData.msgModel.gift.unlockMsgId
        //: for msgCellData in msgView.uiMsgs {
        for msgCellData in msgView.uiMsgs {
            //: let data = msgCellData as! InscriptionThen
            let data = msgCellData as! InscriptionThen
            //: if data.msgModel.msgInfo.msgId == unlockMsgId {
            if data.msgModel.msgInfo.msgId == unlockMsgId {
                //: inner_changeIntimateMsg(data, msgView)
                makeBy(data, msgView)
                //: break
                break
            }
        }
    }

    /// 刷新本地消息状态
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static private func inner_changeIntimateMsg(_ cellData: InscriptionThen, _ msgView: TUIMessageController) {
    private static func makeBy(_ cellData: InscriptionThen, _ msgView: MagnitudeernationalismTableViewController) {
        //: if cellData.isKind(of: ChatCellData.self) {
        if cellData.isKind(of: ChatCellData.self) { // 私密照片
            //: let model = cellData.msgModel.msgInfo.intimatePhoto
            let model = cellData.msgModel.msgInfo.intimatePhoto
            //: if model.lockStatus != 0 {
            if model.lockStatus != 0 {
                //: model.lockStatus = 0
                model.lockStatus = 0
                //: msgView.changeIntimatePhotoMsg(cellData, photoModel: model)
                msgView.changeIntimatePhotoMsg(cellData, photoModel: model)
            }

            //: } else if cellData.isKind(of: EqualKeyCellData.self) {
        } else if cellData.isKind(of: EqualKeyCellData.self) { // 私密视频
            //: let model = cellData.msgModel.msgInfo.video
            let model = cellData.msgModel.msgInfo.video
            //: if model.lockStatus != 0 {
            if model.lockStatus != 0 {
                //: model.lockStatus = 0
                model.lockStatus = 0
                //: msgView.changeIntimateVideoMsg(cellData, videoModel: model)
                msgView.changeIntimateVideoMsg(cellData, videoModel: model)
            }
        }
    }
}

// MARK: - 未回复Reply to get points~逻辑

//: extension TalkingPrivateChatManager {
extension JoinThen {
    /// 女性记录最新回复时间, 刷新表格
    /// - Parameters:
    ///   - cellData: 数据
    ///   - msgView: TUI视图
    //: static func updateReplyLatestTimeAndReload(_ msgIncome: CGFloat, _ msgTime: Date?, _ msgView: TUIMessageController) {
    static func refreshReload(_ msgIncome: CGFloat, _ msgTime: Date?, _ msgView: MagnitudeernationalismTableViewController) {
        //: guard DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue else { return }
        //: guard msgIncome > 0 else { return }
        guard msgIncome > 0 else { return }
        //: guard let msgTime = msgTime else { return }
        guard let msgTime = msgTime else { return }
        //: guard TalkingPrivateChatController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return }
        guard DistantViewController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return }
        //: TalkingPrivateChatController.replyLatestTimes = msgTime
        DistantViewController.replyLatestTimes = msgTime
        //: msgView.tableView.reloadData()
        msgView.tableView.reloadData()
    }

    /// 判断是否展示未回复付费消息提示
    //: @objc public static func needShowReplyTipsMessage(_ direction: TMsgDirection, msgType: Int, msgTime: Date?) -> Bool {
    @objc public static func viewVideo(_ direction: UserAppMeasurable, msgType: Int, msgTime: Date?) -> Bool {
        //: guard DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue else { return false }
        guard DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue else { return false }
        //: guard direction == .MsgDirectionIncoming else { return false }
        guard direction == .MsgDirectionIncoming else { return false }
        //: guard let msgTime = msgTime else { return false }
        guard let msgTime = msgTime else { return false }
        //: guard TalkingPrivateChatController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return false }
        guard DistantViewController.replyLatestTimes.compare(msgTime) == .orderedAscending else { return false }
        //: guard TalkingPrivateChatManager.isReplyToGetPointsMsg(direction, msgType, msgTime: msgTime) else { return false }
        guard JoinThen.appBlock(direction, msgType, msgTime: msgTime) else { return false }
        //: return true
        return true
    }

    /// 是否是回复获取积分消息
    /// - Parameters:
    ///   - direction: 消息方向
    ///   - msgType: 消息类型
    ///   - msgTime: 消息时间
    /// - Returns: 结果
    //: static func isReplyToGetPointsMsg(_ direction: TMsgDirection, _ msgType: Int, msgTime: Date?) -> Bool {
    static func appBlock(_ direction: UserAppMeasurable, _ msgType: Int, msgTime: Date?) -> Bool {
        // 非审核模式, messageType == 5, 时间<24小时
        //: guard DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue else { return false }
        guard DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue else { return false }
        //: guard direction == .MsgDirectionIncoming else { return false }
        guard direction == .MsgDirectionIncoming else { return false }
        //: guard msgType == 5 else { return false }
        guard msgType == 5 else { return false }
        //: guard let msgTime = msgTime else { return false }
        guard let msgTime = msgTime else { return false }
        //: guard Date().timeIntervalSince(msgTime) < 24*60*60 else { return false }
        guard Date().timeIntervalSince(msgTime) < 24 * 60 * 60 else { return false }
        //: return true
        return true
    }
}

// MARK: - VIP展示消息已读逻辑

//: extension TalkingPrivateChatManager {
extension JoinThen {
    /// 是否需要插入已读回执引导充值VIP提醒消息
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func needInsertVIPReadReceiptMsg(cellData: InscriptionThen) -> Bool {
    static func requireOrData(cellData: InscriptionThen) -> Bool {
        //: if DistanceAppManager.share.loginUserMode.loungePlus == false,
        if DistanceAppManager.share.loginUserMode.loungePlus == false,
           //: cellData.innerMessage.groupID == nil,
           cellData.innerMessage.groupID == nil,
           //: cellData.status == .Msg_Status_Succ,
           cellData.status == .Msg_Status_Succ,
           //: cellData.direction == .MsgDirectionOutgoing,
           cellData.direction == .MsgDirectionOutgoing,
           //: cellData.msgModel.msgInfo.callCmd.count <= 0 {
           cellData.msgModel.msgInfo.callCmd.count <= 0
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 是否展示消息 已读/未读 标识
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func isShowReadMsg(cellData: InscriptionThen) -> Bool {
    static func changeModel(cellData: InscriptionThen) -> Bool {
        // vip && 非群聊 && 发送成功 && 本人发送 && 非音视频通话文本消息，展示消息是否已读标识
        //: if DistanceAppManager.share.loginUserMode.loungePlus == true,
        if DistanceAppManager.share.loginUserMode.loungePlus == true,
           //: cellData.innerMessage.groupID == nil,
           cellData.innerMessage.groupID == nil,
           //: cellData.status == .Msg_Status_Succ,
           cellData.status == .Msg_Status_Succ,
           //: cellData.direction == .MsgDirectionOutgoing,
           cellData.direction == .MsgDirectionOutgoing,
           //: cellData.msgModel.msgInfo.callCmd.count <= 0 {
           cellData.msgModel.msgInfo.callCmd.count <= 0
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 消息对方是否已读
    /// - Parameter cellData: 消息数据
    /// - Returns: 结果
    //: static func msgIsRead(cellData: InscriptionThen) -> Bool {
    static func picture(cellData: InscriptionThen) -> Bool {
        //: guard let selfMsgTime = cellData.innerMessage.timestamp else { return false }
        guard let selfMsgTime = cellData.innerMessage.timestamp else { return false }
        //: if cellData.innerMessage.isPeerRead == true {
        if cellData.innerMessage.isPeerRead == true {
            //: return true
            return true
        }
        //: let readTimeInterval = TalkingPrivateChatManager.share.readReceiptDict[cellData.innerMessage.userID] ?? 0
        let readTimeInterval = JoinThen.share.readReceiptDict[cellData.innerMessage.userID] ?? 0
        //: let readTime = Date(timeIntervalSince1970: TimeInterval(readTimeInterval))
        let readTime = Date(timeIntervalSince1970: TimeInterval(readTimeInterval))
        //: if selfMsgTime <= readTime {
        if selfMsgTime <= readTime {
            //: return true
            return true
        }
        //: return false
        return false
    }
}

// MARK: - Reply消息逻辑

//: extension TalkingPrivateChatManager {
extension JoinThen {
    /// 回复消息
    /// - Parameters:
    ///   - cellData: 数据
    ///   - targetId: 对方uid
    /// - Returns: 引用消息模型
    //: static func handleReplyMsg(cellData: InscriptionThen, targetId: String) -> AbTalkingChatMsgQuoteModel {
    static func dismissEnable(cellData: InscriptionThen, targetId: String) -> LockModel {
        //: let quoteModel = AbTalkingChatMsgQuoteModel()
        let quoteModel = LockModel()
        //: quoteModel.msgId = cellData.msgModel.msgInfo.msgId
        quoteModel.msgId = cellData.msgModel.msgInfo.msgId
        //: if cellData.direction == .MsgDirectionIncoming {
        if cellData.direction == .MsgDirectionIncoming {
            //: quoteModel.uid = targetId
            quoteModel.uid = targetId
            //: } else {
        } else {
            //: quoteModel.uid = DistanceAppManager.share.loginUserMode.userID
            quoteModel.uid = DistanceAppManager.share.loginUserMode.userID
        }
        //: let renderData = AbTalkingChatMsgQuoteDataModel()
        let renderData = HideModel()
        //: if cellData.isKind(of: ToCellData.self) {
        if cellData.isKind(of: ToCellData.self) {
            //: quoteModel.renderType = "text"
            quoteModel.renderType = (String(kChooseId))
            //: renderData.content = cellData.msgModel.msgInfo.content
            renderData.content = cellData.msgModel.msgInfo.content

            //: } else if cellData.isKind(of: ChatCellData.self) {
        } else if cellData.isKind(of: ChatCellData.self) {
            //: quoteModel.renderType = "img"
            quoteModel.renderType = (String(k_toValue))
            //: renderData.previewUrl = cellData.msgModel.msgInfo.imageUri
            renderData.previewUrl = cellData.msgModel.msgInfo.imageUri

            //: } else if cellData.isKind(of: EqualKeyCellData.self) {
        } else if cellData.isKind(of: EqualKeyCellData.self) {
            //: quoteModel.renderType = "video"
            quoteModel.renderType = (String(kArrayKey))
            //: renderData.videoUrl = cellData.msgModel.msgInfo.video.videoUrl
            renderData.videoUrl = cellData.msgModel.msgInfo.video.videoUrl
            //: renderData.coverUrl = cellData.msgModel.msgInfo.video.coverImg
            renderData.coverUrl = cellData.msgModel.msgInfo.video.coverImg

            //: } else if cellData.isKind(of: TitleCellData.self) {
        } else if cellData.isKind(of: TitleCellData.self) {
            //: let audioCelldata = cellData as! TitleCellData
            let audioCelldata = cellData as! TitleCellData
            //: quoteModel.renderType = "audio"
            quoteModel.renderType = (k_viewId.replacingOccurrences(of: "to", with: "io"))
            //: let voiceCache = DBUserInfoManager.cache_getAudioDB(message: audioCelldata.innerMessage)
            let voiceCache = AppNameThen.starExecute(message: audioCelldata.innerMessage)
            //: renderData.duration = Int(voiceCache.db_audioLength) ?? 0
            renderData.duration = Int(voiceCache.db_audioLength) ?? 0

            //: } else if cellData.isKind(of: PitchReactiveCompatible.self) {
        } else if cellData.isKind(of: PitchReactiveCompatible.self) {
            //: quoteModel.renderType = "gift"
            quoteModel.renderType = (kSizeMessage.replacingOccurrences(of: "action", with: "ft"))
            //: let giftCellData = cellData as! PitchReactiveCompatible
            let giftCellData = cellData as! PitchReactiveCompatible
            //: renderData.giftName = giftCellData.msgModel.gift.name
            renderData.giftName = giftCellData.msgModel.gift.name
            //: renderData.giftNameI18n = giftCellData.msgModel.gift.nameI18n
            renderData.giftNameI18n = giftCellData.msgModel.gift.nameI18n
            //: renderData.giftIcon = giftCellData.msgModel.gift.imgPreview
            renderData.giftIcon = giftCellData.msgModel.gift.imgPreview
            //: renderData.giftPrice = giftCellData.msgModel.gift.price
            renderData.giftPrice = giftCellData.msgModel.gift.price
            //: renderData.giftNum = Int(giftCellData.msgModel.gift.num) ?? 0
            renderData.giftNum = Int(giftCellData.msgModel.gift.num) ?? 0
        }

        //: quoteModel.renderData = renderData
        quoteModel.renderData = renderData
        //: return quoteModel
        return quoteModel
    }

    /// 点击“引用”消息
    /// - Parameters:
    ///   - cellData: 数据
    ///   - targetId: 对方uid
    //: static func handleClickReplyMsg(cellData: InscriptionThen, targetId: String) {
    static func computerGraphic(cellData: InscriptionThen, targetId: String) {
        //: let renderData = cellData.msgModel.quoteMsgInfo
        let renderData = cellData.msgModel.quoteMsgInfo
        //: UploadLogTool.writeLog(msg: "PrivateChat 点击引用消息\(renderData.renderType).")
        UploadDisplayThen.makeSelected(msg: (String(kLabKey.prefix(9)) + String(k_indexName)) + "\(renderData.renderType).")
        //: if renderData.renderType == "text" {
        if renderData.renderType == (String(kChooseId)) {
            //: let popView = QuoteDetailPopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let popView = TouchPopView(frame: CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue))
            //: popView.msgDetailText = renderData.renderData.content
            popView.msgDetailText = renderData.renderData.content
            //: popView.show()
            popView.face()

            //: } else if renderData.renderType == "img" {
        } else if renderData.renderType == (String(k_toValue)) {
            //: let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            let libraryPath = NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
            //: var filePath = (libraryPath as NSString).appendingPathComponent(imageFileName)
            var filePath = (libraryPath as NSString).appendingPathComponent(showBottomName)
            //: filePath = (filePath as NSString).appendingPathComponent((renderData.renderData.previewUrl as NSString).lastPathComponent)
            filePath = (filePath as NSString).appendingPathComponent((renderData.renderData.previewUrl as NSString).lastPathComponent)

            //: var model = TalkingMomentPhotoModel.init()
            var model = OnModelType()
            //: if FileManager.default.fileExists(atPath: filePath) {
            if FileManager.default.fileExists(atPath: filePath) {
                //: let data = NSData.init(contentsOfFile: filePath)
                let data = NSData(contentsOfFile: filePath)
                //: model.imagePic = UIImage(data: data! as Data)
                model.imagePic = UIImage(data: data! as Data)
                //: } else {
            } else {
                //: model.imgUrl =  renderData.renderData.previewUrl
                model.imgUrl = renderData.renderData.previewUrl
            }
            //: var currenModel = TalkingMomentModel.init()
            var currenModel = KeyMomentModel()
            //: var tempArr: [TalkingMomentPhotoModel] = []
            var tempArr: [OnModelType] = []
            //: tempArr.append(model)
            tempArr.append(model)
            //: currenModel.pic = tempArr
            currenModel.pic = tempArr
            //: let vc = TalkingMomentPhotosVC.init(momentModel: currenModel, index: 0, type: .normal)
            let vc = LimitJoinViewDelegate(momentModel: currenModel, index: 0, type: .normal)
            //: TalkingPrivateChatManager.share.getNavigationController()?.pushViewController(vc, animated: true)
            JoinThen.share.put()?.pushViewController(vc, animated: true)

            //: } else if renderData.renderType == "video" {
        } else if renderData.renderType == (String(kArrayKey)) {
            //: let videoPath = renderData.renderData.videoUrl
            let videoPath = renderData.renderData.videoUrl
            //: let vc = TalkingMomentVideoVC.init(videoPath: videoPath)
            let vc = PublishRecognizerDelegate(videoPath: videoPath)
            //: TalkingPrivateChatManager.share.getNavigationController()?.pushViewController(vc, animated: true)
            JoinThen.share.put()?.pushViewController(vc, animated: true)

            //: } else if renderData.renderType == "audio" {
        } else if renderData.renderType == (k_viewId.replacingOccurrences(of: "to", with: "io")) {
            //: let cacheWrap = WCDBVoiceMsgTable.db_getVoiceMsg(with: renderData.msgId)
            let cacheWrap = BearEnableMsgTable.sharedMini(with: renderData.msgId)
            //: let playModel = TalkingVoiceMsgPlayModel()
            let playModel = KeyPullReactiveCompatible()
            //: if cacheWrap != nil {
            if cacheWrap != nil {
                //: playModel.db_voiceCacheWrap = cacheWrap!
                playModel.db_voiceCacheWrap = cacheWrap!

                //: } else {
            } else {
                //: let model = WCDBVoiceMsgTable()
                let model = BearEnableMsgTable()
                //: model.msgId = renderData.msgId
                model.msgId = renderData.msgId
                //: model.db_voiceUri = renderData.renderData.url
                model.db_voiceUri = renderData.renderData.url
                //: model.db_senduid = renderData.uid
                model.db_senduid = renderData.uid
                //: if renderData.uid == DistanceAppManager.share.loginUserMode.userID {
                if renderData.uid == DistanceAppManager.share.loginUserMode.userID {
                    //: model.db_touid = targetId
                    model.db_touid = targetId
                    //: } else {
                } else {
                    //: model.db_touid = DistanceAppManager.share.loginUserMode.userID
                    model.db_touid = DistanceAppManager.share.loginUserMode.userID
                }
                //: model.db_audioLength = "\(renderData.renderData.duration)"
                model.db_audioLength = "\(renderData.renderData.duration)"
                //: WCDBVoiceMsgTable.db_insertVoiceMsg(model)
                BearEnableMsgTable.digitizer(model)
                //: playModel.db_voiceCacheWrap = model
                playModel.db_voiceCacheWrap = model
            }

            //: TalkingVoiceMsgPlayManager.shared.stopAudioPlayer()
            CommonManagerDelegate.shared.appMedium()
            //: TalkingVoiceMsgPlayManager.shared.starPlayReplyMsg(playModel: playModel)
            CommonManagerDelegate.shared.everyPlay(playModel: playModel)

            //: } else if renderData.renderType == "gift" {
        } else if renderData.renderType == (kSizeMessage.replacingOccurrences(of: "action", with: "ft")) {
            //: let popView = QuoteDetailPopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let popView = TouchPopView(frame: CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue))
            //: popView.msgDetailText = "Sent ".localized + renderData.renderData.giftNameLocal() + " x\(renderData.renderData.giftNum)"
            popView.msgDetailText = (String(kErrorStr.prefix(5))).localized + renderData.renderData.giftNameLocal() + " x\(renderData.renderData.giftNum)"
            //: popView.show()
            popView.face()
        }
    }
}

// MARK: - Event

//: extension TalkingPrivateChatManager {
extension JoinThen {
    /// 检测用户短视频版本是否可用【> = 1.1.6 可用】
    /// - Returns: 是否可用
    //: static func checkShortVideo(userVersion: String) -> Bool {
    static func format(userVersion: String) -> Bool {
        //: guard let version = Int(userVersion.replacingOccurrences(of: ".", with: "")) else {
        guard let version = Int(userVersion.replacingOccurrences(of: ".", with: "")) else {
            //: return false
            return false
        }
        //: if version*100 < 116*100 {
        if version * 100 < 116 * 100 {
            //: return false
            return false
        }

        //: return true
        return true
    }
}
