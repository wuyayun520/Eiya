
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kModeTitle:[UInt8] = [0xbf,0xc4,0xbf,0xca,0x7e,0xb9,0xc5,0xba,0xbb,0xc8,0x90,0x7f,0x76,0xbe,0xb7,0xc9,0x76,0xc4,0xc5,0xca,0x76,0xb8,0xbb,0xbb,0xc4,0x76,0xbf,0xc3,0xc6,0xc2,0xbb,0xc3,0xbb,0xc4,0xca,0xbb,0xba]

fileprivate func managingDirectorPath(time num: UInt8) -> UInt8 {
    let value = Int(num) - 86
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_me_income" :*/
fileprivate let kTextMessage:String = "icon_add data pop auto"
fileprivate let kProgressContent:[Character] = ["e"]

/*: "Income" :*/
fileprivate let kMakeMessage:String = "Incomeextension block"

/*: "icon_me_male_wallet" :*/
fileprivate let kIconMessage:[Character] = ["i","c","o"]
fileprivate let kScaleReadyFormat:String = "n_me_layer conversation"
fileprivate let k_cancelSelectedName:String = "data self app view color_wallet"

/*: "Wallet" :*/
fileprivate let kLabelAwakeUserMsg:String = "to topWallet"

/*: "#7189F7" :*/
fileprivate let kScreenUrl:String = "home"
fileprivate let kValueStr:String = "view equal self to7189F7"

/*: "Level" :*/
fileprivate let kBackFormat:String = "self dataLevel"

/*: "icon_me_level" :*/
fileprivate let kResultUseTitle:String = "icon_value not lock view make"
fileprivate let kExtraKey:[Character] = ["m"]
fileprivate let k_mainStr:[Character] = ["e","_","l","e","v","e","l"]

/*: "$ :*/
fileprivate let k_modelTitle:String = "$"

/*: "Verification needed before balance check" :*/
fileprivate let kUserData:[UInt8] = [0x6b,0x63,0x65,0x68,0x63,0x20,0x65,0x63,0x6e,0x61,0x6c,0x61,0x62,0x20,0x65,0x72,0x6f,0x66,0x65,0x62,0x20,0x64,0x65,0x64,0x65,0x65,0x6e,0x20,0x6e,0x6f,0x69,0x74,0x61,0x63,0x69,0x66,0x69,0x72,0x65,0x56]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DisplayThen.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeTwoColumnsCell: UITableViewCell {
class DisplayThen: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        superiorRow()
        //: setupSubViewsConstraint()
        tapViewConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kModeTitle.map{managingDirectorPath(time: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var goldCoinsBtn: UIButton = {
    private lazy var goldCoinsBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.layer.cornerRadius = 6
        btn.layer.cornerRadius = 6
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(goldCoinsButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(clearMax), for: .touchUpInside)

        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        lab.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        //: lab.textColor = UIColor.colorStatuteNameApp()
        lab.textColor = UIColor.colorStatuteNameApp()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
        }

        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: btn.addSubview(icon)
        btn.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.size.equalTo(CGSize(width: 38, height: 37))
            make.size.equalTo(CGSize(width: 38, height: 37))
        }
        //: if DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue && DistanceAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue && DistanceAppManager.share.appStatus != NameQuickLookable.special.rawValue {
            //: icon.image = UIImage.submitGift(name: "icon_me_income")
            icon.image = UIImage.submitGift(name: (String(kTextMessage.prefix(5)) + "me_incom" + String(kProgressContent)))
            //: lab.text = "Income".localized
            lab.text = (String(kMakeMessage.prefix(6))).localized
            //: } else {
        } else {
            //: icon.image = UIImage.submitGift(name: "icon_me_male_wallet")
            icon.image = UIImage.submitGift(name: (String(kIconMessage) + String(kScaleReadyFormat.prefix(5)) + "male" + String(k_cancelSelectedName.suffix(7))))
            //: lab.text = "Wallet".localized
            lab.text = (String(kLabelAwakeUserMsg.suffix(6))).localized
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var goldCoinsNum: UILabel = {
    private lazy var goldCoinsNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.fontChange(type: .Medium, fontSize: 18)
        lab.font = UIFont.fontChange(type: .Medium, fontSize: 18)
        //: lab.textColor = UIColor(hex: "#7189F7")
        lab.textColor = UIColor(hex: (kScreenUrl.replacingOccurrences(of: "home", with: "#") + String(kValueStr.suffix(6))))
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var myLevelBtn: UIButton = {
    private lazy var myLevelBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.layer.cornerRadius = 6
        btn.layer.cornerRadius = 6
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(myLevelButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(clickSection), for: .touchUpInside)

        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        lab.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        //: lab.textColor = UIColor.colorStatuteNameApp()
        lab.textColor = UIColor.colorStatuteNameApp()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Level".localized
        lab.text = (String(kBackFormat.suffix(5))).localized
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
        }

        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.image = UIImage.submitGift(name: "icon_me_level")
        icon.image = UIImage.submitGift(name: (String(kResultUseTitle.prefix(5)) + String(kExtraKey) + String(k_mainStr)))
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: btn.addSubview(icon)
        btn.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.size.equalTo(CGSize(width: 39, height: 37))
            make.size.equalTo(CGSize(width: 39, height: 37))
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var myLevelNum: UILabel = {
    private lazy var myLevelNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.fontChange(type: .Medium, fontSize: 18)
        lab.font = UIFont.fontChange(type: .Medium, fontSize: 18)
        //: lab.textColor = UIColor(hex: "#7189F7")
        lab.textColor = UIColor(hex: (kScreenUrl.replacingOccurrences(of: "home", with: "#") + String(kValueStr.suffix(6))))
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMeTwoColumnsCell {
extension DisplayThen {
    //: func setViewData() {
    func towardFirst() {
        //: if DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue && DistanceAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue, DistanceAppManager.share.appStatus != NameQuickLookable.special.rawValue {
            //: goldCoinsNum.text = "$\(DistanceAppManager.share.loginUserMode.mf_income)"
            goldCoinsNum.text = "$\(DistanceAppManager.share.loginUserMode.mf_income)"
            //: } else {
        } else {
            //: goldCoinsNum.text = "\(DistanceAppManager.share.loginUserMode.mf_coin)"
            goldCoinsNum.text = "\(DistanceAppManager.share.loginUserMode.mf_coin)"
        }
        //: myLevelNum.text = DistanceAppManager.share.loginUserMode.level
        myLevelNum.text = DistanceAppManager.share.loginUserMode.level
    }

    /// gold coins
    //: @objc private func goldCoinsButtonClick() {
    @objc private func clearMax() {
        //: incomeClick()
        pinpoint()
    }

    /// my level
    //: @objc private func myLevelButtonClick() {
    @objc private func clickSection() {
        //: AddReactiveCompatible.share.func__pushToWebVC(webViewType: .Level)
        AddReactiveCompatible.share.overCapacity(webViewType: .Level)
    }

    /// income
    //: @objc func incomeClick() {
    @objc func pinpoint() {
        //: if DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue && DistanceAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue, DistanceAppManager.share.appStatus != NameQuickLookable.special.rawValue {
            //: if DistanceAppManager.share.loginUserMode.isTPAuth == TPUserAuth.unknown.rawValue || DistanceAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isRefused.rawValue {
            if DistanceAppManager.share.loginUserMode.isTPAuth == BreakValueConvertible.unknown.rawValue || DistanceAppManager.share.loginUserMode.isTPAuth == BreakValueConvertible.isRefused.rawValue {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Verification needed before balance check")
                self.rear(showMsg: String(bytes: kUserData.reversed(), encoding: .utf8)!)
                //: let vc = TalkingFaceVerificationVC()
                let vc = ObserverThen()
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.selectStart()?.navigationController?.pushViewController(vc, animated: true)
                //: } else if DistanceAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
            } else if DistanceAppManager.share.loginUserMode.isTPAuth == BreakValueConvertible.isOnGoing.rawValue {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Verification needed before balance check")
                self.rear(showMsg: String(bytes: kUserData.reversed(), encoding: .utf8)!)
                //: let vc = TalkingFinalVerificationVC()
                let vc = StreamViewController()
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.selectStart()?.navigationController?.pushViewController(vc, animated: true)

                //: } else {
            } else {
                //: AddReactiveCompatible.share.func__pushToWebVC(webViewType: .Balance)
                AddReactiveCompatible.share.overCapacity(webViewType: .Balance)
            }

            //: } else {
        } else {
            //: AddReactiveCompatible.share.func__pushToWebVC(webViewType: .RechargeFullPage)
            AddReactiveCompatible.share.overCapacity(webViewType: .RechargeFullPage)
        }
    }
}

// MARK: - Layout

//: extension TalkingMeTwoColumnsCell {
extension DisplayThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func superiorRow() {
        //: self.contentView.addSubview(goldCoinsBtn)
        self.contentView.addSubview(goldCoinsBtn)
        //: goldCoinsBtn.addSubview(goldCoinsNum)
        goldCoinsBtn.addSubview(goldCoinsNum)
        //: self.contentView.addSubview(myLevelBtn)
        self.contentView.addSubview(myLevelBtn)
        //: myLevelBtn.addSubview(myLevelNum)
        myLevelBtn.addSubview(myLevelNum)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func tapViewConstraint() {
        //: let btn_width = (ScreenWidth-30-8)/2
        let btn_width = (constFormalContent - 30 - 8) / 2
        //: goldCoinsBtn.snp.makeConstraints { make in
        goldCoinsBtn.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.size.equalTo(CGSize(width: btn_width, height: 70))
            make.size.equalTo(CGSize(width: btn_width, height: 70))
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }
        //: goldCoinsNum.snp.makeConstraints { make in
        goldCoinsNum.snp.makeConstraints { make in
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }

        //: myLevelBtn.snp.makeConstraints { make in
        myLevelBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.size.bottom.equalTo(goldCoinsBtn)
            make.top.size.bottom.equalTo(goldCoinsBtn)
        }
        //: myLevelNum.snp.makeConstraints { make in
        myLevelNum.snp.makeConstraints { make in
            //: make.leading.equalTo(11)
            make.leading.equalTo(11)
            //: make.bottom.equalTo(-10)
            make.bottom.equalTo(-10)
        }
    }
}
