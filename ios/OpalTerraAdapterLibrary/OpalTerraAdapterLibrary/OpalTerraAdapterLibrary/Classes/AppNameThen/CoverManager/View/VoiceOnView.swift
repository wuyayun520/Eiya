
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_makeEqualValue:[UInt8] = [0x9f,0x98,0x9f,0x82,0xde,0x95,0x99,0x92,0x93,0x84,0xcc,0xdf,0xd6,0x9e,0x97,0x85,0xd6,0x98,0x99,0x82,0xd6,0x94,0x93,0x93,0x98,0xd6,0x9f,0x9b,0x86,0x9a,0x93,0x9b,0x93,0x98,0x82,0x93,0x92]

private func unitOfTime(index num: UInt8) -> UInt8 {
    return num ^ 246
}

/*: "#45003A" :*/
fileprivate let kTitleKey:String = "#45003Aprogress let make view"

/*: "#2D0059" :*/
fileprivate let k_directionUrl:[Character] = ["#"]
fileprivate let k_momentModelFormat:[Character] = ["2","D","0","0","5","9"]

/*: "party_close_btn" :*/
fileprivate let kHeadMsg:[Character] = ["p","a"]
fileprivate let kContentHiddenName:[Character] = ["r","t","y","_","c","l","o","s","e","_","b","t","n"]

/*: "btn_party_minimal_nor" :*/
fileprivate let kSucceedPath:String = "view namebtn_p"
fileprivate let kNoMsg:String = "_minimalself button equal error"
fileprivate let k_endPhoneTitle:String = "self raw count source clear_nor"

/*: "Minimal" :*/
fileprivate let k_contentData:[Character] = ["M","i","n","i","m"]
fileprivate let kTrackValue:[Character] = ["a","l"]

/*: "btn_party_quit_nor" :*/
fileprivate let kMagnitudeervalId:String = "else addbtn_par"
fileprivate let k_withMsg:String = "voice"
fileprivate let kImageUrl:String = "_quiuser size"

/*: "Quit" :*/
fileprivate let kCenterStr:String = "Quitclear content rest request user"

/*: "btn_party_close_nor" :*/
fileprivate let kAwakeName:[Character] = ["b","t","n","_","p","a","r","t","y"]
fileprivate let kModelStr:String = "true center true class manager_clos"

/*: "Close" :*/
fileprivate let k_equalPointId:[Character] = ["C","l","o","s","e"]

/*: "Do you want to close the room? After closing the room, all users will be removed from the room." :*/
fileprivate let k_sharedUserText:[UInt8] = [0x55,0x7e,0x31,0x68,0x7e,0x64,0x31,0x66,0x70,0x7f,0x65,0x31,0x65,0x7e,0x31,0x72,0x7d,0x7e,0x62,0x74,0x31,0x65,0x79,0x74,0x31,0x63,0x7e,0x7e,0x7c,0x2e,0x31,0x50,0x77,0x65,0x74,0x63,0x31,0x72,0x7d,0x7e,0x62,0x78,0x7f,0x76,0x31,0x65,0x79,0x74,0x31,0x63,0x7e,0x7e,0x7c,0x3d,0x31,0x70,0x7d,0x7d,0x31,0x64,0x62,0x74,0x63,0x62,0x31,0x66,0x78,0x7d,0x7d,0x31,0x73,0x74,0x31,0x63,0x74,0x7c,0x7e,0x67,0x74,0x75,0x31,0x77,0x63,0x7e,0x7c,0x31,0x65,0x79,0x74,0x31,0x63,0x7e,0x7e,0x7c,0x3f]

private func showM(child num: UInt8) -> UInt8 {
    return num ^ 17
}

/*: "Cancel" :*/
fileprivate let kPartyData:String = "Cancelin make"

/*: "OK" :*/
fileprivate let kButtonMsg:String = "contentK"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VoiceOnView.swift
//  OpalTerraAdapterLibrary
//
//  Created by DouXiu on 2024/9/23.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomCloseView: UIView {
class VoiceOnView: UIView {
    /// 是否是主播
    //: private let isAnchor = (String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == DistanceAppManager.share.loginUid)
    private let isAnchor = (String(CoverManager.byRest().partyModel.streamerInfo.uid) == DistanceAppManager.share.loginUid)

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        feedback()
        //: setupSubViewsConstraint()
        numbererchange()
        //: addNotifications()
        threadName()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_makeEqualValue.map{unitOfTime(index: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var gradientLayer: CAGradientLayer = {
    private lazy var gradientLayer: CAGradientLayer = {
        //: let layer = CAGradientLayer()
        let layer = CAGradientLayer()
        //: layer.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        layer.frame = CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue)
        //: layer.startPoint = CGPoint(x: 0.5, y: 0)
        layer.startPoint = CGPoint(x: 0.5, y: 0)
        //: layer.endPoint = CGPoint(x: 0.5, y: 1)
        layer.endPoint = CGPoint(x: 0.5, y: 1)
        //: layer.colors = [
        layer.colors = [
            //: UIColor(hex: "#45003A")!.withAlphaComponent(0.9).cgColor,
            UIColor(hex: (String(kTitleKey.prefix(7))))!.withAlphaComponent(0.9).cgColor,
            //: UIColor(hex: "#2D0059")!.withAlphaComponent(0.9).cgColor
            UIColor(hex: (String(k_directionUrl) + String(k_momentModelFormat)))!.withAlphaComponent(0.9).cgColor,
        ]
        //: layer.locations = [0, 1]
        layer.locations = [0, 1]
        //: return layer
        return layer
        //: }()
    }()

    //: private lazy var rightBtn: UIButton = {
    private lazy var rightBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "party_close_btn"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kHeadMsg) + String(kContentHiddenName))), for: .normal)
        //: btn.addTarget(self, action: #selector(dismiss), for: .touchUpInside)
        btn.addTarget(self, action: #selector(underTargetThe), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var miniBtn: UIButton = {
    private lazy var miniBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "btn_party_minimal_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kSucceedPath.suffix(5)) + "arty" + String(kNoMsg.prefix(8)) + String(k_endPhoneTitle.suffix(4)))), for: .normal)
        //: btn.addTarget(self, action: #selector(miniButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(miniTableClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var miniLab: UILabel = {
    private lazy var miniLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 17)
        lab.font = UIFont.tapShared(fontSize: 17)
        //: lab.text = "Minimal".localized
        lab.text = (String(k_contentData) + String(kTrackValue)).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var quitBtn: UIButton = {
    private lazy var quitBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "btn_party_quit_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kMagnitudeervalId.suffix(7)) + k_withMsg.replacingOccurrences(of: "voice", with: "ty") + String(kImageUrl.prefix(4)) + "t_nor")), for: .normal)
        //: btn.addTarget(self, action: #selector(quitButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(clean), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var quitLab: UILabel = {
    private lazy var quitLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 17)
        lab.font = UIFont.tapShared(fontSize: 17)
        //: lab.text = "Quit".localized
        lab.text = (String(kCenterStr.prefix(4))).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "btn_party_close_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kAwakeName) + String(kModelStr.suffix(5)) + "e_nor")), for: .normal)
        //: btn.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(allClick), for: .touchUpInside)
        //: btn.isHidden = !self.isAnchor
        btn.isHidden = !self.isAnchor
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeLab: UILabel = {
    private lazy var closeLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 17)
        lab.font = UIFont.tapShared(fontSize: 17)
        //: lab.text = "Close".localized
        lab.text = (String(k_equalPointId)).localized
        //: lab.isHidden = !self.isAnchor
        lab.isHidden = !self.isAnchor
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomCloseView {
extension VoiceOnView {
    /// 展示视图
    //: func show() {
    func modelMe() {
        //: guard self.superview == nil else { return }
        guard self.superview == nil else { return }
        //: UserTextMacroDefine.getWindow().addSubview(self)
        UserTextMacroDefine.clearstoryNo().addSubview(self)
    }

    /// 移除视图
    //: @objc func dismiss() {
    @objc func underTargetThe() {
        //: guard self.superview != nil else { return }
        guard self.superview != nil else { return }
        //: self.removeFromSuperview()
        self.removeFromSuperview()
    }

    /// 最小化窗口点击事件
    //: @objc private func miniButtonClick() {
    @objc private func miniTableClick() {
        //: self.dismiss()
        self.underTargetThe()
        //: TalkingVoiceRoomManager.shared().voiceRoom_mini()
        CoverManager.byRest().mix()
    }

    /// 退出语聊房按钮点击事件
    //: @objc private func quitButtonClick() {
    @objc private func clean() {
        //: self.dismiss()
        self.underTargetThe()
        //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
        CoverManager.byRest().voiceOverShared()
    }

    /// 关闭语聊房按钮点击事件
    //: @objc private func closeButtonClick() {
    @objc private func allClick() {
        //: let config = ShowAlertConfig()
        let config = VideoAlertConfig()
        //: config.alignment = .center
        config.alignment = .center
        //: TalkingAlertShow.customAlert(message: "Do you want to close the room? After closing the room, all users will be removed from the room.".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {}, rightBlock: {
        FrameHiddenReactiveCompatible.systemToConfig(message: String(bytes: k_sharedUserText.map{showM(child: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(kPartyData.prefix(6))).localized, rightBtnTitle: "OK".localized, leftBlock: {}, rightBlock: {
            //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
            CoverManager.byRest().voiceOverShared()
            //: TalkingVoiceRoomReqTool.req_voiceRoomClose(roomId: TalkingVoiceRoomManager.shared().partyModel.roomId)
            EnableReqTool.styleCompletion(roomId: CoverManager.byRest().partyModel.roomId)
            //: self.dismiss()
            self.underTargetThe()

            //: }, config: config)
        }, config: config)
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomCloseView {
extension VoiceOnView {
    /// 添加视图
    //: private func setupSubviews() {
    private func feedback() {
        //: self.layer.addSublayer(self.gradientLayer)
        self.layer.addSublayer(self.gradientLayer)
        //: self.addSubview(self.rightBtn)
        self.addSubview(self.rightBtn)
        //: self.addSubview(self.quitBtn)
        self.addSubview(self.quitBtn)
        //: self.addSubview(self.quitLab)
        self.addSubview(self.quitLab)
        //: self.addSubview(self.miniBtn)
        self.addSubview(self.miniBtn)
        //: self.addSubview(self.miniLab)
        self.addSubview(self.miniLab)
        //: self.addSubview(self.closeBtn)
        self.addSubview(self.closeBtn)
        //: self.addSubview(self.closeLab)
        self.addSubview(self.closeLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func numbererchange() {
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue)

        //: self.rightBtn.snp.makeConstraints { make in
        self.rightBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight + actualWidth(w: 4))
            make.top.equalTo(main_netValue + actualWidth(w: 4))
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.width.height.equalTo(actualWidth(w: 32))
            make.width.height.equalTo(actualWidth(w: 32))
        }

        //: self.quitBtn.snp.makeConstraints { make in
        self.quitBtn.snp.makeConstraints { make in
            //: if self.isAnchor {
            if self.isAnchor {
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: } else {
            } else {
                //: make.top.equalTo((ScreenHeight + actualWidth(w: 116)) / 2)
                make.top.equalTo((user_recordMarginValue + actualWidth(w: 116)) / 2)
            }
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 75))
            make.width.height.equalTo(actualWidth(w: 75))
        }
        //: self.quitLab.snp.makeConstraints { make in
        self.quitLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: self.miniBtn.snp.makeConstraints { make in
        self.miniBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(self.quitBtn)
            make.width.height.equalTo(self.quitBtn)
            //: make.bottom.equalTo(self.quitBtn.snp.top).offset(-actualWidth(w: 116))
            make.bottom.equalTo(self.quitBtn.snp.top).offset(-actualWidth(w: 116))
        }
        //: self.miniLab.snp.makeConstraints { make in
        self.miniLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.miniBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.miniBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: self.closeBtn.snp.makeConstraints { make in
        self.closeBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(self.quitBtn)
            make.width.height.equalTo(self.quitBtn)
            //: make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 116))
            make.top.equalTo(self.quitBtn.snp.bottom).offset(actualWidth(w: 116))
        }
        //: self.closeLab.snp.makeConstraints { make in
        self.closeLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.closeBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(self.closeBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }

    /// 添加通知
    //: private func addNotifications() {
    private func threadName() {
        // 语聊房状态变更
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(dismiss),
                                               selector: #selector(underTargetThe),
                                               //: name: PARTY_STATUS_CHANGE_NOTIFICATION,
                                               name: data_contentName,
                                               //: object: nil)
                                               object: nil)
    }
}
