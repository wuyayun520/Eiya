
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_indexId:[UInt8] = [0x4d,0x52,0x4d,0x58,0xc,0x47,0x53,0x48,0x49,0x56,0x1e,0xd,0x4,0x4c,0x45,0x57,0x4,0x52,0x53,0x58,0x4,0x46,0x49,0x49,0x52,0x4,0x4d,0x51,0x54,0x50,0x49,0x51,0x49,0x52,0x58,0x49,0x48]

fileprivate func viewReply(every num: UInt8) -> UInt8 {
    let value = Int(num) - 228
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_back_white" :*/
fileprivate let kAddId:[Character] = ["b","t","n","_","b","a"]
fileprivate let k_toPathTextUrl:[Character] = ["c","k","_","w","h","i","t","e"]

/*: (+ :*/
fileprivate let k_popText:[Character] = ["(","+"]

/*: )" :*/
fileprivate let k_viewMsg:[Character] = [")"]

/*: "area_icon_ :*/
fileprivate let k_thumbPath:[Character] = ["a","r","e","a","_","i","c","o"]
fileprivate let kRearPathTopData:[Character] = ["n","_"]

/*: @2x" :*/
fileprivate let k_errorValue:[Character] = ["@","2","x"]

/*: "get img error" :*/
fileprivate let kSessionUrl:[Character] = ["g","e","t"," ","i","m","g"," ","e","r","r","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ListRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingLoginViewController: TalkingBaseViewController {
class ListRecognizerDelegate: StartThen {
    //: private var areaModel = TalkingLocationTool.share.getDefaltCountry()
    private var areaModel = EndLocationTool.share.mortification()

    //: private var phoneOrEmailStr = ""
    private var phoneOrEmailStr = ""
    //: private var password: String?
    private var password: String?

    //: public var loginType: TalkingLoginVCType?
    public var loginType: PublishLoginType?

    //: init(type: TalkingLoginVCType) {
    init(type: PublishLoginType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: loginType = type
        loginType = type
    }

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_indexId.map{viewReply(every: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.halogen()
        //: self.setupSubViewsConstraint()
        self.layer()
        //: self.bindInteraction()
        self.cleaveWithinCounterplay()
    }

    //: deinit {
    deinit {}

    //: lazy var loginView: TalkingLoginView = {
    lazy var loginView: ResumeReactiveCompatible = {
        //: let loginView = TalkingLoginView.init(type: self.loginType!)
        let loginView = ResumeReactiveCompatible(type: self.loginType!)
        //: return loginView
        return loginView
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton.init(frame: CGRect(x: 6, y: StatusBarHeight, width: 44, height: 44))
        let btn = UIButton(frame: CGRect(x: 6, y: main_netValue, width: 44, height: 44))
        //: btn.setImage(UIImage.submitGift(name: "btn_back_white"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kAddId) + String(k_toPathTextUrl))), for: .normal)
        //: btn.addTarget(self, action: #selector(backBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(viewAwake), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginViewController {
extension ListRecognizerDelegate {
    //: @objc func backBtnClick() {
    @objc func viewAwake() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    //: func func__getPhoneCodeAction() {
    func stud() {
        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: if self.loginType == .LoginPhone {
        if self.loginType == .LoginPhone {
            //: TalkingLoginRequestTool.req_getPhoneCode(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, completion: { succeed, result, errorModel in
            IngatheringPullReactiveCompatible.phone(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, completion: { succeed, _, _ in
                //: EndProgressHUD.popEnable()
                EndProgressHUD.popEnable()
                //: if succeed {
                if succeed {
                    //: self.func__pushToPhoneCodeVC()
                    self.low()
                }
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
                    //: self.func__pushToPhoneCodeVC()
                    self.low()
                }
            }
        }
    }

    /// 密码登录
    //: private func func__passwordLogin() {
    private func effectLogin() {
        //: view.endEditing(true)
        view.endEditing(true)
        //: guard let pwd = password else { return }
        guard let pwd = password else { return }
        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: if self.loginType == .LoginPhone {
        if self.loginType == .LoginPhone {
            //: TalkingLoginRequestTool.req_passwordLogin(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, pwd: pwd) { succeed, result, errorModel in
            IngatheringPullReactiveCompatible.toMark(phoneStr: phoneOrEmailStr, areaStr: areaModel.areaCode, pwd: pwd) { _, _, _ in
                //: EndProgressHUD.popEnable()
                EndProgressHUD.popEnable()
            }
            //: }else{
        } else {
            //: TalkingLoginRequestTool.req_passwordEmailLogin(emailStr: phoneOrEmailStr, pwd: pwd) { succeed, result, errorModel in
            IngatheringPullReactiveCompatible.queryClick(emailStr: phoneOrEmailStr, pwd: pwd) { _, _, _ in
                //: EndProgressHUD.popEnable()
                EndProgressHUD.popEnable()
            }
        }
    }

    //: func func__pushToAreaCodeVC() {
    func schmoose() {
        //: let vc = TalkingAreaCodeChoiceVC()
        let vc = TennisPlayerDataSource()
        //: navigationController?.pushViewController(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
        //: vc.backCountryCode = { [weak self] areaModel in
        vc.backCountryCode = { [weak self] areaModel in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.areaModel = areaModel
            self.areaModel = areaModel
            //: self.func__updateAreaView()
            self.playView()
        }
    }

    //: func func__pushToPhoneCodeVC() {
    func low() {
        //: let vc = TalkingLoginCodeVC(type: self.loginType!)
        let vc = LoginCodeVC(type: self.loginType!)
        //: if self.loginType == .LoginPhone {
        if self.loginType == .LoginPhone {
            //: vc.areaCodeNum = areaModel.areaCode
            vc.areaCodeNum = areaModel.areaCode
        }
        //: vc.phoneOrEmailStr = phoneOrEmailStr
        vc.phoneOrEmailStr = phoneOrEmailStr
        //: navigationController?.pushViewController(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
    }

    //: func func__updateAreaView() {
    func playView() {
        //: self.loginView.areaCodeLabel.text = "\(areaModel.areaName)(+\(areaModel.areaCode))"
        self.loginView.areaCodeLabel.text = "\(areaModel.areaName)(+\(areaModel.areaCode))"
        //: if areaModel.url.isEmptyString {
        if areaModel.url.isEmptyString {
            //: var imageName = areaModel.areaName.replacingOccurrences(of: " ", with: "")
            var imageName = areaModel.areaName.replacingOccurrences(of: " ", with: "")
            //: imageName = imageName.replacingOccurrences(of: ",", with: "")
            imageName = imageName.replacingOccurrences(of: ",", with: "")
            //: imageName = imageName.replacingOccurrences(of: ")", with: "")
            imageName = imageName.replacingOccurrences(of: ")", with: "")
            //: imageName = imageName.replacingOccurrences(of: "(", with: "")
            imageName = imageName.replacingOccurrences(of: "(", with: "")
            //: imageName = "area_icon_\(imageName)@2x"
            imageName = (String(k_thumbPath) + String(kRearPathTopData)) + "\(imageName)@2x"
            //: do {
            do {
                //: let url = SVGAEffectTool.default.getZipAreaIconPath(iconName: imageName)
                let url = VideoEffectTool.default.designationLibrary(iconName: imageName)
                //: let data = try Data(contentsOf: url)
                let data = try Data(contentsOf: url)
                //: self.loginView.areaImageView.image = UIImage(data: data)
                self.loginView.areaImageView.image = UIImage(data: data)
                //: } catch _ as Error? {
            } catch _ as Error? {
                //: self.loginView.areaImageView.image = UIImage.placeImgSquare()
                self.loginView.areaImageView.image = UIImage.rectangle()
                //: printLog(message: "get img error")
                printLog(message: (String(kSessionUrl)))
            }
            //: } else {
        } else {
            //: self.loginView.areaImageView.setUrlImage(urlStr: areaModel.url)
            self.loginView.areaImageView.setUrlImage(urlStr: areaModel.url)
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginViewController {
extension ListRecognizerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func halogen() {
        //: view.addSubview(backBtn)
        view.addSubview(backBtn)
        //: view.addSubview(loginView)
        view.addSubview(loginView)
        //: func__updateAreaView()
        playView()
        //: view.bringSubviewToFront(backBtn)
        view.bringSubviewToFront(backBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func layer() {
        //: loginView.snp.makeConstraints { make in
        loginView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func cleaveWithinCounterplay() {
        //: loginView.commitBlock = { [weak self] (_ phone: String, _ pwd: String?) -> Void in
        loginView.commitBlock = { [weak self] (_ phone: String, _ pwd: String?) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.phoneOrEmailStr = phone
            self.phoneOrEmailStr = phone
            //: self.password = pwd
            self.password = pwd
            //: if pwd?.count ?? 0 > 0 {
            if pwd?.count ?? 0 > 0 { // pwd
                //: self.func__passwordLogin()
                self.effectLogin()
                //: } else {
            } else { // OTP
                //: self.func__getPhoneCodeAction()
                self.stud()
            }
        }

        //: loginView.areaCodeBlock = { [weak self] in
        loginView.areaCodeBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__pushToAreaCodeVC()
            self.schmoose()
        }

        //: addTapGestureRecognizer()
        viewRecognizer()
    }
}
