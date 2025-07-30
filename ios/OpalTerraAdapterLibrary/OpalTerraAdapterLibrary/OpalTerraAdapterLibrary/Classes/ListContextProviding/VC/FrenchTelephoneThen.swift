
//: Declare String Begin

/*: "btn_back_white" :*/
fileprivate let k_rangeContent:[Character] = ["b","t","n","_","b","a","c","k","_","w","h","i"]
fileprivate let kSeatData:[Character] = ["t","e"]

/*: (+ :*/
fileprivate let kPlayerLayerPath:[Character] = ["(","+"]

/*: )" :*/
fileprivate let k_succeedName:String = "photo"

/*: "area_icon_ :*/
fileprivate let kCurrentSourceViewName:String = "time itemarea_i"

/*: @2x" :*/
fileprivate let kByTitle:[Character] = ["@","2","x"]

/*: "get img error" :*/
fileprivate let kFatalProgressFormat:[Character] = ["g","e","t"," ","i","m","g"]
fileprivate let k_trackTitle:String = " errortop super"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FrenchTelephoneThen.swift
//  OpalTerraAdapterLibrary
//
//  Created by Charlotte on 2024/7/31.
//

//: import UIKit
import UIKit

//: class TalkingBindPhoneVC: TalkingBaseViewController {
class FrenchTelephoneThen: StartThen {
    //: private var areaModel = TalkingLocationTool.share.getDefaltCountry()
    private var areaModel = EndLocationTool.share.mortification()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.setupSubviews()
        self.pastStartName()
        //: self.setupSubViewsConstraint()
        self.use()
        //: self.bindInteraction()
        self.giveAndTakeAttach()
        //: self.loginView.setPhoneView()
        self.loginView.betweenMake()
    }

    //: lazy var loginView: TalkingLoginView = {
    lazy var loginView: ResumeReactiveCompatible = {
        //: let loginView = TalkingLoginView.init(type: .LoginPhone)
        let loginView = ResumeReactiveCompatible(type: .LoginPhone)
        //: return loginView
        return loginView
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton.init(frame: CGRect(x: 6, y: StatusBarHeight, width: 44, height: 44))
        let btn = UIButton(frame: CGRect(x: 6, y: main_netValue, width: 44, height: 44))
        //: btn.setImage(UIImage.submitGift(name: "btn_back_white"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(k_rangeContent) + String(kSeatData))), for: .normal)
        //: btn.addTarget(self, action: #selector(backBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(notMale), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingBindPhoneVC {
extension FrenchTelephoneThen {
    //: @objc func backBtnClick() {
    @objc func notMale() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    //: func func__pushToAreaCodeVC() {
    func deadlineCancel() {
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
            self.sex()
        }
    }

    //: func func__updateAreaView() {
    func sex() {
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
            imageName = (String(kCurrentSourceViewName.suffix(6)) + "con_") + "\(imageName)@2x"
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
                printLog(message: (String(kFatalProgressFormat) + String(k_trackTitle.prefix(6))))
            }
            //: } else {
        } else {
            //: self.loginView.areaImageView.setUrlImage(urlStr: areaModel.url)
            self.loginView.areaImageView.setUrlImage(urlStr: areaModel.url)
        }
    }

    /// 获取验证码跳转
    //: func func__pushCodeView(phone: String) {
    func equal(phone: String) {
        //: TalkingLoginRequestTool.req_bindPhoneGetCode(phoneStr: phone, areaStr: areaModel.areaCode, completion: { succeed, result, errorModel in
        IngatheringPullReactiveCompatible.textDropCompletion(phoneStr: phone, areaStr: areaModel.areaCode, completion: { succeed, _, _ in
            //: EndProgressHUD.popEnable()
            EndProgressHUD.popEnable()
            //: if succeed {
            if succeed {
                //: let vc = TalkingLoginBindInputCodeVC()
                let vc = PerformanceVc()
                //: vc.areaCodeNum = self.areaModel.areaCode
                vc.areaCodeNum = self.areaModel.areaCode
                //: vc.phoneOrEmailStr = phone
                vc.phoneOrEmailStr = phone
                //: vc.viewType = .BindPhone
                vc.viewType = .BindPhone
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
            }
            //: })
        })
    }
}

// MARK: - Layout

//: extension TalkingBindPhoneVC {
extension FrenchTelephoneThen {
    // 添加视图
    //: private func setupSubviews() {
    private func pastStartName() {
        //: view.addSubview(backBtn)
        view.addSubview(backBtn)
        //: view.addSubview(loginView)
        view.addSubview(loginView)
        //: func__updateAreaView()
        sex()
        //: view.bringSubviewToFront(backBtn)
        view.bringSubviewToFront(backBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func use() {
        //: loginView.snp.makeConstraints { make in
        loginView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func giveAndTakeAttach() {
        //: loginView.commitBlock = { [weak self] (_ phone: String, _ pwd: String?) -> Void in
        loginView.commitBlock = { [weak self] (_ phone: String, _: String?) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__pushCodeView(phone:phone)
            self.equal(phone: phone)
        }

        //: loginView.areaCodeBlock = { [weak self] in
        loginView.areaCodeBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__pushToAreaCodeVC()
            self.deadlineCancel()
        }
    }
}
