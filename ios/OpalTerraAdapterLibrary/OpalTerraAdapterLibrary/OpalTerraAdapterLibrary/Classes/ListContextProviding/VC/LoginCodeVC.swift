
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_toText:[UInt8] = [0x66,0x61,0x66,0x7b,0x27,0x6c,0x60,0x6b,0x6a,0x7d,0x35,0x26,0x2f,0x67,0x6e,0x7c,0x2f,0x61,0x60,0x7b,0x2f,0x6d,0x6a,0x6a,0x61,0x2f,0x66,0x62,0x7f,0x63,0x6a,0x62,0x6a,0x61,0x7b,0x6a,0x6b]

private func valueEqual(arc num: UInt8) -> UInt8 {
    return num ^ 15
}

/*: "Resent Code" :*/
fileprivate let kSubmitStatusUrl:String = "Restrue view data hidden"
fileprivate let k_backgroundStr:[Character] = ["e","n","t"," ","C","o","d","e"]

/*: "#8C7AFF" :*/
fileprivate let kModelCenterName:String = "#8C7AFFguard return"

/*: " ( :*/
fileprivate let kViewTitle:[Character] = [" ","("]

/*: s)" :*/
fileprivate let kModelFormat:String = "s)total error"

/*: "+ :*/
fileprivate let kMessageTitle:[Character] = ["+"]

/*: "mobile" :*/
fileprivate let kEndData:[UInt8] = [0xe1,0xe3,0xd6,0xdd,0xe0,0xd9]

fileprivate func socialCenter(view num: UInt8) -> UInt8 {
    let value = Int(num) + 140
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "vcode" :*/
fileprivate let k_emptyKey:[UInt8] = [0x65,0x64,0x6f,0x63,0x76]

/*: "areaCode" :*/
fileprivate let kCellAddId:[UInt8] = [0x7b,0x68,0x7f,0x7b,0x59,0x75,0x7e,0x7f]

/*: "email" :*/
fileprivate let k_makeMessage:[UInt8] = [0x62,0x6a,0x66,0x6e,0x6b]

private func imageIndex(to num: UInt8) -> UInt8 {
    return num ^ 7
}

/*: "RSA加密失败" :*/
fileprivate let kSubmitKey:String = "RSA\u{52a0}\u{5bc6}\u{5931}败"

/*: "(+ :*/
fileprivate let kGiftMsg:String = "operation+"

/*: ) :*/
fileprivate let kEdgeMessage:[Character] = [")"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LoginCodeVC.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/29.
//

//: import UIKit
import UIKit

//: class TalkingLoginCodeVC: TalkingBaseViewController {
class LoginCodeVC: StartThen {
    //: public var  phoneOrEmailStr: String = ""  // 邮箱或者Email
    public var phoneOrEmailStr: String = "" // 邮箱或者Email
    //: public var  areaCodeNum: String = ""
    public var areaCodeNum: String = ""
    //: private var codeStr: String = ""
    private var codeStr: String = ""
    //: private var timerDispose: Disposable?
    private var timerDispose: Disposable?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var loginType: TalkingLoginVCType?
    private var loginType: PublishLoginType?

    //: init(type: TalkingLoginVCType) {
    init(type: PublishLoginType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.loginType = type
        self.loginType = type
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_toText.map{valueEqual(arc: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: self.setupSubviews()
        self.messageTo()
        //: self.setupSubViewsConstraint()
        self.current()
        //: self.bindInteraction()
        self.up()
    }

    //: deinit {
    deinit {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }

    //: lazy var codeView: TalkingLoginCodeView = {
    lazy var codeView: MakeReactiveCompatible = {
        //: let codeView = TalkingLoginCodeView()
        let codeView = MakeReactiveCompatible()
        //: return codeView
        return codeView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginCodeVC {
extension LoginCodeVC {
    //: func func_starCodeTime() {
    func novaName() {
        //: if timerDispose != nil {
        if timerDispose != nil {
            //: timerDispose?.dispose()
            timerDispose?.dispose()
        }
        //: var timeCount = 300
        var timeCount = 300
        //: timerDispose = Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)
        timerDispose = Observable<Int>.interval(.seconds(1), scheduler: MainScheduler.instance)
            //: .subscribe(onNext: { [weak self] num in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: timeCount -= 1
                timeCount -= 1
                //: self.func_setReCodeButton(timeCount: timeCount)
                self.buttonCount(timeCount: timeCount)
                //: })
            })
    }

    //: func func_endCodeTime() {
    func someEqual() {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }

    //: func func_setReCodeButton(timeCount: Int) {
    func buttonCount(timeCount: Int) {
        //: self.codeView.reSendButton.isEnabled = (timeCount <= 0)
        self.codeView.reSendButton.isEnabled = (timeCount <= 0)
        //: let btnStr = "Resent Code".localized
        let btnStr = (String(kSubmitStatusUrl.prefix(3)) + String(k_backgroundStr)).localized

        //: var attributes = [.foregroundColor: UIColor(hex: "#8C7AFF")!, .font: UIFont.fontChange(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
        var attributes = [.foregroundColor: UIColor(hex: (String(kModelCenterName.prefix(7))))!, .font: UIFont.fontChange(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
        //: var newStr = btnStr
        var newStr = btnStr
        //: if timeCount > 0 {
        if timeCount > 0 {
            //: newStr = newStr.appending(" (\(timeCount)s)")
            newStr = newStr.appending(" (\(timeCount)s)")
            //: } else {
        } else {
            //: func_endCodeTime()
            someEqual()
            //: attributes[.underlineStyle] = 1
            attributes[.underlineStyle] = 1
        }
        //: let attributeString = NSMutableAttributedString(string: newStr, attributes: attributes)
        let attributeString = NSMutableAttributedString(string: newStr, attributes: attributes)
        //: if timeCount > 0 {
        if timeCount > 0 {
            //: let theRange = NSString(string: btnStr).range(of: btnStr)
            let theRange = NSString(string: btnStr).range(of: btnStr)
            //: attributeString.addAttribute(.foregroundColor, value: UIColor.colorStatuteNameApp(), range: theRange)
            attributeString.addAttribute(.foregroundColor, value: UIColor.colorStatuteNameApp(), range: theRange)
        }
        //: self.codeView.reSendButton.setAttributedTitle(attributeString, for: .normal)
        self.codeView.reSendButton.setAttributedTitle(attributeString, for: .normal)
    }

    /// 手机号登录
    //: func func__loginAction() {
    func state() {
        //: var reslutStr = ""
        var reslutStr = ""
        //: var reslutCodeStr = ""
        var reslutCodeStr = ""

        //: do {
        do {
            //: let rsa_publicKey = try PublicKey(pemEncoded: LoginRsaPublicKey)
            let rsa_publicKey = try PublicKey(pemEncoded: k_busyName)
            //: let clear = try ClearMessage(string: phoneOrEmailStr, using: .utf8)
            let clear = try ClearMessage(string: phoneOrEmailStr, using: .utf8)
            //: reslutStr = try clear.encrypted(with: rsa_publicKey, padding: .PKCS1).base64String
            reslutStr = try clear.encrypted(with: rsa_publicKey, padding: .PKCS1).base64String

            //: let codeClear = try ClearMessage(string: "+\(areaCodeNum)", using: .utf8)
            let codeClear = try ClearMessage(string: "+\(areaCodeNum)", using: .utf8)
            //: reslutCodeStr = try codeClear.encrypted(with: rsa_publicKey, padding: .PKCS1).base64String
            reslutCodeStr = try codeClear.encrypted(with: rsa_publicKey, padding: .PKCS1).base64String

            //: self.view.endEditing(true)
            self.view.endEditing(true)
            //: ProgressHUD.show()
            EndProgressHUD.listHide()
            //: if loginType == .LoginPhone {
            if loginType == .LoginPhone {
                //: let params = ["mobile": reslutStr, "vcode": codeStr, "areaCode": reslutCodeStr]
                let params = [String(bytes: kEndData.map{socialCenter(view: $0)}, encoding: .utf8)!: reslutStr, String(bytes: k_emptyKey.reversed(), encoding: .utf8)!: codeStr, String(bytes: kCellAddId.map{$0^26}, encoding: .utf8)!: reslutCodeStr]
                //: let content = codeView.phoneLabel.text ?? ""
                let content = codeView.phoneLabel.text ?? ""
                //: TalkingLoginRequestTool.req_thirdLogin(type: .PhoneLogin, content: content, params: params) { [self]  succeed, result, errorModel in
                IngatheringPullReactiveCompatible.inner(type: .PhoneLogin, content: content, params: params) { [self] succeed, _, _ in
                    //: EndProgressHUD.popEnable()
                    EndProgressHUD.popEnable()
                    //: if !succeed {
                    if !succeed {
                        //: self.codeView.codeInputView.startEdit()
                        self.codeView.codeInputView.replacement()
                    }
                }
                //: }else{
            } else {
                //: let params = ["email": reslutStr, "vcode": codeStr]
                let params = [String(bytes: k_makeMessage.map{imageIndex(to: $0)}, encoding: .utf8)!: reslutStr, String(bytes: k_emptyKey.reversed(), encoding: .utf8)!: codeStr]

                //: let content = codeView.phoneLabel.text ?? ""
                let content = codeView.phoneLabel.text ?? ""
                //: TalkingLoginRequestTool.req_thirdLogin(type: .EmailLogin, content: content, params: params) { [self]  succeed, result, errorModel in
                IngatheringPullReactiveCompatible.inner(type: .EmailLogin, content: content, params: params) { [self] succeed, _, _ in
                    //: EndProgressHUD.popEnable()
                    EndProgressHUD.popEnable()
                    //: if !succeed {
                    if !succeed {
                        //: self.codeView.codeInputView.startEdit()
                        self.codeView.codeInputView.replacement()
                    }
                }
            }

            //: } catch {
        } catch {
            //: printLog(message: "RSA加密失败")
            printLog(message: (kSubmitKey))
        }
    }

    //: func func__reSendloginCodeAction() {
    func cellName() {
        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: if loginType == .LoginPhone {
        if loginType == .LoginPhone {
            //: TalkingLoginRequestTool.req_getPhoneCode(phoneStr: phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, result, errorModel in
            IngatheringPullReactiveCompatible.phone(phoneStr: phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, _, _ in
                //: EndProgressHUD.popEnable()
                EndProgressHUD.popEnable()
                //: if succeed {
                if succeed {
                    //: self.codeView.codeInputView.func__resetCodeInputView()
                    self.codeView.codeInputView.equidistant()
                    //: self.func_starCodeTime()
                    self.novaName()
                }
                //: self.codeView.codeInputView.startEdit()
                self.codeView.codeInputView.replacement()
                //: })
            })
            //: }else{
        } else {
            //: TalkingLoginRequestTool.req_getBindEmailCode(emailStr: phoneOrEmailStr, isBind: false) { succeed, result, errorModel in
            IngatheringPullReactiveCompatible.pick(emailStr: phoneOrEmailStr, isBind: false) { succeed, _, _ in
                //: EndProgressHUD.popEnable()
                EndProgressHUD.popEnable()
                //: if succeed {
                if succeed {
                    //: self.codeView.codeInputView.func__resetCodeInputView()
                    self.codeView.codeInputView.equidistant()
                    //: self.func_starCodeTime()
                    self.novaName()
                }
            }
            //: self.codeView.codeInputView.startEdit()
            self.codeView.codeInputView.replacement()
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginCodeVC {
extension LoginCodeVC {
    // 添加视图
    //: private func setupSubviews() {
    private func messageTo() {
        //: view.addSubview(codeView)
        view.addSubview(codeView)
        //: codeView.phoneLabel.text = self.loginType == .LoginPhone ? "(+\(areaCodeNum))\(phoneOrEmailStr)" : "\(phoneOrEmailStr)"
        codeView.phoneLabel.text = self.loginType == .LoginPhone ? "(+\(areaCodeNum))\(phoneOrEmailStr)" : "\(phoneOrEmailStr)"
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func current() {
        //: codeView.snp.makeConstraints { make in
        codeView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalToSuperview()
            make.leading.trailing.top.bottom.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func up() {
        //: codeView.codeInputView.codeBlock = { [weak self] (codeStr: String) -> Void in
        codeView.codeInputView.codeBlock = { [weak self] (codeStr: String) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.codeView.commitButton.isEnabled = (codeStr.count == 6)
            self.codeView.commitButton.isEnabled = (codeStr.count == 6)
            //: if codeStr.count == 6 {
            if codeStr.count == 6 {
                //: self.codeStr = codeStr
                self.codeStr = codeStr
                //: self.func__loginAction()
                self.state()
            }
            //: return
        }
        //: codeView.commitButton.rx.controlEvent(.touchUpInside)
        codeView.commitButton.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__loginAction()
                self.state()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: codeView.reSendButton.rx.controlEvent(.touchUpInside)
        codeView.reSendButton.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__reSendloginCodeAction()
                self.cellName()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: self.func_starCodeTime()
        self.novaName()
    }
}
