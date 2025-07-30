
//: Declare String Begin

/*: "AboutUs" :*/
fileprivate let k_suiteRequestData:String = "AboutUsvoice view guide var"

/*: "sl_about" :*/
fileprivate let k_communicationValue:[Character] = ["s","l","_","a","b","o","u"]
fileprivate let kColorId:String = "layer"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  JoinViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/19.
//

//: import UIKit
import UIKit

//: class TalkingAboutUsVC: TalkingBaseViewController {
class JoinViewController: StartThen {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: self.title = "AboutUs".localized
        self.title = (String(k_suiteRequestData.prefix(7))).localized
        //: designView()
        operation()
    }

    // MARK: - Lazy load

    //: lazy var iconBImag: UIImageView = {
    lazy var iconBImag: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.submitGift(name: "sl_about")
        imag.image = UIImage.submitGift(name: (String(k_communicationValue) + kColorId.replacingOccurrences(of: "layer", with: "t")))
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var titleBLB: UILabel = {
    lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.fontChange(type: .Regular, fontSize: 14)
        lb.font = UIFont.fontChange(type: .Regular, fontSize: 14)
        //: lb.textColor = UIColor.RGBA(157, 157, 157, 1)
        lb.textColor = UIColor.behindVoice(157, 157, 157, 1)
        //: lb.text = "V"+AppVersion
        lb.text = "V" + userFileContent
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - UI

//: extension TalkingAboutUsVC {
extension JoinViewController {
    //: private func designView() {
    private func operation() {
        //: self.view.addSubview(iconBImag)
        self.view.addSubview(iconBImag)
        //: self.view.addSubview(titleBLB)
        self.view.addSubview(titleBLB)

        //: iconBImag.snp.makeConstraints { make in
        iconBImag.snp.makeConstraints { make in
            //: make.top.equalTo(self.view.snp.top).offset(96)
            make.top.equalTo(self.view.snp.top).offset(96)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
        }
        //: titleBLB.snp.makeConstraints { make in
        titleBLB.snp.makeConstraints { make in
            //: make.top.equalTo(iconBImag.snp.bottom).offset(16)
            make.top.equalTo(iconBImag.snp.bottom).offset(16)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
        }
    }
}
