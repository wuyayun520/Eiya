
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_addManagerTitle:[UInt8] = [0x56,0x5b,0x56,0x61,0x15,0x50,0x5c,0x51,0x52,0x5f,0x27,0x16,0xd,0x55,0x4e,0x60,0xd,0x5b,0x5c,0x61,0xd,0x4f,0x52,0x52,0x5b,0xd,0x56,0x5a,0x5d,0x59,0x52,0x5a,0x52,0x5b,0x61,0x52,0x51]

fileprivate func comeLabel(indicator num: UInt8) -> UInt8 {
    let value = Int(num) - 237
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "bth_me_videocall_nor" :*/
fileprivate let k_blockSubId:String = "bth_me_vstart guard"
fileprivate let kAppTalkKey:String = "listdeoc"
fileprivate let kActualFormat:String = "all_norimage view"

/*: "icon_videocall_nor" :*/
fileprivate let k_makeData:[Character] = ["i","c","o","n","_","v","i","d","e","o","c","a","l"]
fileprivate let kToPrivacyData:[Character] = ["l","_","n","o","r"]

/*: "Video Call" :*/
fileprivate let k_youWillValue:String = "Video bubble data"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PublishRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/7.
//

//: import UIKit
import UIKit

//: class TalkingMomentVideoVC: TalkingBaseViewController {
class PublishRecognizerDelegate: StartThen {
    //: var videoCallBlock: (() -> Void)?
    var videoCallBlock: (() -> Void)? // 音视频通话回调
    //: var isHideBotton = true
    var isHideBotton = true
    //: var uid = ""
    var uid = ""
    //: private var videoPath = ""
    private var videoPath = ""
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var duraction = 0.0
    private var duraction = 0.0

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_addManagerTitle.map{comeLabel(indicator: $0)}, encoding: .utf8)!)
    }

    //: init(videoPath: String) {
    init(videoPath: String) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.videoPath = videoPath
        self.videoPath = videoPath
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: self.player.resume()
        self.player.nearFileInfo()
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
        //: self.player.pause()
        self.player.imageThe()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.subviewsAdd()
        //: self.setupSubViewsConstraint()
        self.nearFile()
        //: self.bindInteraction()
        self.anyLine()
        //: self.player.playerWithUrlAndVideoView(url: self.videoPath, view: bgView)
        self.player.dataView(url: self.videoPath, view: bgView)
    }

    //: override func loadView() {
    override func loadView() {
        //: if #available(iOS 13.2, *) {
        if #available(iOS 13.2, *) {
            //: if DistanceAppManager.share.appConfigMode.disableShootScreen {
            if DistanceAppManager.share.appConfigMode.disableShootScreen {
                //: super.loadView()
                super.loadView()
                //: } else {
            } else {
                //: let bgView = MAScreenShieldView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
                let bgView = ValueShieldView(frame: CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue))
                //: self.view = bgView
                self.view = bgView
            }
            //: } else {
        } else {
            //: super.loadView()
            super.loadView()
        }
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: self.player.stopPlay()
        self.player.halt()
        //: self.player.removeVideoWidget()
        self.player.forwardClick()
        //: self.player.videoUrl = ""
        self.player.videoUrl = ""
        //: self.player = TalkingVideoPlayerManager.init()
        self.player = DecisionMakerThen()
    }

    // MARK: - Lazy Load

    //: private lazy var bgView: UIView = {
    private lazy var bgView: UIView = {
        //: let  view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .black
        view.backgroundColor = .black
        //: return view
        return view
        //: }()
    }()

    //: private lazy var player: TalkingVideoPlayerManager = {
    private lazy var player: DecisionMakerThen = {
        //: let  player = TalkingVideoPlayerManager.init()
        let player = DecisionMakerThen()
        //: player.delegate = self
        player.delegate = self
        //: player.setMute(bEnable: false)
        player.setFor(bEnable: false)
        //: return player
        return player
        //: }()
    }()

    //: private lazy var topView: TalkingMomentPhotosTopView = {
    private lazy var topView: StackView = {
        //: let view = TalkingMomentPhotosTopView(frame: CGRect.zero, type: .normal)
        let view = StackView(frame: CGRect.zero, type: .normal)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var bottomView: TalkingMomentPhotosBottomView = {
    private lazy var bottomView: MyJoinViewReactiveCompatible = {
        //: let view = TalkingMomentPhotosBottomView.init()
        let view = MyJoinViewReactiveCompatible()
        //: view.isHidden = isHideBotton
        view.isHidden = isHideBotton
        //: view.modelUid = uid
        view.modelUid = uid
        //: return view
        return view
        //: }()
    }()

    //: private lazy var interactionView: TalkingVideoPlayerInteractionView = {
    private lazy var interactionView: MySizeWeltanschauungView = {
        //: let view = TalkingVideoPlayerInteractionView.init()
        let view = MySizeWeltanschauungView()
        //: view.delegate = self
        view.delegate = self
        //: return view
        return view
        //: }()
    }()

    //: private lazy var videoBottomView: UIView = {
    private lazy var videoBottomView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .colorStatuteNameApp()
        v.backgroundColor = .colorStatuteNameApp()

        //: let imgV = TalkingButton()
        let imgV = ResumeControl()
        //: imgV.setBackgroundImage(UIImage.submitGift(name: "bth_me_videocall_nor"), for: .normal)
        imgV.setBackgroundImage(UIImage.submitGift(name: (String(k_blockSubId.prefix(8)) + kAppTalkKey.replacingOccurrences(of: "list", with: "i") + String(kActualFormat.prefix(7)))), for: .normal)
        //: imgV.setImage(UIImage.submitGift(name: "icon_videocall_nor"), for: .normal)
        imgV.setImage(UIImage.submitGift(name: (String(k_makeData) + String(kToPrivacyData))), for: .normal)
        //: imgV.setTitle("Video Call".localized, for: .normal)
        imgV.setTitle((String(k_youWillValue.prefix(6)) + "Call").localized, for: .normal)
        //: imgV.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 16)
        imgV.titleLabel?.font = UIFont.tapShared(fontSize: 16)
        //: imgV.setTitleColor(.white, for: .normal)
        imgV.setTitleColor(.white, for: .normal)
        //: imgV.addTarget(self, action: #selector(videoButtonClick), for: .touchUpInside)
        imgV.addTarget(self, action: #selector(locationStar), for: .touchUpInside)
        //: v.addSubview(imgV)
        v.addSubview(imgV)
        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.top.equalTo(12)
            make.top.equalTo(12)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 178, height: 36))
            make.size.equalTo(CGSize(width: 178, height: 36))
        }
        //: v.isHidden = (videoCallBlock == nil) || (DistanceAppManager.share.appStatus == AppSkinStatus.special.rawValue)
        v.isHidden = (videoCallBlock == nil) || (DistanceAppManager.share.appStatus == NameQuickLookable.special.rawValue)
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingMomentVideoVC {
extension PublishRecognizerDelegate {
    //: @objc func enterBackgroundNotification() {
    @objc func backgroundNotificationEnter() {
        //: if self.player.isPlaying {
        if self.player.isPlaying {
            //: self.player.setMute(bEnable: false)
            self.player.setFor(bEnable: false)
            //: self.player.delegate = self
            self.player.delegate = self
            //: self.player.pause()
            self.player.imageThe()
        }
    }

    //: @objc func enterForegroundNotification() {
    @objc func totalrude() {}

    /// video
    //: @objc func videoButtonClick() {
    @objc func locationStar() {
        //: self.player.pause()
        self.player.imageThe()
        //: if videoCallBlock != nil {
        if videoCallBlock != nil {
            //: videoCallBlock!()
            videoCallBlock!()
        }
    }
}

// MARK: - SOCKET_VIDEOCHAT_REQUESTCALL_NOTIFICATION【收到音视频通话通知】

//: extension TalkingMomentVideoVC {
extension PublishRecognizerDelegate {
    /// 开始音视频通话
    //: @objc private func startTalking() {
    @objc private func resource() {
        //: self.player.setMute(bEnable: true)
        self.player.setFor(bEnable: true)
    }
}

// MARK: - Delegate

//: extension TalkingMomentVideoVC: TalkingVideoPlayerDelegate, InteractionViewDelegate {
extension PublishRecognizerDelegate: PlayerMakeThen, DataReactiveCompatible {
    //: func func__interactionViewStatus(view: TalkingVideoPlayerInteractionView, status: InteractionViewStatus) {
    func viewStatus(view _: MySizeWeltanschauungView, status: AppViewStatus) {
        //: switch status {
        switch status {
        //: case .StartPlay:
        case .StartPlay:
            //: self.player.resume()
            self.player.nearFileInfo()
        //: break
        //: case .StopPlay:
        case .StopPlay:
            //: self.player.pause()
            self.player.imageThe()
        //: break
        //: default:
        default:
            //: break
            break
        }
    }

    //: func func__interactionViewSlideValue(view: TalkingVideoPlayerInteractionView, value: CGFloat) {
    func join(view _: MySizeWeltanschauungView, value: CGFloat) {
        //: let dragedSeconds = floorf(Float(value * self.duraction))
        let dragedSeconds = floorf(Float(value * self.duraction))
        //: self.player.seek(time: dragedSeconds)
        self.player.dataLab(time: dragedSeconds)
    }

    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func menu(player _: DecisionMakerThen, status: ObjectPlayerStatus) {
        //: self.interactionView.interactionStatus(status: status)
        self.interactionView.beforeReciprocation(status: status)
        //: if status == .Playing {
        if status == .Playing {
            //: self.player.setRenderMode(renderMode: .FILL_EDGE)
            self.player.sharedMode(renderMode: .FILL_EDGE)
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {
    func decisionMaker(player _: DecisionMakerThen, duration: Int, currentTime: Int) {
        //: self.duraction = Double(duration)
        self.duraction = Double(duration)
        //: self.interactionView.updateProgressDurationAndCurrentTime(duration: duration, currentTime: currentTime)
        self.interactionView.pressedMake(duration: duration, currentTime: currentTime)
    }

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {
    func playerAction(player _: DecisionMakerThen, progress: CGFloat) {
        //: self.interactionView.updateProgress(value: progress)
        self.interactionView.lease(value: progress)
    }
}

// MARK: - Layout

//: extension TalkingMomentVideoVC {
extension PublishRecognizerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func subviewsAdd() {
        //: hideNavi = true
        hideNavi = true
        //: view.backgroundColor = UIColor.black
        view.backgroundColor = UIColor.black
        //: self.view.addSubview(bgView)
        self.view.addSubview(bgView)
        //: bgView.addSubview(topView)
        bgView.addSubview(topView)
        //: bgView.addSubview(bottomView)
        bgView.addSubview(bottomView)
        //: bgView.addSubview(videoBottomView)
        bgView.addSubview(videoBottomView)
        //: bgView.addSubview(interactionView)
        bgView.addSubview(interactionView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func nearFile() {
        //: bgView.snp.makeConstraints { make in
        bgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.top.leading.trailing.equalTo(self.view)
            make.top.leading.trailing.equalTo(self.view)
            //: make.height.equalTo(StatusBarNavigationBarHeight+30)
            make.height.equalTo(appTurnName + 30)
        }
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.bottom.leading.trailing.equalTo(self.view)
            make.bottom.leading.trailing.equalTo(self.view)
            //: make.height.equalTo(kDeviceSafeBottomHeight+64)
            make.height.equalTo(appButtonData + 64)
        }
        //: videoBottomView.snp.makeConstraints { make in
        videoBottomView.snp.makeConstraints { make in
            //: make.edges.equalTo(bottomView)
            make.edges.equalTo(bottomView)
        }
        //: interactionView.snp.makeConstraints { make in
        interactionView.snp.makeConstraints { make in
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
            //: make.top.equalTo(topView.snp.bottom).offset(0)
            make.top.equalTo(topView.snp.bottom).offset(0)
            //: make.bottom.equalTo(bottomView.snp.top).offset(0)
            make.bottom.equalTo(bottomView.snp.top).offset(0)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func anyLine() {
        //: topView.backBtn.rx.tap.subscribe(onNext: { [weak self] in
        topView.backBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: if self?.presentingViewController != nil {
            if self?.presentingViewController != nil {
                //: self?.dismiss(animated: true)
                self?.dismiss(animated: true)
                //: } else {
            } else {
                //: self?.navigationController?.popViewController(animated: true)
                self?.navigationController?.popViewController(animated: true)
            }
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(enterBackgroundNotification),
                                               selector: #selector(backgroundNotificationEnter),
                                               //: name: UIApplication.willResignActiveNotification,
                                               name: UIApplication.willResignActiveNotification,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(enterForegroundNotification),
                                               selector: #selector(totalrude),
                                               //: name: UIApplication.didBecomeActiveNotification,
                                               name: UIApplication.didBecomeActiveNotification,
                                               //: object: nil)
                                               object: nil)

        // 添加接收到音视频通话通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(startTalking),
                                               selector: #selector(resource),
                                               //: name: SOCKET_VIDEOCHAT_REQUESTCALL_NOTIFICATION,
                                               name: app_plainValue,
                                               //: object: nil)
                                               object: nil)
    }
}
