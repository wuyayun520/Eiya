
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kIntervalimateMessage:[UInt8] = [0x9c,0xa1,0x9c,0xa7,0x5b,0x96,0xa2,0x97,0x98,0xa5,0x6d,0x5c,0x53,0x9b,0x94,0xa6,0x53,0xa1,0xa2,0xa7,0x53,0x95,0x98,0x98,0xa1,0x53,0x9c,0xa0,0xa3,0x9f,0x98,0xa0,0x98,0xa1,0xa7,0x98,0x97]

fileprivate func jumpEvent(will num: UInt8) -> UInt8 {
    let value = Int(num) - 51
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_live_nor" :*/
fileprivate let kCornerPath:String = "staten"
fileprivate let kTitlePath:[Character] = ["_","l","i","v","e","_","n","o","r"]

/*: "Live" :*/
fileprivate let kHandleFormat:String = "Livetime succeed"

/*: "btn_party_nor" :*/
fileprivate let kMaxTemporaryStr:String = "plain view menu type typebtn_p"
fileprivate let k_tableMViewValue:[Character] = ["a"]
fileprivate let kAllWindowReturnTitle:String = "rty_norcontent frame make"

/*: "Party" :*/
fileprivate let k_addTowardChangeStr:String = "Partyif none to"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ItemThen.swift
//  OpalTerraAdapterLibrary
//
//  Created by DouXiu on 2024/9/20.
//

//: import UIKit
import UIKit

//: class TalkingTabLiveView: UIView {
class ItemThen: UIView {
    //: private var popView: TalkingPopView?
    private var popView: DataPopView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        startName()
        //: setupSubViewsConstraint()
        addSubstitute()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kIntervalimateMessage.map{jumpEvent(will: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var backView: UIView = {
    private lazy var backView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.layer.cornerRadius = 24
        view.layer.cornerRadius = 24
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var liveBtn: UIButton = {
    private lazy var liveBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "btn_live_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (kCornerPath.replacingOccurrences(of: "state", with: "bt") + String(kTitlePath))), for: .normal)
        //: btn.addTarget(self, action: #selector(liveButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(imageDoingAwake), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveLab: UILabel = {
    private lazy var liveLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.colorStatuteNameApp()
        lab.textColor = UIColor.colorStatuteNameApp()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 17)
        lab.font = UIFont.tapShared(fontSize: 17)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Live".localized
        lab.text = (String(kHandleFormat.prefix(4))).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var partyBtn: UIButton = {
    private lazy var partyBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "btn_party_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kMaxTemporaryStr.suffix(5)) + String(k_tableMViewValue) + String(kAllWindowReturnTitle.prefix(7)))), for: .normal)
        //: btn.addTarget(self, action: #selector(partyButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(allowPushAction), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var partyLab: UILabel = {
    private lazy var partyLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.colorStatuteNameApp()
        lab.textColor = UIColor.colorStatuteNameApp()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 17)
        lab.font = UIFont.tapShared(fontSize: 17)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Party".localized
        lab.text = (String(k_addTowardChangeStr.prefix(5))).localized
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingTabLiveView {
extension ItemThen {
    /// 展示视图
    //: func show() {
    func addedTo() {
        //: frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        frame = CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue)
        //: popView = TalkingPopView(frame: UIScreen.main.bounds)
        popView = DataPopView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.smart(view: self)
        //: popView?.showInView(view: UserTextMacroDefine.getWindow())
        popView?.academePosition(view: UserTextMacroDefine.clearstoryNo())
    }

    /// 隐藏视图
    //: func dismiss() {
    func fromShow() {
        //: popView?.dismissView()
        popView?.upView()
        //: popView = nil
        popView = nil
    }

    /// 直播按钮事件
    //: @objc private func liveButtonAction() {
    @objc private func imageDoingAwake() {
        //: dismiss()
        fromShow()
        //: NotificationCenter.default.post(name: LIVE_NEED_OPEN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: user_clickViewHeightValue, object: nil)
    }

    /// 语聊房按钮事件
    //: @objc private func partyButtonAction() {
    @objc private func allowPushAction() {
        //: dismiss()
        fromShow()
        //: AddReactiveCompatible.share.func_pushToVoiceRoomVC()
        AddReactiveCompatible.share.photoTo()
    }
}

// MARK: - Layout

//: extension TalkingTabLiveView {
extension ItemThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func startName() {
        //: addSubview(backView)
        addSubview(backView)
        //: backView.addSubview(liveBtn)
        backView.addSubview(liveBtn)
        //: backView.addSubview(liveLab)
        backView.addSubview(liveLab)
        //: backView.addSubview(partyBtn)
        backView.addSubview(partyBtn)
        //: backView.addSubview(partyLab)
        backView.addSubview(partyLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func addSubstitute() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
            //: make.height.equalTo(163 + kDeviceSafeBottomHeight)
            make.height.equalTo(163 + appButtonData)
        }

        //: liveBtn.snp.makeConstraints { make in
        liveBtn.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 32))
            make.top.equalTo(actualWidth(w: 32))
            //: make.leading.equalTo(actualWidth(w: 63))
            make.leading.equalTo(actualWidth(w: 63))
            //: make.width.height.equalTo(actualWidth(w: 75))
            make.width.height.equalTo(actualWidth(w: 75))
        }
        //: liveLab.snp.makeConstraints { make in
        liveLab.snp.makeConstraints { make in
            //: make.top.equalTo(liveBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(liveBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalTo(liveBtn)
            make.centerX.equalTo(liveBtn)
            //: make.width.equalTo(ScreenWidth/2)
            make.width.equalTo(constFormalContent / 2)
        }

        //: partyBtn.snp.makeConstraints { make in
        partyBtn.snp.makeConstraints { make in
            //: make.top.width.height.equalTo(liveBtn)
            make.top.width.height.equalTo(liveBtn)
            //: make.trailing.equalTo(-actualWidth(w: 63))
            make.trailing.equalTo(-actualWidth(w: 63))
        }
        //: partyLab.snp.makeConstraints { make in
        partyLab.snp.makeConstraints { make in
            //: make.top.equalTo(partyBtn.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(partyBtn.snp.bottom).offset(actualWidth(w: 12))
            //: make.centerX.equalTo(partyBtn)
            make.centerX.equalTo(partyBtn)
            //: make.width.equalTo(ScreenWidth/2)
            make.width.equalTo(constFormalContent / 2)
        }
    }
}
