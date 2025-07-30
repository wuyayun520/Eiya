
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kViewText:[UInt8] = [0x6f,0x68,0x6f,0x72,0x2e,0x65,0x69,0x62,0x63,0x74,0x3c,0x2f,0x26,0x6e,0x67,0x75,0x26,0x68,0x69,0x72,0x26,0x64,0x63,0x63,0x68,0x26,0x6f,0x6b,0x76,0x6a,0x63,0x6b,0x63,0x68,0x72,0x63,0x62]

private func inEqual(table num: UInt8) -> UInt8 {
    return num ^ 6
}

/*: "icon_live_vipsubscribe_back" :*/
fileprivate let kDirectValue:String = "icellon"
fileprivate let k_needMsg:String = "cell to ife_vipsu"
fileprivate let k_containPath:[Character] = ["b","s","c","r","i","b","e","_","b","a","c","k"]

/*: "icon_live_vipsubscribe_topback" :*/
fileprivate let kFrameUrl:[Character] = ["i","c","o","n","_","l","i","v","e","_","v"]
fileprivate let k_menuMessage:String = "ippopubpop"
fileprivate let kInputLibraryFrameUrl:String = "tappback"

/*: "Open VIP\nto give Exclusive gifts" :*/
fileprivate let kNameValue:[UInt8] = [0x9e,0xa1,0xb4,0xbf,0xf1,0x87,0x98,0x81,0xdb,0xa5,0xbe,0xf1,0xb6,0xb8,0xa7,0xb4,0xf1,0x94,0xa9,0xb2,0xbd,0xa4,0xa2,0xb8,0xa7,0xb4,0xf1,0xb6,0xb8,0xb7,0xa5,0xa2]

private func recordSlide(view num: UInt8) -> UInt8 {
    return num ^ 209
}

/*: "Giving an Exclusive gift will appeal to her" :*/
fileprivate let kMinToCheckedFormat:[UInt8] = [0x7,0x29,0x36,0x29,0x2e,0x27,0x60,0x21,0x2e,0x60,0x5,0x38,0x23,0x2c,0x35,0x33,0x29,0x36,0x25,0x60,0x27,0x29,0x26,0x34,0x60,0x37,0x29,0x2c,0x2c,0x60,0x21,0x30,0x30,0x25,0x21,0x2c,0x60,0x34,0x2f,0x60,0x28,0x25,0x32]

private func centerInsidePath(control num: UInt8) -> UInt8 {
    return num ^ 64
}

/*: "Subscribe" :*/
fileprivate let k_joinName:[Character] = ["S","u"]
fileprivate let k_femaleEqualFormat:String = "livecribe"

/*: "Cancel" :*/
fileprivate let kArcKey:[Character] = ["C","a","n","c","e","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ValuePopView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/31.
//

//: import UIKit
import UIKit

//: class TalkingLiveVipSubscribePopView: UIView {
class ValuePopView: UIView {
    //: var endBlock: (() -> Void)?
    var endBlock: (() -> Void)?

    //: var popView: TalkingPopView?
    var popView: DataPopView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.toRecord()
        //: self.setupSubViewsConstraint()
        self.birdSEyeView()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kViewText.map{inEqual(table: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // 懒加载初始化

    //: lazy var contentImg: UIImageView = {
    lazy var contentImg: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.image = UIImage.submitGift(name: "icon_live_vipsubscribe_back")
        img.image = UIImage.submitGift(name: (kDirectValue.replacingOccurrences(of: "cell", with: "c") + "_liv" + String(k_needMsg.suffix(7)) + String(k_containPath)))
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: return img
        return img
        //: }()
    }()

    //: lazy var topImg: UIImageView = {
    lazy var topImg: UIImageView = {
        //: let iamg = UIImageView.init()
        let iamg = UIImageView()
        //: iamg.image = UIImage.submitGift(name: "icon_live_vipsubscribe_topback")
        iamg.image = UIImage.submitGift(name: (String(kFrameUrl) + k_menuMessage.replacingOccurrences(of: "pop", with: "s") + "cribe_" + kInputLibraryFrameUrl.replacingOccurrences(of: "app", with: "op")))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: lazy var titleLabel: UILabel = {
    lazy var titleLabel: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.colorStatuteNameApp()
        lab.textColor = UIColor.colorStatuteNameApp()
        //: lab.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        lab.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Open VIP\nto give Exclusive gifts".localized
        lab.text = String(bytes: kNameValue.map{recordSlide(view: $0)}, encoding: .utf8)!.localized
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var messageView: UILabel = {
    lazy var messageView: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = UIFont.fontChange(type: .Regular, fontSize: 16)
        lb.font = UIFont.fontChange(type: .Regular, fontSize: 16)
        //: lb.text = "Giving an Exclusive gift will appeal to her".localized
        lb.text = String(bytes: kMinToCheckedFormat.map{centerInsidePath(control: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = UIColor.colorStatuteNameApp()
        lb.textColor = UIColor.colorStatuteNameApp()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.backgroundColor = .clear
        lb.backgroundColor = .clear
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Subscribe".localized, for: .normal)
        btn.setTitle((String(k_joinName) + k_femaleEqualFormat.replacingOccurrences(of: "live", with: "bs")).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 130, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.makeEqual(colors: UIColor.georgiaHomeBoy(), size: CGSize(width: 130, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(someWrapUp), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Cancel".localized, for: .normal)
        btn.setTitle((String(kArcKey)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        //: btn.setTitleColor(.appValueDetailColor(), for: .normal)
        btn.setTitleColor(.childMenu(), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.layer.borderColor = UIColor.appValueDetailColor().cgColor
        btn.layer.borderColor = UIColor.childMenu().cgColor
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(volition), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingLiveVipSubscribePopView {
extension ValuePopView {
    //: @objc func finishBtnClick() {
    @objc func someWrapUp() {
        //: dismiss()
        atTargetDismiss()
        //: AddReactiveCompatible.share.func__pushToSubscribePageWebVC()
        AddReactiveCompatible.share.belowWith()
    }

    //: @objc func closeBtnClick() {
    @objc func volition() {
        //: dismiss()
        atTargetDismiss()
    }

    //: func show() {
    func attributeStrokeHalfGroup() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = DataPopView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.smart(view: self)
        //: popView?.showInView(view: UserTextMacroDefine.getWindow())
        popView?.academePosition(view: UserTextMacroDefine.clearstoryNo())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func atTargetDismiss() {
        //: self.endBlock?()
        self.endBlock?()
        //: popView?.dismissView()
        popView?.upView()
        //: popView = nil
        popView = nil
    }
}

//: extension TalkingLiveVipSubscribePopView {
extension ValuePopView {
    // 添加视图
    //: private func setupSubviews() {
    private func toRecord() {
        //: self.addSubview(contentImg)
        self.addSubview(contentImg)
        //: contentImg.addSubview(topImg)
        contentImg.addSubview(topImg)
        //: contentImg.addSubview(closeBtn)
        contentImg.addSubview(closeBtn)
        //: contentImg.addSubview(titleLabel)
        contentImg.addSubview(titleLabel)
        //: contentImg.addSubview(messageView)
        contentImg.addSubview(messageView)
        //: contentImg.addSubview(finishBtn)
        contentImg.addSubview(finishBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func birdSEyeView() {
        //: let width = 295
        let width = 295
        //: let btnWidth = (width-12*2-11)/2
        let btnWidth = (width - 12 * 2 - 11) / 2
        //: contentImg.snp.makeConstraints { make in
        contentImg.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: width, height: 230))
            make.size.equalTo(CGSize(width: width, height: 230))
        }

        //: topImg.snp.makeConstraints { make in
        topImg.snp.makeConstraints { make in
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.top.equalTo(-47)
            make.top.equalTo(-47)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 139), height: actualWidth(w: 109)))
            make.size.equalTo(CGSize(width: actualWidth(w: 139), height: actualWidth(w: 109)))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-16)
            make.bottom.equalTo(-16)
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.size.equalTo(CGSize.init(width: btnWidth, height: 50))
            make.size.equalTo(CGSize(width: btnWidth, height: 50))
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.size.equalTo(closeBtn)
            make.bottom.size.equalTo(closeBtn)
            //: make.leading.equalTo(closeBtn.snp.trailing).offset(11)
            make.leading.equalTo(closeBtn.snp.trailing).offset(11)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
        }

        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-28)
            make.trailing.equalTo(-28)
            //: make.height.equalTo(53)
            make.height.equalTo(53)
        }

        //: messageView.snp.makeConstraints { make in
        messageView.snp.makeConstraints { make in
            //: make.top.equalTo(titleLabel.snp.bottom).offset(10)
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-19)
            make.trailing.equalTo(-19)
            //: make.bottom.equalTo(finishBtn.snp.top).offset(-18)
            make.bottom.equalTo(finishBtn.snp.top).offset(-18)
        }
    }
}
