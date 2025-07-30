
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_infoMessage:[UInt8] = [0x9,0xe,0x9,0x14,0x48,0x3,0xf,0x4,0x5,0x12,0x5a,0x49,0x40,0x8,0x1,0x13,0x40,0xe,0xf,0x14,0x40,0x2,0x5,0x5,0xe,0x40,0x9,0xd,0x10,0xc,0x5,0xd,0x5,0xe,0x14,0x5,0x4]

private func dataTab(add num: UInt8) -> UInt8 {
    return num ^ 96
}

/*: "nav_back_black_nor" :*/
fileprivate let kModeData:[Character] = ["n","a","v","_","b","a","c","k","_","b"]
fileprivate let k_frameContent:String = "lcurrentc"
fileprivate let k_distanceStr:String = "leading anyk_nor"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AddCustomBarView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/12.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class TPreviewNaviBarView: UIView {
class AddCustomBarView: UIView {
    //: var uid = ""
    var uid = ""
    //: var previewSaveBlock: (() -> Void)?
    var previewSaveBlock: (() -> Void)?
    //: var tapHeadPicBlock: (() -> Void)?
    var tapHeadPicBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.addAttribute()
        //: self.setupSubViewsConstraint()
        self.will()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_infoMessage.map{dataTab(add: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var backButton = UIButton().then {
    lazy var backButton = UIButton().then {
        //: let img = UIImage(named: "nav_back_black_nor")?.withRenderingMode(.alwaysTemplate)
        let img = UIImage(named: (String(kModeData) + k_frameContent.replacingOccurrences(of: "current", with: "a") + String(k_distanceStr.suffix(5))))?.withRenderingMode(.alwaysTemplate)
        //: $0.setImage(img, for: .normal)
        $0.setImage(img, for: .normal)
        //: $0.tintColor = .white
        $0.tintColor = .white
        //: $0.addTarget(self, action: #selector(registerBackAction), for: .touchUpInside)
        $0.addTarget(self, action: #selector(alias), for: .touchUpInside)
    }
}

// MARK: - Bind && Event

//: extension TPreviewNaviBarView {
extension AddCustomBarView {
    //: @objc func registerBackAction() {
    @objc func alias() {
        //: AddReactiveCompatible.share.func__getCurrentActivityVC()?.navigationController!.popViewController(animated: true)
        AddReactiveCompatible.share.pageBy()?.navigationController!.popViewController(animated: true)
    }

    //: @objc func registerSaveAction() {
    @objc func registerSaveAction() {
        // 相册权限
    }

    //: @objc func tapUserHeadPic() {
    @objc func telephoto() {}
}

// MARK: Layout

//: extension TPreviewNaviBarView {
extension AddCustomBarView {
    //: private func setupSubviews() {
    private func addAttribute() {
        //: addSubview(backButton)
        addSubview(backButton)
    }

    //: private func setupSubViewsConstraint() {
    private func will() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(main_netValue)
            //: make.size.equalTo(CGSize(width: 40, height: NavigationBarHeight))
            make.size.equalTo(CGSize(width: 40, height: showBottomDailyValue))
        }
    }
}
