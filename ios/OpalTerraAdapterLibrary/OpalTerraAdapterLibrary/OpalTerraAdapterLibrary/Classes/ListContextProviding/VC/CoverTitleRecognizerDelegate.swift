
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_photoText:[UInt8] = [0x2e,0x29,0x2e,0x33,0x6f,0x24,0x28,0x23,0x22,0x35,0x7d,0x6e,0x67,0x2f,0x26,0x34,0x67,0x29,0x28,0x33,0x67,0x25,0x22,0x22,0x29,0x67,0x2e,0x2a,0x37,0x2b,0x22,0x2a,0x22,0x29,0x33,0x22,0x23]

private func magnitudeerCell(to num: UInt8) -> UInt8 {
    return num ^ 71
}

/*: "apple 授权失败，请稍后再试" :*/
fileprivate let kCoverFormat:[Character] = ["a","p","p","l","e"," ","授","权","\u{5931}","败","，","请","稍"]
fileprivate let k_greetPath:String = "后再试"

/*: "google 授权失败，请稍后再试" :*/
fileprivate let kStyleId:String = "googbehind"
fileprivate let k_succeedPicIfName:String = "失败\u{ff0c}请"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CoverTitleRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingLoginMainViewController: TalkingBaseViewController {
class CoverTitleRecognizerDelegate: StartThen {
    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: hideNavi = true
        hideNavi = true
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_photoText.map{magnitudeerCell(to: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: navigationController?.isNavigationBarHidden = hideNavi
        navigationController?.isNavigationBarHidden = hideNavi
        //: tabBarController?.tabBar.isHidden = true
        tabBarController?.tabBar.isHidden = true
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.make()
        //: self.setupSubViewsConstraint()
        self.path()
        //: self.bindInteraction()
        self.finish()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var loginMainView: TalkingLoginMainView = {
    lazy var loginMainView: WillReactiveCompatible = {
        //: let loginView = TalkingLoginMainView.init()
        let loginView = WillReactiveCompatible()
        //: return loginView
        return loginView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginMainViewController {
extension CoverTitleRecognizerDelegate {
    //: func req_thirdLogin(_ type: LoginType) {
    func data(_ type: PalmClusterLiteral) {
        //: switch type {
        switch type {
        //: case .AppleLogin:
        case .AppleLogin:
            //: AppleLoginManager.shared.login { dict in
            ListContextProviding.shared.showMessage { dict in
                //: guard let dict = dict else {
                guard let dict = dict else {
                    //: printLog(message: "apple 授权失败，请稍后再试")
                    printLog(message: (String(kCoverFormat) + k_greetPath.capitalized))
                    //: return
                    return
                }
                //: ProgressHUD.show()
                EndProgressHUD.listHide()
                //: TalkingLoginRequestTool.req_thirdLogin(type: .AppleLogin, params: dict) { succeed, result, errorModel in
                IngatheringPullReactiveCompatible.inner(type: .AppleLogin, params: dict) { _, _, _ in
                    //: EndProgressHUD.popEnable()
                    EndProgressHUD.popEnable()
                }
            }
        //: case .GoogleLogin:
        case .GoogleLogin:
            //: GoogleLoginManager.shared.login(vc: self) { dict in
            CancelThen.shared.model(vc: self) { dict in
                //: guard let dict = dict else {
                guard let dict = dict else {
                    //: printLog(message: "google 授权失败，请稍后再试")
                    printLog(message: (kStyleId.replacingOccurrences(of: "behind", with: "l") + "e \u{6388}权" + k_succeedPicIfName + "稍后再试"))
                    //: return
                    return
                }
                //: ProgressHUD.show()
                EndProgressHUD.listHide()
                //: TalkingLoginRequestTool.req_thirdLogin(type: .GoogleLogin, params: dict) { succeed, result, errorModel in
                IngatheringPullReactiveCompatible.inner(type: .GoogleLogin, params: dict) { _, _, _ in
                    //: EndProgressHUD.popEnable()
                    EndProgressHUD.popEnable()
                }
            }
        //: case .PhoneLogin:
        case .PhoneLogin:
            //: let vc = TalkingLoginViewController.init(type: .LoginPhone)
            let vc = ListRecognizerDelegate(type: .LoginPhone)
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)

        //: case .EmailLogin:
        case .EmailLogin:
            //: let vc = TalkingLoginViewController.init(type: .LoginEmail)
            let vc = ListRecognizerDelegate(type: .LoginEmail)
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - Privete Event

//: extension TalkingLoginMainViewController {
extension CoverTitleRecognizerDelegate {
    //: func loginAction(type: LoginType) {
    func stall(type: PalmClusterLiteral) {
        //: LoginPrivacyPolicyView().showView {
        TelevisionPolicyView().viewMessageTo {
            //: self.req_thirdLogin(type)
            self.data(type)
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginMainViewController {
extension CoverTitleRecognizerDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func make() {
        //: view.addSubview(loginMainView)
        view.addSubview(loginMainView)
        //: loginMainView.btnBlock = {[weak self] (type: LoginType) in
        loginMainView.btnBlock = { [weak self] (type: PalmClusterLiteral) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.loginAction(type: type)
            self.stall(type: type)
            //: return
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func path() {
        //: loginMainView.snp.makeConstraints { make in
        loginMainView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func finish() {}
}
