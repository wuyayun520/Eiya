
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_onFormat:[UInt8] = [0x74,0x73,0x74,0x69,0x35,0x7e,0x72,0x79,0x78,0x6f,0x27,0x34,0x3d,0x75,0x7c,0x6e,0x3d,0x73,0x72,0x69,0x3d,0x7f,0x78,0x78,0x73,0x3d,0x74,0x70,0x6d,0x71,0x78,0x70,0x78,0x73,0x69,0x78,0x79]

private func priceError(stroke num: UInt8) -> UInt8 {
    return num ^ 29
}

/*: "btn_video_minimize" :*/
fileprivate let kBeanVersionUrl:String = "voice label selfbtn_vid"
fileprivate let kIconOfKey:String = "actual vareo_"
fileprivate let kConfirmStr:String = "mdeadlinendeadlinemdeadlineze"

/*: "btn_video_drop_nor" :*/
fileprivate let k_nameBlockTitle:String = "btn_viif view"
fileprivate let kDataGiftPath:String = "rop_norshare decision text empty bar"

/*: "btn_video_turn_nor" :*/
fileprivate let kColorValue:[Character] = ["b","t","n","_","v","i","d","e","o","_","t","u","r"]
fileprivate let kListData:[Character] = ["n","_","n","o","r"]

/*: "btn_video_turn_pre" :*/
fileprivate let kMakeMsg:String = "value post viewbtn_vi"
fileprivate let kTaskValue:[Character] = ["r","n","_","p","r","e"]

/*: "Switch" :*/
fileprivate let k_viewId:String = "Switchbubble equal"

/*: "btn_video_start_nor" :*/
fileprivate let kShareMsg:[Character] = ["b","t","n","_","v","i","d","e"]
fileprivate let k_pushName:String = "of submit bottomo_star"

/*: "btn_video_start_pre" :*/
fileprivate let kQueryCookieValue:String = "btn_vaction title self"
fileprivate let k_rowUrl:String = "page"
fileprivate let k_scaleData:[Character] = ["t","_","p","r","e"]

/*: "Camera On" :*/
fileprivate let kLabValue:String = "bag make let sizeCamera On"

/*: "00:00" :*/
fileprivate let k_tableKey:String = "request:request"

/*: "Camera must be on" :*/
fileprivate let kFileFormat:[Character] = ["C","a","m","e","r","a"," ","m","u","s","t"," ","b","e"," ","o"]
fileprivate let k_appValue:String = "center"

/*: "Camera Off" :*/
fileprivate let kTitlePlayStr:[Character] = ["C","a","m","e","r"]
fileprivate let kToUrl:String = "a Offfrom list else button"

/*: "%02i:%02i" :*/
fileprivate let kWhitePath:String = "%02i:%02data video"
fileprivate let k_showKey:String = "log"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DistantThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/6.
//

//: import UIKit
import UIKit

//: class TalkingVideoInitivCallView: UIView {
class DistantThen: UIView {
    //: weak var delegate: Talking1v1VideoInteractionViewDelegate?
    weak var delegate: HighlightObjectProtocol?
    //: private var chatModel = TalkingVideoChatModel()
    private var chatModel = ViewChatModel() // 引用类型，整个视频通话共用同一个model
    //: var durationTime = 0.0
    var durationTime = 0.0 // 视频时长
    //: private var countTimer: Timer?
    private var countTimer: Timer? // 通话时间定时器

    //: init(frame: CGRect, chatModel: TalkingVideoChatModel?) {
    init(frame: CGRect, chatModel: ViewChatModel?) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        suming()
        //: setupSubViewsConstraint()
        cellSize()
        //: if chatModel != nil {
        if chatModel != nil {
            //: self.chatModel = chatModel!
            self.chatModel = chatModel!
        }
        //: showViewsViaStage()
        viaNeed()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_onFormat.map{priceError(stroke: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: destroryTimer()
        sumerpretation()
        //: invalidateIdleTimer()
        maxTimer()
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    // 点击展示/隐藏交互按钮
    //: private lazy var touchHidenBtn: UIButton = {
    private lazy var touchHidenBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(changeInteractionShowState), for: .touchUpInside)
        btn.addTarget(self, action: #selector(pathState), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 最小化按钮
    //: private lazy var minimizeBtn: UIButton = {
    private lazy var minimizeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "btn_video_minimize"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kBeanVersionUrl.suffix(7)) + String(kIconOfKey.suffix(3)) + kConfirmStr.replacingOccurrences(of: "deadline", with: "i"))), for: .normal)
        //: btn.addTarget(self, action: #selector(minimizeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(toPush), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 挂断/取消 按钮
    //: private lazy var hangupBtn: UIButton = {
    private lazy var hangupBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "btn_video_drop_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(k_nameBlockTitle.prefix(6)) + "deo_d" + String(kDataGiftPath.prefix(7)))), for: .normal)
        //: btn.addTarget(self, action: #selector(hangupButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(hangupCount), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 旋转摄像头按钮
    //: private lazy var rotateCameraBtn: UIButton = {
    private lazy var rotateCameraBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "btn_video_turn_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kColorValue) + String(kListData))), for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "btn_video_turn_pre"), for: .selected)
        btn.setImage(UIImage.submitGift(name: (String(kMakeMsg.suffix(6)) + "deo_tu" + String(kTaskValue))), for: .selected)
        //: btn.addTarget(self, action: #selector(rotateCameraButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(ofTarget), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rotateCameraDesLab: UILabel = {
    private lazy var rotateCameraDesLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 15)
        lab.font = UIFont.targetFor(fontSize: 15)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Switch".localized
        lab.text = (String(k_viewId.prefix(6))).localized
        //: return lab
        return lab
        //: }()
    }()

    // 开启/关闭摄像头按钮
    //: private lazy var openCameraBtn: UIButton = {
    private lazy var openCameraBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "btn_video_start_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kShareMsg) + String(k_pushName.suffix(6)) + "t_nor")), for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "btn_video_start_pre"), for: .selected)
        btn.setImage(UIImage.submitGift(name: (String(kQueryCookieValue.prefix(5)) + "ideo_sta" + k_rowUrl.replacingOccurrences(of: "page", with: "r") + String(k_scaleData))), for: .selected)
        //: btn.addTarget(self, action: #selector(openCameraButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(willSize), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var openCameraDesLab: UILabel = {
    private lazy var openCameraDesLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 15)
        lab.font = UIFont.targetFor(fontSize: 15)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Camera On".localized
        lab.text = (String(kLabValue.suffix(9))).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var timeLab: UILabel = {
    private lazy var timeLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 18)
        lab.font = UIFont.tapShared(fontSize: 18)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVideoInitivCallView {
extension DistantThen {
    /// 展示视图状态
    //: private func showViewsViaStage() {
    private func viaNeed() {
        //: minimizeBtn.isHidden = false
        minimizeBtn.isHidden = false
        //: hangupBtn.isHidden = false
        hangupBtn.isHidden = false
        //: rotateCameraBtn.isHidden = false
        rotateCameraBtn.isHidden = false
        //: rotateCameraDesLab.isHidden = false
        rotateCameraDesLab.isHidden = false
        //: openCameraBtn.isHidden = false
        openCameraBtn.isHidden = false
        //: openCameraDesLab.isHidden = false
        openCameraDesLab.isHidden = false
        //: touchHidenBtn.isEnabled = true
        touchHidenBtn.isEnabled = true
        //: timeLab.isHidden = false
        timeLab.isHidden = false
        //: self.timeLab.text = "00:00"
        self.timeLab.text = (k_tableKey.replacingOccurrences(of: "request", with: "00"))
        //: startTalkCount()
        dismissAuspicate()
        //: touchHiddenTimer()
        toHidden()
        //: updateLayout()
        modifyLayout()
    }

    /// 最小化按钮事件
    //: @objc private func minimizeButtonClick() {
    @objc private func toPush() {
        //: self.delegate?.interactionView_shouldDisplayMiniWindow()
        self.delegate?.onAdd()
    }

    /// 添加视频通话画面窗口
    /// - Parameter view: 视频画面窗口
    //: func addWindowView(view: UIView) {
    func legalInstrument(view: UIView) {
        //: self.addSubview(view)
        self.addSubview(view)
    }

    /// 挂断按钮事件
    //: @objc private func hangupButtonClick() {
    @objc private func hangupCount() {
        //: uploadRecord.uploadRecordEvent(eventID: clickVideoCancelButton)
        kSoundName.messUp(eventID: noti_clickText)
        //: closeViewClick()
        postError()
    }

    //: func closeViewClick() {
    func postError() {
        //: self.destroryTimer()
        self.sumerpretation()
        //: self.delegate?.interactionView_shouldEndCall()
        self.delegate?.withCulminate()
    }

    /// 接听按钮事件
    //: @objc private func acceptButtonClick() {
    @objc private func itemButton() {
        //: self.delegate?.interactionView_shouldAcceptCall()
        self.delegate?.writerSName()
    }

    /// 关闭摄像头接听视频通话事件
    //: @objc private func acceptTurnOffCameraButtonClick() {
    @objc private func actGestureCanSnap() {
        //: acceptButtonClick()
        itemButton()
        //: self.openCameraBtn.isSelected = false
        self.openCameraBtn.isSelected = false
        //: openCameraButtonClick()
        willSize()
    }

    /// 打开摄像头接听视频通话事件
    //: @objc private func acceptOpenCameraButtonClick() {
    @objc private func somewhereClick() {
        //: acceptButtonClick()
        itemButton()
        //: self.openCameraBtn.isSelected = true
        self.openCameraBtn.isSelected = true
        //: openCameraButtonClick()
        willSize()
    }

    /// 旋转摄像头事件
    //: @objc private func rotateCameraButtonClick() {
    @objc private func ofTarget() {
        //: if SenseTime_Use == false, self.openCameraBtn.isSelected == true {
        if mainUserValue == false, self.openCameraBtn.isSelected == true { // 腾讯美颜 && 摄像头关闭时
            //: self.func__showStatusBarErrorMsg(showMsg: "Camera must be on".localized)
            self.arcInfo(showMsg: (String(kFileFormat) + k_appValue.replacingOccurrences(of: "center", with: "n")).localized)
            //: return
            return
        }
        //: self.rotateCameraBtn.isSelected = !self.rotateCameraBtn.isSelected
        self.rotateCameraBtn.isSelected = !self.rotateCameraBtn.isSelected
        //: self.delegate?.interactionView_shouldChangeCamera(isFront: !self.rotateCameraBtn.isSelected)
        self.delegate?.toFront(isFront: !self.rotateCameraBtn.isSelected)
    }

    /// 是否禁用摄像头事件
    //: @objc private func openCameraButtonClick() {
    @objc private func willSize() {
        //: self.openCameraBtn.isSelected = !self.openCameraBtn.isSelected
        self.openCameraBtn.isSelected = !self.openCameraBtn.isSelected
        //: self.openCameraDesLab.text = self.openCameraBtn.isSelected ? "Camera Off".localized:"Camera On".localized
        self.openCameraDesLab.text = self.openCameraBtn.isSelected ? (String(kTitlePlayStr) + String(kToUrl.prefix(5))).localized : (String(kLabValue.suffix(9))).localized
        //: self.delegate?.interactionView_shouldForbiddenCamera(forbidden: self.openCameraBtn.isSelected)
        self.delegate?.builder(forbidden: self.openCameraBtn.isSelected)
    }

    /// 点击展示/隐藏通话中的按钮
    //: @objc private func changeInteractionShowState() {
    @objc private func pathState() {
        //: let isHidden = !rotateCameraBtn.isHidden
        let isHidden = !rotateCameraBtn.isHidden
        //: minimizeBtn.isHidden = isHidden
        minimizeBtn.isHidden = isHidden
        //: rotateCameraBtn.isHidden = isHidden
        rotateCameraBtn.isHidden = isHidden
        //: rotateCameraDesLab.isHidden = isHidden
        rotateCameraDesLab.isHidden = isHidden
        //: openCameraBtn.isHidden = isHidden
        openCameraBtn.isHidden = isHidden
        //: openCameraDesLab.isHidden = isHidden
        openCameraDesLab.isHidden = isHidden

        //: hangupBtn.isHidden = isHidden
        hangupBtn.isHidden = isHidden
        //: timeLab.isHidden = isHidden
        timeLab.isHidden = isHidden

        //: if isHidden {
        if isHidden {
            //: invalidateIdleTimer()
            maxTimer()
            //: } else {
        } else {
            //: touchHiddenTimer()
            toHidden()
        }
    }

    //: private func destroryTimer() {
    private func sumerpretation() {
        //: if countTimer != nil {
        if countTimer != nil {
            //: countTimer?.invalidate()
            countTimer?.invalidate()
            //: countTimer = nil
            countTimer = nil
        }
    }
}

// MARK: - 通话计时器

//: extension TalkingVideoInitivCallView {
extension DistantThen {
    /// 开始通话计时
    //: private func startTalkCount() {
    private func dismissAuspicate() {
        //: guard self.countTimer == nil else { return }
        guard self.countTimer == nil else { return }

        //: self.countTimer = Timer.scheduledTimer(withTimeInterval: 1, block: {[weak self] timer in
        self.countTimer = Timer.scheduledTimer(withTimeInterval: 1, block: { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if self.durationTime <= 0 {
            if self.durationTime <= 0 {
                //: self.closeViewClick()
                self.postError()
            }
            //: self.changeTalkTime()
            self.appTheList()
            //: }, repeats: true)
        }, repeats: true)
    }

    // 展示通话时间
    //: private func changeTalkTime() {
    private func appTheList() {
        //: let duration = self.durationTime
        let duration = self.durationTime
        //: let min = floor(duration / 60)
        let min = floor(duration / 60)
        //: let sec = floor(duration.truncatingRemainder(dividingBy: 60))
        let sec = floor(duration.truncatingRemainder(dividingBy: 60))
        //: timeLab.text = String(format: "%02i:%02i", Int(min), Int(sec))
        timeLab.text = String(format: "%02i:%02i", Int(min), Int(sec))
        //: self.durationTime -= 1
        self.durationTime -= 1
    }
}

// MARK: - 【通话中】触屏隐藏交互按钮逻辑

//: extension TalkingVideoInitivCallView {
extension DistantThen {
    /// 触摸隐藏开启延时
    //: private func touchHiddenTimer() {
    private func toHidden() {
        //: invalidateIdleTimer()
        maxTimer()
        //: self.perform(#selector(hideInteractionView), afterDelay: 10)
        self.perform(#selector(overQuickData), afterDelay: 10)
    }

    /// 销毁延迟
    //: private func invalidateIdleTimer() {
    private func maxTimer() {
        //: NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(hideInteractionView), object: nil)
        NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(overQuickData), object: nil)
    }

    /// 延时到时隐藏视图
    //: @objc private func hideInteractionView() {
    @objc private func overQuickData() {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: self.changeInteractionShowState()
            self.pathState()
        }
    }
}

// MARK: - Layout

//: extension TalkingVideoInitivCallView {
extension DistantThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func suming() {
        //: self.addSubview(touchHidenBtn)
        self.addSubview(touchHidenBtn)
        //: self.addSubview(minimizeBtn)
        self.addSubview(minimizeBtn)
        //: self.addSubview(hangupBtn)
        self.addSubview(hangupBtn)
        //: self.addSubview(rotateCameraBtn)
        self.addSubview(rotateCameraBtn)
        //: self.addSubview(rotateCameraDesLab)
        self.addSubview(rotateCameraDesLab)
        //: self.addSubview(openCameraBtn)
        self.addSubview(openCameraBtn)
        //: self.addSubview(openCameraDesLab)
        self.addSubview(openCameraDesLab)
        //: self.addSubview(timeLab)
        self.addSubview(timeLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func cellSize() {
        //: touchHidenBtn.snp.makeConstraints { make in
        touchHidenBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: minimizeBtn.snp.makeConstraints { make in
        minimizeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+10)
            make.top.equalTo(main_netValue + 10)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.width.height.equalTo(actualWidth(w: 42))
            make.width.height.equalTo(actualWidth(w: 42))
        }
        //: hangupBtn.snp.makeConstraints { make in
        hangupBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-kDeviceSafeBottomHeight-53)
            make.bottom.equalTo(-appButtonData - 53)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 70), height: actualWidth(w: 70)))
            make.size.equalTo(CGSize(width: actualWidth(w: 70), height: actualWidth(w: 70)))
        }
        //: rotateCameraBtn.snp.makeConstraints { make in
        rotateCameraBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(74)
            make.leading.equalTo(74)
            //: make.bottom.equalTo(hangupBtn.snp.top).offset(-73)
            make.bottom.equalTo(hangupBtn.snp.top).offset(-73)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 58), height: actualWidth(w: 58)))
            make.size.equalTo(CGSize(width: actualWidth(w: 58), height: actualWidth(w: 58)))
        }
        //: rotateCameraDesLab.snp.makeConstraints { make in
        rotateCameraDesLab.snp.makeConstraints { make in
            //: make.centerX.equalTo(rotateCameraBtn)
            make.centerX.equalTo(rotateCameraBtn)
            //: make.top.equalTo(rotateCameraBtn.snp.bottom).offset(8)
            make.top.equalTo(rotateCameraBtn.snp.bottom).offset(8)
        }
        //: openCameraBtn.snp.makeConstraints { make in
        openCameraBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-74)
            make.trailing.equalTo(-74)
            //: make.bottom.size.equalTo(rotateCameraBtn)
            make.bottom.size.equalTo(rotateCameraBtn)
        }
        //: openCameraDesLab.snp.makeConstraints { make in
        openCameraDesLab.snp.makeConstraints { make in
            //: make.centerX.equalTo(openCameraBtn)
            make.centerX.equalTo(openCameraBtn)
            //: make.top.equalTo(rotateCameraDesLab)
            make.top.equalTo(rotateCameraDesLab)
        }

        //: timeLab.snp.makeConstraints { make in
        timeLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(StatusBarHeight+20)
            make.top.equalTo(main_netValue + 20)
        }
    }

    /// 更新约束
    //: private func updateLayout() {
    private func modifyLayout() {
        //: rotateCameraBtn.snp.updateConstraints { make in
        rotateCameraBtn.snp.updateConstraints { make in
            //: make.leading.equalTo(74)
            make.leading.equalTo(74)
        }
        //: openCameraBtn.snp.updateConstraints { make in
        openCameraBtn.snp.updateConstraints { make in
            //: make.trailing.equalTo(-74)
            make.trailing.equalTo(-74)
        }
        //: hangupBtn.snp.remakeConstraints { make in
        hangupBtn.snp.remakeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-kDeviceSafeBottomHeight-53)
            make.bottom.equalTo(-appButtonData - 53)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 70), height: actualWidth(w: 70)))
            make.size.equalTo(CGSize(width: actualWidth(w: 70), height: actualWidth(w: 70)))
        }
    }
}
