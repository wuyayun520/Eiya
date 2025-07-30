
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kPathData:[UInt8] = [0x8a,0x8d,0x8a,0x97,0xcb,0x80,0x8c,0x87,0x86,0x91,0xd9,0xca,0xc3,0x8b,0x82,0x90,0xc3,0x8d,0x8c,0x97,0xc3,0x81,0x86,0x86,0x8d,0xc3,0x8a,0x8e,0x93,0x8f,0x86,0x8e,0x86,0x8d,0x97,0x86,0x87]

private func titleTheory(should num: UInt8) -> UInt8 {
    return num ^ 227
}

/*: "icon_kong_kong_default" :*/
fileprivate let k_addMsg:String = "from content frameicon_"
fileprivate let kChangeValue:String = "will contentkong_d"
fileprivate let k_formatContent:[Character] = ["e","f","a","u","l","t"]

/*: "You've got no list yet." :*/
fileprivate let kBotData:String = "You\'v"
fileprivate let k_modeMessage:String = "t no lreturn sex start type"
fileprivate let k_loadName:[Character] = ["i","s","t"," ","y","e","t","."]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WeltanschauungReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/9/12.
//

//: import UIKit
import UIKit

//: class SocialEmptyView: UIView {
class WeltanschauungReactiveCompatible: UIView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kPathData.map{titleTheory(should: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.setupSubviews()
        self.clearFollowApp()
        //: self.setupSubViewsConstraint()
        self.valueShared()
    }

    // MARK: - Lazy load

    //: lazy var imgV: UIImageView = {
    lazy var imgV: UIImageView = {
        //: let v = UIImageView(image: UIImage.submitGift(name: "icon_kong_kong_default"))
        let v = UIImageView(image: UIImage.submitGift(name: (String(k_addMsg.suffix(5)) + "kong_" + String(kChangeValue.suffix(6)) + String(k_formatContent))))
        //: return v
        return v
        //: }()
    }()

    //: lazy var desLab: UILabel = {
    lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appValueDetailColor()
        lab.textColor = UIColor.childMenu()
        //: lab.font = .fontChange(type: .Regular, fontSize: 16)
        lab.font = .fontChange(type: .Regular, fontSize: 16)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "You've got no list yet.".localized
        lab.text = (kBotData + "e go" + String(k_modeMessage.prefix(6)) + String(k_loadName)).localized
        //: return lab
        return lab
        //: }()
    }()
}

//: extension SocialEmptyView {
extension WeltanschauungReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func clearFollowApp() {
        //: self.addSubview(imgV)
        self.addSubview(imgV)
        //: self.addSubview(desLab)
        self.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func valueShared() {
        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalToSuperview().offset(NavigationBarHeight)
            make.top.equalToSuperview().offset(showBottomDailyValue)
        }
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(imgV.snp.bottom).offset(20)
            make.top.equalTo(imgV.snp.bottom).offset(20)
            //: make.leading.equalToSuperview().offset(30)
            make.leading.equalToSuperview().offset(30)
            //: make.trailing.equalToSuperview().offset(-30)
            make.trailing.equalToSuperview().offset(-30)
        }
    }
}
