
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kValueText:[UInt8] = [0x93,0x94,0x93,0x8e,0xd2,0x99,0x95,0x9e,0x9f,0x88,0xc0,0xd3,0xda,0x92,0x9b,0x89,0xda,0x94,0x95,0x8e,0xda,0x98,0x9f,0x9f,0x94,0xda,0x93,0x97,0x8a,0x96,0x9f,0x97,0x9f,0x94,0x8e,0x9f,0x9e]

private func contentTarget(view num: UInt8) -> UInt8 {
    return num ^ 250
}

/*: "Allow push notifications" :*/
fileprivate let kEdgeMsg:[Character] = ["A","l","l","o","w"," ","p","u","s","h"," ","n","o","t","i","f","i","c","a","t","i","o","n","s"]

/*: "You don't miss out on chat messages when someone wants to chat with you." :*/
fileprivate let kPhotoUrl:[UInt8] = [0xd1,0xe7,0xfd,0xa8,0xec,0xe7,0xe6,0xaf,0xfc,0xa8,0xe5,0xe1,0xfb,0xfb,0xa8,0xe7,0xfd,0xfc,0xa8,0xe7,0xe6,0xa8,0xeb,0xe0,0xe9,0xfc,0xa8,0xe5,0xed,0xfb,0xfb,0xe9,0xef,0xed,0xfb,0xa8,0xff,0xe0,0xed,0xe6,0xa8,0xfb,0xe7,0xe5,0xed,0xe7,0xe6,0xed,0xa8,0xff,0xe9,0xe6,0xfc,0xfb,0xa8,0xfc,0xe7,0xa8,0xeb,0xe0,0xe9,0xfc,0xa8,0xff,0xe1,0xfc,0xe0,0xa8,0xf1,0xe7,0xfd,0xa6]

private func colorData(mode num: UInt8) -> UInt8 {
    return num ^ 136
}

/*: "Open" :*/
fileprivate let k_namePath:String = "Openview else add"

/*: "icon_chats_subtract" :*/
fileprivate let kValueChinName:[Character] = ["i","c","o","n","_"]
fileprivate let k_pathFormat:[Character] = ["c","h","a","t","s","_","s","u","b","t","r","a","c","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ObjectView.swift
//  OpalTerraAdapterLibrary
//
//  Created by Hemming on 2024/9/26.
//

//: import UIKit
import UIKit

//: class TalkingNoticeTipView: UIView {
class ObjectView: UIView {
    //: public var viewHeight: CGFloat = 0
    public var viewHeight: CGFloat = 0

    //: public var closeBtnBlock: (() -> Void)?
    public var closeBtnBlock: (() -> Void)?

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kValueText.map{contentTarget(view: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        untilClick()
        //: setupSubViewsConstraint()
        mottleConstraint()
    }

    //: private lazy var bgView: UIView = {
    private lazy var bgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor.white
        v.backgroundColor = UIColor.white
        //: v.layer.cornerRadius = 8
        v.layer.cornerRadius = 8
        //: v.layer.shadowColor = UIColor.black.withAlphaComponent(0.1).cgColor
        v.layer.shadowColor = UIColor.black.withAlphaComponent(0.1).cgColor
        //: v.layer.shadowOffset = CGSize(width: 0, height: 1)
        v.layer.shadowOffset = CGSize(width: 0, height: 1)
        //: v.layer.shadowOpacity = 1
        v.layer.shadowOpacity = 1
        //: v.layer.shadowRadius = 6
        v.layer.shadowRadius = 6
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Allow push notifications".localized
        lab.text = (String(kEdgeMsg)).localized
        //: lab.textColor = .colorStatuteNameApp()
        lab.textColor = .colorStatuteNameApp()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 15)
        lab.font = UIFont.tapShared(fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var titleValueLab: UILabel = {
    private lazy var titleValueLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "You don't miss out on chat messages when someone wants to chat with you.".localized
        lab.text = String(bytes: kPhotoUrl.map{colorData(mode: $0)}, encoding: .utf8)!.localized
        //: lab.textColor = .appValueColor()
        lab.textColor = .scaleValueTo()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 13)
        lab.font = UIFont.targetFor(fontSize: 13)
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var openBtn: UIButton = {
    lazy var openBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Open".localized, for: .normal)
        btn.setTitle((String(k_namePath.prefix(4))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 15)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setBackgroundColor(color: UIColor.appThemeColor(), forState: .normal)
        btn.languageUnitState(color: UIColor.increase(), forState: .normal)
        //: btn.layer.cornerRadius = 15
        btn.layer.cornerRadius = 15
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(openBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(outsideBind), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var closeBtn: UIButton = {
    lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.submitGift(name: "icon_chats_subtract"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kValueChinName) + String(k_pathFormat))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(duringLip), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: @objc func openBtnClick() {
    @objc func outsideBind() {
        //: let url = URL(string: UIApplication.openSettingsURLString)
        let url = URL(string: UIApplication.openSettingsURLString)
        //: if  UIApplication.shared.canOpenURL(url!) {
        if UIApplication.shared.canOpenURL(url!) {
            //: if #available(iOS 10, *) {
            if #available(iOS 10, *) {
                //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                //: } else {
            } else {
                //: UIApplication.shared.openURL(url!)
                UIApplication.shared.openURL(url!)
            }
        }
    }

    //: @objc func closeBtnClick() {
    @objc func duringLip() {
        //: self.closeBtnBlock?()
        self.closeBtnBlock?()
    }
}

//: extension TalkingNoticeTipView {
extension ObjectView {
    /// 创建视图
    //: private func setupSubviews() {
    private func untilClick() {
        //: backgroundColor = .clear
        backgroundColor = .clear
        //: addSubview(bgView)
        addSubview(bgView)
        //: addSubview(titleLab)
        addSubview(titleLab)
        //: addSubview(titleValueLab)
        addSubview(titleValueLab)
        //: addSubview(openBtn)
        addSubview(openBtn)
        //: addSubview(closeBtn)
        addSubview(closeBtn)

        //: viewHeight = titleValueLab.sizeThatFits(CGSize(width: ScreenWidth-110, height: CGFLOAT_MAX)).height + 66
        viewHeight = titleValueLab.sizeThatFits(CGSize(width: constFormalContent - 110, height: CGFLOAT_MAX)).height + 66
        //: self.frame = CGRect(x: 0, y: StatusBarHeight, width: ScreenWidth, height: viewHeight)
        self.frame = CGRect(x: 0, y: main_netValue, width: constFormalContent, height: viewHeight)
    }

    //: private func setupSubViewsConstraint() {
    private func mottleConstraint() {
        //: bgView.snp.makeConstraints { make in
        bgView.snp.makeConstraints { make in
            //: make.leading.top.trailing.bottom.equalToSuperview().inset(10)
            make.leading.top.trailing.bottom.equalToSuperview().inset(10)
        }
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(22)
            make.top.equalTo(22)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-90)
            make.trailing.equalTo(-90)
        }
        //: titleValueLab.snp.makeConstraints { make in
        titleValueLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(4)
            make.top.equalTo(titleLab.snp.bottom).offset(4)
            //: make.trailing.equalTo(-90)
            make.trailing.equalTo(-90)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
        }
        //: openBtn.snp.makeConstraints { make in
        openBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.width.equalTo(60)
            make.width.equalTo(60)
            //: make.height.equalTo(30)
            make.height.equalTo(30)
        }
        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.trailing.equalToSuperview()
            make.top.trailing.equalToSuperview()
            //: make.width.equalTo(26)
            make.width.equalTo(26)
            //: make.height.equalTo(26)
            make.height.equalTo(26)
        }
    }
}
