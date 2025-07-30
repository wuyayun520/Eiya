
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kColorText:[UInt8] = [0x1,0x6,0x1,0x1c,0x40,0xb,0x7,0xc,0xd,0x1a,0x52,0x41,0x48,0x0,0x9,0x1b,0x48,0x6,0x7,0x1c,0x48,0xa,0xd,0xd,0x6,0x48,0x1,0x5,0x18,0x4,0xd,0x5,0xd,0x6,0x1c,0xd,0xc]

private func appLayer(frame num: UInt8) -> UInt8 {
    return num ^ 104
}

/*: "Select mute duration" :*/
fileprivate let kTableStr:[Character] = ["S","e","l","e","c","t"," ","m","u","t","e"," ","d","u","r","a"]
fileprivate let k_tabKey:String = "endion"

/*: "Cirform" :*/
fileprivate let kCollectionData:String = "dismiss"
fileprivate let kInfoToData:[Character] = ["i","r","f","o","r","m"]

/*: "Mute success" :*/
fileprivate let k_userUrl:[Character] = ["M","u","t","e"," ","s","u","c","c","e"]
fileprivate let k_networkMessage:String = "SS"

/*: "day" :*/
fileprivate let k_picModelPath:String = "dismissy"

/*: "days" :*/
fileprivate let k_collectionData:String = "headys"

/*:  " :*/
fileprivate let k_viewMsg:[Character] = [" "]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EqualView.swift
//  OpalTerraAdapterLibrary
//
//  Created by Charlotte on 2024/8/15.
//

//: import UIKit
import UIKit

//: enum MuteViewType {
enum PublishViewType {
    //: case live
    case live
    //: case voiceRoom
    case voiceRoom
}

//: class TalkingLiveRoomMuteView: UIView {
class EqualView: UIView {
    //: private let contentV_Size = CGSize.init(width: 297, height: 223)
    private let contentV_Size = CGSize(width: 297, height: 223)
    //: private let titleStr = ["1","3","7"]
    private let titleStr = ["1", "3", "7"]
    //: private var lastBtn = UIButton()
    private var lastBtn = UIButton()
    //: var targetUid = ""
    var targetUid = ""
    //: var viewType: MuteViewType = .live
    var viewType: PublishViewType = .live

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        digitizerSubviews()
        //: setupSubViewsConstraint()
        pedestal()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kColorText.map{appLayer(frame: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var dismissBtn: UIButton = {
    private lazy var dismissBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(bgDismissButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(popMap), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.layer.cornerRadius = 16
        v.layer.cornerRadius = 16
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: return v
        return v
        //: }()
    }()

    //: private lazy var tipsLb: UILabel = {
    private lazy var tipsLb: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangMediumFont(fontSize: 18)
        lb.font = UIFont.tapShared(fontSize: 18)
        //: lb.textColor = UIColor.colorStatuteNameApp()
        lb.textColor = UIColor.colorStatuteNameApp()
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.text = "Select mute duration".localized
        lb.text = (String(kTableStr) + k_tabKey.replacingOccurrences(of: "end", with: "t")).localized
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var commitBtn: UIButton = {
    lazy var commitBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 18)
        //: btn.setTitle("Cirform".localized, for: .normal)
        btn.setTitle((kCollectionData.replacingOccurrences(of: "dismiss", with: "C") + String(kInfoToData)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 203, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.makeEqual(colors: UIColor.georgiaHomeBoy(), size: CGSize(width: 203, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(commitButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(translate), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - 展示/隐藏视图

//: extension TalkingLiveRoomMuteView {
extension EqualView {
    /// 消除视图按钮
    //: @objc private func bgDismissButtonClick() {
    @objc private func popMap() {
        //: dismiss()
        disappearNor()
    }

    /// 展示视图
    //: func showView() {
    func pushAside() {
        //: currentViewController()?.view.addSubview(self)
        selectStart()?.view.addSubview(self)
        //: self.contentView.isHidden = false
        self.contentView.isHidden = false
        //: self.contentView.frame = CGRect(x: (ScreenWidth - contentV_Size.width)/2, y: ScreenHeight, width: contentV_Size.width, height: contentV_Size.height)
        self.contentView.frame = CGRect(x: (constFormalContent - contentV_Size.width) / 2, y: user_recordMarginValue, width: contentV_Size.width, height: contentV_Size.height)

        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.contentView.frame.origin.y = (ScreenHeight-self.contentV_Size.height)/2
            self.contentView.frame.origin.y = (user_recordMarginValue - self.contentV_Size.height) / 2
        }
    }

    /// 隐藏视图
    //: func dismiss() {
    func disappearNor() {
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.contentView.frame.origin.y = ScreenHeight
            self.contentView.frame.origin.y = user_recordMarginValue
            //: } completion: { finish in
        } completion: { _ in
            //: self.removeFromSuperview()
            self.removeFromSuperview()
        }
    }
}

// MARK: - Event

//: extension TalkingLiveRoomMuteView {
extension EqualView {
    //: @objc private func muteBtnClick(btn: UIButton) {
    @objc private func loseTrackPress(btn: UIButton) {
        //: lastBtn.isSelected = false
        lastBtn.isSelected = false
        //: btn.isSelected = !btn.isSelected
        btn.isSelected = !btn.isSelected
        //: lastBtn = btn
        lastBtn = btn
        //: commitBtn.isEnabled = lastBtn.isSelected
        commitBtn.isEnabled = lastBtn.isSelected
    }

    //: @objc private func commitButtonClick() {
    @objc private func translate() {
        //: let i = lastBtn.tag - 100
        let i = lastBtn.tag - 100
        //: guard i < titleStr.count  else { return }
        guard i < titleStr.count else { return }
        //: let index = titleStr[i]
        let index = titleStr[i]
        //: ProgressHUD.show()
        EndProgressHUD.listHide()

        //: if self.viewType == .live {
        if self.viewType == .live {
            //: TalkingAudienceManager().req_liveRoomMute(targetUid: targetUid, duration: index) { succeed, result, errorModel in
            LimitReactiveCompatible().statusSimultaneously(targetUid: targetUid, duration: index) { succeed, _, _ in
                //: EndProgressHUD.popEnable()
                EndProgressHUD.popEnable()
                //: if succeed {
                if succeed {
                    //: self.func__showStatusBarSuccessMsg(showMsg: "Mute success".localized)
                    self.rear(showMsg: (String(k_userUrl) + k_networkMessage.lowercased()).localized)
                }
                //: self.dismiss()
                self.disappearNor()
            }
            //: }else{
        } else {
            //: TalkingVoiceRoomReqTool.req_VoiceRoomMute(targetUid: targetUid, roomID: TalkingVoiceRoomManager.shared().partyModel.roomId, duration: index) { succeed, result, errorModel in
            EnableReqTool.currentMoment(targetUid: targetUid, roomID: CoverManager.byRest().partyModel.roomId, duration: index) { succeed, _, _ in
                //: EndProgressHUD.popEnable()
                EndProgressHUD.popEnable()
                //: if succeed {
                if succeed {
                    //: self.func__showStatusBarSuccessMsg(showMsg: "Mute success".localized)
                    self.rear(showMsg: (String(k_userUrl) + k_networkMessage.lowercased()).localized)
                }
                //: self.dismiss()
                self.disappearNor()
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveRoomMuteView {
extension EqualView {
    /// 添加视图
    //: private func setupSubviews() {
    private func digitizerSubviews() {
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: addSubview(dismissBtn)
        addSubview(dismissBtn)
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(tipsLb)
        contentView.addSubview(tipsLb)
        //: contentView.addSubview(commitBtn)
        contentView.addSubview(commitBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func pedestal() {
        //: dismissBtn.snp.makeConstraints { make in
        dismissBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: tipsLb.snp.makeConstraints { make in
        tipsLb.snp.makeConstraints { make in
            //: make.top.equalTo(32)
            make.top.equalTo(32)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: commitBtn.snp.makeConstraints { make in
        commitBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 203, height: 50))
            make.size.equalTo(CGSize(width: 203, height: 50))
        }

        //: for i in 0..<3 {
        for i in 0 ..< 3 {
            //: let btn = UIButton()
            let btn = UIButton()
            //: btn.layer.borderWidth = 1
            btn.layer.borderWidth = 1
            //: btn.layer.borderColor = UIColor.appValueDetailColor().cgColor
            btn.layer.borderColor = UIColor.childMenu().cgColor
            //: btn.layer.cornerRadius = 10
            btn.layer.cornerRadius = 10
            //: btn.layer.masksToBounds = true
            btn.layer.masksToBounds = true
            //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
            btn.setTitleColor(UIColor.scaleValueTo(), for: .normal)
            //: btn.setTitleColor(.white, for: .selected)
            btn.setTitleColor(.white, for: .selected)
            //: btn.setBackgroundColor(color: .white, forState: .normal)
            btn.languageUnitState(color: .white, forState: .normal)
            //: btn.setBackgroundColor(color: UIColor.appThemeColor(), forState: .selected)
            btn.languageUnitState(color: UIColor.increase(), forState: .selected)
            //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 16)
            btn.titleLabel?.font = UIFont.tapShared(fontSize: 16)
            //: let title = titleStr[i]
            let title = titleStr[i]
            //: let dayStr = (title == "1") ? "day".localized:"days".localized
            let dayStr = (title == "1") ? (k_picModelPath.replacingOccurrences(of: "dismiss", with: "da")).localized : (k_collectionData.replacingOccurrences(of: "head", with: "da")).localized
            //: btn.setTitle("\(title) " + dayStr, for: .normal)
            btn.setTitle("\(title) " + dayStr, for: .normal)
            //: btn.tag = 100+i
            btn.tag = 100 + i
            //: btn.addTarget(self, action: #selector(muteBtnClick), for: .touchUpInside)
            btn.addTarget(self, action: #selector(loseTrackPress), for: .touchUpInside)
            //: contentView.addSubview(btn)
            contentView.addSubview(btn)
            //: let width = (Int(contentV_Size.width)-24*2-(titleStr.count-1)*14)/titleStr.count
            let width = (Int(contentV_Size.width) - 24 * 2 - (titleStr.count - 1) * 14) / titleStr.count
            //: let left = 24+(i*width+i*14)
            let left = 24 + (i * width + i * 14)
            //: btn.snp.makeConstraints { make in
            btn.snp.makeConstraints { make in
                //: make.top.equalTo(tipsLb.snp.bottom).offset(30)
                make.top.equalTo(tipsLb.snp.bottom).offset(30)
                //: make.size.equalTo(CGSize.init(width: width, height: 40))
                make.size.equalTo(CGSize(width: width, height: 40))
                //: make.leading.equalTo(left)
                make.leading.equalTo(left)
            }
        }
    }
}
