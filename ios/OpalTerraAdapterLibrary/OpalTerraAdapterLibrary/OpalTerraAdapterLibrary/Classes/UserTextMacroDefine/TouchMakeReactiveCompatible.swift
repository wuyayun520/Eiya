
//: Declare String Begin

/*: "-1" :*/
fileprivate let kSourceSampleData:String = "-1"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TouchMakeReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/3/2.
//

//: import UIKit
import UIKit

//: public class TalkingApplication: UIApplication {
public class TouchMakeReactiveCompatible: UIApplication {
    // 上次操作时间
    //: var lastEventTime = 0.0
    var lastEventTime = 0.0
    // 计时器
    //: private var timeoutTimer: Timer?
    private var timeoutTimer: Timer?
    // 女性用户是否活跃
    //: private var isActivity = false
    private var isActivity = false
    // 是否正在请求中
    //: private var isRequesting = false
    private var isRequesting = false

    //: public override func sendEvent(_ event: UIEvent) {
    override public func sendEvent(_ event: UIEvent) {
        //: super.sendEvent(event)
        super.sendEvent(event)
        //: lastEventTime = Date().timeIntervalSince1970
        lastEventTime = Date().timeIntervalSince1970
        //: let touches: Set<UITouch> = event.allTouches ?? []
        let touches: Set<UITouch> = event.allTouches ?? []
        //: guard touches.first?.phase == .began else { return }
        guard touches.first?.phase == .began else { return }
        //: femaleBusyStatusReport()
        equalReport()
    }
}

// MARK: - 【开启女性用户busy状态上报】

//: extension TalkingApplication {
extension TouchMakeReactiveCompatible {
    /// 女性用户busy状态上报
    //: func femaleBusyStatusReport() {
    func equalReport() {
        //: destroyTimer()
        gapAdd()
        //: guard DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue else { return }
        //: guard DistanceAppManager.share.loginUid.count > 0 else { return }
        guard DistanceAppManager.share.loginUid.count > 0 else { return }
        //: guard DistanceAppManager.share.appUserConfigMode.inactiveTimeLimit > 0 else { return }
        guard DistanceAppManager.share.appUserConfigMode.inactiveTimeLimit > 0 else { return }
        //: guard !TalkingLiveManager.shared().isLive && !TalkingSocketManager.shared.isSpace && !TalkingSocketManager.shared.isCalling else { return }
        guard !ValueThen.kindShared().isLive, !ListSocketManager.shared.isSpace, !ListSocketManager.shared.isCalling else { return }
        //: if DistanceAppManager.share.loginUserMode.videoAuth == "-1",
        if DistanceAppManager.share.loginUserMode.videoAuth == "-1",
           //: DistanceAppManager.share.loginUserMode.voiceAuth == "-1",
           DistanceAppManager.share.loginUserMode.voiceAuth == "-1",
           //: DistanceAppManager.share.appUserConfigMode.randomVideo == "-1" { // 用户同时关闭了音视频权限
           DistanceAppManager.share.appUserConfigMode.randomVideo == "-1"
        { // 用户同时关闭了音视频权限
            //: req_reportBusyStatus(type: 0)
            showDown(type: 0)
            //: return
            return
        }
        //: if isActivity == true {
        if isActivity == true {
            //: timeoutTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(DistanceAppManager.share.appUserConfigMode.inactiveTimeLimit), repeats: true, block: {[weak self] time in
            timeoutTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(DistanceAppManager.share.appUserConfigMode.inactiveTimeLimit), repeats: true, block: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.req_reportBusyStatus(type: 0)
                self.showDown(type: 0)
                //: })
            })
            //: } else {
        } else {
            //: req_reportBusyStatus(type: 1)
            showDown(type: 1)
        }
    }

    /// 销毁状态
    //: func destroy() {
    func textAdd() {
        //: self.isActivity = false
        self.isActivity = false
        //: destroyTimer()
        gapAdd()
    }

    /// 上报busy状态
    /// - Parameter type: 0：非活跃；1：活跃
    //: private func req_reportBusyStatus(type: Int) {
    private func showDown(type: Int) {
        //: guard (isActivity == true && type == 0) || ( isActivity == false && type == 1) else { return }
        guard (isActivity == true && type == 0) || (isActivity == false && type == 1) else { return }
        //: guard isRequesting == false else { return }
        guard isRequesting == false else { return }
        //: isRequesting = true
        isRequesting = true
        //: TalkingMeRequestTool.req_settingStatus(type: type) { succeed, result, errorModel in
        FileListRequestTool.present(type: type) { _, _, _ in
            //: self.isRequesting = false
            self.isRequesting = false
            //: self.isActivity = (type == 1) ? true:false
            self.isActivity = (type == 1) ? true : false
            //: if type == 1 {
            if type == 1 {
                //: self.femaleBusyStatusReport()
                self.equalReport()
            }
        }
    }

    /// 销毁倒计时
    //: func destroyTimer() {
    func gapAdd() {
        //: if timeoutTimer != nil {
        if timeoutTimer != nil {
            //: timeoutTimer?.invalidate()
            timeoutTimer?.invalidate()
            //: timeoutTimer = nil
            timeoutTimer = nil
        }
    }
}
