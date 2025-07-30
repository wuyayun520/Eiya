
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kLayerFormat:[UInt8] = [0x66,0x61,0x66,0x7b,0x27,0x6c,0x60,0x6b,0x6a,0x7d,0x35,0x26,0x2f,0x67,0x6e,0x7c,0x2f,0x61,0x60,0x7b,0x2f,0x6d,0x6a,0x6a,0x61,0x2f,0x66,0x62,0x7f,0x63,0x6a,0x62,0x6a,0x61,0x7b,0x6a,0x6b]

/*: "btn_live_more_beauty_nor" :*/
fileprivate let kHalfCustomName:String = "make index background class databtn_"
fileprivate let kToManagerMessage:String = "_moreif follow"
fileprivate let kImageCurrentData:String = "ty_norcorner extension front user"

/*: "Beautify" :*/
fileprivate let kDataKey:String = "self custom self frameBeautify"

/*: "btn_live_more_switch_nor" :*/
fileprivate let kLeadingUrl:String = "text else backgroundbtn_li"
fileprivate let k_titleStr:[Character] = ["v","e","_","m","o","r","e","_","s","w","i","t","c","h","_","n","o","r"]

/*: "Switch" :*/
fileprivate let kTabText:String = "Switcadd content guard guard self"
fileprivate let k_countUserName:[Character] = ["h"]

/*: "btn_live_more_stop_nor" :*/
fileprivate let kFrameModelIncreaseKey:String = "btn_licase user"
fileprivate let kViewIndexFormat:String = "ore_var send male"
fileprivate let k_changeStr:String = "ome"

/*: "Stop Live" :*/
fileprivate let k_momentFormat:[Character] = ["S","t","o","p"," ","L","i","v","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MoreReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/7/11.
//

//: import UIKit
import UIKit

//: class TalkingLiveRoomMoreView: UIView {
class MoreReactiveCompatible: UIView {
    //: private let contentV_H = (104+kDeviceSafeBottomHeight)
    private let contentV_H = (104 + appButtonData)
    //: private let beautifySettingView_H = (258+kDeviceSafeBottomHeight+50)
    private let beautifySettingView_H = (258 + appButtonData + 50)

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        can()
        //: setupSubViewsConstraint()
        begin()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kLayerFormat.map{$0^15}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var dismissBtn: UIButton = {
    private lazy var dismissBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(bgDismissButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(counterplay), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: return v
        return v
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .leading
        v.alignment = .leading
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 0
        v.spacing = 0
        //: return v
        return v
        //: }()
    }()

    //: private lazy var beautifyBtn: TalkingButton = {
    private lazy var beautifyBtn: ResumeControl = {
        //: let btn = TalkingButton()
        let btn = ResumeControl()
        //: btn.setImage(UIImage.submitGift(name: "btn_live_more_beauty_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kHalfCustomName.suffix(4)) + "live" + String(kToManagerMessage.prefix(5)) + "_beau" + String(kImageCurrentData.prefix(6)))), for: .normal)
        //: btn.titleLabel?.font = .fontChange(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = .fontChange(type: .Regular, fontSize: 14)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.scaleValueTo(), for: .normal)
        //: btn.setTitle("Beautify".localized, for: .normal)
        btn.setTitle((String(kDataKey.suffix(8))).localized, for: .normal)
        //: btn.imageAlignment = .top
        btn.imageAlignment = .top
        //: btn.spaceBetweenTitleAndImage = 12
        btn.spaceBetweenTitleAndImage = 12
        //: btn.addTarget(self, action: #selector(beautifyButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var switchBtn: TalkingButton = {
    private lazy var switchBtn: ResumeControl = {
        //: let btn = TalkingButton()
        let btn = ResumeControl()
        //: btn.setImage(UIImage.submitGift(name: "btn_live_more_switch_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kLeadingUrl.suffix(6)) + String(k_titleStr))), for: .normal)
        //: btn.titleLabel?.font = .fontChange(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = .fontChange(type: .Regular, fontSize: 14)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.scaleValueTo(), for: .normal)
        //: btn.setTitle("Switch".localized, for: .normal)
        btn.setTitle((String(kTabText.prefix(5)) + String(k_countUserName)).localized, for: .normal)
        //: btn.imageAlignment = .top
        btn.imageAlignment = .top
        //: btn.spaceBetweenTitleAndImage = 12
        btn.spaceBetweenTitleAndImage = 12
        //: btn.addTarget(self, action: #selector(switchButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(trackClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var stopBtn: TalkingButton = {
    private lazy var stopBtn: ResumeControl = {
        //: let btn = TalkingButton()
        let btn = ResumeControl()
        //: btn.setImage(UIImage.submitGift(name: "btn_live_more_stop_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kFrameModelIncreaseKey.prefix(6)) + "ve_m" + String(kViewIndexFormat.prefix(4)) + "stop_n" + k_changeStr.replacingOccurrences(of: "me", with: "r"))), for: .normal)
        //: btn.titleLabel?.font = .fontChange(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = .fontChange(type: .Regular, fontSize: 14)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.scaleValueTo(), for: .normal)
        //: btn.setTitle("Stop Live".localized, for: .normal)
        btn.setTitle((String(k_momentFormat)).localized, for: .normal)
        //: btn.imageAlignment = .top
        btn.imageAlignment = .top
        //: btn.spaceBetweenTitleAndImage = 12
        btn.spaceBetweenTitleAndImage = 12
        //: btn.addTarget(self, action: #selector(stopLiveButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(whigParty), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // 美颜视图
    //: private lazy var beautifyView: STBeautyAdjustView = {
    private lazy var beautifyView: ViewComelinessTrimObjectProtocol = {
        //: let view = STBeautyAdjustView.init(frame: CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: beautifySettingView_H))
        let view = ViewComelinessTrimObjectProtocol(frame: CGRect(x: 0, y: user_recordMarginValue, width: constFormalContent, height: beautifySettingView_H))
        //: view.isHidden = true
        view.isHidden = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Request

//: extension TalkingLiveRoomMoreView {
extension MoreReactiveCompatible {
    /// 停止直播
    //: private func req_stopLive() {
    private func fire() {
        //: TalkingLiveManager.req_liveStop(type: 1) { succeed, result, errorModel in
        ValueThen.mentalPictureStart(type: 1) { succeed, _, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            // 关播成功
            //: TalkingLiveManager.shared().live_releaseAllResource()
            ValueThen.kindShared().feeDoing()
        }
    }
}

// MARK: - Event

//: extension TalkingLiveRoomMoreView {
extension MoreReactiveCompatible {
    /// 消除视图按钮
    //: @objc private func bgDismissButtonClick() {
    @objc private func counterplay() {
        //: dismiss()
        dogTag()
    }

    /// 美颜按钮
    //: @objc private func beautifyButtonClick() {
    @objc private func buttonClick() {
        //: self.contentView.isHidden = true
        self.contentView.isHidden = true
        //: self.beautifyView.isHidden = false
        self.beautifyView.isHidden = false
        //: self.beautifyView.frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: beautifySettingView_H)
        self.beautifyView.frame = CGRect(x: 0, y: user_recordMarginValue, width: constFormalContent, height: beautifySettingView_H)
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.beautifyView.frame.origin.y -= self.beautifyView.height
            self.beautifyView.frame.origin.y -= self.beautifyView.height
        }
    }

    /// 切换摄像头按钮
    //: @objc private func switchButtonClick() {
    @objc private func trackClick() {
        //: dismiss()
        dogTag()
        //: self.contentView.isHidden = true
        self.contentView.isHidden = true
        //: TalkingLiveManager.shared().switchTRTCCamer(front: switchBtn.isSelected)
        ValueThen.kindShared().addData(front: switchBtn.isSelected)
        //: switchBtn.isSelected = !switchBtn.isSelected
        switchBtn.isSelected = !switchBtn.isSelected
    }

    /// 停止直播按钮
    //: @objc private func stopLiveButtonClick() {
    @objc private func whigParty() {
        //: dismiss()
        dogTag()
        //: req_stopLive()
        fire()
    }
}

// MARK: - 展示/隐藏视图

//: extension TalkingLiveRoomMoreView {
extension MoreReactiveCompatible {
    /// 展示视图
    //: func showView() {
    func radiotelephoneOver() {
        //: currentViewController()?.view.addSubview(self)
        selectStart()?.view.addSubview(self)
        //: self.contentView.isHidden = false
        self.contentView.isHidden = false
        //: self.contentView.frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: contentV_H)
        self.contentView.frame = CGRect(x: 0, y: user_recordMarginValue, width: constFormalContent, height: contentV_H)
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.contentView.frame.origin.y -= self.contentView.height
            self.contentView.frame.origin.y -= self.contentView.height
        }
    }

    /// 隐藏视图
    //: func dismiss() {
    func dogTag() {
        //: if self.beautifyView.isHidden == false {
        if self.beautifyView.isHidden == false {
            // 保存美颜设置
            //: CostServerReactiveCompatible.share.store()
            CostServerReactiveCompatible.share.lineup()

            //: UIView.animate(withDuration: 0.3) {
            UIView.animate(withDuration: 0.3) {
                //: self.beautifyView.frame.origin.y += self.beautifyView.height
                self.beautifyView.frame.origin.y += self.beautifyView.height
                //: } completion: { finish in
            } completion: { _ in
                //: self.beautifyView.isHidden = true
                self.beautifyView.isHidden = true
                //: self.removeFromSuperview()
                self.removeFromSuperview()
            }

            //: } else {
        } else {
            //: UIView.animate(withDuration: 0.3) {
            UIView.animate(withDuration: 0.3) {
                //: self.contentView.frame.origin.y += self.contentView.height
                self.contentView.frame.origin.y += self.contentView.height
                //: } completion: { finish in
            } completion: { _ in
                //: self.removeFromSuperview()
                self.removeFromSuperview()
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveRoomMoreView {
extension MoreReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func can() {
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: addSubview(dismissBtn)
        addSubview(dismissBtn)
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(stackView)
        contentView.addSubview(stackView)
        //: stackView.addArrangedSubview(beautifyBtn)
        stackView.addArrangedSubview(beautifyBtn)
        //: stackView.addArrangedSubview(switchBtn)
        stackView.addArrangedSubview(switchBtn)
        //: stackView.addArrangedSubview(stopBtn)
        stackView.addArrangedSubview(stopBtn)
        //: addSubview(beautifyView)
        addSubview(beautifyView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func begin() {
        //: dismissBtn.snp.makeConstraints { make in
        dismissBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.top.leading.equalToSuperview()
            make.top.leading.equalToSuperview()
        }
        //: let width = ScreenWidth/4
        let width = constFormalContent / 4
        //: beautifyBtn.snp.makeConstraints { make in
        beautifyBtn.snp.makeConstraints { make in
            //: make.width.equalTo(width)
            make.width.equalTo(width)
            //: make.height.equalTo(contentV_H-kDeviceSafeBottomHeight)
            make.height.equalTo(contentV_H - appButtonData)
        }
        //: switchBtn.snp.makeConstraints { make in
        switchBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(beautifyBtn)
            make.width.height.equalTo(beautifyBtn)
        }
        //: stopBtn.snp.makeConstraints { make in
        stopBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(beautifyBtn)
            make.width.height.equalTo(beautifyBtn)
        }
    }
}
