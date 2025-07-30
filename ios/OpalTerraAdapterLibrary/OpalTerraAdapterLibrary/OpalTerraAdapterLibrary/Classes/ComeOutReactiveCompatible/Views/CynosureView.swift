
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStatusMakePath:[UInt8] = [0xf,0x14,0xf,0x1a,0xce,0x9,0x15,0xa,0xb,0x18,0xe0,0xcf,0xc6,0xe,0x7,0x19,0xc6,0x14,0x15,0x1a,0xc6,0x8,0xb,0xb,0x14,0xc6,0xf,0x13,0x16,0x12,0xb,0x13,0xb,0x14,0x1a,0xb,0xa]

fileprivate func meanFrame(title num: UInt8) -> UInt8 {
    let value = Int(num) - 166
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "iv_Guidance" :*/
fileprivate let k_addPath:[Character] = ["i","v","_","G","u","i","d","a","n","c","e"]

/*: "Click to view" :*/
fileprivate let k_playMessage:String = "true model modeClick"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CynosureView.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/5/24.
//

//: import UIKit
import UIKit

//: class TalkingNewGuidancePopUpView: UIView {
class CynosureView: UIView {
    //: var popView: TalkingPopView?
    var popView: DataPopView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.upManager()
        //: self.setupSubViewsConstraint()
        self.account()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStatusMakePath.map{meanFrame(title: $0)}, encoding: .utf8)!)
    }

    //: private lazy var contentView: UIImageView = {
    private lazy var contentView: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.submitGift(name: "iv_Guidance")
        iamg.image = UIImage.submitGift(name: (String(k_addPath)))
        //: iamg.isUserInteractionEnabled = true
        iamg.isUserInteractionEnabled = true
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var clickToViewBtn: UIButton = {
    private lazy var clickToViewBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Click to view".localized, for: .normal)
        btn.setTitle((String(k_playMessage.suffix(5)) + " to view").localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 203, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.makeEqual(colors: UIColor.georgiaHomeBoy(), size: CGSize(width: 203, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(clickToViewButtonEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(sumroduce), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingNewGuidancePopUpView {
extension CynosureView {
    //: @objc func clickToViewButtonEvent() {
    @objc func sumroduce() {
        //: self.dismiss()
        self.illegitimacy()
        //: AddReactiveCompatible.share.func__pushToWebVC(webViewType: .TaskCenter)
        AddReactiveCompatible.share.overCapacity(webViewType: .TaskCenter)
    }

    //: func show() {
    func buttonShow() {
        //: popView = TalkingPopView(frame: UIScreen.main.bounds)
        popView = DataPopView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.smart(view: self)
        //: popView?.showInView(view: UserTextMacroDefine.getWindow())
        popView?.academePosition(view: UserTextMacroDefine.clearstoryNo())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func illegitimacy() {
        //: popView?.dismissView()
        popView?.upView()
        //: popView = nil
        popView = nil
    }

    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_ touches: Set<UITouch>, with _: UIEvent?) {
        //: if let touch = touches.first {
        if let touch = touches.first {
            //: let location = touch.location(in: self)
            let location = touch.location(in: self)
            //: if !contentView.frame.contains(location) {
            if !contentView.frame.contains(location) {
                //: dismiss()
                illegitimacy()
            }
        }
    }
}

//: extension TalkingNewGuidancePopUpView {
extension CynosureView {
    //: private func setupSubviews() {
    private func upManager() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(clickToViewBtn)
        contentView.addSubview(clickToViewBtn)
    }

    //: private func setupSubViewsConstraint() {
    private func account() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: actualWidth(w: 295), height: actualWidth(w: 325)))
            make.size.equalTo(CGSize(width: actualWidth(w: 295), height: actualWidth(w: 325)))
        }

        //: clickToViewBtn.snp.makeConstraints { make in
        clickToViewBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(contentView).offset(-18)
            make.bottom.equalTo(contentView).offset(-18)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(203)
            make.width.equalTo(203)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }
}
