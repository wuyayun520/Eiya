
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_loadText:[UInt8] = [0x65,0x62,0x65,0x78,0x24,0x6f,0x63,0x68,0x69,0x7e,0x36,0x25,0x2c,0x64,0x6d,0x7f,0x2c,0x62,0x63,0x78,0x2c,0x6e,0x69,0x69,0x62,0x2c,0x65,0x61,0x7c,0x60,0x69,0x61,0x69,0x62,0x78,0x69,0x68]

private func timeError(bottom num: UInt8) -> UInt8 {
    return num ^ 12
}

/*: "&type=6" :*/
fileprivate let k_equalData:[Character] = ["&","t","y","p","e","=","6"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RenameViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

//: import CallKit.CXCallObserver
import CallKit.CXCallObserver

//: class TalkingVideoInitivCallVC: TalkingBaseViewController {
class RenameViewController: StartThen {
    //: var chatModel: TalkingVideoChatModel?
    var chatModel: ViewChatModel? // 视频通话模型
    //: private var miniView: TalkingVideoMiniView?
    private var miniView: EndItemMiniView? // 视频通话小窗口
    //: private var isFromMiniView = false
    private var isFromMiniView = false // 是否点击小窗口进入
    //: private var palyerStatus = VideoPlayerStatus.Unknown
    private var palyerStatus = ObjectPlayerStatus.Unknown // 视频播放状态
    //: var isRandomVCPush = false
    var isRandomVCPush = false // 是否随机视频匹配进来

    //: override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    override init(nibName _: String?, bundle _: Bundle?) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_loadText.map{timeError(bottom: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: let nav = self.navigationController as! TalkingNavigationController
        let nav = self.navigationController as! MissiveThen
        //: nav.protectedPushVc = nil
        nav.protectedPushVc = nil
        //: UIApplication.shared.isIdleTimerDisabled = true
        UIApplication.shared.isIdleTimerDisabled = true // 设备不会进入休眠状态
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: if self.miniView != nil {
        if self.miniView != nil { // 移除小窗口
            //: self.miniView?.removeFromSuperview()
            self.miniView?.removeFromSuperview()
            //: self.miniView = nil
            self.miniView = nil
            //: TalkingSocketManager.shared.currMyVC = nil
            ListSocketManager.shared.currMyVC = nil
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = UIColor.RGBA(51, 51, 51, 1)
        self.view.backgroundColor = UIColor.behindVoice(51, 51, 51, 1)
        //: TalkingSocketManager.shared.isSpace = true
        ListSocketManager.shared.isSpace = true
        //: setupSubviews()
        profileTo()
        //: setupSubViewsConstraint()
        colorIn()
        //: req_callGetUserInfo()
        transitionCenter()
        //: self.startPreview()
        self.colorPreview()
    }

    //: deinit {
    deinit {
        //: self.player?.stopPlay()
        self.player?.halt()
        //: self.player?.removeVideoWidget()
        self.player?.forwardClick()
        //: self.player = nil
        self.player = nil
        //: UIApplication.shared.isIdleTimerDisabled = false
        UIApplication.shared.isIdleTimerDisabled = false
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: TalkingSocketManager.shared.isSpace = false
        ListSocketManager.shared.isSpace = false
    }

    // MARK: - Lazy Load

    /// 视频通话操作按钮
    //: private lazy var interactionView: TalkingVideoInitivCallView = {
    private lazy var interactionView: DistantThen = {
        //: let v = TalkingVideoInitivCallView(frame: .zero, chatModel: self.chatModel)
        let v = DistantThen(frame: .zero, chatModel: self.chatModel)
        //: v.durationTime = Double(TalkingVideoInitivCallManager.shared.videoCallModel.callCountdown)
        v.durationTime = Double(AddModeReactiveCompatible.shared.videoCallModel.callCountdown)
        //: v.delegate = self
        v.delegate = self
        //: return v
        return v
        //: }()
    }()

    // 视频通话小窗口
    //: private lazy var windowView: TalkingVideoWindowView = {
    private lazy var windowView: CoverWindowSashView = {
        //: let v = TalkingVideoWindowView()
        let v = CoverWindowSashView()
        //: v.frame = CGRect(x: ScreenWidth-15-actualWidth(w: 125), y: StatusBarHeight+actualHeight(h: 25)+26+35, width: actualWidth(w: 125), height: actualHeight(h: 170))
        v.frame = CGRect(x: constFormalContent - 15 - actualWidth(w: 125), y: main_netValue + actualHeight(h: 25) + 26 + 35, width: actualWidth(w: 125), height: actualHeight(h: 170))
        //: v.block = { [weak self] in
        v.block = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.changeRenderView()
            self.host()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var videoManager: TalkingVideoInitivCallTool = {
    private lazy var videoManager: BaptizeObserverPictureToolReactiveCompatible = {
        //: let m = TalkingVideoInitivCallTool()
        let m = BaptizeObserverPictureToolReactiveCompatible()
        //: m.infoModel = self.chatModel
        m.infoModel = self.chatModel
        // 视图传递给manager
        //: m.bgVideoView = self.view
        m.bgVideoView = self.view
        //: m.bgView = self.interactionView
        m.bgView = self.interactionView
        //: m.windowVideoView = self.windowView.renderView
        m.windowVideoView = self.windowView.renderView
        //: return m
        return m
        //: }()
    }()

    // 懒加载初始化
    //: private lazy var player: TalkingVideoPlayerManager? = {
    private lazy var player: DecisionMakerThen? = {
        //: let  player = TalkingVideoPlayerManager.init()
        let player = DecisionMakerThen()
        //: player.player.setMute(false)
        player.player.setMute(false)
        //: return player
        return player
        //: }()
    }()
}

// MARK: - Request && 刷新UI

//: extension TalkingVideoInitivCallVC {
extension RenameViewController {
    /// 初始化信息
    //: private func req_callGetUserInfo() {
    private func transitionCenter() {
        //: self.chatModel = TalkingVideoChatModel.init()
        self.chatModel = ViewChatModel()
        //: self.chatModel?.isCaller = true
        self.chatModel?.isCaller = true
        //: self.chatModel?.videoStage = .Calling
        self.chatModel?.videoStage = .Calling
        //: self.chatModel?.renderPostion = .SelfOnWindow
        self.chatModel?.renderPostion = .SelfOnWindow
        //: self.chatModel?.isSpaceNow = true
        self.chatModel?.isSpaceNow = true

        //: self.player?.delegate = self
        self.player?.delegate = self
        //: self.player?.playerWithUrlAndVideoView(url: TalkingVideoInitivCallManager.shared.videoCallModel.callVideoUrl, view: self.interactionView)
        self.player?.dataView(url: AddModeReactiveCompatible.shared.videoCallModel.callVideoUrl, view: self.interactionView)
        //: self.videoManager.startPreview()
        self.videoManager.personClean()
    }
}

// MARK: - Event

//: extension TalkingVideoInitivCallVC {
extension RenameViewController {
    /// 预览视频画面
    //: private func startPreview() {
    private func colorPreview() {
        //: self.videoManager.startPreview()
        self.videoManager.personClean()
    }

    // 将当前视图从栈中移除
    //: private func popCurrentViewController(animated: Bool = true) {
    private func actualAnimated(animated: Bool = true) {
        //: self.navigationController?.popViewController(animated: animated)
        self.navigationController?.popViewController(animated: animated)
//        if self.navigationController?.topViewController == self {
//            self.navigationController?.popViewController(animated: animated)
//        } else {
//            if var vcArr = self.navigationController?.viewControllers {
//                if let index = vcArr.firstIndex(of: self) {
//                    vcArr.remove(at: index)
//                    self.navigationController?.setViewControllers(vcArr, animated: false)
//                }
//            }
//        }
    }

    /// 视频通话双方窗口转换
    //: private func changeRenderView() {
    private func host() {
        //: if self.chatModel?.renderPostion == .selfOnBg {
        if self.chatModel?.renderPostion == .selfOnBg {
            //: self.chatModel?.renderPostion = .SelfOnWindow
            self.chatModel?.renderPostion = .SelfOnWindow
            //: self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
            self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
            //: } else if self.chatModel?.renderPostion == .SelfOnWindow {
        } else if self.chatModel?.renderPostion == .SelfOnWindow {
            //: self.chatModel?.renderPostion = .selfOnBg
            self.chatModel?.renderPostion = .selfOnBg
            //: self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
            self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
        }

        //: self.videoManager.changeRenderView()
        self.videoManager.giftCover()
    }
}

// MARK: - PlayerDelegete

//: extension TalkingVideoInitivCallVC: TalkingVideoPlayerDelegate {
extension RenameViewController: PlayerMakeThen {
    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func menu(player _: DecisionMakerThen, status: ObjectPlayerStatus) {
        //: palyerStatus = status
        palyerStatus = status
        //: if status == .Failed {
        if status == .Failed {
            //: uploadRecord.uploadRecordEvent(eventID: videoPlayFailure)
            kSoundName.messUp(eventID: user_selectMessageDomainData)
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {
    func decisionMaker(player _: DecisionMakerThen, duration _: Int, currentTime _: Int) {}

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {
    func playerAction(player _: DecisionMakerThen, progress _: CGFloat) {}
}

// MARK: - HighlightObjectProtocol【通话按钮操作事件】

//: extension TalkingVideoInitivCallVC: Talking1v1VideoInteractionViewDelegate {
extension RenameViewController: HighlightObjectProtocol {
    //: func interactionView_reportSucceed() {
    func depictionApp() {}

    /// 接听视频通话
    //: func interactionView_shouldAcceptCall() {
    func writerSName() {}

    /// 拨打方结束通话
    //: func interactionView_shouldEndCall() {
    func withCulminate() {
        //: if self.miniView != nil {
        if self.miniView != nil { // 移除小窗口
            //: self.miniView?.removeFromSuperview()
            self.miniView?.removeFromSuperview()
            //: self.miniView = nil
            self.miniView = nil
            //: TalkingSocketManager.shared.currMyVC = nil
            ListSocketManager.shared.currMyVC = nil
        }
        //: let duration = TalkingVideoInitivCallManager.shared.videoCallModel.callCountdown - Int(interactionView.durationTime)
        let duration = AddModeReactiveCompatible.shared.videoCallModel.callCountdown - Int(interactionView.durationTime)
        //: let uid = interactionView.durationTime <= 0 ? "\(TalkingVideoInitivCallManager.shared.videoCallModel.uid)" : DistanceAppManager.share.loginUserMode.userID
        let uid = interactionView.durationTime <= 0 ? "\(AddModeReactiveCompatible.shared.videoCallModel.uid)" : DistanceAppManager.share.loginUserMode.userID
        //: TalkingVideoInitivCallManager.shared.req_userOperation(type: 2, duration: duration, stopUid: uid) { succeed, result, errorModel in
        AddModeReactiveCompatible.shared.operationSub(type: 2, duration: duration, stopUid: uid) { _, _, _ in
        }
        /// 视频失败上报
        //: if palyerStatus != .Finished && palyerStatus != .Playing {
        if palyerStatus != .Finished && palyerStatus != .Playing {
            //: uploadRecord.uploadRecordEvent(eventID: videoPlayFailure)
            kSoundName.messUp(eventID: user_selectMessageDomainData)
        }
        //: popCurrentViewController()
        actualAnimated()

        //: if DistanceAppManager.share.appUserConfigMode.popupCallEndEvent == 1 {
        if DistanceAppManager.share.appUserConfigMode.popupCallEndEvent == 1 {
            //: AddReactiveCompatible.share.func__pushToHalfWebVC(webViewType: .RechargeToVideoInitivHalfPage)
            AddReactiveCompatible.share.halfDismiss(webViewType: .RechargeToVideoInitivHalfPage)
            //: } else if DistanceAppManager.share.appUserConfigMode.popupCallEndEvent == 2 {
        } else if DistanceAppManager.share.appUserConfigMode.popupCallEndEvent == 2 {
            //: AddReactiveCompatible.share.func__pushToSubscribeAlert(appendParams: "&type=6")
            AddReactiveCompatible.share.digitiserParams(appendParams: (String(k_equalData)))
        }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0) {
            //: if self.currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
            if self.selectStart()?.isKind(of: PerspectiveViewController.self) == true {
                //: let vc = self.currentViewController() as! TalkingWebViewController
                let vc = self.selectStart() as! PerspectiveViewController
                //: vc.isVideoCallRechargeHalfPage = true
                vc.isVideoCallRechargeHalfPage = true
                //: if !self.isRandomVCPush {
                if !self.isRandomVCPush {
                    /// 主动拨打视频弹窗，充值成功才切换到match
                    //: vc.isRechargeOrSubscribeChangeMatch = true
                    vc.isRechargeOrSubscribeChangeMatch = true
                }
            }
        }
    }

    /// 旋转摄像头
    //: func interactionView_shouldChangeCamera(isFront: Bool) {
    func toFront(isFront: Bool) {
        //: self.videoManager.useFrontCamera(isFront)
        self.videoManager.retort(isFront)
    }

    /// 开启/关闭摄像头
    //: func interactionView_shouldForbiddenCamera(forbidden: Bool) {
    func builder(forbidden: Bool) {
        //: self.videoManager.useCamera(!forbidden)
        self.videoManager.ply(!forbidden)
    }

    /// 展示视频通话小窗口
    //: func interactionView_shouldDisplayMiniWindow() {
    func onAdd() {
        //: TalkingSocketManager.shared.currMyVC = self
        ListSocketManager.shared.currMyVC = self
        //: self.miniView = TalkingVideoMiniView.buildVideoMiniView()
        self.miniView = EndItemMiniView.stroke()
        //: self.player?.player.setupVideoWidget(self.miniView?.renderView, insert: 0)
        self.player?.player.setupVideoWidget(self.miniView?.renderView, insert: 0)
        //: self.videoManager.smallRenderView = self.miniView?.renderView
        self.videoManager.smallRenderView = self.miniView?.renderView
        //: self.videoManager.enterSmallRenderMode()
        self.videoManager.attribute()
        //: self.miniView?.tapGestureBlock = { [weak self] in
        self.miniView?.tapGestureBlock = { [weak self] in // 还原回通话界面
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.videoManager.exitSmallRenderMode()
            self.videoManager.capacityDown()
            //: if self.chatModel?.renderPostion == .selfOnBg {
            if self.chatModel?.renderPostion == .selfOnBg {
                //: self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
                self.player?.player.setupVideoWidget(self.windowView.renderView, insert: 0)
                //: } else if self.chatModel?.renderPostion == .SelfOnWindow {
            } else if self.chatModel?.renderPostion == .SelfOnWindow {
                //: self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
                self.player?.player.setupVideoWidget(self.interactionView, insert: 0)
            }
            //: self.videoManager.changeRenderView()
            self.videoManager.giftCover()
            //: self.isFromMiniView = true
            self.isFromMiniView = true
            //: self.currentViewController()?.navigationController?.pushViewController(self, animated: true)
            self.selectStart()?.navigationController?.pushViewController(self, animated: true)
        }
        //: popCurrentViewController()
        actualAnimated()
    }
}

// MARK: - Layout

//: extension TalkingVideoInitivCallVC {
extension RenameViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func profileTo() {
        //: self.view.layer.masksToBounds = true
        self.view.layer.masksToBounds = true
        //: self.view.addSubview(interactionView)
        self.view.addSubview(interactionView)
        //: self.interactionView.addWindowView(view: self.windowView)
        self.interactionView.legalInstrument(view: self.windowView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func colorIn() {
        //: interactionView.snp.makeConstraints { make in
        interactionView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
