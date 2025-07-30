// __DEBUG__
// __CLOSE_PRINT__
//
//  StreamViewController.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFinalVerificationVC: TalkingBaseViewController {
class StreamViewController: StartThen {

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.createUI()
        self.live()
        //: self.createUIConstraint()
        self.swaddlingClothes()
    }
    
    // MARK: - Lazy load
    //: lazy var mainView: TalkingFinalVerificationView = {
    lazy var mainView: TextReactiveCompatible = {
        //: let view = TalkingFinalVerificationView()
        let view = TextReactiveCompatible()
        //: return view
        return view
    //: }()
    }()
}

// MARK: - Event
//: extension TalkingFinalVerificationVC {
extension StreamViewController {
    //: override func naviPopback() {
    override func dataText() {
        /// 注册时真人认证
        //: for index in 0..<(self.navigationController?.viewControllers.count)! {
        for index in 0..<(self.navigationController?.viewControllers.count)! {
            //: if self.navigationController?.viewControllers[index] .isKind(of: TalkingLoginEditAuthAndVideoVC.self) == true {
            if self.navigationController?.viewControllers[index] .isKind(of: AtVideoVc.self) == true {
                //: let vc = (self.navigationController?.viewControllers[index] as? TalkingLoginEditAuthAndVideoVC)!
                let vc = (self.navigationController?.viewControllers[index] as? AtVideoVc)!
                //: self.navigationController?.popToViewController(vc, animated: true)
                self.navigationController?.popToViewController(vc, animated: true)
                //: return
                return
            }
        }
        
        //: self.navigationController?.popToRootViewController(animated: true)
        self.navigationController?.popToRootViewController(animated: true)
    }
}

// MARK: - UI
//: extension TalkingFinalVerificationVC {
extension StreamViewController {
    //: func createUI() {
    func live() {
        //: view.addSubview(mainView)
        view.addSubview(mainView)
    }
    
    //: func createUIConstraint() {
    func swaddlingClothes() {
        //: mainView.snp.makeConstraints { make in
        mainView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalTo(0)
            make.leading.trailing.top.bottom.equalTo(0)
        }
    }
}
