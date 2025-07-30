
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kLabelId:[UInt8] = [0x9e,0x99,0x9e,0x83,0xdf,0x94,0x98,0x93,0x92,0x85,0xcd,0xde,0xd7,0x9f,0x96,0x84,0xd7,0x99,0x98,0x83,0xd7,0x95,0x92,0x92,0x99,0xd7,0x9e,0x9a,0x87,0x9b,0x92,0x9a,0x92,0x99,0x83,0x92,0x93]

private func statisticalTable(text num: UInt8) -> UInt8 {
    return num ^ 247
}

/*: "bg_others_shadow_up" :*/
fileprivate let k_modelUrl:String = "layer"
fileprivate let k_allowName:String = "_othephone feature light in"
fileprivate let kWhitePointInData:String = "adow_upwho bag let icon"

/*: "nav_back_black_nor" :*/
fileprivate let k_quoteButtonMsg:String = "text"
fileprivate let kFrameMessage:String = "if view frame var statusav_bac"
fileprivate let k_kitModeFormat:String = "let let pic app selfck_nor"

/*: "btn_detail_more" :*/
fileprivate let kSkipId:[Character] = ["b","t","n","_","d","e","t","a","i","l","_","m"]
fileprivate let k_giftData:String = "olabel"

/*: "Shielding Success" :*/
fileprivate let kLoadText:String = "Shieldvar view for"
fileprivate let kEffectValue:String = "Succesgo point"
fileprivate let k_insideLiveName:String = "index"

/*: "Unmasking Succeeded" :*/
fileprivate let k_colorKeyContent:String = "Unmasany greet"
fileprivate let kLayerMsg:String = "linecceeded"

/*: "Report" :*/
fileprivate let k_nameUrl:[Character] = ["R","e","p","o","r","t"]

/*: "Remvoe Block" :*/
fileprivate let k_locationTitle:[Character] = ["R","e","m"]
fileprivate let k_addValue:[Character] = ["v","o","e"," ","B","l","o","c","k"]

/*: "Block" :*/
fileprivate let k_makeId:[Character] = ["B","l","o","c","k"]

/*: "Cancel" :*/
fileprivate let kArrayFormat:String = "equal block toCancel"

/*: "OK" :*/
fileprivate let k_showData:[Character] = ["O","K"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RawDataReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/9.
//

//: import UIKit
import UIKit

//: class TalkingUserDetailNaviBarView: UIView {
class RawDataReactiveCompatible: UIView {
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var isBlack = false
    private var isBlack = false // 是否已拉黑
    //: private var userInfoModel = TalkingUserInfoModel()
    private var userInfoModel = GroupTransformable() // 用户资料

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: setupSubviews()
        popMessage()
        //: setupSubViewsConstraint()
        viewDown()
        //: bindInteraction()
        holdFast()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kLabelId.map{statisticalTable(text: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.submitGift(name: "bg_others_shadow_up")
        imgV.image = UIImage.submitGift(name: (k_modelUrl.replacingOccurrences(of: "layer", with: "bg") + String(k_allowName.prefix(5)) + "rs_sh" + String(kWhitePointInData.prefix(7))))
        //: return imgV
        return imgV
        //: }()
    }()

    //: lazy var whiteBgView: UIView = {
    lazy var whiteBgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.alpha = 0
        v.alpha = 0
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.fontChange(type: .Medium, fontSize: 17)
        lab.font = UIFont.fontChange(type: .Medium, fontSize: 17)
        //: lab.textColor = .colorStatuteNameApp()
        lab.textColor = .colorStatuteNameApp()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeLanguageManager.shared.direction == .rightToLeft {
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
        }
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var backButton: UIButton = {
    lazy var backButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.submitGift(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.submitGift(name: (k_quoteButtonMsg.replacingOccurrences(of: "text", with: "n") + String(kFrameMessage.suffix(6)) + "k_bla" + String(k_kitModeFormat.suffix(6)))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(messageOff), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var moreButton: UIButton = {
    lazy var moreButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.submitGift(name: "btn_detail_more").withRenderingMode(.alwaysTemplate)
        let img = UIImage.submitGift(name: (String(kSkipId) + k_giftData.replacingOccurrences(of: "label", with: "re"))).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .white
        btn.tintColor = .white
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request

//: extension TalkingUserDetailNaviBarView {
extension RawDataReactiveCompatible {
    /// 拉黑和取消拉黑
    //: private func req_pullBlackRequest() {
    private func makeOff() {
        //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: self.userInfoModel.uid, isBlack: !self.isBlack) { succeed, result, errorModel in
        FrameThen.cagey(uid: self.userInfoModel.uid, isBlack: !self.isBlack) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                //: self.isBlack = !self.isBlack
                self.isBlack = !self.isBlack
                //: let toastStr = self.isBlack == true ? "Shielding Success".localized : "Unmasking Succeeded".localized
                let toastStr = self.isBlack == true ? (String(kLoadText.prefix(6)) + "ing " + String(kEffectValue.prefix(6)) + k_insideLiveName.replacingOccurrences(of: "index", with: "s")).localized : (String(k_colorKeyContent.prefix(5)) + "king S" + kLayerMsg.replacingOccurrences(of: "line", with: "u")).localized
                //: ProgressHUD.toast(toastStr)
                EndProgressHUD.terraceToast(toastStr)
            }
        }
    }
}

// MARK: - Event

//: extension TalkingUserDetailNaviBarView {
extension RawDataReactiveCompatible {
    //: @objc private func clickBackButtonAction() {
    @objc private func messageOff() {
        //: AddReactiveCompatible.share.func__getCurrentActivityVC()?.navigationController?.popViewController(animated: true)
        AddReactiveCompatible.share.pageBy()?.navigationController?.popViewController(animated: true)
    }

    //: @objc private func registerMoreButtonAction() {
    @objc private func moreRegisterButtonJumpstart() {
        //: let vc = TalkingMunuPopView.init(frame: UIScreen.main.bounds)
        let vc = LipogramViewDelegate(frame: UIScreen.main.bounds)
        //: var titleArr = ["Report".localized]
        var titleArr = [(String(k_nameUrl)).localized]
        //: let uid = Int(userInfoModel.uid) ?? 0
        let uid = Int(userInfoModel.uid) ?? 0

        //: titleArr.append(self.isBlack ? "Remvoe Block".localized : "Block".localized)
        titleArr.append(self.isBlack ? (String(k_locationTitle) + String(k_addValue)).localized : (String(k_makeId)).localized)

        //: vc.initwithList(cellTitleList: titleArr)
        vc.listEffect(cellTitleList: titleArr)
        //: vc.munuBlock = { index, str in
        vc.munuBlock = { index, _ in
            //: if index==0 {
            if index == 0 {
                //: self.reportAction()
                self.socialStatus()
                //: } else if index==1 {
            } else if index == 1 {
                //: self.pullBlackAction()
                self.touch()
            }
        }
    }

    /// 举报用户
    //: private func reportAction() {
    private func socialStatus() {
        //: let reportView = TalkingReportAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: userInfoModel.uid)
        let reportView = InformDataSource(frame: UIScreen.main.bounds, type: .reportUserType, rId: userInfoModel.uid)
        //: reportView.showReportViewIn(view: nil)
        reportView.magnitudeeraction(view: nil)
    }

    /// 拉黑用户
    //: private func pullBlackAction() {
    private func touch() {
        //: guard self.isBlack == false else {
        guard self.isBlack == false else {
            //: req_pullBlackRequest()
            makeOff()
            //: return
            return
        }

        //: TalkingAlertShow.alert(title: nil, message: kMessage_blocking, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized) {
        FrameHiddenReactiveCompatible.theory(title: nil, message: user_barQuantityervalTitle, leftBtnTitle: (String(kArrayFormat.suffix(6))).localized, rightBtnTitle: "OK".localized) {
            //: TalkingAlertShow.hideAlert()
            FrameHiddenReactiveCompatible.middleText()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            FrameHiddenReactiveCompatible.middleText()
            //: self.req_pullBlackRequest()
            self.makeOff()
        }
    }
}

// MARK: Layout

//: extension TalkingUserDetailNaviBarView {
extension RawDataReactiveCompatible {
    /// 刷新
    //: func refreshView(_ userModel: TalkingUserInfoModel) {
    func contentsAdd(_ userModel: GroupTransformable) {
        //: self.userInfoModel = userModel
        self.userInfoModel = userModel
        //: self.isBlack = userModel.inMyBlackList
        self.isBlack = userModel.inMyBlackList
        //: self.moreButton.isHidden = (userModel.uid == DistanceAppManager.share.loginUid)
        self.moreButton.isHidden = (userModel.uid == DistanceAppManager.share.loginUid)
        //: titleLab.text = userModel.nickname
        titleLab.text = userModel.nickname
    }

    //: private func setupSubviews() {
    private func popMessage() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: addSubview(bgImgView)
        addSubview(bgImgView)
        //: addSubview(whiteBgView)
        addSubview(whiteBgView)
        //: whiteBgView.addSubview(titleLab)
        whiteBgView.addSubview(titleLab)
        //: addSubview(backButton)
        addSubview(backButton)
        //: addSubview(moreButton)
        addSubview(moreButton)
    }

    //: private func setupSubViewsConstraint() {
    private func viewDown() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: whiteBgView.snp.makeConstraints { make in
        whiteBgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(main_netValue)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(showBottomDailyValue)
            //: make.width.equalTo(200)
            make.width.equalTo(200)
        }

        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(showBottomDailyValue)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(main_netValue)
        }

        //: moreButton.snp.makeConstraints { make in
        moreButton.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.centerY.equalTo(backButton.snp.centerY)
            make.centerY.equalTo(backButton.snp.centerY)
            //: make.size.equalTo(CGSize(width: 45, height: NavigationBarHeight))
            make.size.equalTo(CGSize(width: 45, height: showBottomDailyValue))
        }
    }

    //: private func bindInteraction() {
    private func holdFast() {
        //: moreButton.rx.controlEvent(.touchUpInside).subscribe(onNext: { [weak self] in
        moreButton.rx.controlEvent(.touchUpInside).subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.registerMoreButtonAction()
            self.moreRegisterButtonJumpstart()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
