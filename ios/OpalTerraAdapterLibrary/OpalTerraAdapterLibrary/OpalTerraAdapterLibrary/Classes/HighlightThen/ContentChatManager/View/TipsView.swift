
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_marginName:[UInt8] = [0xfc,0x1,0xfc,0x7,0xbb,0xf6,0x2,0xf7,0xf8,0x5,0xcd,0xbc,0xb3,0xfb,0xf4,0x6,0xb3,0x1,0x2,0x7,0xb3,0xf5,0xf8,0xf8,0x1,0xb3,0xfc,0x0,0x3,0xff,0xf8,0x0,0xf8,0x1,0x7,0xf8,0xf7]

fileprivate func wellspringRaw(kit num: UInt8) -> UInt8 {
    let value = Int(num) - 147
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_free_call_bg_coundown" :*/
fileprivate let kShowUrl:String = "frameon"
fileprivate let k_backName:String = "call_path error style"
fileprivate let k_bagViewPath:String = "opindo"
fileprivate let k_mainPath:[Character] = ["w","n"]

/*: "icon_free_call_countdown" :*/
fileprivate let kGiftShowModelContent:String = "icuser"
fileprivate let k_tableValue:String = "then case viewcall_co"
fileprivate let k_listUrl:[Character] = ["u"]
fileprivate let kClearName:[Character] = ["n","t","d","o","w","n"]

/*: "Not enough coins" :*/
fileprivate let kMaxName:String = "Not var last distance to"
fileprivate let k_modelName:String = "photo selfgh coins"

/*: "#8566FF" :*/
fileprivate let k_changeTitle:String = "#8566FFtool name pending location"

/*: "Recharge" :*/
fileprivate let kReasonByText:String = "Rechtext image"

/*: "%@s Remaining" :*/
fileprivate let k_instanceTextResultFormat:String = "other self%@s "
fileprivate let k_normalStr:String = "ininequal"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TipsView.swift
//  OpalTerraAdapterLibrary
//
//  Created by Charlotte on 2024/4/29.
//

//: import UIKit
import UIKit

/// 免费通话剩余20s倒计时页面
//: class TalkingFreeCallRechargeTipsView: UIView {
class TipsView: UIView {
    // MARK: - 属性声明

    //: var touchRechargeBtnBlock: (() -> Void)?
    var touchRechargeBtnBlock: (() -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        withCurrent()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_marginName.map{wellspringRaw(kit: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.layer.cornerRadius = 12
        v.layer.cornerRadius = 12
        //: return v
        return v
        //: }()
    }()

    //: lazy var topBgImagV: UIImageView = {
    lazy var topBgImagV: UIImageView = {
        //: let imag = UIImageView()
        let imag = UIImageView()
        //: imag.image = UIImage.submitGift(name: "icon_free_call_bg_coundown")
        imag.image = UIImage.submitGift(name: (kShowUrl.replacingOccurrences(of: "frame", with: "ic") + "_free_" + String(k_backName.prefix(5)) + "bg_c" + k_bagViewPath.replacingOccurrences(of: "pin", with: "un") + String(k_mainPath)))
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var topImagV: UIImageView = {
    lazy var topImagV: UIImageView = {
        //: let imag = UIImageView()
        let imag = UIImageView()
        //: imag.image = UIImage.submitGift(name: "icon_free_call_countdown")
        imag.image = UIImage.submitGift(name: (kGiftShowModelContent.replacingOccurrences(of: "user", with: "on") + "_free_" + String(k_tableValue.suffix(7)) + String(k_listUrl) + String(kClearName)))
        //: imag.contentMode = .scaleAspectFit
        imag.contentMode = .scaleAspectFit
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var tipsLB: UILabel = {
    lazy var tipsLB: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Not enough coins".localized
        lb.text = (String(kMaxName.prefix(4)) + "enou" + String(k_modelName.suffix(8))).localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.textColor = UIColor.colorStatuteNameApp()
        lb.textColor = UIColor.colorStatuteNameApp()
        //: lb.font = UIFont.pingfangMediumFont(fontSize: 12)
        lb.font = UIFont.tapShared(fontSize: 12)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var countLB: UILabel = {
    lazy var countLB: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.textColor = UIColor.init(hex: "#8566FF")
        lb.textColor = UIColor(hex: (String(k_changeTitle.prefix(7))))
        //: lb.font = UIFont.pingfangRugularFont(fontSize: 10)
        lb.font = UIFont.targetFor(fontSize: 10)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var callBtn: UIButton = {
    lazy var callBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.layer.cornerRadius = 10
        btn.layer.cornerRadius = 10
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 72, height: 20)), for: .normal)
        btn.setBackgroundImage(UIImage.makeEqual(colors: UIColor.georgiaHomeBoy(), size: CGSize(width: 72, height: 20)), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 12)
        btn.titleLabel?.font = UIFont.tapShared(fontSize: 12)
        //: btn.setTitle("Recharge".localized, for: .normal)
        btn.setTitle((String(kReasonByText.prefix(4)) + "arge").localized, for: .normal)
        //: btn.addTarget(self, action: #selector(callBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(mutualReason), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingFreeCallRechargeTipsView {
extension TipsView {
    //: func setTipsMessage(count: Int) {
    func failure(count: Int) {
        //: countLB.text = "%@s Remaining".localizedArguments(count)
        countLB.text = (String(k_instanceTextResultFormat.suffix(4)) + "Rema" + k_normalStr.replacingOccurrences(of: "equal", with: "g")).edgeDelay(count)
    }

    //: @objc private func callBtnClick() {
    @objc private func mutualReason() {
        //: AddReactiveCompatible.share.func__pushToHalfWebVC(webViewType: .RechargeHalfPage)
        AddReactiveCompatible.share.halfDismiss(webViewType: .RechargeHalfPage)
        //: touchRechargeBtnBlock?()
        touchRechargeBtnBlock?()
    }
}

//: extension TalkingFreeCallRechargeTipsView {
extension TipsView {
    //: private func setupSubviews() {
    private func withCurrent() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(topBgImagV)
        contentView.addSubview(topBgImagV)
        //: addSubview(topImagV)
        addSubview(topImagV)
        //: contentView.addSubview(tipsLB)
        contentView.addSubview(tipsLB)
        //: contentView.addSubview(countLB)
        contentView.addSubview(countLB)
        //: contentView.addSubview(callBtn)
        contentView.addSubview(callBtn)

        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.trailing.equalTo(8)
            make.trailing.equalTo(8)
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.leading.bottom.equalToSuperview()
            make.leading.bottom.equalToSuperview()
        }
        //: topBgImagV.snp.makeConstraints { make in
        topBgImagV.snp.makeConstraints { make in
            //: make.leading.trailing.top.equalToSuperview()
            make.leading.trailing.top.equalToSuperview()
            //: make.height.equalTo(57)
            make.height.equalTo(57)
        }
        //: topImagV.snp.makeConstraints { make in
        topImagV.snp.makeConstraints { make in
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(37)
            make.width.equalTo(37)
            //: make.height.equalTo(38)
            make.height.equalTo(38)
        }

        //: tipsLB.snp.makeConstraints { make in
        tipsLB.snp.makeConstraints { make in
            //: make.top.equalTo(38)
            make.top.equalTo(38)
            //: make.centerX.equalToSuperview().offset(-2)
            make.centerX.equalToSuperview().offset(-2)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }

        //: countLB.snp.makeConstraints { make in
        countLB.snp.makeConstraints { make in
            //: make.top.equalTo(tipsLB.snp.bottom).offset(4)
            make.top.equalTo(tipsLB.snp.bottom).offset(4)
            //: make.centerX.equalToSuperview().offset(-2)
            make.centerX.equalToSuperview().offset(-2)
            //: make.height.equalTo(12)
            make.height.equalTo(12)
        }

        //: callBtn.snp.makeConstraints { make in
        callBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(countLB.snp.bottom).offset(8)
            make.top.equalTo(countLB.snp.bottom).offset(8)
            //: make.size.equalTo(CGSize.init(width: 72, height: 20))
            make.size.equalTo(CGSize(width: 72, height: 20))
        }
    }
}
