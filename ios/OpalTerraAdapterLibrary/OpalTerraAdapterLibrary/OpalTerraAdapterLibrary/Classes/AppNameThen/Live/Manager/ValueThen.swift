
//: Declare String Begin

/*: "LIVE_NEED_OPEN_NOTIFICATION" :*/
fileprivate let kArrayName:[Character] = ["L","I","V","E","_","N","E","E","D","_","O","P"]
fileprivate let k_managerName:String = "skin source view heightEN_NO"
fileprivate let k_viewContent:String = "TdataFdata"

/*: "LIVE_STATUS_CHANGE_NOTIFICATION" :*/
fileprivate let kToMarkStr:[UInt8] = [0xf9,0xfc,0xe3,0xf0,0xea,0xe6,0xe1,0xf4,0xe1,0xe0,0xe6,0xea,0xf6,0xfd,0xf4,0xfb,0xf2,0xf0,0xea,0xfb,0xfa,0xe1,0xfc,0xf3,0xfc,0xf6,0xf4,0xe1,0xfc,0xfa,0xfb]

private func viewContainer(with num: UInt8) -> UInt8 {
    return num ^ 181
}

/*: "live/startCheck" :*/
fileprivate let kRequestMsg:[Character] = ["l","i","v","e","/","s","t","a","r","t"]
fileprivate let k_messagePath:[Character] = ["C","h","e","c","k"]

/*: "live/start" :*/
fileprivate let kBottomUrl:String = "live/render data case"

/*: "live/stop" :*/
fileprivate let k_tapText:[Character] = ["l","i","v","e","/","s","t","o","p"]

/*: "type" :*/
fileprivate let kVideoId:[UInt8] = [0xdf,0xd2,0xdb,0xce]

private func indexWith(text num: UInt8) -> UInt8 {
    return num ^ 171
}

/*: "mf/user/dataCard" :*/
fileprivate let k_scaleScreenText:[Character] = ["m","f","/","u","s","e","r","/","d","a","t","a","C","a","r","d"]

/*: "uid" :*/
fileprivate let k_nearbyMsg:[UInt8] = [0x19,0xd,0x8]

fileprivate func addGiftLab(change num: UInt8) -> UInt8 {
    let value = Int(num) + 92
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "streamerUid" :*/
fileprivate let kLoadUrl:[UInt8] = [0xaa,0xad,0xab,0xbc,0xb8,0xb4,0xbc,0xab,0x8c,0xb0,0xbd]

/*: "roomId" :*/
fileprivate let k_labelText:String = "roomIdarray right view gift"

/*: "Try again later, if you have any questions please contact customer service" :*/
fileprivate let kBusyFormat:[UInt8] = [0x19,0x3f,0x34,0x6d,0x2c,0x2a,0x2c,0x24,0x23,0x6d,0x21,0x2c,0x39,0x28,0x3f,0x61,0x6d,0x24,0x2b,0x6d,0x34,0x22,0x38,0x6d,0x25,0x2c,0x3b,0x28,0x6d,0x2c,0x23,0x34,0x6d,0x3c,0x38,0x28,0x3e,0x39,0x24,0x22,0x23,0x3e,0x6d,0x3d,0x21,0x28,0x2c,0x3e,0x28,0x6d,0x2e,0x22,0x23,0x39,0x2c,0x2e,0x39,0x6d,0x2e,0x38,0x3e,0x39,0x22,0x20,0x28,0x3f,0x6d,0x3e,0x28,0x3f,0x3b,0x24,0x2e,0x28]

private func arrayType(gift num: UInt8) -> UInt8 {
    return num ^ 77
}

/*: "redirectUrl" :*/
fileprivate let k_locationId:String = "nextdinextc"
fileprivate let k_modelStr:[Character] = ["t","U","r","l"]

/*: "livePushUrl" :*/
fileprivate let kRawData:[Character] = ["l","i","v","e","P","u","s","h","U","r","l"]

/*: "FaceActionEvent_Interval_1_second" :*/
fileprivate let k_taskTitle:[UInt8] = [0x64,0x6e,0x6f,0x63,0x65,0x73,0x5f,0x31,0x5f,0x6c,0x61,0x76,0x72,0x65,0x74,0x6e,0x49,0x5f,0x74,0x6e,0x65,0x76,0x45,0x6e,0x6f,0x69,0x74,0x63,0x41,0x65,0x63,0x61,0x46]

/*: "hasFace" :*/
fileprivate let k_localFormat:String = "var shared equal sharedhasFa"
fileprivate let kEqualStr:[Character] = ["c","e"]

/*: "Opening failed" :*/
fileprivate let kAtEffectTitle:[Character] = ["O","p","e","n","i"]
fileprivate let k_fileId:String = "match level let var statusng f"

/*: "LIVE 状态码： :*/
fileprivate let kSubmitMessage:[Character] = ["L","I","V","E"," "]
fileprivate let k_statusAccessTitle:[Character] = ["状","\u{6001}","码","："]

/*: ." :*/
fileprivate let kErrorPath:[Character] = ["."]

/*: "Network busy!" :*/
fileprivate let k_appPath:String = "Netwsize path super target size"
fileprivate let kContentUrl:String = "super to tap leftusy!"

/*: "LIVE 异常下播，evtID: :*/
fileprivate let kViewValue:String = "LIVE player self right"
fileprivate let kMakeToolWearName:[Character] = ["\u{5f02}","常","下","播","，"]
fileprivate let kCreateModelName:String = "evtID:error to in background"

/*: "Live room exception" :*/
fileprivate let kShowMsg:[Character] = ["L","i","v"]
fileprivate let k_valueUrl:String = "return record add equale ro"
fileprivate let k_windowKey:String = "eptequaln"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ValueThen.swift
//  AbroadTalking
//
//  Created by young on 2023/6/15.
//

//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional
//: import UIKit
import UIKit

// 是否需要恢复直播
//: public var NEED_RESTORE_LIVE = false
public var app_limitScaleText = false
// 唤起直播功能
//: public let LIVE_NEED_OPEN_NOTIFICATION = NSNotification.Name(rawValue: "LIVE_NEED_OPEN_NOTIFICATION")
public let user_clickViewHeightValue = NSNotification.Name(rawValue: (String(kArrayName) + String(k_managerName.suffix(5)) + k_viewContent.replacingOccurrences(of: "data", with: "I") + "CATION"))
// 直播状态变更通知
//: public let LIVE_STATUS_CHANGE_NOTIFICATION = NSNotification.Name(rawValue: "LIVE_STATUS_CHANGE_NOTIFICATION")
public let userInsertDomainTitle = NSNotification.Name(rawValue: String(bytes: kToMarkStr.map{viewContainer(with: $0)}, encoding: .utf8)!)

/// 直播渲染配置
//: class TalkingLiveConfig: NSObject {
class UserReactiveCompatible: NSObject {
    //: var livePushUrl = ""                 // 推流地址
    var livePushUrl = "" // 推流地址
    //: var isSmallMode = false
    var isSmallMode = false // 是否小窗口
    //: var isMute = false
    var isMute = false // 是否静音
    //: var isRequest = false
    var isRequest = false // 正在请求中（防止多次调用）
    //: var frontCamera = true
    var frontCamera = true // 是否前置摄像头
}

//: class TalkingLiveManager: NSObject {
class ValueThen: NSObject {
    // 直播间消息
    //: var liveRoomModel = TalkingLiveRoomModel()
    var liveRoomModel = LeagueTogetherModelType()
    // 是否正在直播中（状态变更时发送通知）
    //: private(set) var isLive: Bool = false {
    private(set) var isLive: Bool = false {
        //: didSet {
        didSet {
            //: if DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
            if DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue {
                //: NotificationCenter.default.post(name: LIVE_STATUS_CHANGE_NOTIFICATION, object: self)
                NotificationCenter.default.post(name: userInsertDomainTitle, object: self)
            }
        }
    }

    // TXLive
    //: var config = TalkingLiveConfig()
    var config = UserReactiveCompatible() // 直播渲染配置类
    //: private weak var renderLiveView: UIView?
    private weak var renderLiveView: UIView? // 直播视图视频源
    //: private var localPreviewView: TalkingTRTCVideoView?
    private var localPreviewView: PopView? // 本地预览view（使用商汤美颜）
    //: private static var _instance: TalkingLiveManager?
    private static var _instance: ValueThen? // singleton

    //: private override init() {}
    override private init() {}
    //: class func shared() -> TalkingLiveManager {
    class func kindShared() -> ValueThen {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingLiveManager()
            _instance = ValueThen()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }

    //: class func destroy() {
    class func telecom() {
        //: if TalkingLiveManager._instance != nil {
        if ValueThen._instance != nil {
            //: TalkingLiveManager._instance = nil
            ValueThen._instance = nil
        }
    }

    // MARK: - Lazy Load

    // 直播小窗口悬浮窗
    //: private lazy var liveMiniView: TalkingLiveMiniView = {
    private lazy var liveMiniView: WithThen = {
        //: let mini = TalkingLiveMiniView.buildLiveMiniView()
        let mini = WithThen.titleView()
        //: mini.tapGestureBlock = { [weak self] in
        mini.tapGestureBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            // 进入直播间
            //: self.live_updateTXLivePreview(self.liveRoomVC.renderView, smallWindow: false)
            self.topWindow(self.liveRoomVC.renderView, smallWindow: false)
            //: guard let currentVC = self.currentViewController() else { return }
            guard let currentVC = self.selectStart() else { return }
            // 如果顶部视图是私信页，先返回列表，避免多个私信页消息同步问题
            //: if currentVC.isKind(of: TalkingPrivateChatController.self) {
            if currentVC.isKind(of: DistantViewController.self) {
                //: if var vcArr = currentVC.navigationController?.viewControllers {
                if var vcArr = currentVC.navigationController?.viewControllers {
                    //: vcArr.removeLast()
                    vcArr.removeLast()
                    //: vcArr.append(self.liveRoomVC)
                    vcArr.append(self.liveRoomVC)
                    //: currentVC.navigationController?.setViewControllers(vcArr, animated: true)
                    currentVC.navigationController?.setViewControllers(vcArr, animated: true)
                }
                //: } else {
            } else {
                //: currentVC.navigationController?.pushViewController(self.liveRoomVC, animated: true)
                currentVC.navigationController?.pushViewController(self.liveRoomVC, animated: true)
            }
        }
        //: return mini
        return mini
        //: }()
    }()

    // 直播控制器
    //: private lazy var liveRoomVC: TalkingLiveBeautifyViewController = {
    private lazy var liveRoomVC: ControllerViewDelegate = {
        //: let vc = TalkingLiveBeautifyViewController()
        let vc = ControllerViewDelegate()
        //: return vc
        return vc
        //: }()
    }()

    // 检测无人脸弹窗
    //: private lazy var noFaceAlert: TalkingLiveAlertView = {
    private lazy var noFaceAlert: CancelReactiveCompatible = //: return CancelReactiveCompatible(frame: .zero, type: .noFace)
        .init(frame: .zero, type: .noFace)
    //: }()

    // 直播推流对象
    //: private lazy var livePusher: TXLivePush = {
    private lazy var livePusher: TXLivePush = {
        //: let pushConfig = TXLivePushConfig()
        let pushConfig = TXLivePushConfig()
        //: pushConfig.frontCamera = self.config.frontCamera
        pushConfig.frontCamera = self.config.frontCamera
        //: pushConfig.customModeType |= CUSTOM_MODE_VIDEO_CAPTURE
        pushConfig.customModeType |= CUSTOM_MODE_VIDEO_CAPTURE
        // 标清
        //: let pusher = TXLivePush(config: pushConfig)
        let pusher = TXLivePush(config: pushConfig)
        //: pusher?.setVideoQuality(TX_Enum_Type_VideoQuality.VIDEO_QUALITY_STANDARD_DEFINITION,
        pusher?.setVideoQuality(TX_Enum_Type_VideoQuality.VIDEO_QUALITY_STANDARD_DEFINITION,
                                //: adjustBitrate: true,
                                adjustBitrate: true,
                                //: adjustResolution: false)
                                adjustResolution: false)
        //: return pusher!
        return pusher!
        //: }()
    }()
}

// MARK: - Request

//: extension TalkingLiveManager {
extension ValueThen {
    /// 检测是否被禁用“开播功能”
    //: class func req_liveStartCheck(completion: @escaping FinishBlock) {
    class func run(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "live/startCheck"
        reqModel.requestPath = (String(kRequestMsg) + String(k_messagePath))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 开启直播
    //: class func req_liveStart(completion: @escaping FinishBlock) {
    class func alongDistance(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "live/start"
        reqModel.requestPath = (String(kBottomUrl.prefix(5)) + "start")
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 停止直播
    /// - Parameters:
    ///   - type: 停播类型：1=主动终止；2=没有人脸；3=通话中断
    ///   - completion: 回调
    //: class func req_liveStop(type: Int, completion: FinishBlock? = nil) {
    class func mentalPictureStart(type: Int, completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "live/stop"
        reqModel.requestPath = (String(k_tapText))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["type": type]
        reqModel.params = [String(bytes: kVideoId.map{indexWith(text: $0)}, encoding: .utf8)!: type]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }

    /// - Parameters:
    ///  - uid: 卡片用户id
    ///   - streamerUid: 主播id
    //: class func req__userCardInfo(uid: String, streamerUid: String, roomId: String? = nil , completion: @escaping FinishBlock) {
    class func searchUse(uid: String, streamerUid: String, roomId: String? = nil, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/user/dataCard"
        reqModel.requestPath = (String(k_scaleScreenText))
        //: var params = ["uid": uid, "streamerUid": streamerUid]
        var params = [String(bytes: k_nearbyMsg.map{addGiftLab(change: $0)}, encoding: .utf8)!: uid, String(bytes: kLoadUrl.map{$0^217}, encoding: .utf8)!: streamerUid]
        //: if let roomId = roomId {
        if let roomId = roomId {
            //: params["roomId"] = roomId
            params[(String(k_labelText.prefix(6)))] = roomId
        }
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}

// MARK: - 权限检测，通过后开启直播

//: extension TalkingLiveManager {
extension ValueThen {
    // 检测直播状态，未开播时打开直播
    //: func checkLiveAuthAndTurnOn(completionHandler: ((_ isSucceed: Bool) -> Void)? = nil) {
    func phoneHandler(completionHandler: ((_ isSucceed: Bool) -> Void)? = nil) {
        //: guard self.isLive == false else { return }
        guard self.isLive == false else { return }
        //: guard self.config.isRequest == false else { return }
        guard self.config.isRequest == false else { return }
        //: self.config.isRequest = true
        self.config.isRequest = true

        // 1. 商汤美颜
        //: guard SenseTime_Use == true else {
        guard mainUserValue == true else {
            //: self.func__showStatusBarErrorMsg(showMsg: "Try again later, if you have any questions please contact customer service".localized)
            self.arcInfo(showMsg: String(bytes: kBusyFormat.map{arrayType(gift: $0)}, encoding: .utf8)!.localized)
            //: self.config.isRequest = false
            self.config.isRequest = false
            //: return
            return
        }

        // 2. 权限检测
        //: TalkingPermissionTool.checkCameraAndMicrophone { isOpen in
        ToolThen.drunkComponent { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.arcInfo(showMsg: main_intimateName)
                //: self.config.isRequest = false
                self.config.isRequest = false
                //: completionHandler?(false)
                completionHandler?(false)
                //: return
                return
            }
            // 3. 接口是否禁播检测
            //: TalkingLiveManager.req_liveStartCheck { succeed, result, errorModel in
            ValueThen.run { succeed, result, errorModel in
                //: guard succeed else {
                guard succeed else {
                    //: self.config.isRequest = false
                    self.config.isRequest = false
                    //: if errorModel?.errorCode == 302 {
                    if errorModel?.errorCode == 302 { // 失败，跳转H5
                        //: if let result = result as? Dictionary<String, Any> {
                        if let result = result as? [String: Any] {
                            //: AddReactiveCompatible.share.func__pushToWebVC(urlStr: result["redirectUrl"] as? String)
                            AddReactiveCompatible.share.pathAcross(urlStr: result[(k_locationId.replacingOccurrences(of: "next", with: "re") + String(k_modelStr))] as? String)
                        }
                        //: } else if errorModel?.errorMsg.count ?? 0 > 0 {
                    } else if errorModel?.errorMsg.count ?? 0 > 0 {
                        //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                        self.arcInfo(showMsg: errorModel!.errorMsg)
                    }
                    //: completionHandler?(false)
                    completionHandler?(false)
                    //: return
                    return
                }
                // 4. 是否正在音视频通话中
                //: guard TalkingSocketManager.shared.isSpace == false else {
                guard ListSocketManager.shared.isSpace == false else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                    self.arcInfo(showMsg: kTopReplaceHeightData)
                    //: self.config.isRequest = false
                    self.config.isRequest = false
                    //: completionHandler?(false)
                    completionHandler?(false)
                    //: return
                    return
                }

                // 校验成功，开启直播
                //: completionHandler?(true)
                completionHandler?(true)
                //: let json = JSON(result ?? [String: Any]())
                let json = JSON(result ?? [String: Any]())

                // 进入直播间
                //: self.currentViewController()?.navigationController?.pushViewController(self.liveRoomVC, animated: true)
                self.selectStart()?.navigationController?.pushViewController(self.liveRoomVC, animated: true)
                //: self.live_createRoomAndStartPush(livePushUrl: json["livePushUrl"].stringValue)
                self.specialUrl(livePushUrl: json[(String(kRawData))].stringValue)
            }
        }
    }
}

// MARK: - Public Event

//: extension TalkingLiveManager {
extension ValueThen {
    /// 展示直播违规弹窗
    //: static func live_showWarningView(content: String, reason: String, time: String) {
    static func equalFuturism(content: String, reason: String, time: String) {
        //: let alert = TalkingLiveWarningView()
        let alert = PlayerWithThen()
        //: alert.refreshUI(content: content, reason: reason, time: time)
        alert.heritage(content: content, reason: reason, time: time)
        //: alert.show()
        alert.liveEnterTitle()
    }

    /// 释放资源
    //: func live_releaseAllResource() {
    func feeDoing() {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: self.isLive = false
            self.isLive = false
            //: self.config.isRequest = false
            self.config.isRequest = false
            //: UIApplication.shared.isIdleTimerDisabled = false
            UIApplication.shared.isIdleTimerDisabled = false // 恢复息屏
            //: NotificationCenter.default.removeObserver(self)
            NotificationCenter.default.removeObserver(self) // 移除通知
            //: TalkingSocketManager.shared.endLivePing()
            ListSocketManager.shared.endBe() // 结束心跳包
            //: self.liveMiniView.removeFromSuperview()
            self.liveMiniView.removeFromSuperview() // 移除小窗口
            //: self.liveRoomVC.popCurrentViewController()
            self.liveRoomVC.clinic() // 将直播视图从栈中移除
            //: self.destoryTXLiveView()
            self.domiciliateView()
            // 释放单例
            //: TalkingLiveManager.destroy()
            ValueThen.telecom()
            // 销毁弹幕
            //: TalkingDanmuManager.danmu_releaseAllResource()
            WithReactiveCompatible.viewResource()
            //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
            (TouchMakeReactiveCompatible.shared as! TouchMakeReactiveCompatible).equalReport()
        }
    }

    /// 创建视频通话房间开始推流
    /// - Parameter livePushUrl: 推流地址
    //: func live_createRoomAndStartPush(livePushUrl: String) {
    func specialUrl(livePushUrl: String) {
        //: self.config.livePushUrl = livePushUrl
        self.config.livePushUrl = livePushUrl

        // 创建预览画面，开始直播（默认大屏）
        //: UIApplication.shared.isIdleTimerDisabled = true
        UIApplication.shared.isIdleTimerDisabled = true // 防止息屏
        //: self.live_updateTXLivePreview(self.liveRoomVC.renderView, smallWindow: false)
        self.topWindow(self.liveRoomVC.renderView, smallWindow: false)
        //: self.live_startPush(livePushUrl: livePushUrl)
        self.separateOutClick(livePushUrl: livePushUrl)
    }

    /// 更新tx直播画面
    /// - Parameters:
    ///   - randerView: 渲染视图（默认为小窗口）
    ///   - smallWindow: 是否小窗口
    //: func live_updateTXLivePreview(_ randerView: UIView? = nil, smallWindow: Bool) {
    func topWindow(_ randerView: UIView? = nil, smallWindow: Bool) {
        //: if randerView == nil {
        if randerView == nil {
            //: self.renderLiveView = self.liveMiniView.renderView
            self.renderLiveView = self.liveMiniView.renderView
            //: } else {
        } else {
            //: self.renderLiveView = randerView
            self.renderLiveView = randerView
        }

        //: self.liveMiniView.isHidden = !smallWindow
        self.liveMiniView.isHidden = !smallWindow
        //: self.config.isSmallMode = smallWindow
        self.config.isSmallMode = smallWindow
        // 清除小窗口未读消息标识
        //: if self.config.isSmallMode {
        if self.config.isSmallMode {
            //: updateUnredMessageCount(clear: true)
            reloadCollection(clear: true)
        }
        //: startTXLivePreview(smallWindow: smallWindow)
        blackOut(smallWindow: smallWindow)
    }

    /// 前后摄像头切换
    /// - Parameter front: 是否前置
    //: func switchTRTCCamer(front: Bool) {
    func addData(front: Bool) {
        //: guard self.config.frontCamera != front else { return }
        guard self.config.frontCamera != front else { return }
        //: self.config.frontCamera = front
        self.config.frontCamera = front

        //: guard SenseTime_Use == true else {
        guard mainUserValue == true else {
            //: livePusher.switchCamera()
            livePusher.switchCamera()
            //: return
            return
        }

        //: self.localPreviewView?.switchTRTCCamer(isFront: front)
        self.localPreviewView?.doingFront(isFront: front)
    }
}

// MARK: - 通知事件

//: extension TalkingLiveManager {
extension ValueThen {
    /// 添加通知监听
    //: private func addNotifications() {
    private func mode() {
        // 监听是否捕获到人脸
        //: if SenseTime_Use == true {
        if mainUserValue == true {
            //: NotificationCenter.default.addObserver(self,
            NotificationCenter.default.addObserver(self,
                                                   //: selector: #selector(catchFaceResultNotification(notification:)),
                                                   selector: #selector(root(notification:)),
                                                   //: name: NSNotification.Name(rawValue: "FaceActionEvent_Interval_1_second"),
                                                   name: NSNotification.Name(rawValue: String(bytes: k_taskTitle.reversed(), encoding: .utf8)!),
                                                   //: object: nil)
                                                   object: nil)
        }

        // 监听应用将要销毁
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(appWillTerminate),
                                               selector: #selector(formatting),
                                               //: name: UIApplication.willTerminateNotification,
                                               name: UIApplication.willTerminateNotification,
                                               //: object: nil)
                                               object: nil)
    }

    /// 程序销毁时调用停播接口
    //: @objc private func appWillTerminate() {
    @objc private func formatting() {
        //: guard self.isLive == true else { return }
        guard self.isLive == true else { return }
        //: TalkingLiveManager.req_liveStop(type: 1)
        ValueThen.mentalPictureStart(type: 1)
    }
}

// MARK: - 未读消息提醒标识

//: extension TalkingLiveManager {
extension ValueThen {
    /// 更新未读消息数量
    /// - Parameter clear: 是否清空
    //: func updateUnredMessageCount(clear: Bool = false) {
    func reloadCollection(clear: Bool = false) {
        //: guard self.config.isSmallMode else { return }
        guard self.config.isSmallMode else { return }
        //: if clear {
        if clear {
            //: self.liveMiniView.msgCount = 0
            self.liveMiniView.msgCount = 0
            //: } else {
        } else {
            //: self.liveMiniView.msgCount += 1
            self.liveMiniView.msgCount += 1
        }
    }
}

// MARK: - 商汤人脸检测

//: extension TalkingLiveManager {
extension ValueThen {
    /// 商汤美颜是否捕获到人脸通知（间隔1秒）
    //: @objc private func catchFaceResultNotification(notification: NSNotification) {
    @objc private func root(notification: NSNotification) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: guard self.isLive == true else { return }
            guard self.isLive == true else { return }
            //: let userInfo = notification.userInfo as! [String: AnyObject]
            let userInfo = notification.userInfo as! [String: AnyObject]
            //: let hasFace = (userInfo["hasFace"] as! NSNumber).description.boolValue
            let hasFace = (userInfo[(String(k_localFormat.suffix(5)) + String(kEqualStr))] as! NSNumber).description.boolValue
            //: if hasFace == true {
            if hasFace == true {
                //: self.liveMiniView.noFaceTime = 0
                self.liveMiniView.noFaceTime = 0
                //: self.liveRoomVC.topView.noFaceTime = 0
                self.liveRoomVC.topView.noFaceTime = 0
                //: } else {
            } else {
                //: self.liveMiniView.noFaceTime += 1
                self.liveMiniView.noFaceTime += 1
                //: self.liveRoomVC.topView.noFaceTime += 1
                self.liveRoomVC.topView.noFaceTime += 1
            }
            // 连续X秒无人脸出现直接下播
            //: if self.liveMiniView.noFaceTime == MAX_NOFACETIME {
            if self.liveMiniView.noFaceTime == show_rateValue {
                //: self.interval_noFace()
                self.subFace()
            }
            // 开启超时检测（防止直播时长时间后台、锁屏）
            //: self.interval_cancelPreviousPerformRequest()
            self.videoEqual()
            //: self.interval_startPerformRequest()
            self.headerRequest()
        }
    }

    /// 开启超时检测（防止直播时长时间后台、锁屏）
    //: private func interval_startPerformRequest() {
    private func headerRequest() {
        //: self.perform(#selector(interval_noFace), with: nil, afterDelay: 30)
        self.perform(#selector(subFace), with: nil, afterDelay: 30)
    }

    /// 取消超时检测
    //: private func interval_cancelPreviousPerformRequest() {
    private func videoEqual() {
        //: NSObject.cancelPreviousPerformRequests(withTarget: self,
        NSObject.cancelPreviousPerformRequests(withTarget: self,
                                               //: selector: #selector(interval_noFace),
                                               selector: #selector(subFace),
                                               //: object: nil)
                                               object: nil)
    }

    /// 未检测到人脸超过30秒
    //: @objc private func interval_noFace() {
    @objc private func subFace() {
        //: guard self.isLive == true else { return }
        guard self.isLive == true else { return }
        //: TalkingLiveManager.req_liveStop(type: 2)
        ValueThen.mentalPictureStart(type: 2)
        //: self.live_releaseAllResource()
        self.feeDoing()
        //: self.noFaceAlert.show()
        self.noFaceAlert.infoShow()
    }
}

// MARK: - TX直播

//: extension TalkingLiveManager {
extension ValueThen {
    /// tx本地预览视频画面
    /// - Parameter smallWindow: 是否自己的画面在小窗口
    //: private func startTXLivePreview(smallWindow: Bool) {
    private func blackOut(smallWindow: Bool) {
        //: guard SenseTime_Use == true else {
        guard mainUserValue == true else {
            //: let beautyManger = livePusher.getBeautyManager()
            let beautyManger = livePusher.getBeautyManager()
            //: beautyManger?.setBeautyStyle(.nature)
            beautyManger?.setBeautyStyle(.nature)
            //: beautyManger?.setBeautyLevel(6)
            beautyManger?.setBeautyLevel(6)

            //: livePusher.startPreview(self.renderLiveView)
            livePusher.startPreview(self.renderLiveView)
            //: return
            return
        }

        //: if self.localPreviewView == nil {
        if self.localPreviewView == nil {
            //: self.localPreviewView = TalkingTRTCVideoView()
            self.localPreviewView = PopView()
        }
        //: self.localPreviewView?.startPreView(isSmallWindow: smallWindow, livePusher: livePusher)
        self.localPreviewView?.plungeWithPusher(isSmallWindow: smallWindow, livePusher: livePusher)
        //: if self.localPreviewView?.superview != self.renderLiveView {
        if self.localPreviewView?.superview != self.renderLiveView {
            //: self.localPreviewView?.removeFromSuperview()
            self.localPreviewView?.removeFromSuperview()
            //: self.renderLiveView?.addSubview(self.localPreviewView!)
            self.renderLiveView?.addSubview(self.localPreviewView!)
            //: self.localPreviewView?.snp.makeConstraints({ make in
            self.localPreviewView?.snp.makeConstraints { make in
                //: make.edges.equalToSuperview()
                make.edges.equalToSuperview()
                //: })
            }
        }
    }

    /// 开始直播推流
    /// - Parameter livePushUrl: 推流地址
    //: private func live_startPush(livePushUrl: String) {
    private func separateOutClick(livePushUrl: String) {
        //: if SenseTime_Use {
        if mainUserValue {
            //: } else {
        } else {
            //: let beautyManger = livePusher.getBeautyManager()
            let beautyManger = livePusher.getBeautyManager()
            //: beautyManger?.setBeautyStyle(.nature)
            beautyManger?.setBeautyStyle(.nature)
            //: beautyManger?.setBeautyLevel(6)
            beautyManger?.setBeautyLevel(6)
        }

        //: livePusher.delegate = self
        livePusher.delegate = self
        //: livePusher.setMute(self.config.isMute)
        livePusher.setMute(self.config.isMute)
        //: let result = livePusher.start(livePushUrl)
        let result = livePusher.start(livePushUrl)
        //: onEnterRoom(Int(result))
        equalEnable(Int(result))
    }

    /// 销毁tx直播
    //: private func destoryTXLiveView() {
    private func domiciliateView() {
        //: if SenseTime_Use {
        if mainUserValue {
            //: self.localPreviewView?.stopPreView()
            self.localPreviewView?.voiceKind()
            //: } else {
        } else {
            //: self.livePusher.stopPreview()
            self.livePusher.stopPreview()
        }

        //: self.localPreviewView?.removeFromSuperview()
        self.localPreviewView?.removeFromSuperview()
        //: self.localPreviewView = nil
        self.localPreviewView = nil

        //: self.livePusher.stop()
        self.livePusher.stop()
    }

    /// 进入直播间，调用接口
    //: func onEnterRoom(_ result: Int) {
    func equalEnable(_ result: Int) {
        //: guard result >= 0 else {
        guard result >= 0 else {
            //: self.func__showStatusBarErrorMsg(showMsg: "Opening failed".localized)
            self.arcInfo(showMsg: (String(kAtEffectTitle) + String(k_fileId.suffix(4)) + "ailed").localized)
            //: self.live_releaseAllResource()
            self.feeDoing()
            //: return
            return
        }

        // 加入房间成功，调用开播接口
        //: TalkingLiveManager.req_liveStart { succeed, result, errorModel in
        ValueThen.alongDistance { succeed, result, _ in
            //: guard succeed else {
            guard succeed else {
                //: self.live_releaseAllResource()
                self.feeDoing()
                //: return
                return
            }
            //: if let model = TalkingLiveRoomModel.deserialize(from: result as? Dictionary) {
            if let model = LeagueTogetherModelType.deserialize(from: result as? Dictionary) {
                //: self.liveRoomModel = model
                self.liveRoomModel = model
            }
            // 加入弹幕
            //: TalkingDanmuManager.joinLiveRoomDanmu(groupId: self.liveRoomModel.chatGroupId, announcementMsg: self.liveRoomModel.notification)
            WithReactiveCompatible.saveByMentalAct(groupId: self.liveRoomModel.chatGroupId, announcementMsg: self.liveRoomModel.notification)
            // 开播成功
            //: self.isLive = true
            self.isLive = true
            //: self.liveMiniView.refreshMiniView()
            self.liveMiniView.afterSession()
            //: self.liveRoomVC.refreshLiveRoomView()
            self.liveRoomVC.encroachUpon()
            //: TalkingSocketManager.shared.startLivePing()
            ListSocketManager.shared.withPing()
            //: self.addNotifications()
            self.mode()
            // 销毁上传busy状态定时器
            //: (TalkingApplication.shared as! TalkingApplication).destroyTimer()
            (TouchMakeReactiveCompatible.shared as! TouchMakeReactiveCompatible).gapAdd()
        }
    }
}

// MARK: - TXLivePushListener

//: extension TalkingLiveManager: TXLivePushListener {
extension ValueThen: TXLivePushListener {
    //: func onPushEvent(_ evtID: Int32, withParam param: [AnyHashable: Any]!) {
    func onPushEvent(_ evtID: Int32, withParam _: [AnyHashable: Any]!) {
        //: UploadLogTool.writeLog(msg: "LIVE 状态码：\(evtID).")
        UploadDisplayThen.makeSelected(msg: (String(kSubmitMessage) + String(k_statusAccessTitle)) + "\(evtID).")
        //: if evtID == PUSH_WARNING_NET_BUSY.rawValue {
        if evtID == PUSH_WARNING_NET_BUSY.rawValue {
            //: self.func__showStatusBarErrorMsg(showMsg: "Network busy!".localized)
            self.arcInfo(showMsg: (String(k_appPath.prefix(4)) + "ork b" + String(kContentUrl.suffix(4))).localized)

            //: } else if evtID == PUSH_ERR_OPEN_CAMERA_FAIL.rawValue ||
        } else if evtID == PUSH_ERR_OPEN_CAMERA_FAIL.rawValue ||
            //: evtID == PUSH_ERR_OPEN_MIC_FAIL.rawValue ||
            evtID == PUSH_ERR_OPEN_MIC_FAIL.rawValue ||
            //: evtID == PUSH_ERR_VIDEO_ENCODE_FAIL.rawValue ||
            evtID == PUSH_ERR_VIDEO_ENCODE_FAIL.rawValue ||
            //: evtID == PUSH_ERR_AUDIO_ENCODE_FAIL.rawValue ||
            evtID == PUSH_ERR_AUDIO_ENCODE_FAIL.rawValue ||
            //: evtID == PUSH_ERR_UNSUPPORTED_RESOLUTION.rawValue ||
            evtID == PUSH_ERR_UNSUPPORTED_RESOLUTION.rawValue ||
            //: evtID == PUSH_ERR_UNSUPPORTED_SAMPLERATE.rawValue ||
            evtID == PUSH_ERR_UNSUPPORTED_SAMPLERATE.rawValue ||
            //: evtID == PUSH_ERR_NET_DISCONNECT.rawValue ||
            evtID == PUSH_ERR_NET_DISCONNECT.rawValue ||
            //: evtID == PUSH_ERR_AUDIO_SYSTEM_NOT_WORK.rawValue ||
            evtID == PUSH_ERR_AUDIO_SYSTEM_NOT_WORK.rawValue ||
            //: evtID == PUSH_ERR_INVALID_ADDRESS.rawValue ||
            evtID == PUSH_ERR_INVALID_ADDRESS.rawValue ||
            //: evtID == PUSH_ERR_CONNECT_SERVER_FAILED.rawValue ||
            evtID == PUSH_ERR_CONNECT_SERVER_FAILED.rawValue ||
            //: evtID == PUSH_ERR_NETWORK_UNAVAIABLE.rawValue ||
            evtID == PUSH_ERR_NETWORK_UNAVAIABLE.rawValue ||
            //: evtID == PUSH_ERR_SERVER_REFUSED.rawValue {
            evtID == PUSH_ERR_SERVER_REFUSED.rawValue
        {
            // 主播异常下播
            //: UploadLogTool.writeLog(msg: "LIVE 异常下播，evtID:\(evtID).")
            UploadDisplayThen.makeSelected(msg: (String(kViewValue.prefix(5)) + String(kMakeToolWearName) + String(kCreateModelName.prefix(6))) + "\(evtID).")
            //: self.func__showStatusBarErrorMsg(showMsg: "Live room exception".localized)
            self.arcInfo(showMsg: (String(kShowMsg) + String(k_valueUrl.suffix(4)) + "om exc" + k_windowKey.replacingOccurrences(of: "equal", with: "io")).localized)
            //: TalkingLiveManager.req_liveStop(type: 1)
            ValueThen.mentalPictureStart(type: 1)
            //: live_releaseAllResource()
            feeDoing()
            // 重新开播弹窗
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                //: let alert = TalkingLiveAlertView(frame: .zero, type: .turnOnLive)
                let alert = CancelReactiveCompatible(frame: .zero, type: .turnOnLive)
                //: alert.rightBlcok = {
                alert.rightBlcok = {
                    //: TalkingLiveManager.shared().checkLiveAuthAndTurnOn()
                    ValueThen.kindShared().phoneHandler()
                }
                //: alert.show()
                alert.infoShow()
            }
        }
    }

    //: func onNetStatus(_ param: [AnyHashable: Any]!) {}
    func onNetStatus(_: [AnyHashable: Any]!) {}

    //: func onScreenCaptureStarted() {}
    func onScreenCaptureStarted() {}

    //: func onScreenCapturePaused(_ reason: Int32) {}
    func onScreenCapturePaused(_: Int32) {}

    //: func onScreenCaptureResumed(_ reason: Int32) {}
    func onScreenCaptureResumed(_: Int32) {}

    //: func onScreenCaptureStoped(_ reason: Int32) {}
    func onScreenCaptureStoped(_: Int32) {}
}
