
//: Declare String Begin

/*: "nav_back_black_nor" :*/
fileprivate let kBottomManagerMsg:String = "nav_change text"
fileprivate let kSessionFormat:String = "style to_bla"

/*: "Email Address" :*/
fileprivate let k_makeName:[Character] = ["E","m","a","i","l"," ","A","d","d","r","e","s","s"]

/*: "F4F6FA" :*/
fileprivate let k_arrayData:String = "f4f6fa"

/*: "Add an email address" :*/
fileprivate let k_errorFormat:[Character] = ["A","d","d"," ","a"]
fileprivate let k_documentPath:String = "let curn em"
fileprivate let kToValue:String = "ail aback user size"

/*: "BBBBBB" :*/
fileprivate let kTopCanLetMessage:[Character] = ["B","B","B","B","B","B"]

/*: "Only you will see your email on your profile." :*/
fileprivate let k_quoteStr:[UInt8] = [0x38,0x57,0x55,0x62,0x9,0x62,0x58,0x5e,0x9,0x60,0x52,0x55,0x55,0x9,0x5c,0x4e,0x4e,0x9,0x62,0x58,0x5e,0x5b,0x9,0x4e,0x56,0x4a,0x52,0x55,0x9,0x58,0x57,0x9,0x62,0x58,0x5e,0x5b,0x9,0x59,0x5b,0x58,0x4f,0x52,0x55,0x4e,0x17]

fileprivate func selfTrue(table num: UInt8) -> UInt8 {
    let value = Int(num) - 233
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Send verification email" :*/
fileprivate let k_hiddenId:String = "day sinceSend "
fileprivate let k_modelCellStr:String = "verwithfwith"
fileprivate let k_giftAddKey:String = "emmanageril"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AdhereViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: class TalkingLoginBindEmailVC: TalkingBaseViewController {
class AdhereViewController: StartThen {
    // 是否展示返回按钮
    //: var isBack = true
    var isBack = true
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: if isBack == false {
        if isBack == false {
            //: popGesture(isOpen: false)
            outUpAction(isOpen: false)
        }
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: if isBack == false {
        if isBack == false {
            //: popGesture(isOpen: true)
            outUpAction(isOpen: true)
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.change()
        //: self.setupSubViewsConstraint()
        self.component()
        //: self.bindInteraction()
        self.magnitudeerplay()
        //: addTapGestureRecognizer()
        viewRecognizer()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: private lazy var backBtn: UIButton = {
    private lazy var backBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "nav_back_black_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kBottomManagerMsg.prefix(4)) + "back" + String(kSessionFormat.suffix(4)) + "ck_nor")), for: .normal)
        //: btn.addTarget(self, action: #selector(backBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(event), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var titleLabel: UILabel = {
    private lazy var titleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .fontChange(type: .Semibold, fontSize: 17.0)
        label.font = .fontChange(type: .Semibold, fontSize: 17.0)
        //: label.textColor = .colorStatuteNameApp()
        label.textColor = .colorStatuteNameApp()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "Email Address".localized
        label.text = (String(k_makeName)).localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var emailInputView: UITextField = {
    private lazy var emailInputView: UITextField = {
        //: let textField = UITextField()
        let textField = UITextField()
        //: textField.backgroundColor = UIColor(hex: "F4F6FA")
        textField.backgroundColor = UIColor(hex: (k_arrayData.uppercased()))
        //: textField.font = .fontChange(type: .Medium, fontSize: 17)
        textField.font = .fontChange(type: .Medium, fontSize: 17)
        //: textField.textColor = .colorStatuteNameApp()
        textField.textColor = .colorStatuteNameApp()
        //: textField.layer.cornerRadius = 25
        textField.layer.cornerRadius = 25
        //: textField.textAlignment = .center
        textField.textAlignment = .center
        //: textField.clipsToBounds = true
        textField.clipsToBounds = true
        //: textField.attributedPlaceholder = NSAttributedString(string: "Add an email address".localized, attributes: [NSAttributedString.Key.font: UIFont.fontChange(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: "BBBBBB")!])
        textField.attributedPlaceholder = NSAttributedString(string: (String(k_errorFormat) + String(k_documentPath.suffix(4)) + String(kToValue.prefix(5)) + "ddress").localized, attributes: [NSAttributedString.Key.font: UIFont.fontChange(type: .Regular, fontSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: (String(kTopCanLetMessage)))!])
        //: textField.keyboardType = .default
        textField.keyboardType = .default
        //: textField.returnKeyType = .done
        textField.returnKeyType = .done
        //: textField.clearButtonMode = .whileEditing
        textField.clearButtonMode = .whileEditing
        //: return textField
        return textField
        //: }()
    }()

    //: private lazy var emailTipLabel: UILabel = {
    private lazy var emailTipLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .fontChange(type: .Regular, fontSize: 15.0)
        label.font = .fontChange(type: .Regular, fontSize: 15.0)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .childMenu()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: label.text = "Only you will see your email on your profile.".localized
        label.text = String(bytes: k_quoteStr.map{selfTrue(table: $0)}, encoding: .utf8)!.localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var commitButton: UIButton = {
    private lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = UIFont.fontChange(type: .Regular, fontSize: 18)
        //: btn.setTitle("Send verification email".localized, for: .normal)
        btn.setTitle((String(k_hiddenId.suffix(5)) + k_modelCellStr.replacingOccurrences(of: "with", with: "i") + "cation " + k_giftAddKey.replacingOccurrences(of: "manager", with: "a")).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.makeEqual(colors: UIColor.georgiaHomeBoy(), size: CGSize(width: constFormalContent - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue || TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
        if UserViewToolThen.share.interfaceLang == PlayerSubqueryConvertible.es.rawValue || UserViewToolThen.share.interfaceLang == PlayerSubqueryConvertible.pt.rawValue {
            //: btn.titleLabel?.font = UIFont.fontChange(type: .Regular, fontSize: 16)
            btn.titleLabel?.font = UIFont.fontChange(type: .Regular, fontSize: 16)
        }
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginBindEmailVC {
extension AdhereViewController {
    //: @objc func backBtnClick() {
    @objc func event() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    //: func checkCommitButtonState() {
    func remove() {
        //: if emailInputView.text!.isEmptyString {
        if emailInputView.text!.isEmptyString {
            //: commitButton.isEnabled = false
            commitButton.isEnabled = false
            //: } else {
        } else {
            //: commitButton.isEnabled = true
            commitButton.isEnabled = true
        }
    }

    //: func func__getEmailCodeAction() {
    func alienation() {
        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show(superView: view)
        EndProgressHUD.nearOrientation(superView: view)
        //: TalkingLoginRequestTool.req_getBindEmailCode(emailStr: emailInputView.text!, isBind: true) { succeed, result, errorModel in
        IngatheringPullReactiveCompatible.pick(emailStr: emailInputView.text!, isBind: true) { succeed, _, _ in
            //: EndProgressHUD.popEnable()
            EndProgressHUD.popEnable()
            //: if succeed {
            if succeed {
                //: self.func__pushToPhoneCodeVC()
                self.find()
            }
        }
    }

    //: func func__pushToPhoneCodeVC() {
    func find() {
        //: let vc = TalkingLoginBindInputCodeVC()
        let vc = PerformanceVc()
        //: vc.phoneOrEmailStr = emailInputView.text!
        vc.phoneOrEmailStr = emailInputView.text!
        //: vc.viewType = .BindEmail
        vc.viewType = .BindEmail
        //: navigationController?.pushViewController(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingLoginBindEmailVC {
extension AdhereViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func change() {
        //: backBtn.isHidden = !isBack
        backBtn.isHidden = !isBack
        //: view.addSubview(backBtn)
        view.addSubview(backBtn)
        //: view.bringSubviewToFront(backBtn)
        view.bringSubviewToFront(backBtn)
        //: view.addSubview(titleLabel)
        view.addSubview(titleLabel)
        //: view.addSubview(emailInputView)
        view.addSubview(emailInputView)
        //: view.addSubview(commitButton)
        view.addSubview(commitButton)
        //: view.addSubview(emailTipLabel)
        view.addSubview(emailTipLabel)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func component() {
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(6)
            make.leading.equalTo(6)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(main_netValue)
            //: make.size.equalTo(44)
            make.size.equalTo(44)
        }
        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(backBtn.snp.bottom).offset(44)
            make.top.equalTo(backBtn.snp.bottom).offset(44)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }
        //: emailInputView.snp.makeConstraints { make in
        emailInputView.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.top.equalTo(titleLabel.snp.bottom).offset(40)
            make.top.equalTo(titleLabel.snp.bottom).offset(40)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(emailInputView.snp.bottom).offset(40)
            make.top.equalTo(emailInputView.snp.bottom).offset(40)
        }
        //: emailTipLabel.snp.makeConstraints { make in
        emailTipLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.top.equalTo(commitButton.snp.bottom).offset(24)
            make.top.equalTo(commitButton.snp.bottom).offset(24)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func magnitudeerplay() {
        //: emailInputView.rx.text.orEmpty.asObservable()
        emailInputView.rx.text.orEmpty.asObservable()
            //: .subscribe(onNext: { [weak self] _ in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.checkCommitButtonState()
                self.remove()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__getEmailCodeAction()
                self.alienation()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
