
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_myAllowUrl:[UInt8] = [0x97,0x9c,0x97,0xa2,0x56,0x91,0x9d,0x92,0x93,0xa0,0x68,0x57,0x4e,0x96,0x8f,0xa1,0x4e,0x9c,0x9d,0xa2,0x4e,0x90,0x93,0x93,0x9c,0x4e,0x97,0x9b,0x9e,0x9a,0x93,0x9b,0x93,0x9c,0xa2,0x93,0x92]

fileprivate func topStatute(model num: UInt8) -> UInt8 {
    let value = Int(num) - 46
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "nav_back_black_nor" :*/
fileprivate let kDoingUrl:[Character] = ["n","a","v","_","b","a","c","k","_","b"]
fileprivate let kMenuTimeKey:String = "fatal self scenelack_nor"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FilmThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class SocialRankTitleView: UIView {
class FilmThen: UIView {
    // MARK: Life

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.finishSubviews()
        //: self.setupSubViewsConstraint()
        self.timeBottom()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_myAllowUrl.map{topStatute(model: $0)}, encoding: .utf8)!)
    }

    // MARK: UI

    //: lazy var backButton = UIButton().then {
    lazy var backButton = UIButton().then {
        //: let img = UIImage.submitGift(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.submitGift(name: (String(kDoingUrl) + String(kMenuTimeKey.suffix(8)))).withRenderingMode(.alwaysTemplate)
        //: $0.setImage(img, for: .normal)
        $0.setImage(img, for: .normal)
        //: $0.tintColor = .white
        $0.tintColor = .white
        //: $0.addTarget(self, action: #selector(registerBackAction), for: .touchUpInside)
        $0.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }
}

// MARK: - Bind && Event

//: extension SocialRankTitleView {
extension FilmThen {
    //: @objc func registerBackAction() {
    @objc func buttonAction() {
        //: currentViewController()?.navigationController?.popViewController(animated: true)
        selectStart()?.navigationController?.popViewController(animated: true)
    }
}

// MARK: Layout

//: extension SocialRankTitleView {
extension FilmThen {
    //: private func setupSubviews() {
    private func finishSubviews() {
        //: addSubview(backButton)
        addSubview(backButton)
    }

    //: private func setupSubViewsConstraint() {
    private func timeBottom() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(StatusBarHeight)
            make.top.equalToSuperview().offset(main_netValue)
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 40, height: 44))
            make.size.equalTo(CGSize(width: 40, height: 44))
        }
    }
}
