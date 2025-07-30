
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_pathStr:[UInt8] = [0x87,0x80,0x87,0x9a,0xc6,0x8d,0x81,0x8a,0x8b,0x9c,0xd4,0xc7,0xce,0x86,0x8f,0x9d,0xce,0x80,0x81,0x9a,0xce,0x8c,0x8b,0x8b,0x80,0xce,0x87,0x83,0x9e,0x82,0x8b,0x83,0x8b,0x80,0x9a,0x8b,0x8a]

private func collectionElement(make num: UInt8) -> UInt8 {
    return num ^ 238
}

/*: "icon_video_bd" :*/
fileprivate let k_whiteGiftAppText:[Character] = ["i","c","o","n","_","v","i","d","e","o","_","b"]
fileprivate let k_intervalValue:[Character] = ["d"]

/*: "btn_video_drop_nor" :*/
fileprivate let k_locationValue:String = "btn_vtype view frame let"
fileprivate let kDoingListFormat:[Character] = ["d","r","o","p","_","n","o","r"]

/*: "get json error" :*/
fileprivate let kDataId:String = "get jmodel selected for field add"
fileprivate let k_rangeContactUrl:String = "euseror"

/*: s" :*/
fileprivate let k_sampleMessage:String = "view"

/*: "icon_videocall_topView" :*/
fileprivate let kWhiteTitle:String = "ICON"
fileprivate let kInfoId:[Character] = ["e","o","c","a","l","l","_","t","o","p","V","i","e","w"]

/*: "Video Call" :*/
fileprivate let k_shareUrl:String = "language height block equalVideo C"
fileprivate let k_textHiddenStr:[Character] = ["a","l","l"]

/*: "icon_videocall_initerv_topView" :*/
fileprivate let k_collectionContent:[Character] = ["i","c","o","n","_","v","i","d","e","o","c"]
fileprivate let k_rowData:[Character] = ["a","l","l","_","i","n","i","t","e","r","v","_","t"]
fileprivate let k_infoMainLockValue:[Character] = ["o","p","V","i","e","w"]

/*: "Free" :*/
fileprivate let kShareId:String = "Freescale let"

/*: "You've been barred from receiving calls" :*/
fileprivate let kTimeKey:[UInt8] = [0x73,0x6c,0x6c,0x61,0x63,0x20,0x67,0x6e,0x69,0x76,0x69,0x65,0x63,0x65,0x72,0x20,0x6d,0x6f,0x72,0x66,0x20,0x64,0x65,0x72,0x72,0x61,0x62,0x20,0x6e,0x65,0x65,0x62,0x20,0x65,0x76,0x27,0x75,0x6f,0x59]

/*: "&type=6" :*/
fileprivate let kIconRefreshData:String = "member bottom&t"
fileprivate let kSizeKey:String = "ype=6tool let time"

/*: "#864EFF" :*/
fileprivate let kCellValue:String = "#"
fileprivate let kSuiteText:String = "864EFFframe action equal enter"

/*: "#F79AFF" :*/
fileprivate let kEqualMinMsg:[Character] = ["#","F","7","9","A","F"]
fileprivate let kPingGiftPath:[Character] = ["F"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeAtUpView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

//: class TalkingVideoCallPopUpView: UIView {
class MakeAtUpView: UIView {
    //: var popView: TalkingPopView?
    var popView: DataPopView?
    //: private var countdownTimer: Timer?
    private var countdownTimer: Timer?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.milkSubviews()
        //: self.setupSubViewsConstraint()
        self.streetTitle()
        //: self.bindInteraction()
        self.toIntervaleraction()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_pathStr.map{collectionElement(make: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: player?.stopPlay()
        player?.halt()
        //: player?.removeVideoWidget()
        player?.forwardClick()
        //: player = nil
        player = nil
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var playerView: UIImageView = {
    private lazy var playerView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.contentMode = .scaleAspectFill
        view.contentMode = .scaleAspectFill
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView.init()
        let iamg = UIImageView()
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var topBtn: TalkingButton = {
    private lazy var topBtn: ResumeControl = {
        //: let btn = TalkingButton.init(type: .custom)
        let btn = ResumeControl(type: .custom)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 17)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "icon_video_bd"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(k_whiteGiftAppText) + String(k_intervalValue))), for: .normal)
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(addLabel), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.submitGift(name: "btn_video_drop_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(k_locationValue.prefix(5)) + "ideo_" + String(kDoingListFormat))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(shouldByClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var countDownLb: UILabel = {
    private lazy var countDownLb: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.font = UIFont.pingfangMediumFont(fontSize: 10)
        lb.font = UIFont.tapShared(fontSize: 10)
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()

    // 懒加载初始化
    //: private lazy var player: TalkingVideoPlayerManager? = {
    private lazy var player: DecisionMakerThen? = {
        //: let  player = TalkingVideoPlayerManager.init()
        let player = DecisionMakerThen()
        //: player.setMute(bEnable: false)
        player.setFor(bEnable: false)
        //: return player
        return player
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill

        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Videocall_initiver)
        let url = VideoEffectTool.default.conType(type: .Videocall_initiver)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(kDataId.prefix(5)) + "son " + k_rangeContactUrl.replacingOccurrences(of: "user", with: "rr")))
        }
        //: return player
        return player
        //: }()
    }()
}

// MARK: - Tool

//: extension TalkingVideoCallPopUpView {
extension MakeAtUpView {
    /// 获取权限
    //: private func getServercePermission() {
    private func toDomain() {
        // 是否开启摄像头
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { isOpen in
        ToolThen.represent(false) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: return
                return
            }
            // 麦克风权限
            //: TalkingPermissionTool.func__openRecordServiceWithBlock(false) { [weak self] isOpen in
            ToolThen.cellTact(false) { [weak self] isOpen in
                //: guard let self = self else {
                guard let self = self else {
                    //: return
                    return
                }
                //: guard isOpen == true else {
                guard isOpen == true else {
                    //: return
                    return
                }
                //: self.countDownLb.isHidden = false
                self.countDownLb.isHidden = false
                //: self.topBtn.snp.remakeConstraints { make in
                self.topBtn.snp.remakeConstraints { make in
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.centerY.equalToSuperview().offset(-10)
                    make.centerY.equalToSuperview().offset(-10)
                    //: make.height.equalTo(18)
                    make.height.equalTo(18)
                }
                //: self.countDownLb.snp.remakeConstraints { make in
                self.countDownLb.snp.remakeConstraints { make in
                    //: make.top.equalTo(self.topBtn.snp.bottom).offset(7)
                    make.top.equalTo(self.topBtn.snp.bottom).offset(7)
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.height.equalTo(10)
                    make.height.equalTo(10)
                }
                // 5s倒计时主动接通
                //: var time = TalkingVideoInitivCallManager.shared.videoCallModel.winCountdown
                var time = AddModeReactiveCompatible.shared.videoCallModel.winCountdown
                //: self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 1.0, block: { [weak self] timer in
                self.countdownTimer = Timer.scheduledTimer(withTimeInterval: 1.0, block: { [weak self] _ in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: guard time > 0 else {
                    guard time > 0 else { // 结束倒计时
                        //: self.destroyTimer()
                        self.textScreen()
                        //: self.dismiss()
                        self.passePartoutDismiss()
                        //: switch DistanceAppManager.share.appUserConfigMode.popupCallAcceptEvent {
                        switch DistanceAppManager.share.appUserConfigMode.popupCallAcceptEvent {
                        //: case 1:
                        case 1:
                            //: pushWebRechargeView()
                            pinTouch()
                        //: case 2:
                        case 2:
                            //: pushWebSubscriptionView()
                            alongTo()
                        //: case 3:
                        case 3:
                            //: self.putThrough()
                            self.finishedTo()
                        //: default:
                        default:
                            //: break
                            break
                        }
                        //: return
                        return
                    }
                    //: self.countDownLb.text = "\(time)s"
                    self.countDownLb.text = "\(time)s"
                    //: time -= 1
                    time -= 1
                    //: }, repeats: true)
                }, repeats: true)
                //: self.countdownTimer?.fire()
                self.countdownTimer?.fire()
                //: RunLoop.current.add(self.countdownTimer!, forMode: .common)
                RunLoop.current.add(self.countdownTimer!, forMode: .common)
            }
        }
        //: if self.countDownLb.isHidden {
        if self.countDownLb.isHidden {
            //: self.topBtn.snp.remakeConstraints { make in
            self.topBtn.snp.remakeConstraints { make in
                //: make.center.equalToSuperview()
                make.center.equalToSuperview()
                //: make.height.equalTo(18)
                make.height.equalTo(18)
            }
        }
    }

    //: private func seTypeView() {
    private func equalNetwork() {
        //: switch DistanceAppManager.share.appUserConfigMode.popupCallAcceptEvent {
        switch DistanceAppManager.share.appUserConfigMode.popupCallAcceptEvent {
        //: case 1, 2:
        case 1, 2:
            //: topIcon.image = UIImage.submitGift(name: "icon_videocall_topView")
            topIcon.image = UIImage.submitGift(name: (kWhiteTitle.lowercased() + "_vid" + String(kInfoId)))
            //: topBtn.setTitle("Video Call".localized, for: .normal)
            topBtn.setTitle((String(k_shareUrl.suffix(7)) + String(k_textHiddenStr)).localized, for: .normal)
        //: case 3:
        case 3:
            //: topIcon.image = UIImage.submitGift(name: "icon_videocall_initerv_topView")
            topIcon.image = UIImage.submitGift(name: (String(k_collectionContent) + String(k_rowData) + String(k_infoMainLockValue)))
            //: topBtn.setTitle("Free".localized, for: .normal)
            topBtn.setTitle((String(kShareId.prefix(4))).localized, for: .normal)
        //: default:
        default:
            //: break
            break
        }
    }

    /// 播放视频或封面
    //: private func beginPlayer() {
    private func effectPhoto() {
        //: if TalkingVideoInitivCallManager.shared.videoCallModel.winUrlType == 2 {
        if AddModeReactiveCompatible.shared.videoCallModel.winUrlType == 2 {
            //: self.player?.playerWithUrlAndVideoView(url: TalkingVideoInitivCallManager.shared.videoCallModel.winVideoUrl, view: playerView)
            self.player?.dataView(url: AddModeReactiveCompatible.shared.videoCallModel.winVideoUrl, view: playerView)
            //: } else {
        } else {
            //: self.playerView.setUrlImage(urlStr: TalkingVideoInitivCallManager.shared.videoCallModel.winVideoUrl)
            self.playerView.setUrlImage(urlStr: AddModeReactiveCompatible.shared.videoCallModel.winVideoUrl)
        }
    }

    /// 销毁倒计时
    //: private func destroyTimer() {
    private func textScreen() {
        //: if countdownTimer != nil {
        if countdownTimer != nil {
            //: countdownTimer?.invalidate()
            countdownTimer?.invalidate()
            //: countdownTimer = nil
            countdownTimer = nil
        }
    }

    /// 接通电话
    //: private func putThrough() {
    private func finishedTo() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoAcceptButton)
        kSoundName.messUp(eventID: const_pointValue)
        //: initVideoCallTime()
        eigenvalue()
        /// 视频通话被禁用
        //: guard TalkingVideoInitivCallManager.shared.videoCallModel.isBan == 0 else {
        guard AddModeReactiveCompatible.shared.videoCallModel.isBan == 0 else {
            //: self.func__showStatusBarErrorMsg(showMsg: "You've been barred from receiving calls".localized)
            self.arcInfo(showMsg: String(bytes: kTimeKey.reversed(), encoding: .utf8)!.localized)
            //: return
            return
        }
        //: TalkingVideoInitivCallManager.shared.req_userOperation(type: 1) { succeed, result, errorModel in
        AddModeReactiveCompatible.shared.operationSub(type: 1) { succeed, _, _ in
            //: guard succeed == true else {
            guard succeed == true else {
                //: return
                return
            }
            //: if self.currentViewController()?.presentingViewController != nil {
            if self.selectStart()?.presentingViewController != nil {
                // 如果有present, 先dismiss
                //: self.currentViewController()?.dismiss(animated: false)
                self.selectStart()?.dismiss(animated: false)
            }
            //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                //: let vc = TalkingVideoInitivCallVC()
                let vc = RenameViewController()
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.selectStart()?.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }

    /// 上报行为
    //: private func uploadRepord(type: Int) {
    private func translateOn(type: Int) {
        //: TalkingVideoInitivCallManager.shared.req_userOperation(type: type) { succeed, result, errorModel in
        AddModeReactiveCompatible.shared.operationSub(type: type) { _, _, _ in
        }
    }

    /// 开启下次弹窗倒计时
    //: private func initVideoCallTime() {
    private func eigenvalue() {
        //: TalkingVideoInitivCallManager.shared.initVideoCallTimer()
        AddModeReactiveCompatible.shared.year()
    }
}

// MARK: - Event

//: extension TalkingVideoCallPopUpView {
extension MakeAtUpView {
    //: @objc private func finishBtnClick() {
    @objc private func addLabel() {
        //: self.dismiss()
        self.passePartoutDismiss()
        //: switch DistanceAppManager.share.appUserConfigMode.popupCallAcceptEvent {
        switch DistanceAppManager.share.appUserConfigMode.popupCallAcceptEvent {
        //: case 1:
        case 1:
            //: pushWebRechargeView()
            pinTouch()
        //: case 2:
        case 2:
            //: pushWebSubscriptionView()
            alongTo()
        //: case 3:
        case 3:
            //: TalkingPermissionTool.checkCameraAndMicrophone { [weak self] isOpen in
            ToolThen.drunkComponent { [weak self] isOpen in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: guard isOpen == true else { return }
                guard isOpen == true else { return }
                //: self.putThrough()
                self.finishedTo()
            }
        //: default:
        default:
            //: break
            break
        }
    }

    /// 充值
    //: private func pushWebRechargeView() {
    private func pinTouch() {
        //: initVideoCallTime()
        eigenvalue()
        //: AddReactiveCompatible.share.func__pushToHalfWebVC(webViewType: .RechargeToVideoInitivHalfPage)
        AddReactiveCompatible.share.halfDismiss(webViewType: .RechargeToVideoInitivHalfPage)
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if selectStart()?.isKind(of: PerspectiveViewController.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = selectStart() as! PerspectiveViewController
            //: vc.isVideoCallRechargeHalfPage = true
            vc.isVideoCallRechargeHalfPage = true
            //: vc.isRechargeOrSubscribeChangeMatch = true
            vc.isRechargeOrSubscribeChangeMatch = true
        }
    }

    /// 订阅
    //: private func pushWebSubscriptionView() {
    private func alongTo() {
        //: initVideoCallTime()
        eigenvalue()
        //: AddReactiveCompatible.share.func__pushToSubscribeAlert(appendParams: "&type=6")
        AddReactiveCompatible.share.digitiserParams(appendParams: (String(kIconRefreshData.suffix(2)) + String(kSizeKey.prefix(5))))
        //: if currentViewController()?.isKind(of: TalkingWebViewController.self) == true {
        if selectStart()?.isKind(of: PerspectiveViewController.self) == true {
            //: let vc = currentViewController() as! TalkingWebViewController
            let vc = selectStart() as! PerspectiveViewController
            //: vc.isVideoCallRechargeHalfPage = true
            vc.isVideoCallRechargeHalfPage = true
            //: vc.isRechargeOrSubscribeChangeMatch = true
            vc.isRechargeOrSubscribeChangeMatch = true
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func shouldByClick() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoRejectButton)
        kSoundName.messUp(eventID: notiScreenData)
        //: initVideoCallTime()
        eigenvalue()
        //: uploadRepord(type: 3)
        translateOn(type: 3)
        //: dismiss()
        passePartoutDismiss()
    }

    //: func show() {
    func equalShow() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = DataPopView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.smart(view: self)
        //: popView?.showInView(view: UserTextMacroDefine.getWindow())
        popView?.academePosition(view: UserTextMacroDefine.clearstoryNo())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func passePartoutDismiss() {
        //: popView?.dismissView()
        popView?.upView()
        //: popView = nil
        popView = nil
        //: destroyTimer()
        textScreen()
    }
}

// MARK: - Layout

//: extension TalkingVideoCallPopUpView {
extension MakeAtUpView {
    /// 添加视图
    //: private func setupSubviews() {
    private func milkSubviews() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(playerView)
        contentView.addSubview(playerView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.insertSubview(topIcon, aboveSubview: playerView)
        contentView.insertSubview(topIcon, aboveSubview: playerView)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
        //: contentView.addSubview(svgaPlayer)
        contentView.addSubview(svgaPlayer)
        //: contentView.insertSubview(finishBtn, aboveSubview: svgaPlayer)
        contentView.insertSubview(finishBtn, aboveSubview: svgaPlayer)
        //: finishBtn.addSubview(topBtn)
        finishBtn.addSubview(topBtn)
        //: finishBtn.addSubview(countDownLb)
        finishBtn.addSubview(countDownLb)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func streetTitle() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 295), height: actualWidth(w: 419)))
            make.size.equalTo(CGSize(width: actualWidth(w: 295), height: actualWidth(w: 419)))
        }
        //: playerView.snp.makeConstraints { make in
        playerView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(4)
            make.leading.top.equalTo(4)
            //: make.trailing.bottom.equalTo(-4)
            make.trailing.bottom.equalTo(-4)
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.leading.equalTo(-12)
            make.leading.equalTo(-12)
            //: make.top.equalTo(-23)
            make.top.equalTo(-23)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 121), height: actualWidth(w: 52)))
            make.size.equalTo(CGSize(width: actualWidth(w: 121), height: actualWidth(w: 52)))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.leading.equalTo(22)
            make.leading.equalTo(22)
            //: make.size.equalTo(42)
            make.size.equalTo(42)
        }

        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.leading.equalTo(closeBtn.snp.trailing).offset(1)
            make.leading.equalTo(closeBtn.snp.trailing).offset(1)
            //: make.centerY.equalTo(closeBtn)
            make.centerY.equalTo(closeBtn)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
        }
        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.top.leading.equalTo(svgaPlayer).offset(6)
            make.top.leading.equalTo(svgaPlayer).offset(6)
            //: make.trailing.bottom.equalTo(svgaPlayer).offset(-6)
            make.trailing.bottom.equalTo(svgaPlayer).offset(-6)
        }
    }

    /// 事件绑定
    //: private func bindInteraction() {
    private func toIntervaleraction() {
        //: addGradientLayerWithCorner(cornerRadius: 10, lineWidth: 4, colors: [UIColor.init(hex: "#864EFF")!.cgColor, UIColor.init(hex: "#F79AFF")!.cgColor])
        cornerPlayer(cornerRadius: 10, lineWidth: 4, colors: [UIColor(hex: (kCellValue.capitalized + String(kSuiteText.prefix(6))))!.cgColor, UIColor(hex: (String(kEqualMinMsg) + String(kPingGiftPath)))!.cgColor])
        //: self.getServercePermission()
        self.toDomain()
        //: self.seTypeView()
        self.equalNetwork()
        //: self.beginPlayer()
        self.effectPhoto()
        //: NotificationCenter.default.post(name: VIDEOCALL_INITIV_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: dataContentValue, object: nil)
    }

    //: private func addGradientLayerWithCorner(cornerRadius: CGFloat, lineWidth: CGFloat, colors: [CGColor]) {
    private func cornerPlayer(cornerRadius: CGFloat, lineWidth: CGFloat, colors: [CGColor]) {
        //: self.layoutIfNeeded()
        self.layoutIfNeeded()
        //: let gradientLayer = CAGradientLayer()
        let gradientLayer = CAGradientLayer()
        //: gradientLayer.frame = contentView.bounds
        gradientLayer.frame = contentView.bounds
        //: gradientLayer.colors = colors
        gradientLayer.colors = colors
        //: gradientLayer.cornerRadius = cornerRadius
        gradientLayer.cornerRadius = cornerRadius

        //: let maskLayer = CAShapeLayer()
        let maskLayer = CAShapeLayer()
        //: maskLayer.lineWidth = lineWidth
        maskLayer.lineWidth = lineWidth
        //: maskLayer.path = UIBezierPath(roundedRect: CGRect(x: lineWidth / 2, y: lineWidth / 2, width: contentView.width - lineWidth, height: contentView.height - lineWidth), cornerRadius: cornerRadius).cgPath
        maskLayer.path = UIBezierPath(roundedRect: CGRect(x: lineWidth / 2, y: lineWidth / 2, width: contentView.width - lineWidth, height: contentView.height - lineWidth), cornerRadius: cornerRadius).cgPath
        //: maskLayer.fillColor = UIColor.clear.cgColor
        maskLayer.fillColor = UIColor.clear.cgColor
        //: maskLayer.strokeColor = UIColor.black.cgColor
        maskLayer.strokeColor = UIColor.black.cgColor

        //: gradientLayer.mask = maskLayer
        gradientLayer.mask = maskLayer
        //: contentView.layer.insertSublayer(gradientLayer, at: 0)
        contentView.layer.insertSublayer(gradientLayer, at: 0)
    }
}
