
//: Declare String Begin

/*: "mf/call/GetUserInfo" :*/
fileprivate let kDefineData:[Character] = ["m","f","/","c","a","l","l","/","G","e","t","U","s","e","r","I","n","f","o"]

/*: "uid" :*/
fileprivate let k_subArrayValue:[UInt8] = [0xbf,0xa3,0xae]

/*: "TRTC 随机视频匹配中." :*/
fileprivate let kFromImageId:String = "TborderC"

/*: "TRTC  :*/
fileprivate let k_valueName:String = "TRTC accept path"

/*: "发起" :*/
fileprivate let kControlWhiteFormat:[UInt8] = [0xb7,0xb5,0xe8,0x91,0x8f,0xe5]

/*: "收到" :*/
fileprivate let k_soundName:String = "filter到"

/*: 视频通话. logId: :*/
fileprivate let kBorderPath:String = "视频通\u{8bdd}."
fileprivate let kMakeTitle:[Character] = ["I","d",":"]

/*: ." :*/
fileprivate let kColorKey:[Character] = ["."]

/*: "s- :*/
fileprivate let kItemName:[Character] = ["s","-"]

/*: - :*/
fileprivate let k_yearValue:[Character] = ["-"]

/*: "TRTC 视频通话销毁. logId： :*/
fileprivate let kStarTableName:String = "view"
fileprivate let kImageFormat:[Character] = ["R","T","C"," ","视","\u{9891}","通","话","销","\u{6bc1}","."," ","l","o","g","I","d","："]

/*: "TRTC 视频通话错误. errCode: :*/
fileprivate let kAddMessage:String = "trtc"
fileprivate let kHaveMessage:String = "feature voice else误. err"
fileprivate let k_equalName:[Character] = ["C","o","d","e",":"]

/*: , errMsg: :*/
fileprivate let kCountKey:String = ", errbutton let warning false"

/*: "TRTC 视频通话SDK收到警告. warningCode: :*/
fileprivate let kSameData:String = "TRTC 视频通path aspect convert into"
fileprivate let k_succeedName:String = "话"
fileprivate let kScreenMsg:[Character] = ["S","D","K","\u{6536}","到","警","告","."," ","w","a","r","n","i","n","g","C","o","d","e",":"]

/*: , warningMsg: :*/
fileprivate let kVideoName:[Character] = [","," ","w","a","r","n","i","n","g","M","s"]
fileprivate let kMoreName:[Character] = ["g",":"]

/*: "TRTC 视频通话进入房间. result: :*/
fileprivate let kLabCellReturnStr:String = "to add make sendTRTC 视"
fileprivate let kEqualStr:String = "房间. "
fileprivate let kPairShareText:String = "video"
fileprivate let kRequestData:String = "in let title child selfesult:"

/*: , logId： :*/
fileprivate let k_cellTagId:String = ", logId：gift response self var model"

/*:  加入了房间" :*/
fileprivate let k_blockEraseStr:String = " 加\u{5165}了房间"

/*:  离开了房间" :*/
fileprivate let k_colorUrl:String = " \u{79bb}开了\u{623f}间"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentChatManager.swift
//  AbroadTalking
//
//  Created by young on 2022/11/8.
//

//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional
//: import UIKit
import UIKit

/// 发起通话时的错误码
//: enum VideoChatErrorCode: Int {
enum AppListSubscriptType: Int {
    //: case CallEnd     = 100
    case CallEnd = 100 // 对方已经下线或者结束了通话
    //: case MoneyLack   = 101
    case MoneyLack = 101 // 发起通话,余额不足
    //: case NeedFaceVerifed   = 60003
    case NeedFaceVerifed = 60003 // 需要真人认证提示
}

/// 通话方式
//: enum VideoChatSituation {
enum NameChatSituation {
    //: case Start
    case Start // 发起通话（非通话）
    //: case Recieved
    case Recieved // 收到通话（非通话）
    //: case Resume
    case Resume // 恢复通话（通话中）
    //: case Accept
    case Accept // 视频邀约接通（通话中）
    //: case Calling
    case Calling // 视频邀约拨打通（通话中）
}

/// 通话状态
//: enum VideoChatStage {
enum AddChatStage {
    //: case Waiting
    case Waiting // 等待
    //: case Calling
    case Calling // 通话
    //: case Recieved
    case Recieved // 接收
}

/// 摄像头状态
//: enum VideoCameraStatus {
enum WithCameraStatus {
    //: case Normal
    case Normal // 还未完成初始化
    //: case Open
    case Open // 开启
    //: case Closed
    case Closed // 关闭
}

/// 视频通话画面渲染位置
//: enum VideoChatRenderPosition {
enum SingleRenderPosition {
    //: case selfOnBg
    case selfOnBg // 自己的视频在背景上渲染
    //: case SelfOnWindow
    case SelfOnWindow // 自己的视频在窗口上渲染
}

/// 视频渲染配置
//: class TalkingVideoChatConfig: NSObject {
class EndThen: NSObject {
    //: var isPreviewNow = false
    var isPreviewNow = false // 是否预览画面
    //: var isSmallMode = false
    var isSmallMode = false // 是否小窗口
    var isSpace = false // 是否正在通话
    //: var frontCamera = true
    var frontCamera = true // 是否前置摄像头
    //: var openCamera = true
    var openCamera = true // 本人是否开启摄像头
    //: var disconnected = true
    var disconnected = true // 是否未连接
    //: var remoteCameraStatus = VideoCameraStatus.Normal
    var remoteCameraStatus = WithCameraStatus.Normal // 对方摄像头状态
}

//: class TalkingVideoChatManager: NSObject {
class ContentChatManager: NSObject {
    //: var infoModel: TalkingVideoChatModel?
    var infoModel: ViewChatModel? // 视频通话model
    //: var config = TalkingVideoChatConfig()
    var config = EndThen() // 视频渲染配置类
    //: weak var windowVideoView: UIView?
    weak var windowVideoView: UIView? // 通话视图小窗口视频源
    //: weak var bgVideoView: UIView?
    weak var bgVideoView: UIView? // 通话视图背景视频源
    //: weak var bgView: UIView?
    weak var bgView: UIView? // 通话视图背景
    //: weak var smallRenderView: UIView?
    weak var smallRenderView: UIView? // 小窗口模式渲染视图
    //: private var trtcView: TalkingTRTCVideoView?
    private var trtcView: PopView? // 预览view（使用商汤美颜）
    //: var trtcRemotUid: String?
    var trtcRemotUid: String? // 进入视频通话房间的对方
    //: private weak var videoOtherView: UIView?
    private weak var videoOtherView: UIView? // 渲染对方视频的view
    //: var isOpenTRTCPreview = false
    var isOpenTRTCPreview = false // 是否开启TRTC本地视频画面预览

    //: override init() {
    override init() {
        //: super.init()
        super.init()
        //: self.notificationAndInterruptSettings()
        self.approximation()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: self.shouldReleaseAllResource()
        self.applicationAdd()
    }
}

// MARK: - Request

//: extension TalkingVideoChatManager {
extension ContentChatManager {
    /// 开始视频速配（男）
    /// - Parameters:
    ///   - uid: 接收者的id
    ///   - completion: 回调
    //: class func req_callGetUserInfo(uid: String, completion: @escaping FinishBlock) {
    class func physicsLaboratory(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/call/GetUserInfo"
        reqModel.requestPath = (String(kDefineData))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: k_subArrayValue.map{$0^202}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}

// MARK: - Public Event

//: extension TalkingVideoChatManager {
extension ContentChatManager {
    /// 释放资源
    //: func shouldReleaseAllResource() {
    func applicationAdd() {
        //: destoryTRTCView()
        handleView()
    }

    /// 摄像头前后置切换
    //: func useFrontCamera(_ frontCamera: Bool) {
    func disappearBy(_ frontCamera: Bool) {
        //: guard self.config.frontCamera != frontCamera else { return }
        guard self.config.frontCamera != frontCamera else { return }

        //: self.config.frontCamera = frontCamera
        self.config.frontCamera = frontCamera
        //: self.switchTRTCCamer(front: frontCamera)
        self.firstShould(front: frontCamera)
    }

    /// 摄像头开启与关闭
    /// - Parameter openCamera: 是否开启
    //: func useCamera(_ openCamera: Bool) {
    func boxCamera(_ openCamera: Bool) {
        //: guard self.config.openCamera != openCamera else { return }
        guard self.config.openCamera != openCamera else { return }

        //: self.config.openCamera = openCamera
        self.config.openCamera = openCamera
        //: self.setTRTCCamera(isOpen: openCamera)
        self.set(isOpen: openCamera)
    }

    /// 更改视频采集渲染展示位置
    //: func changeRenderView() {
    func keySizeAction() {
        //: guard self.infoModel?.videoStage == .Calling else { return }
        guard self.infoModel?.videoStage == .Calling else { return }

        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let windowHidden = self.windowVideoView?.isHidden ?? true
            let windowHidden = self.windowVideoView?.isHidden ?? true
            //: self.windowVideoView?.isHidden = self.bgVideoView?.isHidden ?? true
            self.windowVideoView?.isHidden = self.bgVideoView?.isHidden ?? true
            //: self.bgVideoView?.isHidden = windowHidden
            self.bgVideoView?.isHidden = windowHidden
            //: self.bgView?.isHidden = self.bgVideoView?.isHidden ?? true
            self.bgView?.isHidden = self.bgVideoView?.isHidden ?? true
            //: self.startTRTCPreview(smallWindow: self.infoModel?.renderPostion != .selfOnBg)
            self.observerLabelWindow(smallWindow: self.infoModel?.renderPostion != .selfOnBg)
            //: self.reloadTRTCRemotView()
            self.priority()
        }
    }

    /// 创建视频通话房间
    //: func createRoomAndStartPublish() {
    func writeForPublish() {
        // 如果没有预览先开启预览
        //: self.config.isSpace = true
        self.config.isSpace = true
        //: if self.config.isPreviewNow == false {
        if self.config.isPreviewNow == false {
            //: self.startPreview()
            self.preview()
        }

        //: enterRoom()
        equalTurn()
    }
}

// MARK: - Private Event

//: extension TalkingVideoChatManager {
extension ContentChatManager {
    /// 前后摄像头切换
    /// - Parameter front: 是否前置
    //: private func switchTRTCCamer(front: Bool) {
    private func firstShould(front: Bool) {
        //: guard SenseTime_Use == true else {
        guard mainUserValue == true else {
            //: TRTCCloud.sharedInstance().getDeviceManager().switchCamera(front)
            TRTCCloud.sharedInstance().getDeviceManager().switchCamera(front)
            //: return
            return
        }

        //: self.trtcView?.switchTRTCCamer(isFront: front)
        self.trtcView?.doingFront(isFront: front)
    }

    /// 是否开启摄像头
    /// - Parameter isOpen: 是否开启
    //: private func setTRTCCamera(isOpen: Bool) {
    private func set(isOpen: Bool) {
        //: guard SenseTime_Use == true else {
        guard mainUserValue == true else {
            //: if isOpen {
            if isOpen {
                //: self.config.openCamera = true
                self.config.openCamera = true
                //: self.startTRTCPreview(smallWindow: self.infoModel?.renderPostion != .selfOnBg)
                self.observerLabelWindow(smallWindow: self.infoModel?.renderPostion != .selfOnBg)
                //: } else {
            } else {
                //: self.config.openCamera = false
                self.config.openCamera = false
                //: self.isOpenTRTCPreview = false
                self.isOpenTRTCPreview = false
                //: TRTCCloud.sharedInstance().stopLocalPreview()
                TRTCCloud.sharedInstance().stopLocalPreview()
            }

            //: return
            return
        }

        // 触发`TRTCCloudDelegate`
        //: if isOpen {
        if isOpen {
            //: self.config.openCamera = true
            self.config.openCamera = true
            //: } else {
        } else {
            //: self.config.openCamera = false
            self.config.openCamera = false
            //: TRTCCloud.sharedInstance().stopLocalPreview()
            TRTCCloud.sharedInstance().stopLocalPreview()
        }
        //: self.trtcView?.setTRTCCamera(isOpen: isOpen)
        self.trtcView?.notData(isOpen: isOpen)
        //: self.trtcView?.isHidden = !isOpen
        self.trtcView?.isHidden = !isOpen
    }
}

// MARK: - 小窗口模式

//: extension TalkingVideoChatManager {
extension ContentChatManager {
    /// 进入小窗口模式
    //: func enterSmallRenderMode() {
    func rankInput() {
        //: guard self.config.isSmallMode == false else { return }
        guard self.config.isSmallMode == false else { return }

        //: self.config.isSmallMode = true
        self.config.isSmallMode = true
        //: reloadTRTCRemotView()
        priority()
    }

    /// 退出小窗口模式
    //: func exitSmallRenderMode() {
    func renderUser() {
        //: guard self.config.isSmallMode == true else { return }
        guard self.config.isSmallMode == true else { return }

        //: self.config.isSmallMode = false
        self.config.isSmallMode = false
//        startPreview()
        //: reloadTRTCRemotView()
        priority()
    }
}

// MARK: - 通知事件

//: extension TalkingVideoChatManager {
extension ContentChatManager {
    /// 初始化通知
    //: func notificationAndInterruptSettings() {
    func approximation() {
        // 监听 App 切后台
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(appDidEnterBackground(notif:)),
                                               selector: #selector(withSub(notif:)),
                                               //: name: UIApplication.didEnterBackgroundNotification,
                                               name: UIApplication.didEnterBackgroundNotification,
                                               //: object: nil)
                                               object: nil)

        // 监听 App 从后台切前台
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(appWillEnterForeground(notif:)),
                                               selector: #selector(requestNotif(notif:)),
                                               //: name: UIApplication.willEnterForegroundNotification,
                                               name: UIApplication.willEnterForegroundNotification,
                                               //: object: nil)
                                               object: nil)

        // 监听电话事件
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(audioSessionWasInterrupted(notif:)),
                                               selector: #selector(alongToNotif(notif:)),
                                               //: name: AVAudioSession.interruptionNotification,
                                               name: AVAudioSession.interruptionNotification,
                                               //: object: nil)
                                               object: nil)

        // 播放设备更改监听
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(audioRouteChangeListenerCallback(notif:)),
                                               selector: #selector(whiteCell(notif:)),
                                               //: name: AVAudioSession.routeChangeNotification,
                                               name: AVAudioSession.routeChangeNotification,
                                               //: object: nil)
                                               object: nil)
    }

    /// app进入后台
    //: @objc private func appDidEnterBackground(notif: Notification?) {
    @objc private func withSub(notif: Notification?) {
        //: if notif == nil {
        if notif == nil {
            // 静音
            //: TRTCCloud.sharedInstance().muteLocalAudio(true)
            TRTCCloud.sharedInstance().muteLocalAudio(true)
        }
    }

    /// 监听 App 从后台切前台
    //: @objc private func appWillEnterForeground(notif: Notification?) {
    @objc private func requestNotif(notif: Notification?) {
        //: if notif == nil {
        if notif == nil { // 音频被打断，调用这个notification为空，前后台切换不影响语音
            // 非静音
            //: TRTCCloud.sharedInstance().muteLocalAudio(false)
            TRTCCloud.sharedInstance().muteLocalAudio(false)
        }
    }

    // 监听电话事件
    //: @objc private func audioSessionWasInterrupted(notif: Notification) {
    @objc private func alongToNotif(notif: Notification) {
        //: guard notif.userInfo != nil else { return }
        guard notif.userInfo != nil else { return }
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: guard let status = notif.userInfo![AVAudioSessionInterruptionTypeKey] as? UInt else {
            guard let status = notif.userInfo![AVAudioSessionInterruptionTypeKey] as? UInt else {
                //: return
                return
            }
            //: let  interruptStatus = AVAudioSession.InterruptionType(rawValue: status)
            let interruptStatus = AVAudioSession.InterruptionType(rawValue: status)
            //: if interruptStatus == AVAudioSession.InterruptionType.began {
            if interruptStatus == AVAudioSession.InterruptionType.began {
                // 暂停音频设备
                //: self.appDidEnterBackground(notif: nil)
                self.withSub(notif: nil)
                //: } else if interruptStatus == AVAudioSession.InterruptionType.ended {
            } else if interruptStatus == AVAudioSession.InterruptionType.ended {
                // 恢复音频设备
                //: self.appWillEnterForeground(notif: nil)
                self.requestNotif(notif: nil)
            }
        }
    }

    // 播放设备更改监听
    //: @objc func audioRouteChangeListenerCallback(notif: Notification) {
    @objc func whiteCell(notif: Notification) {
        //: guard let interuptionDict = notif.userInfo else { return }
        guard let interuptionDict = notif.userInfo else { return }
        //: guard let number = interuptionDict[AVAudioSessionRouteChangeReasonKey] as? NSNumber else {
        guard let number = interuptionDict[AVAudioSessionRouteChangeReasonKey] as? NSNumber else {
            //: return
            return
        }
        //: let routeChangeReason = AVAudioSession.RouteChangeReason(rawValue: number.uintValue)
        let routeChangeReason = AVAudioSession.RouteChangeReason(rawValue: number.uintValue)

        //: switch(routeChangeReason) {
        switch routeChangeReason {
        //: case .newDeviceAvailable:
        case .newDeviceAvailable:
            // 听筒
            //: TRTCCloud.sharedInstance().setAudioRoute(.modeEarpiece)
            TRTCCloud.sharedInstance().setAudioRoute(.modeEarpiece)

        //: case .oldDeviceUnavailable:
        case .oldDeviceUnavailable:
            // 免提
            //: TRTCCloud.sharedInstance().setAudioRoute(.modeSpeakerphone)
            TRTCCloud.sharedInstance().setAudioRoute(.modeSpeakerphone)

        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - 视频通话事件

//: extension TalkingVideoChatManager {
extension ContentChatManager {
    /// 预览视频画面
    /// - Parameter isMatch: 是否随机视频
    //: func startPreview(isMatch: Bool = false) {
    func preview(isMatch: Bool = false) {
        //: if isMatch {
        if isMatch {
            //: UploadLogTool.writeLog(msg: "TRTC 随机视频匹配中.")
            UploadDisplayThen.makeSelected(msg: (kFromImageId.replacingOccurrences(of: "border", with: "RT") + " 随机视\u{9891}匹配中."))
            //: } else {
        } else {
            //: UploadLogTool.writeLog(msg: "TRTC \((infoModel?.videoStage == .Waiting) ? "发起":"收到")视频通话. logId:\(infoModel?.logId ?? 0).")
            UploadDisplayThen.makeSelected(msg: (String(k_valueName.prefix(5))) + "\((infoModel?.videoStage == .Waiting) ? "发起" : "收到")" + (kBorderPath + " log" + String(kMakeTitle)) + "\(infoModel?.logId ?? 0).")
        }
        //: if self.infoModel?.videoStage == .Waiting {
        if self.infoModel?.videoStage == .Waiting {
            //: startTRTCPreview(smallWindow: false)
            observerLabelWindow(smallWindow: false)
            //: } else if self.infoModel?.videoStage == .Recieved {
        } else if self.infoModel?.videoStage == .Recieved {
            //: startTRTCPreview(smallWindow: false)
            observerLabelWindow(smallWindow: false)
            //: } else if self.infoModel?.videoStage == .Calling {
        } else if self.infoModel?.videoStage == .Calling {
            //: if self.infoModel?.renderPostion == .selfOnBg {
            if self.infoModel?.renderPostion == .selfOnBg {
                //: startTRTCPreview(smallWindow: false)
                observerLabelWindow(smallWindow: false)
                //: } else {
            } else {
                //: startTRTCPreview(smallWindow: true)
                observerLabelWindow(smallWindow: true)
            }
        }
        //: self.config.isPreviewNow = true
        self.config.isPreviewNow = true
    }

    /// trtc本地预览视频画面
    /// - Parameter smallWindow: 是否自己的画面在小窗口
    //: func startTRTCPreview(smallWindow: Bool) {
    func observerLabelWindow(smallWindow: Bool) {
        //: guard SenseTime_Use == true else {
        guard mainUserValue == true else {
            //: if !self.isOpenTRTCPreview {
            if !self.isOpenTRTCPreview {
                //: let beautyManger = TRTCCloud.sharedInstance().getBeautyManager()
                let beautyManger = TRTCCloud.sharedInstance().getBeautyManager()
                //: beautyManger.setBeautyStyle(.nature)
                beautyManger.setBeautyStyle(.nature)
                //: beautyManger.setBeautyLevel(6)
                beautyManger.setBeautyLevel(6)
            }

            //: if (smallWindow) {
            if smallWindow {
                //: if (!self.isOpenTRTCPreview) {
                if !self.isOpenTRTCPreview {
                    //: if (self.config.openCamera) {
                    if self.config.openCamera {
                        //: TRTCCloud.sharedInstance().startLocalPreview(self.config.frontCamera, view: self.windowVideoView)
                        TRTCCloud.sharedInstance().startLocalPreview(self.config.frontCamera, view: self.windowVideoView)
                        //: self.isOpenTRTCPreview = true
                        self.isOpenTRTCPreview = true
                    }
                    //: self.videoOtherView = self.bgVideoView
                    self.videoOtherView = self.bgVideoView
                    //: } else {
                } else {
                    //: TRTCCloud.sharedInstance().updateLocalView(self.windowVideoView)
                    TRTCCloud.sharedInstance().updateLocalView(self.windowVideoView)
                    //: self.videoOtherView = self.bgVideoView
                    self.videoOtherView = self.bgVideoView
                }
                //: } else {
            } else {
                //: if (!self.isOpenTRTCPreview) {
                if !self.isOpenTRTCPreview {
                    //: if (self.config.openCamera) {
                    if self.config.openCamera {
                        //: TRTCCloud.sharedInstance().startLocalPreview(self.config.frontCamera, view: self.bgVideoView)
                        TRTCCloud.sharedInstance().startLocalPreview(self.config.frontCamera, view: self.bgVideoView)
                        //: self.isOpenTRTCPreview = true
                        self.isOpenTRTCPreview = true
                    }
                    //: self.videoOtherView = self.windowVideoView
                    self.videoOtherView = self.windowVideoView
                    //: } else {
                } else {
                    //: TRTCCloud.sharedInstance().updateLocalView(self.bgVideoView)
                    TRTCCloud.sharedInstance().updateLocalView(self.bgVideoView)
                    //: self.videoOtherView = self.windowVideoView
                    self.videoOtherView = self.windowVideoView
                }
            }

            //: return
            return
        }

        //: if self.trtcView == nil {
        if self.trtcView == nil {
            //: self.trtcView = TalkingTRTCVideoView()
            self.trtcView = PopView()
        }
        //: self.trtcView?.startPreView(isSmallWindow: smallWindow)
        self.trtcView?.plungeWithPusher(isSmallWindow: smallWindow)
        //: if smallWindow {
        if smallWindow { // 自己在小窗口
            //: if self.trtcView?.superview != self.windowVideoView {
            if self.trtcView?.superview != self.windowVideoView {
                //: self.trtcView?.removeFromSuperview()
                self.trtcView?.removeFromSuperview()
                //: self.windowVideoView?.addSubview(self.trtcView!)
                self.windowVideoView?.addSubview(self.trtcView!)
                //: self.trtcView?.snp.makeConstraints({ make in
                self.trtcView?.snp.makeConstraints { make in
                    //: make.edges.equalToSuperview()
                    make.edges.equalToSuperview()
                    //: })
                }

                //: self.videoOtherView = self.bgVideoView
                self.videoOtherView = self.bgVideoView
            }
            //: } else {
        } else {
            //: if self.trtcView?.superview != self.bgVideoView {
            if self.trtcView?.superview != self.bgVideoView {
                //: self.trtcView?.removeFromSuperview()
                self.trtcView?.removeFromSuperview()
                //: self.bgVideoView?.addSubview(self.trtcView!)
                self.bgVideoView?.addSubview(self.trtcView!)
                //: self.trtcView?.snp.makeConstraints({ make in
                self.trtcView?.snp.makeConstraints { make in
                    //: make.edges.equalToSuperview()
                    make.edges.equalToSuperview()
                    //: })
                }

                //: self.videoOtherView = self.windowVideoView
                self.videoOtherView = self.windowVideoView
            }
        }
    }

    /// 更新trtc视频采集通话
    //: private func reloadTRTCRemotView() {
    private func priority() {
        //: guard self.trtcRemotUid != nil else { return }
        guard self.trtcRemotUid != nil else { return }

        //: if self.smallRenderView != nil && self.config.isSmallMode == true {
        if self.smallRenderView != nil, self.config.isSmallMode == true {
            //: TRTCCloud.sharedInstance().updateRemoteView(self.smallRenderView, streamType: .big, forUser: self.trtcRemotUid!)
            TRTCCloud.sharedInstance().updateRemoteView(self.smallRenderView, streamType: .big, forUser: self.trtcRemotUid!)
            //: } else {
        } else {
            //: TRTCCloud.sharedInstance().updateRemoteView(self.videoOtherView, streamType: .big, forUser: self.trtcRemotUid!)
            TRTCCloud.sharedInstance().updateRemoteView(self.videoOtherView, streamType: .big, forUser: self.trtcRemotUid!)
        }
    }

    /// 进入视频通话房间
    //: private func enterRoom() {
    private func equalTurn() {
        //: let roomId = self.infoModel?.logId ?? 0
        let roomId = self.infoModel?.logId ?? 0
        //: self.trtcRemotUid = nil
        self.trtcRemotUid = nil
        //: let params = TRTCParams()
        let params = TRTCParams()
        //: params.sdkAppId = TRTCAppID
        params.sdkAppId = app_limitMaleText
        //: params.roomId = UInt32(roomId)
        params.roomId = UInt32(roomId)
        //: params.userId = DistanceAppManager.share.loginUserMode.userID
        params.userId = DistanceAppManager.share.loginUserMode.userID
        //: params.userSig = DistanceAppManager.share.appUserConfigMode.uSigTrtc
        params.userSig = DistanceAppManager.share.appUserConfigMode.uSigTrtc
        //: params.streamId = "s-\(params.userId)-\(roomId)"
        params.streamId = "s-\(params.userId)-\(roomId)"

        //: let videoEncParam = TRTCVideoEncParam()
        let videoEncParam = TRTCVideoEncParam()
        //: videoEncParam.videoResolution = ._640_360
        videoEncParam.videoResolution = ._640_360
        //: videoEncParam.videoFps = 15
        videoEncParam.videoFps = 15
        //: videoEncParam.videoBitrate = 600
        videoEncParam.videoBitrate = 600
        //: videoEncParam.minVideoBitrate = 360
        videoEncParam.minVideoBitrate = 360
        //: videoEncParam.resMode = .portrait
        videoEncParam.resMode = .portrait
        //: TRTCCloud.sharedInstance().delegate = self
        TRTCCloud.sharedInstance().delegate = self
        //: TRTCCloud.sharedInstance().setVideoEncoderParam(videoEncParam)
        TRTCCloud.sharedInstance().setVideoEncoderParam(videoEncParam)

        //: if SenseTime_Use {
        if mainUserValue {
            //: TRTCCloud.sharedInstance().enableCustomVideoCapture(.big, enable: true)
            TRTCCloud.sharedInstance().enableCustomVideoCapture(.big, enable: true)
            //: } else {
        } else {
            //: let beautyManger = TRTCCloud.sharedInstance().getBeautyManager()
            let beautyManger = TRTCCloud.sharedInstance().getBeautyManager()
            //: beautyManger.setBeautyStyle(.nature)
            beautyManger.setBeautyStyle(.nature)
            //: beautyManger.setBeautyLevel(6)
            beautyManger.setBeautyLevel(6)
        }

        //: TRTCCloud.sharedInstance().startLocalAudio(TRTCAudioQuality.default)
        TRTCCloud.sharedInstance().startLocalAudio(TRTCAudioQuality.default)
        //: TRTCCloud.sharedInstance().enterRoom(params, appScene: .videoCall)
        TRTCCloud.sharedInstance().enterRoom(params, appScene: .videoCall)
    }

    /// 销毁trtc
    //: private func destoryTRTCView() {
    private func handleView() {
        //: UploadLogTool.writeLog(msg: "TRTC 视频通话销毁. logId：\(infoModel?.logId ?? 0).")
        UploadDisplayThen.makeSelected(msg: (kStarTableName.replacingOccurrences(of: "view", with: "T") + String(kImageFormat)) + "\(infoModel?.logId ?? 0).")
        //: self.config.isPreviewNow = false
        self.config.isPreviewNow = false

        //: if SenseTime_Use {
        if mainUserValue {
            //: self.trtcView?.stopPreView()
            self.trtcView?.voiceKind()
            //: } else {
        } else {
            //: self.isOpenTRTCPreview = false
            self.isOpenTRTCPreview = false
            //: TRTCCloud.sharedInstance().stopLocalPreview()
            TRTCCloud.sharedInstance().stopLocalPreview()
        }

        //: self.trtcView?.removeFromSuperview()
        self.trtcView?.removeFromSuperview()
        //: self.trtcView = nil
        self.trtcView = nil

        //: if self.config.isSpace == true {
        if self.config.isSpace == true {
            //: TRTCCloud.sharedInstance().exitRoom()
            TRTCCloud.sharedInstance().exitRoom()
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                //: TRTCCloud.destroySharedIntance()
                TRTCCloud.destroySharedIntance()
            }
            //: self.config.isSpace = false
            self.config.isSpace = false
        }
    }

    /// 视频通话重连
    //: func restartTalkWhenDisconnectedAndNetAvailable() {
    func modeAvailable() {
        //: if self.config.disconnected == true {
        if self.config.disconnected == true {
            //: self.config.disconnected = false
            self.config.disconnected = false
            //: self.createRoomAndStartPublish()
            self.writeForPublish()
        }
    }
}

// MARK: - TRTCCloudDelegate

//: extension TalkingVideoChatManager: TRTCCloudDelegate {
extension ContentChatManager: TRTCCloudDelegate {
    //: func onError(_ errCode: TXLiteAVError, errMsg: String?, extInfo: [AnyHashable: Any]?) {
    func onError(_ errCode: TXLiteAVError, errMsg: String?, extInfo _: [AnyHashable: Any]?) {
        //: UploadLogTool.writeLog(msg: "TRTC 视频通话错误. errCode:\(errCode), errMsg:\(String(describing: errMsg)).")
        UploadDisplayThen.makeSelected(msg: (kAddMessage.uppercased() + " 视\u{9891}通话错" + String(kHaveMessage.suffix(6)) + String(k_equalName)) + "\(errCode)" + (String(kCountKey.prefix(5)) + "Msg:") + "\(String(describing: errMsg)).")
        //: if errMsg != nil {
        if errMsg != nil {
            //: self.func__showStatusBarErrorMsg(showMsg: errMsg!)
            self.arcInfo(showMsg: errMsg!)
        }
    }

    //: func onWarning(_ warningCode: TXLiteAVWarning, warningMsg: String?, extInfo: [AnyHashable: Any]?) {
    func onWarning(_ warningCode: TXLiteAVWarning, warningMsg: String?, extInfo _: [AnyHashable: Any]?) {
        //: UploadLogTool.writeLog(msg: "TRTC 视频通话SDK收到警告. warningCode:\(warningCode), warningMsg:\(String(describing: warningMsg)).")
        UploadDisplayThen.makeSelected(msg: (String(kSameData.prefix(8)) + k_succeedName.capitalized + String(kScreenMsg)) + "\(warningCode)" + (String(kVideoName) + String(kMoreName)) + "\(String(describing: warningMsg)).")
        //: if self.config.remoteCameraStatus == .Normal {
        if self.config.remoteCameraStatus == .Normal {
            //: self.config.remoteCameraStatus = .Closed
            self.config.remoteCameraStatus = .Closed
            //: NotificationCenter.default.post(name: VIDEO_CHAT_OTHER_CAMERA_AVAILABLE_NOTIFICATION, object: self)
            NotificationCenter.default.post(name: userNetText, object: self)
        }
    }

    //: func onEnterRoom(_ result: Int) {
    func onEnterRoom(_ result: Int) {
        //: UploadLogTool.writeLog(msg: "TRTC 视频通话进入房间. result:\(result), logId：\(infoModel?.logId ?? 0).")
        UploadDisplayThen.makeSelected(msg: (String(kLabCellReturnStr.suffix(6)) + "频通话进入" + kEqualStr.capitalized + kPairShareText.replacingOccurrences(of: "video", with: "r") + String(kRequestData.suffix(6))) + "\(result)" + (String(k_cellTagId.prefix(8))) + "\(infoModel?.logId ?? 0).")
        //: if result < 0 {
        if result < 0 { // 加入失败
            //: self.config.disconnected = true
            self.config.disconnected = true
            //: self.config.isPreviewNow = false
            self.config.isPreviewNow = false
            //: TalkingSocketManager.shared.endTalkingPing()
            ListSocketManager.shared.someColor()
            //: } else {
        } else {
            //: self.config.disconnected = false
            self.config.disconnected = false
            //: self.config.isPreviewNow = true
            self.config.isPreviewNow = true
        }
    }

    //: func onExitRoom(_ reason: Int) {
    func onExitRoom(_: Int) {
        //: self.config.disconnected = true
        self.config.disconnected = true
        //: self.config.isPreviewNow = false
        self.config.isPreviewNow = false
        //: TalkingSocketManager.shared.endTalkingPing()
        ListSocketManager.shared.someColor()
    }

    //: func onRemoteUserEnterRoom(_ userId: String) {
    func onRemoteUserEnterRoom(_ userId: String) {
        //: printLog(message: "\(userId) 加入了房间")
        printLog(message: "\(userId)" + (k_blockEraseStr))
    }

    //: func onRemoteUserLeaveRoom(_ userId: String, reason: Int) {
    func onRemoteUserLeaveRoom(_ userId: String, reason _: Int) {
        //: printLog(message: "\(userId) 离开了房间")
        printLog(message: "\(userId)" + (k_colorUrl))
    }

    /// 用户首针画面
    //: func onFirstVideoFrame(_ userId: String, streamType: TRTCVideoStreamType, width: Int32, height: Int32) {
    func onFirstVideoFrame(_ userId: String, streamType _: TRTCVideoStreamType, width _: Int32, height _: Int32) {
        //: if userId.count > 0 {
        if userId.count > 0 {
            //: let renderView = self.infoModel?.renderPostion == .selfOnBg ? self.windowVideoView:self.bgVideoView
            let renderView = self.infoModel?.renderPostion == .selfOnBg ? self.windowVideoView : self.bgVideoView
            //: renderView?.isHidden = false
            renderView?.isHidden = false
            //: self.bgView?.isHidden = self.bgVideoView?.isHidden ?? false
            self.bgView?.isHidden = self.bgVideoView?.isHidden ?? false
        }
    }

    /// 对方摄像头是否可用
    //: func onUserVideoAvailable(_ userId: String, available: Bool) {
    func onUserVideoAvailable(_ userId: String, available: Bool) {
        //: guard userId != DistanceAppManager.share.loginUserMode.userID else { return }
        guard userId != DistanceAppManager.share.loginUserMode.userID else { return }

        //: self.trtcRemotUid = userId
        self.trtcRemotUid = userId
        //: self.config.remoteCameraStatus = available ? .Open:.Closed
        self.config.remoteCameraStatus = available ? .Open : .Closed

        // 对方摄像头是否可用通知
        //: NotificationCenter.default.post(name: VIDEO_CHAT_OTHER_CAMERA_AVAILABLE_NOTIFICATION, object: self)
        NotificationCenter.default.post(name: userNetText, object: self)

        //: if self.smallRenderView != nil && self.config.isSmallMode {
        if self.smallRenderView != nil && self.config.isSmallMode {
            //: TRTCCloud.sharedInstance().startRemoteView(userId, streamType: .big, view: self.smallRenderView!)
            TRTCCloud.sharedInstance().startRemoteView(userId, streamType: .big, view: self.smallRenderView!)
            //: } else {
        } else {
            //: TRTCCloud.sharedInstance().startRemoteView(userId, streamType: .big, view: self.videoOtherView)
            TRTCCloud.sharedInstance().startRemoteView(userId, streamType: .big, view: self.videoOtherView)
        }
    }
}
