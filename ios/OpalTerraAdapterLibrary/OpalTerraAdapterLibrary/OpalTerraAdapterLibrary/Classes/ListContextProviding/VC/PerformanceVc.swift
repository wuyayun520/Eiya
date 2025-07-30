
//: Declare String Begin

/*: "Email Address" :*/
fileprivate let k_areaName:[Character] = ["E","m","a","i","l"," ","A","d"]
fileprivate let k_viewPathKey:[Character] = ["d","r","e","s","s"]

/*: "Phone number" :*/
fileprivate let k_bindKey:[Character] = ["P","h","o","n"]
fileprivate let kLabPath:[Character] = ["e"," ","n","u","m","b","e","r"]

/*: "Enter the email code sent to" :*/
fileprivate let kListStr:String = "as managerEnter t"
fileprivate let kSelectionButtonText:String = "make namehe e"
fileprivate let k_logId:[Character] = ["c","o","d","e"," ","s","e","n","t"," ","t","o"]

/*: "Enter the phone code sent to" :*/
fileprivate let k_labelText:[Character] = ["E","n","t","e","r"," ","t","h","e"," ","p","h","o","n","e"," ","c","o","d","e"," ","s","e","n","t"," ","t"]
fileprivate let kValueData:String = "currency"

/*: "(+ :*/
fileprivate let k_tipKey:[Character] = ["(","+"]

/*: ) :*/
fileprivate let kHiddenPath:[Character] = [")"]

/*: "8075F5" :*/
fileprivate let k_shareMsg:String = "length player add gift8075F5"

/*: "F4F4F4" :*/
fileprivate let kPlayerId:String = "loseloselose"

/*: "Resend verification email" :*/
fileprivate let kTabTitle:String = "label make listResen"
fileprivate let k_smoothStr:String = "rshowi"
fileprivate let kCollectionName:[Character] = ["c","a","t","i","o","n"," ","e","m","a","i","l"]

/*: "Tips: If you can't receive the verification code, please check whether the message is in spam or not" :*/
fileprivate let kContentMessage:[UInt8] = [0xab,0x96,0x8f,0x8c,0xc5,0xdf,0xb6,0x99,0xdf,0x86,0x90,0x8a,0xdf,0x9c,0x9e,0x91,0xd8,0x8b,0xdf,0x8d,0x9a,0x9c,0x9a,0x96,0x89,0x9a,0xdf,0x8b,0x97,0x9a,0xdf,0x89,0x9a,0x8d,0x96,0x99,0x96,0x9c,0x9e,0x8b,0x96,0x90,0x91,0xdf,0x9c,0x90,0x9b,0x9a,0xd3,0xdf,0x8f,0x93,0x9a,0x9e,0x8c,0x9a,0xdf,0x9c,0x97,0x9a,0x9c,0x94,0xdf,0x88,0x97,0x9a,0x8b,0x97,0x9a,0x8d,0xdf,0x8b,0x97,0x9a,0xdf,0x92,0x9a,0x8c,0x8c,0x9e,0x98,0x9a,0xdf,0x96,0x8c,0xdf,0x96,0x91,0xdf,0x8c,0x8f,0x9e,0x92,0xdf,0x90,0x8d,0xdf,0x91,0x90,0x8b]

private func nettTime(log num: UInt8) -> UInt8 {
    return num ^ 255
}

/*: "Bind Email succeed" :*/
fileprivate let k_labValue:String = "Bind app var"
fileprivate let k_alwaysMessage:String = "text selfl succ"
fileprivate let kFantasyTitle:String = "EED"

/*: "Bind Mobile Phone succeed" :*/
fileprivate let k_moreEqualValue:[Character] = ["B","i","n","d"," ","M","o","b","i"]
fileprivate let k_giftName:[Character] = ["l","e"]
fileprivate let kRefreshName:String = "true make shared content self Pho"
fileprivate let kCellToLabPath:String = "cceeimage"

/*: "Resend verification email (%@s)" :*/
fileprivate let k_giftId:[UInt8] = [0x87,0x9a,0xa8,0x9a,0xa3,0x99,0x55,0xab,0x9a,0xa7,0x9e,0x9b,0x9e,0x98,0x96,0xa9,0x9e,0xa4,0xa3,0x55,0x9a,0xa2,0x96,0x9e,0xa1,0x55,0x5d,0x5a,0x75,0xa8,0x5e]

fileprivate func viewAlongside(intimate num: UInt8) -> UInt8 {
    let value = Int(num) - 53
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PerformanceVc.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: class TalkingLoginBindInputCodeVC: TalkingBaseViewController {
class PerformanceVc: StartThen {
    //: public var  phoneOrEmailStr: String = ""  // 邮箱或者Email
    public var phoneOrEmailStr: String = "" // 邮箱或者Email
    //: public var  areaCodeNum: String = ""
    public var areaCodeNum: String = ""
    //: public var  codeStr: String = ""
    public var codeStr: String = ""
    //: public var  viewType: TalkingBindVCType?
    public var viewType: AddBindType?
    //: var isBack: Bool!
    var isBack: Bool!
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var timerDispose: Disposable?
    private var timerDispose: Disposable?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.manager()
        //: self.setupSubViewsConstraint()
        self.position()
        //: self.bindInteraction()
        self.session()
        //: func_starCodeTime()
        giftDate()
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: func_endCodeTime()
        send()
    }

    //: deinit {
    deinit {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }

    // MARK: - Lazy Load

    //: lazy var tipsLabel: UILabel = {
    lazy var tipsLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .fontChange(type: .Medium, fontSize: 17)
        label.font = .fontChange(type: .Medium, fontSize: 17)
        //: label.textColor = .colorStatuteNameApp()
        label.textColor = .colorStatuteNameApp()
        //: if self.viewType == .BindEmail {
        if self.viewType == .BindEmail {
            //: label.text = "Email Address".localized
            label.text = (String(k_areaName) + String(k_viewPathKey)).localized
            //: } else {
        } else {
            //: label.text = "Phone number".localized
            label.text = (String(k_bindKey) + String(kLabPath)).localized
        }
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: return label
        return label
        //: }()
    }()

    //: lazy var titleLabel: UILabel = {
    lazy var titleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .fontChange(type: .Regular, fontSize: 16)
        label.font = .fontChange(type: .Regular, fontSize: 16)
        //: label.textColor = .colorStatuteNameApp()
        label.textColor = .colorStatuteNameApp()

        //: if self.viewType == .BindEmail {
        if self.viewType == .BindEmail {
            //: label.text = "Enter the email code sent to".localized
            label.text = (String(kListStr.suffix(7)) + String(kSelectionButtonText.suffix(4)) + "mail " + String(k_logId)).localized
            //: } else {
        } else {
            //: label.text = "Enter the phone code sent to".localized
            label.text = (String(k_labelText) + kValueData.replacingOccurrences(of: "currency", with: "o")).localized
        }
        //: return label
        return label
        //: }()
    }()

    //: lazy var inputLabel: UILabel = {
    lazy var inputLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .fontChange(type: .Medium, fontSize: 16)
        label.font = .fontChange(type: .Medium, fontSize: 16)
        //: label.textColor = .appThemeColor()
        label.textColor = .increase()
        //: label.text = (self.viewType == .BindEmail ? "\(phoneOrEmailStr)" : "(+\(areaCodeNum))\(phoneOrEmailStr)")
        label.text = (self.viewType == .BindEmail ? "\(phoneOrEmailStr)" : "(+\(areaCodeNum))\(phoneOrEmailStr)")
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: return label
        return label
        //: }()
    }()

    //: lazy var codeInputView: TalkingCodeInputView = {
    lazy var codeInputView: MenuEndReactiveCompatible = {
        //: let codeView = TalkingCodeInputView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: "8075F5")!, normalColor: UIColor(hex: "F4F4F4")!, margin: 12)
        let codeView = MenuEndReactiveCompatible(frame: CGRect(x: 0, y: 0, width: constFormalContent, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: (String(k_shareMsg.suffix(6))))!, normalColor: UIColor(hex: (kPlayerId.replacingOccurrences(of: "lose", with: "F4")))!, margin: 12)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeLanguageManager.shared.direction == .rightToLeft {
            //: codeView.layer.transform =  CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0)
            codeView.layer.transform = CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0) // 镜像
        }
        //: return codeView
        return codeView
        //: }()
    }()

    //: lazy var commitButton: UIButton = {
    lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = UIFont.fontChange(type: .Regular, fontSize: 18)
        //: btn.setTitle("Resend verification email".localized, for: .normal)
        btn.setTitle((String(kTabTitle.suffix(5)) + "d ve" + k_smoothStr.replacingOccurrences(of: "show", with: "if") + String(kCollectionName)).localized, for: .normal)
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

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .fontChange(type: .Medium, fontSize: 12)
        label.font = .fontChange(type: .Medium, fontSize: 12)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .childMenu()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: let str = "Tips: If you can't receive the verification code, please check whether the message is in spam or not".localized
        let str = String(bytes: kContentMessage.map{nettTime(log: $0)}, encoding: .utf8)!.localized
        //: let range = NSRange(location: 5, length: str.count-5)
        let range = NSRange(location: 5, length: str.count - 5)
        //: let attributedString = NSMutableAttributedString(string: str)
        let attributedString = NSMutableAttributedString(string: str)
        //: attributedString.addAttribute(.font, value: UIFont.fontChange(type: .Regular, fontSize: 12), range: range)
        attributedString.addAttribute(.font, value: UIFont.fontChange(type: .Regular, fontSize: 12), range: range)
        //: label.attributedText = attributedString
        label.attributedText = attributedString
        //: return label
        return label
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginBindInputCodeVC {
extension PerformanceVc {
    //: func func__bindEmailAction() {
    func actionEqualAsset() {
        //: self.view.endEditing(true)
        self.view.endEditing(true)
        //: ProgressHUD.show(superView: view)
        EndProgressHUD.nearOrientation(superView: view)
        //: if viewType == .BindEmail {
        if viewType == .BindEmail {
            //: TalkingLoginRequestTool.req_bindEmailCode(emailCode: codeStr) { succeed, result, errorModel in
            IngatheringPullReactiveCompatible.stick(emailCode: codeStr) { succeed, _, _ in
                //: EndProgressHUD.popEnable()
                EndProgressHUD.popEnable()
                //: if succeed {
                if succeed {
                    //: DistanceAppManager.share.loginUserMode.email = self.phoneOrEmailStr
                    DistanceAppManager.share.loginUserMode.email = self.phoneOrEmailStr
                    //: self.func__showStatusBarSuccessMsg(showMsg: "Bind Email succeed".localized)
                    self.rear(showMsg: (String(k_labValue.prefix(5)) + "Emai" + String(k_alwaysMessage.suffix(6)) + kFantasyTitle.lowercased()).localized)
                    //: let count: Int = (self.navigationController?.viewControllers.count)!
                    let count: Int = (self.navigationController?.viewControllers.count)!
                    //: if count >= 3 {
                    if count >= 3 {
                        //: let count = count - 3
                        let count = count - 3
                        //: let vc = self.navigationController?.viewControllers[count]
                        let vc = self.navigationController?.viewControllers[count]
                        //: self.navigationController?.popToViewController(vc!, animated: true)
                        self.navigationController?.popToViewController(vc!, animated: true)
                    }
                    //: } else {
                } else {
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.equidistant()
                    //: self.codeInputView.startEdit()
                    self.codeInputView.replacement()
                }
            }
            //: } else {
        } else {
            //: TalkingLoginRequestTool.req_MobileBind(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, vcode: self.codeStr) { [self]  succeed, result, errorModel in
            IngatheringPullReactiveCompatible.editWith(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, vcode: self.codeStr) { [self] succeed, _, _ in
                //: EndProgressHUD.popEnable()
                EndProgressHUD.popEnable()
                //: if !succeed {
                if !succeed {
                    //: self.codeInputView.startEdit()
                    self.codeInputView.replacement()
                    //: return
                    return
                }
                //: DistanceAppManager.share.loginUserMode.mobile = self.phoneOrEmailStr
                DistanceAppManager.share.loginUserMode.mobile = self.phoneOrEmailStr
                //: self.func__showStatusBarSuccessMsg(showMsg: "Bind Mobile Phone succeed".localized)
                self.rear(showMsg: (String(k_moreEqualValue) + String(k_giftName) + String(kRefreshName.suffix(4)) + "ne su" + kCellToLabPath.replacingOccurrences(of: "image", with: "d")).localized)
                //: for index in 0..<(self.navigationController?.viewControllers.count)! {
                for index in 0 ..< (self.navigationController?.viewControllers.count)! {
                    //: if self.navigationController?.viewControllers[index] .isKind(of: TalkingSettingsUniversalVC.self) == true {
                    if self.navigationController?.viewControllers[index].isKind(of: UniversalVc.self) == true {
                        //: let vc = (self.navigationController?.viewControllers[index] as? TalkingSettingsUniversalVC)!
                        let vc = (self.navigationController?.viewControllers[index] as? UniversalVc)!
                        //: self.navigationController?.popToViewController(vc, animated: true)
                        self.navigationController?.popToViewController(vc, animated: true)
                        //: return
                        return
                    }
                }
            }
        }
    }

    //: func func__resendEmailCodeAction() {
    func treetop() {
        //: self.view.endEditing(true)
        self.view.endEditing(true)
        //: ProgressHUD.show(superView: view)
        EndProgressHUD.nearOrientation(superView: view)
        //: if viewType == .BindEmail {
        if viewType == .BindEmail {
            //: TalkingLoginRequestTool.req_getBindEmailCode(emailStr: self.phoneOrEmailStr, isBind: true) { succeed, result, errorModel in
            IngatheringPullReactiveCompatible.pick(emailStr: self.phoneOrEmailStr, isBind: true) { succeed, _, _ in
                //: EndProgressHUD.popEnable()
                EndProgressHUD.popEnable()
                //: if succeed {
                if succeed {
                    //: self.func_starCodeTime()
                    self.giftDate()
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.equidistant()
                }
                //: self.codeInputView.startEdit()
                self.codeInputView.replacement()
            }
            //: } else {
        } else {
            //: TalkingLoginRequestTool.req_bindPhoneGetCode(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, result, errorModel in
            IngatheringPullReactiveCompatible.textDropCompletion(phoneStr: self.phoneOrEmailStr, areaStr: areaCodeNum, completion: { succeed, _, _ in
                //: EndProgressHUD.popEnable()
                EndProgressHUD.popEnable()
                //: if succeed {
                if succeed {
                    //: self.codeInputView.func__resetCodeInputView()
                    self.codeInputView.equidistant()
                    //: self.func_starCodeTime()
                    self.giftDate()
                }
                //: self.codeInputView.startEdit()
                self.codeInputView.replacement()
                //: })
            })
        }
    }

    //: func func_starCodeTime() {
    func giftDate() {
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
                //: self.commitButton.isEnabled = (timeCount <= 0)
                self.commitButton.isEnabled = (timeCount <= 0)
                //: if timeCount > 0 {
                if timeCount > 0 {
                    //: self.commitButton.setTitle("Resend verification email (%@s)".localizedArguments(timeCount), for: .normal)
                    self.commitButton.setTitle(String(bytes: k_giftId.map{viewAlongside(intimate: $0)}, encoding: .utf8)!.edgeDelay(timeCount), for: .normal)
                    //: } else {
                } else {
                    //: self.func_endCodeTime()
                    self.send()
                    //: self.commitButton.setTitle("Resend verification email".localized, for: .normal)
                    self.commitButton.setTitle((String(kTabTitle.suffix(5)) + "d ve" + k_smoothStr.replacingOccurrences(of: "show", with: "if") + String(kCollectionName)).localized, for: .normal)
                }
                //: })
            })
    }

    //: func func_endCodeTime() {
    func send() {
        //: timerDispose?.dispose()
        timerDispose?.dispose()
    }
}

// MARK: - Layout

//: extension TalkingLoginBindInputCodeVC {
extension PerformanceVc {
    // 添加视图
    //: private func setupSubviews() {
    private func manager() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(tipsLabel)
        view.addSubview(tipsLabel)
        //: view.addSubview(titleLabel)
        view.addSubview(titleLabel)
        //: view.addSubview(inputLabel)
        view.addSubview(inputLabel)
        //: view.addSubview(codeInputView)
        view.addSubview(codeInputView)
        //: view.addSubview(commitButton)
        view.addSubview(commitButton)
        //: view.addSubview(desLab)
        view.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func position() {
        //: tipsLabel.snp.makeConstraints { make in
        tipsLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.top.equalTo(34)
            make.top.equalTo(34)
        }
        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(tipsLabel.snp.bottom).offset(40)
            make.top.equalTo(tipsLabel.snp.bottom).offset(40)
        }
        //: inputLabel.snp.makeConstraints { make in
        inputLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(titleLabel.snp.bottom)
            make.top.equalTo(titleLabel.snp.bottom)
        }
        //: codeInputView.snp.makeConstraints { make in
        codeInputView.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(70)
            make.height.equalTo(70)
            //: make.top.equalTo(inputLabel.snp.bottom).offset(24)
            make.top.equalTo(inputLabel.snp.bottom).offset(24)
        }
        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(codeInputView.snp.bottom).offset(30)
            make.top.equalTo(codeInputView.snp.bottom).offset(30)
        }
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(commitButton.snp.bottom).offset(36)
            make.top.equalTo(commitButton.snp.bottom).offset(36)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func session() {
        //: commitButton.rx.controlEvent(.touchUpInside)
        commitButton.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__resendEmailCodeAction()
                self.treetop()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: codeInputView.codeBlock = { [weak self] (codeStr: String) -> Void in
        codeInputView.codeBlock = { [weak self] (codeStr: String) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if codeStr.count == 6 {
            if codeStr.count == 6 {
                //: self.codeStr = codeStr
                self.codeStr = codeStr
                //: self.func__bindEmailAction()
                self.actionEqualAsset()
            }
            //: return
        }
    }
}
