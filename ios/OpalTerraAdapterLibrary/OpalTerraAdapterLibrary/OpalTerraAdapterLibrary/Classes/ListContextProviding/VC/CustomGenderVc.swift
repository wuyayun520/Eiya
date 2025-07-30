
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kBackgroundKey:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "Personal information" :*/
fileprivate let kTaskData:String = "Persoicon return target hidden info"
fileprivate let k_picText:String = "forindexation"

/*: "ManagerQuickLookable" :*/
fileprivate let k_messageName:String = "Genderself content make"

/*: "Once gender is set, it Cannot be changed." :*/
fileprivate let k_borderText:[UInt8] = [0xd8,0xf9,0xf4,0xf2,0xb7,0xf0,0xf2,0xf9,0xf3,0xf2,0xe5,0xb7,0xfe,0xe4,0xb7,0xe4,0xf2,0xe3,0xbb,0xb7,0xfe,0xe3,0xb7,0xd4,0xf6,0xf9,0xf9,0xf8,0xe3,0xb7,0xf5,0xf2,0xb7,0xf4,0xff,0xf6,0xf9,0xf0,0xf2,0xf3,0xb9]

/*: "#2ABBFF" :*/
fileprivate let k_permissionValueKey:[Character] = ["#","2","A","B","B","F","F"]

/*: "btn_male_nv_nor" :*/
fileprivate let kAllTitle:[Character] = ["b","t","n","_","m","a","l","e","_","n","v","_","n","o","r"]

/*: "btn_male_nv_sel" :*/
fileprivate let kColorName:String = "status hidden makebtn_ma"

/*: "Male" :*/
fileprivate let k_arrayId:String = "Malevar scale return let user"

/*: "#FF5372" :*/
fileprivate let k_carrierData:[Character] = ["#","F","F","5","3","7","2"]

/*: "btn_female_nv_nor" :*/
fileprivate let kModelVideoFormat:String = "return extension color labbtn_f"
fileprivate let k_paraId:String = "pic content_nor"

/*: "btn_female_nv_sel" :*/
fileprivate let kMakeFormat:String = "btn_left view let location self"
fileprivate let k_addTitle:String = "case time data indicatore_nv_s"
fileprivate let kButtonId:String = "eafter"

/*: "Female" :*/
fileprivate let k_detailPath:String = "inside"
fileprivate let kGiftAttributeId:String = "etitleale"

/*: "Next" :*/
fileprivate let k_dataBeMsg:String = "action i superNext"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CustomGenderVc.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/30.
//

//: import UIKit
import UIKit

//: class TalkingLoginGenderVC: TalkingBaseViewController {
class CustomGenderVc: StartThen {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kBackgroundKey.reversed(), encoding: .utf8)!)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        outUpAction(isOpen: false)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Personal information".localized
        self.title = (String(kTaskData.prefix(5)) + "nal in" + k_picText.replacingOccurrences(of: "index", with: "m")).localized
        //: DistanceAppManager.share.userFillInfoMode.sex = "1"
        DistanceAppManager.share.userFillInfoMode.sex = "1"
        //: self.setupSubviews()
        self.noticeSubviews()
        //: self.setupSubViewsConstraint()
        self.fruitage()
        //: self.bindInteraction()
        self.magnitude()
        //: func__checkNextBtnState()
        deadline()
    }

    //: deinit {
    deinit {}

    //: private lazy var logoTitleLabel: UILabel = {
    private lazy var logoTitleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .fontChange(type: .Semibold, fontSize: 17)
        label.font = .fontChange(type: .Semibold, fontSize: 17)
        //: label.textColor = .colorStatuteNameApp()
        label.textColor = .colorStatuteNameApp()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "Gender".localized
        label.text = (String(k_messageName.prefix(6))).localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var genderTipLabel: UILabel = {
    private lazy var genderTipLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .fontChange(type: .Regular, fontSize: 15)
        label.font = .fontChange(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueColor()
        label.textColor = .scaleValueTo()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: label.text = "Once gender is set, it Cannot be changed.".localized
        label.text = String(bytes: k_borderText.map{$0^151}, encoding: .utf8)!.localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var maleButton: TalkingButton = {
    private lazy var maleButton: ResumeControl = {
        //: let btn = TalkingButton(type: .custom)
        let btn = ResumeControl(type: .custom)
        //: btn.isSelected = false
        btn.isSelected = false
        //: btn.spaceBetweenTitleAndImage = 20
        btn.spaceBetweenTitleAndImage = 20
        //: btn.setBackgroundColor(color: UIColor.init(red: 244/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1.0), forState: .normal)
        btn.languageUnitState(color: UIColor(red: 244 / 255.0, green: 244 / 255.0, blue: 244 / 255.0, alpha: 1.0), forState: .normal)
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#2ABBFF")!, forState: .selected)
        btn.languageUnitState(color: UIColor(hex: (String(k_permissionValueKey)))!, forState: .selected)
        //: btn.setImage(UIImage.submitGift(name: "btn_male_nv_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kAllTitle))), for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "btn_male_nv_sel"), for: .selected)
        btn.setImage(UIImage.submitGift(name: (String(kColorName.suffix(6)) + "le_nv_sel")), for: .selected)
        //: btn.setTitle("Male".localized, for: .normal)
        btn.setTitle((String(k_arrayId.prefix(4))).localized, for: .normal)
        //: btn.setTitle("Male".localized, for: .selected)
        btn.setTitle((String(k_arrayId.prefix(4))).localized, for: .selected)
        //: btn.setTitleColor(.black, for: .normal)
        btn.setTitleColor(.black, for: .normal)
        //: btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 17)
        btn.titleLabel?.font = UIFont.targetFor(fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var femaleButton: TalkingButton = {
    private lazy var femaleButton: ResumeControl = {
        //: let btn = TalkingButton(type: .custom)
        let btn = ResumeControl(type: .custom)
        //: btn.isSelected = false
        btn.isSelected = false
        //: btn.spaceBetweenTitleAndImage = 20
        btn.spaceBetweenTitleAndImage = 20
        //: btn.setBackgroundColor(color: UIColor.init(red: 244/255.0, green: 244/255.0, blue: 244/255.0, alpha: 1.0), forState: .normal)
        btn.languageUnitState(color: UIColor(red: 244 / 255.0, green: 244 / 255.0, blue: 244 / 255.0, alpha: 1.0), forState: .normal)
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#FF5372")!, forState: .selected)
        btn.languageUnitState(color: UIColor(hex: (String(k_carrierData)))!, forState: .selected)
        //: btn.setImage(UIImage.submitGift(name: "btn_female_nv_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kModelVideoFormat.suffix(5)) + "emale_nv" + String(k_paraId.suffix(4)))), for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "btn_female_nv_sel"), for: .selected)
        btn.setImage(UIImage.submitGift(name: (String(kMakeFormat.prefix(4)) + "femal" + String(k_addTitle.suffix(6)) + kButtonId.replacingOccurrences(of: "after", with: "l"))), for: .selected)
        //: btn.setTitle("Female".localized, for: .normal)
        btn.setTitle((k_detailPath.replacingOccurrences(of: "inside", with: "F") + kGiftAttributeId.replacingOccurrences(of: "title", with: "m")).localized, for: .normal)
        //: btn.setTitle("Female".localized, for: .selected)
        btn.setTitle((k_detailPath.replacingOccurrences(of: "inside", with: "F") + kGiftAttributeId.replacingOccurrences(of: "title", with: "m")).localized, for: .selected)
        //: btn.setTitleColor(.black, for: .normal)
        btn.setTitleColor(.black, for: .normal)
        //: btn.setTitleColor(.white, for: .selected)
        btn.setTitleColor(.white, for: .selected)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 17)
        btn.titleLabel?.font = UIFont.targetFor(fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var commitButton: UIButton = {
    private lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 17)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle((String(k_dataBeMsg.suffix(4))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.makeEqual(colors: UIColor.georgiaHomeBoy(), size: CGSize(width: constFormalContent - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginGenderVC {
extension CustomGenderVc {
    //: private func func__checkNextBtnState() {
    private func deadline() {
        //: if DistanceAppManager.share.userFillInfoMode.sex == "1" {
        if DistanceAppManager.share.userFillInfoMode.sex == "1" {
            //: self.commitButton.isEnabled = true
            self.commitButton.isEnabled = true
            //: self.maleButton.isSelected = true
            self.maleButton.isSelected = true
            //: self.femaleButton.isSelected = false
            self.femaleButton.isSelected = false
            //: } else if DistanceAppManager.share.userFillInfoMode.sex == "2"{
        } else if DistanceAppManager.share.userFillInfoMode.sex == "2" {
            //: self.commitButton.isEnabled = true
            self.commitButton.isEnabled = true
            //: self.maleButton.isSelected = false
            self.maleButton.isSelected = false
            //: self.femaleButton.isSelected = true
            self.femaleButton.isSelected = true
            //: } else {
        } else {
            //: self.commitButton.isEnabled = false
            self.commitButton.isEnabled = false
            //: self.maleButton.isSelected = false
            self.maleButton.isSelected = false
            //: self.femaleButton.isSelected = false
            self.femaleButton.isSelected = false
        }
    }

    //: private func func__pushToNextProgress() {
    private func item() {
        //        // 1.3 判断用户设备SIM卡归属地是否来自被剔除的国家或地区
        //        // 1.4 判断用户设备是否开启VPN
//        if DistanceAppManager.share.appConfigMode.vpnSimCardCheck {
//
//            guard  !UserViewToolThen.isUsedProxy() && !UserViewToolThen.isUsedVPN() else {
//                self.func__showStatusBarErrorMsg(showMsg: "Network error. Check it and try again.".localized)
//                self.navigationController?.popToRootViewController(animated: true)
//                NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION, object: nil, userInfo: nil)
//                ModelThen.func__reportDeviceID()
//                return
//            }
//        }
        /// 清除后面已填写过资料
        //: let sex = DistanceAppManager.share.userFillInfoMode.sex
        let sex = DistanceAppManager.share.userFillInfoMode.sex
        //: DistanceAppManager.share.userFillInfoMode = UserFillInfoModel.init()
        DistanceAppManager.share.userFillInfoMode = SightInfoModel()
        //: DistanceAppManager.share.userFillInfoMode.sex = sex
        DistanceAppManager.share.userFillInfoMode.sex = sex
        //: let VC = TalkingLoginEditInfoVC()
        let VC = FileResumeReactiveCompatible()
        //: self.navigationController?.pushViewController(VC, animated: true)
        self.navigationController?.pushViewController(VC, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingLoginGenderVC {
extension CustomGenderVc {
    // 添加视图
    //: private func setupSubviews() {
    private func noticeSubviews() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.addSubview(logoTitleLabel)
        view.addSubview(logoTitleLabel)
        //: view.addSubview(genderTipLabel)
        view.addSubview(genderTipLabel)
        //: view.addSubview(maleButton)
        view.addSubview(maleButton)
        //: view.addSubview(femaleButton)
        view.addSubview(femaleButton)
        //: view.addSubview(commitButton)
        view.addSubview(commitButton)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func fruitage() {
        //: logoTitleLabel.snp.makeConstraints { make in
        logoTitleLabel.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }
        //: genderTipLabel.snp.makeConstraints { make in
        genderTipLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(constFormalContent - 60)
            //: make.top.equalTo(logoTitleLabel.snp.bottom).offset(6)
            make.top.equalTo(logoTitleLabel.snp.bottom).offset(6)
        }
        //: maleButton.snp.makeConstraints { make in
        maleButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.width.equalTo(actualWidth(w: 140))
            make.width.equalTo(actualWidth(w: 140))
            //: make.height.equalTo(actualWidth(w: 50))
            make.height.equalTo(actualWidth(w: 50))
            //: make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
            make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
        }
        //: femaleButton.snp.makeConstraints { make in
        femaleButton.snp.makeConstraints { make in
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.width.equalTo(actualWidth(w: 140))
            make.width.equalTo(actualWidth(w: 140))
            //: make.height.equalTo(actualWidth(w: 50))
            make.height.equalTo(actualWidth(w: 50))
            //: make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
            make.top.equalTo(genderTipLabel.snp.bottom).offset(20)
        }
        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(constFormalContent - 60)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(maleButton.snp.bottom).offset(40)
            make.top.equalTo(maleButton.snp.bottom).offset(40)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func magnitude() {
        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.func__pushToNextProgress()
                self.item()

                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: femaleButton.rx.tap
        femaleButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: DistanceAppManager.share.userFillInfoMode.sex = "2"
                DistanceAppManager.share.userFillInfoMode.sex = "2"
                //: self.func__checkNextBtnState()
                self.deadline()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: maleButton.rx.tap
        maleButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: DistanceAppManager.share.userFillInfoMode.sex = "1"
                DistanceAppManager.share.userFillInfoMode.sex = "1"
                //: self.func__checkNextBtnState()
                self.deadline()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
