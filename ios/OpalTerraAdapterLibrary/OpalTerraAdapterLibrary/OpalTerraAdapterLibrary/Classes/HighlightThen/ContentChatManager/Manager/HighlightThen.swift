
//: Declare String Begin

/*: "CacheFemaleVIPCallIdsArrayKey_ :*/
fileprivate let k_errorUrl:String = "column effect equal printCache"
fileprivate let k_requestTextFormat:[Character] = ["I","P","C","a","l","l","I","d","s","A","r","r","a","y","K","e","y","_"]

/*: "CHANGE_BEAN" :*/
fileprivate let k_yourValue:[Character] = ["C","H","A","N","G","E","_","B","E","A","N"]

/*: "Failed to get user information, please return and try again" :*/
fileprivate let k_addCookieKey:[UInt8] = [0x6e,0x69,0x61,0x67,0x61,0x20,0x79,0x72,0x74,0x20,0x64,0x6e,0x61,0x20,0x6e,0x72,0x75,0x74,0x65,0x72,0x20,0x65,0x73,0x61,0x65,0x6c,0x70,0x20,0x2c,0x6e,0x6f,0x69,0x74,0x61,0x6d,0x72,0x6f,0x66,0x6e,0x69,0x20,0x72,0x65,0x73,0x75,0x20,0x74,0x65,0x67,0x20,0x6f,0x74,0x20,0x64,0x65,0x6c,0x69,0x61,0x46]

/*: "type" :*/
fileprivate let kTitleFormat:[UInt8] = [0xe0,0xed,0xe4,0xf1]

private func viewError(action num: UInt8) -> UInt8 {
    return num ^ 148
}

/*: "uid" :*/
fileprivate let kInputMessage:String = "rawid"

/*: "fromFreeCall" :*/
fileprivate let kNumberFormat:String = "manager voicefromF"
fileprivate let kDrawMessage:String = "ALL"

/*: "cmd" :*/
fileprivate let k_fieldWithData:[UInt8] = [0xdc,0xe6,0xdd]

fileprivate func addCenter(make num: UInt8) -> UInt8 {
    let value = Int(num) + 135
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "requestCall" :*/
fileprivate let k_tillDataPath:String = "reqitem"

/*: "data" :*/
fileprivate let kOriginMsg:[UInt8] = [0xa8,0xa5,0xb8,0xa5]

fileprivate func achromaticColourImage(act num: UInt8) -> UInt8 {
    let value = Int(num) + 188
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "onRequestCall" :*/
fileprivate let kRemoveKey:String = "onReenter style cell extension"
fileprivate let kLabelModePath:[Character] = ["l","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HighlightThen.swift
//  AbroadTalking
//
//  Created by young on 2023/8/15.
//

//: import UIKit
import UIKit

//: enum CallMenuType: Int {
enum StackKeyRepresentable: Int {
    //: case VideoCall = 0
    case VideoCall = 0 // 视频通话
    //: case VoiceCall = 1
    case VoiceCall = 1 // 语音通话
}

//: typealias OnReqestCallBlock = () -> Void
typealias OnReqestCallBlock = () -> Void

//: class TalkingCallMenuManager: NSObject {
class HighlightThen: NSObject {
    // 被呼叫用户ID
    //: var uid: String?
    var uid: String?
    //: var onReqestCallBlock: OnReqestCallBlock?
    var onReqestCallBlock: OnReqestCallBlock? /// 发起建立通话成功

    // 女性用户VIP折扣弹窗Key
    //: let FemaleVIPCallIdsArrayKey = "CacheFemaleVIPCallIdsArrayKey_\(DistanceAppManager.share.loginUid)"
    let FemaleVIPCallIdsArrayKey = (String(k_errorUrl.suffix(5)) + "FemaleV" + String(k_requestTextFormat)) + "\(DistanceAppManager.share.loginUid)"

    //: override init() {
    override init() {
        //: super.init()
        super.init()
    }

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.videoMatchDelegate = nil
        ListSocketManager.shared.videoMatchDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        ListSocketManager.shared.errorDelegate = nil
    }
}

// MARK: - Event

//: extension TalkingCallMenuManager {
extension HighlightThen {
    /// 展示音视频通话选择菜单
    /// - Parameters:
    ///   - videoPrice: 视频通话价格
    ///   - voicePrice: 语音通话价格
    ///   - vipPrompt: 女性呼叫VIP用户价格变动提醒
    //: func showVideoCallMenu(videoPrice: String?, voicePrice: String?, vipPrompt: String? = nil) {
    func tableIn(videoPrice: String?, voicePrice: String?, vipPrompt: String? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isSpace == false else {
        guard ListSocketManager.shared.isSpace == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.arcInfo(showMsg: kTopReplaceHeightData)
            //: return
            return
        }

        //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
        let vc = LipogramViewDelegate(frame: UIScreen.main.bounds)
        //: vc.initWithList(type: .Call, videoPrice: videoPrice, voicePrice: voicePrice)
        vc.placeOfOrigin(type: .Call, videoPrice: videoPrice, voicePrice: voicePrice)
        //: vc.munuBlock = { [weak self] index, _ in
        vc.munuBlock = { [weak self] index, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: let type = CallMenuType(rawValue: index) ?? .VideoCall
            let type = StackKeyRepresentable(rawValue: index) ?? .VideoCall
            // 展示VIP折扣提醒弹窗
            //: if vipPrompt != nil, vipPrompt?.count ?? 0 > 0 {
            if vipPrompt != nil, vipPrompt?.count ?? 0 > 0 {
                //: var prompt = ""
                var prompt = ""
                //: if index == 0 {
                if index == 0 {
                    //: prompt = vipPrompt!.replacingOccurrences(of: "CHANGE_BEAN", with: videoPrice ?? "0")
                    prompt = vipPrompt!.replacingOccurrences(of: (String(k_yourValue)), with: videoPrice ?? "0")
                    //: } else {
                } else {
                    //: prompt = vipPrompt!.replacingOccurrences(of: "CHANGE_BEAN", with: voicePrice ?? "0")
                    prompt = vipPrompt!.replacingOccurrences(of: (String(k_yourValue)), with: voicePrice ?? "0")
                }
                //: self.showFemaleVIPCallAlertView(type: type, vipPrompt: prompt)
                self.henMessage(type: type, vipPrompt: prompt)
                //: return
                return
            }

            //: requestCall(type: type)
            requestClickTypePage(type: type)
        }
    }

    /// 发起音/视频通话
    /// - Parameter type: 通话类型
    //: func requestCall(type: CallMenuType) {
    func requestClickTypePage(type: StackKeyRepresentable) {
        //: switch(type) {
        switch type {
        //: case .VideoCall:
        case .VideoCall:
            //: self.checkAndCallVideo()
            self.constraintComplection()
        //: case .VoiceCall:
        case .VoiceCall:
            //: self.checkAndCallVoice()
            self.cancel()
        }
    }

    /// 检查权限后发起音频通话
    /// - Parameter complection: 回调
    //: func checkAndCallVoice(complection: ((_ succeed: Bool) -> Void)? = nil) {
    func cancel(complection: ((_ succeed: Bool) -> Void)? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isSpace == false else {
        guard ListSocketManager.shared.isSpace == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.arcInfo(showMsg: kTopReplaceHeightData)
            //: complection?(false)
            complection?(false)
            //: return
            return
        }

        // 麦克风权限
        //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
        ToolThen.cellTact(true) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.arcInfo(showMsg: main_intimateName)
                //: complection?(false)
                complection?(false)
                //: return
                return
            }
            // 发起音频通话
            //: TalkingSocketManager.shared.videoMatchDelegate = self
            ListSocketManager.shared.videoMatchDelegate = self
            //: TalkingSocketManager.shared.errorDelegate = self
            ListSocketManager.shared.errorDelegate = self
            //: self.send_socket_requestCall(type: 1)
            self.tabBy(type: 1)
            //: complection?(true)
            complection?(true)
        }
    }

    /// 检测权限后发起视频通话
    /// - Parameter complection: 回调
    //: func checkAndCallVideo(complection: ((_ succeed: Bool) -> Void)? = nil) {
    func constraintComplection(complection: ((_ succeed: Bool) -> Void)? = nil) {
        // 音视频通话中
        //: guard TalkingSocketManager.shared.isSpace == false else {
        guard ListSocketManager.shared.isSpace == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.arcInfo(showMsg: kTopReplaceHeightData)
            //: complection?(false)
            complection?(false)
            //: return
            return
        }

        // 权限判断
        //: TalkingPermissionTool.checkCameraAndMicrophone { isOpen in
        ToolThen.drunkComponent { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.arcInfo(showMsg: main_intimateName)
                //: complection?(false)
                complection?(false)
                //: return
                return
            }
            // 发起视频通话
            //: TalkingSocketManager.shared.videoMatchDelegate = self
            ListSocketManager.shared.videoMatchDelegate = self
            //: TalkingSocketManager.shared.errorDelegate = self
            ListSocketManager.shared.errorDelegate = self
            //: self.send_socket_requestCall(type: 0)
            self.tabBy(type: 0)
            //: complection?(true)
            complection?(true)
        }
    }
}

// MARK: - 会员折扣提示弹窗

//: extension TalkingCallMenuManager {
extension HighlightThen {
    /// 展示会员折扣提示弹窗
    /// - Parameters:
    ///   - index: 0：视频通话；1：音频通话
    ///   - vipPrompt: 女性呼叫VIP用户价格变动提醒
    //: private func showFemaleVIPCallAlertView(type: CallMenuType, vipPrompt: String) {
    private func henMessage(type: StackKeyRepresentable, vipPrompt: String) {
        //: guard DistanceAppManager.share.loginUserMode.status == AppSkinStatus.normal.rawValue else {
        guard DistanceAppManager.share.loginUserMode.status == NameQuickLookable.normal.rawValue else {
            //: self.requestCall(type: type)
            self.requestClickTypePage(type: type)
            //: return
            return
        }
        // 每个用户只展示一次
        //: var array: Array = Defaults.object(forKey: FemaleVIPCallIdsArrayKey) as? [String] ?? [String]()
        var array: Array = show_blockText.object(forKey: FemaleVIPCallIdsArrayKey) as? [String] ?? [String]()
        //: if array.contains(uid ?? "") { // 已展示
        if array.contains(uid ?? "") { // 已展示
            //: self.requestCall(type: type)
            self.requestClickTypePage(type: type)
            //: return
            return
        }

        // 更新缓存, 展示视图
        //: array.append(uid ?? "")
        array.append(uid ?? "")
        //: Defaults.set(array, forKey: FemaleVIPCallIdsArrayKey)
        show_blockText.set(array, forKey: FemaleVIPCallIdsArrayKey)
        //: let alert = TalkingFemaleVIPCallAlertView(type: type, content: vipPrompt)
        let alert = PilloryAlertView(type: type, content: vipPrompt)
        //: alert.callBlock = { type in
        alert.callBlock = { type in
            //: self.requestCall(type: type)
            self.requestClickTypePage(type: type)
        }
        //: alert.show()
        alert.methodPath()
    }
}

// MARK: - JibeMatchDelegate, PerformanceErrorDelegate【音视频通话逻辑处理】

//: extension TalkingCallMenuManager: SocketManagerVideoMatchDelegate, TalkingSocketManagerErrorDelegate {
extension HighlightThen: JibeMatchDelegate, PerformanceErrorDelegate {
    /// 发送音视频通话socket
    /// - Parameter type: 通话类型：0：视频通话，1：语音通话
    //: func send_socket_requestCall(type: Int) {
    func tabBy(type: Int) {
        //: guard let uid = self.uid else {
        guard let uid = self.uid else {
            //: self.func__showStatusBarErrorMsg(showMsg: "Failed to get user information, please return and try again".localized)
            self.arcInfo(showMsg: String(bytes: k_addCookieKey.reversed(), encoding: .utf8)!.localized)
            //: return
            return
        }

        //: var data: [String: Any] = ["type": type, "uid": uid]
        var data: [String: Any] = [String(bytes: kTitleFormat.map{viewError(action: $0)}, encoding: .utf8)!: type, (kInputMessage.replacingOccurrences(of: "raw", with: "u")): uid]
        //: let index = EnableFreeCallType.nor
        let index = NameBinaryCount.nor
        //: if DistanceAppManager.share.loginUserMode.freeCallTimes > 0 && DistanceAppManager.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue && DistanceAppManager.share.loginUserMode.sex == Gender.male.rawValue {
        if DistanceAppManager.share.loginUserMode.freeCallTimes > 0 && DistanceAppManager.share.appUserConfigMode.enableFreeCallType & index.rawValue == index.rawValue && DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (String(kNumberFormat.suffix(5)) + "reeC" + kDrawMessage.lowercased()))
            //: TalkingSocketManager.shared.isFreeCall = true
            ListSocketManager.shared.isFreeCall = true
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = [String(bytes: k_fieldWithData.map{addCenter(make: $0)}, encoding: .utf8)!: (k_tillDataPath.replacingOccurrences(of: "item", with: "ue") + "stCall"), String(bytes: kOriginMsg.map{achromaticColourImage(act: $0)}, encoding: .utf8)!: data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        ListSocketManager.shared.pathTab(info: info)
    }

    /// 匹配成功，可以拨打通话
    //: func socket_match_onRequestCall(data: [String: Any]) {        self.onReqestCallBlock?()
    func ingot(data: [String: Any]) { self.onReqestCallBlock?()
        //: var newData = data
        var newData = data
        //: newData["uid"] = self.uid
        newData[(kInputMessage.replacingOccurrences(of: "raw", with: "u"))] = self.uid
        //: DistanceAppManager.share.start1v1TalkCall(info: newData)
        DistanceAppManager.share.getStarted(info: newData)
    }

    //: func socket_match_onVideoMatch(data: [String: Any]) {}
    func interval(data _: [String: Any]) {}

    /// 失败处理
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func socket(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(kRemoveKey.prefix(4)) + "questCa" + String(kLabelModePath)) {
            //: self.func__showStatusBarErrorMsg(showMsg: msg)
            self.arcInfo(showMsg: msg)
            //: if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            if errorNo == AppListSubscriptType.MoneyLack.rawValue {
                //: guard DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue else { return }
                //: AddReactiveCompatible.share.func__jumpToWebRecharge(clickEvent: clickVideocallButton, sufficient: false)
                AddReactiveCompatible.share.viewParams(clickEvent: k_timeValue, sufficient: false)
            }
        }
    }
}
