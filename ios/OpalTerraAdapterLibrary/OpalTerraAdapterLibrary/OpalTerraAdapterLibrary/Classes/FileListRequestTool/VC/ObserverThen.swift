
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_succeedStr:[UInt8] = [0x4,0x3,0x4,0x19,0x45,0xe,0x2,0x9,0x8,0x1f,0x57,0x44,0x4d,0x5,0xc,0x1e,0x4d,0x3,0x2,0x19,0x4d,0xf,0x8,0x8,0x3,0x4d,0x4,0x0,0x1d,0x1,0x8,0x0,0x8,0x3,0x19,0x8,0x9]

private func bankManager(birthday num: UInt8) -> UInt8 {
    return num ^ 109
}

/*: "nav_back_black_nor" :*/
fileprivate let k_exitStr:String = "model model change case succeednav_ba"
fileprivate let k_errorId:[Character] = ["k","_","n","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ObserverThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFaceVerificationVC: TalkingBaseViewController {
class ObserverThen: StartThen {
    //: var toastStr: String = ""
    var toastStr: String = ""

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
        fatalError(String(bytes: k_succeedStr.map{bankManager(birthday: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.createUI()
        self.modeInfo()
        //: self.createUIConstraint()
        self.constraintTo()
        //: if toastStr.isEmptyString == false {
        if toastStr.isEmptyString == false {
            //: ProgressHUD.toast(toastStr)
            EndProgressHUD.terraceToast(toastStr)
        }
    }

    // MARK: - Lazy load

    //: lazy var mainView: TalkingFaceVerificationView = {
    lazy var mainView: CancelStraddleFaceThen = {
        //: let view = TalkingFaceVerificationView()
        let view = CancelStraddleFaceThen()
        //: return view
        return view
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.submitGift(name: "nav_back_black_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(k_exitStr.suffix(6)) + "ck_blac" + String(k_errorId))), for: .normal)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFaceVerificationVC {
extension ObserverThen {
    //: @objc func backBtnClicked() {
    @objc func listTarget() {
        //: self.naviPopback()
        self.dataText()
    }
}

// MARK: - UI

//: extension TalkingFaceVerificationVC {
extension ObserverThen {
    //: func createUI() {
    func modeInfo() {
        //: view.addSubview(mainView)
        view.addSubview(mainView)
        //: view.addSubview(backBtn)
        view.addSubview(backBtn)
        //: backBtn.addTarget(self, action: #selector(backBtnClicked), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(listTarget), for: .touchUpInside)
        //: mainView.btnClickBlock = { () -> Void in
        mainView.btnClickBlock = { () in
            //: let vc = TalkingVerificationExampleVC()
            let vc = SingleDisplayViewController()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: return
        }
    }

    //: func createUIConstraint() {
    func constraintTo() {
        //: mainView.snp.makeConstraints { make in
        mainView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalTo(0)
            make.leading.trailing.top.bottom.equalTo(0)
        }
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.top.equalTo(actualHeight(h: 12)+StatusBarHeight)
            make.top.equalTo(actualHeight(h: 12) + main_netValue)
            //: make.size.equalTo(CGSize(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }
    }
}
