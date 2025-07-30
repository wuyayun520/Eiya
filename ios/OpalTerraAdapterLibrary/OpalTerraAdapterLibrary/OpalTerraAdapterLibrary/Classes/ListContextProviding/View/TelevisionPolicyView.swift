
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kSkinTitle:[UInt8] = [0x91,0x96,0x91,0x8c,0xd0,0x9b,0x97,0x9c,0x9d,0x8a,0xc2,0xd1,0xd8,0x90,0x99,0x8b,0xd8,0x96,0x97,0x8c,0xd8,0x9a,0x9d,0x9d,0x96,0xd8,0x91,0x95,0x88,0x94,0x9d,0x95,0x9d,0x96,0x8c,0x9d,0x9c]

/*: "By tapping Create Account or sign in, you agree to our terms. Learn how we process your data in our Privacy Policy." :*/
fileprivate let k_giftViewData:[UInt8] = [0x27,0x1c,0x45,0x11,0x4,0x15,0x15,0xc,0xb,0x2,0x45,0x26,0x17,0x0,0x4,0x11,0x0,0x45,0x24,0x6,0x6,0xa,0x10,0xb,0x11,0x45,0xa,0x17,0x45,0x16,0xc,0x2,0xb,0x45,0xc,0xb,0x49,0x45,0x1c,0xa,0x10,0x45,0x4,0x2,0x17,0x0,0x0,0x45,0x11,0xa,0x45,0xa,0x10,0x17,0x45,0x11,0x0,0x17,0x8,0x16,0x4b,0x45,0x29,0x0,0x4,0x17,0xb,0x45,0xd,0xa,0x12,0x45,0x12,0x0,0x45,0x15,0x17,0xa,0x6,0x0,0x16,0x16,0x45,0x1c,0xa,0x10,0x17,0x45,0x1,0x4,0x11,0x4,0x45,0xc,0xb,0x45,0xa,0x10,0x17,0x45,0x35,0x17,0xc,0x13,0x4,0x6,0x1c,0x45,0x35,0xa,0x9,0xc,0x6,0x1c,0x4b]

/*: "Agree and Continue" :*/
fileprivate let kStatusTitle:[Character] = ["A","g","r","e","e"," ","a","n","d"," ","C","o","n","t","i","n","u"]
fileprivate let k_nameMessage:[Character] = ["e"]

/*: "Disagree and Quit" :*/
fileprivate let k_tapFormat:String = "Disagextra task push time"
fileprivate let kEngineStr:String = "camerad"
fileprivate let kSubFormalId:[Character] = [" ","Q","u","i","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TelevisionPolicyView.swift
//  AbroadTalking
//
//  Created by young on 2022/8/31.
//

//: import UIKit
import UIKit

//: class LoginPrivacyPolicyView: UIView {
class TelevisionPolicyView: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kSkinTitle.map{$0^248}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue)
        //: self.backgroundColor = UIColor.RGBA(0, 0, 0, 0.6)
        self.backgroundColor = UIColor.behindVoice(0, 0, 0, 0.6)
        //: self.alpha = 0
        self.alpha = 0
        //: self.setupSubviews()
        self.changeKey()
        //: self.setupSubViewsConstraint()
        self.edit()
        //: self.bindInteraction()
        self.currentness()
    }

    // MARK: - Lazy load

    //: private lazy var whiteBgV: UIView = {
    private lazy var whiteBgV: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.layer.cornerRadius = 10
        v.layer.cornerRadius = 10
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var textLab: UILabel = {
    private lazy var textLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.colorStatuteNameApp()
        lab.textColor = UIColor.colorStatuteNameApp()
        //: lab.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        lab.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "By tapping Create Account or sign in, you agree to our terms. Learn how we process your data in our Privacy Policy.".localized
        lab.text = String(bytes: k_giftViewData.map{$0^101}, encoding: .utf8)!.localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var agreeBtn: UIButton = {
    private lazy var agreeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("Agree and Continue".localized, for: .normal)
        btn.setTitle((String(kStatusTitle) + String(k_nameMessage)).localized, for: .normal)
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 245, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.makeEqual(colors: UIColor.georgiaHomeBoy(), size: CGSize(width: 245, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var quitBtn: UIButton = {
    private lazy var quitBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("Disagree and Quit".localized, for: .normal)
        btn.setTitle((String(k_tapFormat.prefix(5)) + "ree a" + kEngineStr.replacingOccurrences(of: "camera", with: "n") + String(kSubFormalId)).localized, for: .normal)
        //: btn.setTitleColor(UIColor.appThemeColor(), for: .normal)
        btn.setTitleColor(UIColor.increase(), for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        //: btn.backgroundColor = UIColor.white
        btn.backgroundColor = UIColor.white
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.layer.borderColor = UIColor.appThemeColor().cgColor
        btn.layer.borderColor = UIColor.increase().cgColor
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()
}

//: extension LoginPrivacyPolicyView {
extension TelevisionPolicyView {
    // MARK: - Event

    //: func showView(okHandler: @escaping () -> Void) {
    func viewMessageTo(okHandler: @escaping () -> Void) {
        //: show()
        sumShow()

        // bind event
        //: agreeBtn.rx.controlEvent(.touchUpInside)
        agreeBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.dismiss()
                self.miniDismiss()
                //: okHandler()
                okHandler()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: quitBtn.rx.controlEvent(.touchUpInside)
        quitBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: {
            .subscribe(onNext: {
                //: exit(0)
                exit(0)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }

    //: private func show() {
    private func sumShow() {
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.alpha = 1
            self.alpha = 1
            //: } completion: { finish in
        } completion: { _ in
            //: UserTextMacroDefine.getWindow().addSubview(self)
            UserTextMacroDefine.clearstoryNo().addSubview(self)
        }
    }

    //: private func dismiss() {
    private func miniDismiss() {
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.alpha = 0
            self.alpha = 0
            //: } completion: { finish in
        } completion: { _ in
            //: guard self.superview != nil else { return }
            guard self.superview != nil else { return }
            //: self.removeFromSuperview()
            self.removeFromSuperview()
        }
    }
}

//: extension LoginPrivacyPolicyView {
extension TelevisionPolicyView {
    // 添加视图
    //: private func setupSubviews() {
    private func changeKey() {
        //: self.addSubview(whiteBgV)
        self.addSubview(whiteBgV)
        //: whiteBgV.snp.makeConstraints { make in
        whiteBgV.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 295, height: 270))
            make.size.equalTo(CGSize(width: 295, height: 270))
        }
        //: whiteBgV.addSubview(textLab)
        whiteBgV.addSubview(textLab)
        //: textLab.snp.makeConstraints { make in
        textLab.snp.makeConstraints { make in
            //: make.top.equalTo(20)
            make.top.equalTo(20)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: whiteBgV.addSubview(agreeBtn)
        whiteBgV.addSubview(agreeBtn)
        //: agreeBtn.snp.makeConstraints { make in
        agreeBtn.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(140)
            make.top.equalToSuperview().offset(140)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
        //: whiteBgV.addSubview(quitBtn)
        whiteBgV.addSubview(quitBtn)
        //: quitBtn.snp.makeConstraints { make in
        quitBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.bottom.equalTo(-18)
            make.bottom.equalTo(-18)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func edit() {}

    // 添加事件
    //: private func bindInteraction() {
    private func currentness() {}
}
