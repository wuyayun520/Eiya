
//: Declare String Begin

/*: "Video calls will all use the current Beautify Settings" :*/
fileprivate let k_removeId:[UInt8] = [0x39,0x6,0xb,0xa,0x0,0x4f,0xc,0xe,0x3,0x3,0x1c,0x4f,0x18,0x6,0x3,0x3,0x4f,0xe,0x3,0x3,0x4f,0x1a,0x1c,0xa,0x4f,0x1b,0x7,0xa,0x4f,0xc,0x1a,0x1d,0x1d,0xa,0x1,0x1b,0x4f,0x2d,0xa,0xe,0x1a,0x1b,0x6,0x9,0x16,0x4f,0x3c,0xa,0x1b,0x1b,0x6,0x1,0x8,0x1c]

private func viewMain(make num: UInt8) -> UInt8 {
    return num ^ 111
}

/*: "Cancel" :*/
fileprivate let k_toolId:[Character] = ["C","a","n","c","e","l"]

/*: "OK" :*/
fileprivate let k_meText:String = "Oshared"

/*: "Done" :*/
fileprivate let k_contentText:[Character] = ["D","o","n","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EqualViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/30.
//

//: import UIKit
import UIKit

//: class TalkingMyBeautyVC: TalkingBaseViewController {
class EqualViewController: StartThen {
    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: if self.beautyView.stCamera != nil {
        if self.beautyView.stCamera != nil {
            //: self.beautyView.stCamera.startRunning()
            self.beautyView.stCamera.startRunning()
        }
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
        //: if self.beautyView.stCamera != nil {
        if self.beautyView.stCamera != nil {
            //: self.beautyView.stCamera.stopRunning()
            self.beautyView.stCamera.stopRunning()
        }
        //: popGesture(isOpen: true)
        outUpAction(isOpen: true)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: hideNavi = true
        hideNavi = true
        //: popGesture(isOpen: false)
        outUpAction(isOpen: false)
        //: setupSubviews()
        stop()
    }

    // MARK: - Lazy Load

    //: lazy var beautyView: STFilterView = {
    lazy var beautyView: MakeView = {
        //: let v = STFilterView(wihtVideoConversation: "\(AVCaptureSession.Preset.hd1280x720.rawValue)")
        let v = MakeView(wihtVideoConversation: "\(AVCaptureSession.Preset.hd1280x720.rawValue)")
        //: v?.frame = self.view.bounds
        v?.frame = self.view.bounds
        //: return v!
        return v!
        //: }()
    }()

    //: private lazy var justView: STBeautyAdjustView = {
    private lazy var justView: ViewComelinessTrimObjectProtocol = {
        //: let view = STBeautyAdjustView.init(frame: CGRect.init(x: 0, y: ScreenHeight-(258+kDeviceSafeBottomHeight+50), width: ScreenWidth, height: 258+kDeviceSafeBottomHeight+50))
        let view = ViewComelinessTrimObjectProtocol(frame: CGRect(x: 0, y: user_recordMarginValue - (258 + appButtonData + 50), width: constFormalContent, height: 258 + appButtonData + 50))
        //: return view
        return view
        //: }()
    }()
}

//: extension TalkingMyBeautyVC {
extension EqualViewController {
    //: @objc func backClick() {
    @objc func sit() {
        //: let config = ShowAlertConfig()
        let config = VideoAlertConfig()
        //: config.alignment = .center
        config.alignment = .center
        //: config.textFont = UIFont.fontChange(type: .Medium, fontSize: 18)
        config.textFont = UIFont.fontChange(type: .Medium, fontSize: 18)
        //: TalkingAlertShow.customAlert(message: "Video calls will all use the current Beautify Settings".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
        FrameHiddenReactiveCompatible.systemToConfig(message: String(bytes: k_removeId.map{viewMain(make: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(k_toolId)).localized, rightBtnTitle: "OK".localized, leftBlock: {
            //: TalkingAlertShow.hideAlert()
            FrameHiddenReactiveCompatible.middleText()
            //: }, rightBlock: { [weak self] in
        }, rightBlock: { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: TalkingAlertShow.hideAlert()
            FrameHiddenReactiveCompatible.middleText()
            //: CostServerReactiveCompatible.share.store()
            CostServerReactiveCompatible.share.lineup()
            //: self.navigationController?.popViewController(animated: true)
            self.navigationController?.popViewController(animated: true)
            //: }, config: config)
        }, config: config)
    }
}

//: extension TalkingMyBeautyVC {
extension EqualViewController {
    /// 添加视图
    //: private func setupSubviews() {
    private func stop() {
        //: self.view.backgroundColor = .black
        self.view.backgroundColor = .black

        //: let backBtn = UIButton.init()
        let backBtn = UIButton()
        //: backBtn.setTitle("Done".localized, for: .normal)
        backBtn.setTitle((String(k_contentText)).localized, for: .normal)
        //: backBtn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        backBtn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        //: backBtn.addTarget(self, action: #selector(backClick), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(sit), for: .touchUpInside)
        //: self.view.addSubview(backBtn)
        self.view.addSubview(backBtn)
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(main_netValue)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.width.equalTo(50)
            make.width.equalTo(50)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: self.view.insertSubview(beautyView, at: 0)
        self.view.insertSubview(beautyView, at: 0)
        //: beautyView.snp.makeConstraints { make in
        beautyView.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }

        //: self.view.addSubview(justView)
        self.view.addSubview(justView)
    }
}
