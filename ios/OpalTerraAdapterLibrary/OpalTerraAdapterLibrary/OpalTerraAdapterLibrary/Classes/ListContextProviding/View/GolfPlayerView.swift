
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kValueKey:[UInt8] = [0x3b,0x3c,0x3b,0x26,0x7a,0x31,0x3d,0x36,0x37,0x20,0x68,0x7b,0x72,0x3a,0x33,0x21,0x72,0x3c,0x3d,0x26,0x72,0x30,0x37,0x37,0x3c,0x72,0x3b,0x3f,0x22,0x3e,0x37,0x3f,0x37,0x3c,0x26,0x37,0x36]

private func shareKitSubmit(tool num: UInt8) -> UInt8 {
    return num ^ 82
}

/*: "Set New Password" :*/
fileprivate let k_sameId:String = "Set tag else make center user"
fileprivate let kIconStr:[Character] = ["P","a","s","s","w","o","r","d"]

/*: "8075F5" :*/
fileprivate let k_messageName:String = "8075Fstring manager let equal as"
fileprivate let k_hiddenValue:String = "smooth"

/*: "F4F4F4" :*/
fileprivate let k_addTitle:[Character] = ["F","4","F","4","F","4"]

/*: "Password" :*/
fileprivate let kNorFormat:[Character] = ["P","a","s","s","w","o","r","d"]

/*: "Please set a password of at least 6 digits, consisting of numbers, English case groups" :*/
fileprivate let kSinceValue:[UInt8] = [0x73,0x70,0x75,0x6f,0x72,0x67,0x20,0x65,0x73,0x61,0x63,0x20,0x68,0x73,0x69,0x6c,0x67,0x6e,0x45,0x20,0x2c,0x73,0x72,0x65,0x62,0x6d,0x75,0x6e,0x20,0x66,0x6f,0x20,0x67,0x6e,0x69,0x74,0x73,0x69,0x73,0x6e,0x6f,0x63,0x20,0x2c,0x73,0x74,0x69,0x67,0x69,0x64,0x20,0x36,0x20,0x74,0x73,0x61,0x65,0x6c,0x20,0x74,0x61,0x20,0x66,0x6f,0x20,0x64,0x72,0x6f,0x77,0x73,0x73,0x61,0x70,0x20,0x61,0x20,0x74,0x65,0x73,0x20,0x65,0x73,0x61,0x65,0x6c,0x50]

/*: "Next" :*/
fileprivate let kLayerText:String = "model dataNext"

/*: "Skip" :*/
fileprivate let kPlayerData:String = "return height fail content selfSkip"

/*: "Resent Code" :*/
fileprivate let kCardId:String = "Resenttop let"

/*: "8C7AFF" :*/
fileprivate let k_taskFormat:[Character] = ["8","C","7","A","F","F"]

/*: " ( :*/
fileprivate let k_calendarAddData:String = " ("

/*: s)" :*/
fileprivate let kImageContent:String = "user self left titles)"

/*: "Your Password: %@" :*/
fileprivate let kLevelMsg:[Character] = ["Y","o","u","r"," ","P","a","s","s","w","o","r","d",":"]
fileprivate let kTextDataHeightStr:String = " %@"

/*: "After updating your password, you won't be able to log in with your old password, are you sure you want to update your password?\n%@" :*/
fileprivate let k_labelKey:[UInt8] = [0x40,0x25,0xa,0x3f,0x64,0x72,0x6f,0x77,0x73,0x73,0x61,0x70,0x20,0x72,0x75,0x6f,0x79,0x20,0x65,0x74,0x61,0x64,0x70,0x75,0x20,0x6f,0x74,0x20,0x74,0x6e,0x61,0x77,0x20,0x75,0x6f,0x79,0x20,0x65,0x72,0x75,0x73,0x20,0x75,0x6f,0x79,0x20,0x65,0x72,0x61,0x20,0x2c,0x64,0x72,0x6f,0x77,0x73,0x73,0x61,0x70,0x20,0x64,0x6c,0x6f,0x20,0x72,0x75,0x6f,0x79,0x20,0x68,0x74,0x69,0x77,0x20,0x6e,0x69,0x20,0x67,0x6f,0x6c,0x20,0x6f,0x74,0x20,0x65,0x6c,0x62,0x61,0x20,0x65,0x62,0x20,0x74,0x27,0x6e,0x6f,0x77,0x20,0x75,0x6f,0x79,0x20,0x2c,0x64,0x72,0x6f,0x77,0x73,0x73,0x61,0x70,0x20,0x72,0x75,0x6f,0x79,0x20,0x67,0x6e,0x69,0x74,0x61,0x64,0x70,0x75,0x20,0x72,0x65,0x74,0x66,0x41]

/*: "Cancel" :*/
fileprivate let k_makeTitle:String = "change data titleCancel"

/*: "Confirm" :*/
fileprivate let kCloseText:String = "string return aspect varConfi"
fileprivate let kViewMessage:[Character] = ["r","m"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GolfPlayerView.swift
//  AbroadTalking
//
//  Created by young on 2023/11/15.
//

//: import UIKit
import UIKit

//: typealias NewPwdNextBlock = (_ pwd: String, _ vcode: String?) -> Void
typealias NewPwdNextBlock = (_ pwd: String, _ vcode: String?) -> Void
//: typealias SendSmsBlock = () -> Void
typealias SendSmsBlock = () -> Void

//: class TalkingSetNewPwdView: UIView {
class GolfPlayerView: UIView {
    //: var nextBlock: NewPwdNextBlock?
    var nextBlock: NewPwdNextBlock? // 修改密码Block
    //: var sendSmsBlock: SendSmsBlock?
    var sendSmsBlock: SendSmsBlock? // 发送验证码Block
    //: private var isNewPwd = false
    private var isNewPwd = false // 否新设置密码（修改需要验证码）
    //: private var type = LoginType.PhoneLogin
    private var type = PalmClusterLiteral.PhoneLogin // 登录类型（手机号/邮箱）
    //: private let pwdLimitCount = 16
    private let pwdLimitCount = 16 // 密码长度限制
    //: private var reSendTimer: Timer?
    private var reSendTimer: Timer? // 重发定时器
    //: private var vcode: String?
    private var vcode: String? // 验证码
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: init(frame: CGRect, isNewPwd: Bool, loginType: LoginType) {
    init(frame: CGRect, isNewPwd: Bool, loginType: PalmClusterLiteral) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.isNewPwd = isNewPwd
        self.isNewPwd = isNewPwd
        //: self.type = loginType
        self.type = loginType
        //: setupSubviews()
        should()
        //: setupSubViewsConstraint()
        upwardly()
        //: bindInteraction()
        addTitle()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kValueKey.map{shareKitSubmit(tool: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: destroyTimer()
        canListAdd()
    }

    // MARK: - Lazy Load

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = .fontChange(type: .Semibold, fontSize: 17)
        lab.font = .fontChange(type: .Semibold, fontSize: 17)
        //: lab.textColor = .colorStatuteNameApp()
        lab.textColor = .colorStatuteNameApp()
        //: lab.text = "Set New Password".localized
        lab.text = (String(k_sameId.prefix(4)) + "New " + String(kIconStr)).localized
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var phoneLab: UILabel = {
    lazy var phoneLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = .fontChange(type: .Medium, fontSize: 17)
        lab.font = .fontChange(type: .Medium, fontSize: 17)
        //: lab.textColor = .colorStatuteNameApp()
        lab.textColor = .colorStatuteNameApp()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var codeInputView: TalkingCodeInputView = {
    private lazy var codeInputView: MenuEndReactiveCompatible = {
        //: let codeView = TalkingCodeInputView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: "8075F5")!, normalColor: UIColor(hex: "F4F4F4")!, margin: 12)
        let codeView = MenuEndReactiveCompatible(frame: CGRect(x: 0, y: 0, width: constFormalContent, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: (String(k_messageName.prefix(5)) + k_hiddenValue.replacingOccurrences(of: "smooth", with: "5")))!, normalColor: UIColor(hex: (String(k_addTitle)))!, margin: 12)
        //: codeView.isHidden = self.isNewPwd
        codeView.isHidden = self.isNewPwd
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeLanguageManager.shared.direction == .rightToLeft {
            //: codeView.layer.transform =  CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0)
            codeView.layer.transform = CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0) // 镜像
        }
        //: return codeView
        return codeView
        //: }()
    }()

    //: private lazy var pwdTitleLab: UILabel = {
    private lazy var pwdTitleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Password".localized
        lab.text = (String(kNorFormat)).localized
        //: lab.textColor = .colorStatuteNameApp()
        lab.textColor = .colorStatuteNameApp()
        //: lab.font = UIFont.fontChange(type: .Semibold, fontSize: 17)
        lab.font = UIFont.fontChange(type: .Semibold, fontSize: 17)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var pwdInputView: UITextField = {
    private lazy var pwdInputView: UITextField = {
        //: let textField = UITextField()
        let textField = UITextField()
        //: textField.backgroundColor = UIColor(hex: "F4F4F4")
        textField.backgroundColor = UIColor(hex: (String(k_addTitle)))
        //: textField.font = .fontChange(type: .Regular, fontSize: 17)
        textField.font = .fontChange(type: .Regular, fontSize: 17)
        //: textField.textColor = .colorStatuteNameApp()
        textField.textColor = .colorStatuteNameApp()
        //: textField.layer.cornerRadius = 25
        textField.layer.cornerRadius = 25
        //: textField.clipsToBounds = true
        textField.clipsToBounds = true
        //: textField.keyboardType = .asciiCapable
        textField.keyboardType = .asciiCapable
        //: textField.autocorrectionType = .no
        textField.autocorrectionType = .no
        //: textField.returnKeyType = .done
        textField.returnKeyType = .done
        //: textField.textAlignment = .center
        textField.textAlignment = .center
        //: textField.isSecureTextEntry = true
        textField.isSecureTextEntry = true
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeLanguageManager.shared.direction == .rightToLeft {
            //: textField.textAlignment = .right
            textField.textAlignment = .right
            //: let view = UIView.init(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
            let view = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
            //: textField.leftView = view
            textField.leftView = view
            //: textField.leftViewMode = .always
            textField.leftViewMode = .always
        }
        //: return textField
        return textField
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.font = UIFont.fontChange(type: .Regular, fontSize: 12)
        lab.font = UIFont.fontChange(type: .Regular, fontSize: 12)
        //: lab.textColor = .appValueDetailColor()
        lab.textColor = .childMenu()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Please set a password of at least 6 digits, consisting of numbers, English case groups".localized
        lab.text = String(bytes: kSinceValue.reversed(), encoding: .utf8)!.localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var nextBtn: UIButton = {
    private lazy var nextBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 18)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle((String(kLayerText.suffix(4))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.makeEqual(colors: UIColor.georgiaHomeBoy(), size: CGSize(width: constFormalContent - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var skipBtn: UIButton = {
    private lazy var skipBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let attributes = [.foregroundColor: UIColor.appThemeColor(), .font: UIFont.fontChange(type: .Medium, fontSize: 17), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor.increase(), .font: UIFont.fontChange(type: .Medium, fontSize: 17), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        //: let attributeString = NSAttributedString(string: "Skip".localized, attributes: attributes)
        let attributeString = NSAttributedString(string: (String(kPlayerData.suffix(4))).localized, attributes: attributes)
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: btn.isHidden = !self.isNewPwd
        btn.isHidden = !self.isNewPwd
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var reSendBtn: UIButton = {
    private lazy var reSendBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(.appThemeColor(), for: .normal)
        btn.setTitleColor(.increase(), for: .normal)
        //: btn.setTitle("Resent Code".localized, for: .normal)
        btn.setTitle((String(kCardId.prefix(6)) + " Code").localized, for: .normal)
        //: btn.titleLabel?.font = .fontChange(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .fontChange(type: .Medium, fontSize: 17)
        //: btn.isHidden = self.isNewPwd
        btn.isHidden = self.isNewPwd
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingSetNewPwdView {
extension GolfPlayerView {
    /// 更新按钮状态
    //: private func updateNextButtonStatus() {
    private func to() {
        //: var isEnabled = false
        var isEnabled = false
        //: if isNewPwd == true {
        if isNewPwd == true { // 新增
            //: isEnabled = pwdInputView.text?.count ?? 0 >= 6
            isEnabled = pwdInputView.text?.count ?? 0 >= 6
            //: } else {
        } else { // 修改
            //: isEnabled = vcode?.count == 6 && pwdInputView.text?.count ?? 0 >= 6
            isEnabled = vcode?.count == 6 && pwdInputView.text?.count ?? 0 >= 6
        }
        //: nextBtn.isEnabled = isEnabled
        nextBtn.isEnabled = isEnabled
    }

    /// 开启重发定时器
    //: func startReSendTimer() {
    func week() {
        //: codeInputView.func__resetCodeInputView()
        codeInputView.equidistant()
        //: codeInputView.startEdit()
        codeInputView.replacement()

        //: destroyTimer()
        canListAdd()
        //: var time = 300
        var time = 300
        //: reSendTimer = Timer.scheduledTimer(withTimeInterval: 1, block: { [weak self] timer in
        reSendTimer = Timer.scheduledTimer(withTimeInterval: 1, block: { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard time > 0 else {
            guard time > 0 else {
                //: self.destroyTimer()
                self.canListAdd()
                //: return
                return
            }
            //: time -= 1
            time -= 1
            //: self.updateReSendButtonStatus(countdown: time)
            self.futurism(countdown: time)
            //: }, repeats: true)
        }, repeats: true)
        //: reSendTimer?.fire()
        reSendTimer?.fire()
        //: RunLoop.current.add(reSendTimer!, forMode: .common)
        RunLoop.current.add(reSendTimer!, forMode: .common)
    }

    /// 销毁定时器
    //: private func destroyTimer() {
    private func canListAdd() {
        //: if reSendTimer != nil {
        if reSendTimer != nil {
            //: reSendTimer?.invalidate()
            reSendTimer?.invalidate()
            //: reSendTimer = nil
            reSendTimer = nil
        }
    }

    /// 刷新重发按钮
    /// - Parameter countdown: 倒计时
    //: private func updateReSendButtonStatus(countdown: Int) {
    private func futurism(countdown: Int) {
        //: reSendBtn.isEnabled = countdown <= 0
        reSendBtn.isEnabled = countdown <= 0
        //: let btnStr = "Resent Code".localized
        let btnStr = (String(kCardId.prefix(6)) + " Code").localized
        //: var attributes = [.foregroundColor: UIColor(hex: "8C7AFF")!, .font: UIFont.fontChange(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
        var attributes = [.foregroundColor: UIColor(hex: (String(k_taskFormat)))!, .font: UIFont.fontChange(type: .Medium, fontSize: 17)] as [NSAttributedString.Key: Any]
        //: var newStr = btnStr
        var newStr = btnStr
        //: if countdown > 0 {
        if countdown > 0 {
            //: newStr = newStr.appending(" (\(countdown)s)")
            newStr = newStr.appending(" (\(countdown)s)")
            //: } else {
        } else {
            //: attributes[.underlineStyle] = 1
            attributes[.underlineStyle] = 1
        }

        //: let attributeStr = NSMutableAttributedString(string: newStr, attributes: attributes)
        let attributeStr = NSMutableAttributedString(string: newStr, attributes: attributes)
        //: if countdown > 0 {
        if countdown > 0 {
            //: let theRange = NSString(string: btnStr).range(of: btnStr)
            let theRange = NSString(string: btnStr).range(of: btnStr)
            //: attributeStr.addAttribute(.foregroundColor, value: UIColor.colorStatuteNameApp(), range: theRange)
            attributeStr.addAttribute(.foregroundColor, value: UIColor.colorStatuteNameApp(), range: theRange)
        }
        //: reSendBtn.setAttributedTitle(attributeStr, for: .normal)
        reSendBtn.setAttributedTitle(attributeStr, for: .normal)
    }
}

// MARK: - Layout

//: extension TalkingSetNewPwdView {
extension GolfPlayerView {
    /// 添加视图
    //: private func setupSubviews() {
    private func should() {
        //: self.backgroundColor = .white
        self.backgroundColor = .white
        //: addSubview(titleLab)
        addSubview(titleLab)
        //: addSubview(phoneLab)
        addSubview(phoneLab)
        //: if !isNewPwd {
        if !isNewPwd {
            //: addSubview(codeInputView)
            addSubview(codeInputView)
        }
        //: addSubview(pwdTitleLab)
        addSubview(pwdTitleLab)
        //: addSubview(pwdInputView)
        addSubview(pwdInputView)
        //: addSubview(desLab)
        addSubview(desLab)
        //: addSubview(nextBtn)
        addSubview(nextBtn)
        //: addSubview(skipBtn)
        addSubview(skipBtn)
        //: addSubview(reSendBtn)
        addSubview(reSendBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func upwardly() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(34)
            make.top.equalToSuperview().offset(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }

        //: phoneLab.snp.makeConstraints { make in
        phoneLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(36)
            make.top.equalTo(titleLab.snp.bottom).offset(36)
            //: make.centerX.width.equalToSuperview()
            make.centerX.width.equalToSuperview()
        }

        //: if !isNewPwd {
        if !isNewPwd {
            //: codeInputView.snp.makeConstraints { make in
            codeInputView.snp.makeConstraints { make in
                //: make.leading.trailing.equalToSuperview()
                make.leading.trailing.equalToSuperview()
                //: make.height.equalTo(70)
                make.height.equalTo(70)
                //: make.top.equalTo(phoneLab.snp.bottom).offset(14)
                make.top.equalTo(phoneLab.snp.bottom).offset(14)
            }
        }

        //: pwdTitleLab.snp.makeConstraints { make in
        pwdTitleLab.snp.makeConstraints { make in
            //: let topOffset = self.isNewPwd ? 35:105
            let topOffset = self.isNewPwd ? 35 : 105
            //: make.top.equalTo(phoneLab.snp.bottom).offset(topOffset)
            make.top.equalTo(phoneLab.snp.bottom).offset(topOffset)
            //: make.leading.equalTo(titleLab)
            make.leading.equalTo(titleLab)
        }
        //: pwdInputView.snp.makeConstraints { make in
        pwdInputView.snp.makeConstraints { make in
            //: make.top.equalTo(pwdTitleLab.snp.bottom).offset(20)
            make.top.equalTo(pwdTitleLab.snp.bottom).offset(20)
            //: make.leading.equalTo(titleLab)
            make.leading.equalTo(titleLab)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }

        //: desLab.preferredMaxLayoutWidth = ScreenWidth-60
        desLab.preferredMaxLayoutWidth = constFormalContent - 60
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(pwdInputView.snp.bottom).offset(20)
            make.top.equalTo(pwdInputView.snp.bottom).offset(20)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(constFormalContent - 60)
        }

        //: nextBtn.snp.makeConstraints { make in
        nextBtn.snp.makeConstraints { make in
            //: make.top.equalTo(desLab.snp.bottom).offset(30)
            make.top.equalTo(desLab.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(constFormalContent - 60)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }

        //: skipBtn.snp.makeConstraints { make in
        skipBtn.snp.makeConstraints { make in
            //: make.top.equalTo(nextBtn.snp.bottom)
            make.top.equalTo(nextBtn.snp.bottom)
            //: make.height.width.equalTo(57)
            make.height.width.equalTo(57)
            //: make.width.equalTo(80)
            make.width.equalTo(80)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: reSendBtn.snp.makeConstraints { make in
        reSendBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(constFormalContent - 60)
            //: make.height.equalTo(36)
            make.height.equalTo(36)
            //: make.top.equalTo(nextBtn.snp.bottom).offset(10)
            make.top.equalTo(nextBtn.snp.bottom).offset(10)
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func addTitle() {
        //: pwdInputView.rx.text.orEmpty.asObservable()
        pwdInputView.rx.text.orEmpty.asObservable()
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.pwdInputView.text = String($0.filter { $0.isLetter || $0.isNumber }.prefix(self.pwdLimitCount))
                self.pwdInputView.text = String($0.filter { $0.isLetter || $0.isNumber }.prefix(self.pwdLimitCount))
                //: self.updateNextButtonStatus()
                self.to()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: nextBtn.rx.tap
        nextBtn.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.endEditing(true)
                self.endEditing(true)
                //: guard self.isNewPwd == false else {
                guard self.isNewPwd == false else {
                    //: self.nextBlock?(self.pwdInputView.text ?? "", self.vcode)
                    self.nextBlock?(self.pwdInputView.text ?? "", self.vcode)
                    //: return
                    return
                }

                // 二次确认弹窗
                //: let pwdStr = "Your Password: %@".localizedArguments(self.pwdInputView.text ?? "")
                let pwdStr = (String(kLevelMsg) + kTextDataHeightStr.capitalized).edgeDelay(self.pwdInputView.text ?? "")
                //: let contentStr = "After updating your password, you won't be able to log in with your old password, are you sure you want to update your password?\n%@".localizedArguments(pwdStr)
                let contentStr = String(bytes: k_labelKey.reversed(), encoding: .utf8)!.edgeDelay(pwdStr)
                //: let attributeStr = NSMutableAttributedString(string: contentStr)
                let attributeStr = NSMutableAttributedString(string: contentStr)
                //: let range = NSString(string: contentStr).range(of: pwdStr)
                let range = NSString(string: contentStr).range(of: pwdStr)
                //: attributeStr.addAttribute(.foregroundColor, value: UIColor.appThemeColor(), range: range)
                attributeStr.addAttribute(.foregroundColor, value: UIColor.increase(), range: range)
                //: let config = ShowAlertConfig()
                let config = VideoAlertConfig()
                //: config.textFont = UIFont.fontChange(type: .Regular, fontSize: 16)
                config.textFont = UIFont.fontChange(type: .Regular, fontSize: 16)
                //: config.textColor = .colorStatuteNameApp()
                config.textColor = .colorStatuteNameApp()
                //: config.alignment = .left
                config.alignment = .left
                //: TalkingAlertShow.customAlert(attributedMessage: attributeStr,
                FrameHiddenReactiveCompatible.systemToConfig(attributedMessage: attributeStr,
                                                //: leftBtnTitle: "Cancel".localized,
                                                leftBtnTitle: (String(k_makeTitle.suffix(6))).localized,
                                                //: rightBtnTitle: "Confirm".localized, rightBlock: {
                                                rightBtnTitle: (String(kCloseText.suffix(5)) + String(kViewMessage)).localized, rightBlock: {
                                                    //: self.nextBlock?(self.pwdInputView.text ?? "", self.vcode)
                                                    self.nextBlock?(self.pwdInputView.text ?? "", self.vcode)
                                                    //: }, config: config)
                                                }, config: config)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: if isNewPwd == true {
        if isNewPwd == true {
            //: pwdInputView.becomeFirstResponder()
            pwdInputView.becomeFirstResponder()
            //: skipBtn.rx.tap
            skipBtn.rx.tap
                //: .subscribe(onNext: { [weak self] in
                .subscribe(onNext: { [weak self] in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: self.endEditing(true)
                    self.endEditing(true)
                    // 获取用户信息
                    //: TalkingLoginRequestTool.req_LoginUserInfoData(self.type)
                    IngatheringPullReactiveCompatible.more(self.type)
                    //: })
                })
                //: .disposed(by: disposeBag)
                .disposed(by: disposeBag)

            //: } else {
        } else {
            //: codeInputView.codeBlock = { [weak self] (codeStr: String) in
            codeInputView.codeBlock = { [weak self] (codeStr: String) in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.vcode = codeStr
                self.vcode = codeStr
                //: self.updateNextButtonStatus()
                self.to()
            }

            //: startReSendTimer()
            week()
            //: reSendBtn.rx.tap
            reSendBtn.rx.tap
                //: .subscribe(onNext: { [weak self] in
                .subscribe(onNext: { [weak self] in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: self.endEditing(true)
                    self.endEditing(true)
                    //: self.sendSmsBlock?()
                    self.sendSmsBlock?()
                    //: })
                })
                //: .disposed(by: disposeBag)
                .disposed(by: disposeBag)
        }
    }
}
