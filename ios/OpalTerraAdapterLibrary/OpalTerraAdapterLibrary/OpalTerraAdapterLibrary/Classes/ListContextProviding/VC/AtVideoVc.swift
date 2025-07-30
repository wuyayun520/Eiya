
//: Declare String Begin

/*: "Personal information" :*/
fileprivate let k_mUrl:String = "Persodetail var pop equal"
fileprivate let kToKey:[Character] = ["n","a","l"," ","i","n","f","o","r","m","a","t","i","o","n"]

/*: "authPic" :*/
fileprivate let k_userPath:String = "on"
fileprivate let kListMessage:String = "view size textuthPic"

/*: "Face verification" :*/
fileprivate let k_messageFormat:String = "super reason userFace"
fileprivate let k_kitTitle:String = "coloration"

/*: "icon_zc_userconver" :*/
fileprivate let k_leadingFormat:[Character] = ["i","c","o","n","_","z","c","_","u","s","e","r","c","o","n","v","e"]
fileprivate let kTapMakeKey:String = "shared"

/*: "Verify now" :*/
fileprivate let kPingMsg:[Character] = ["V","e","r","i","f","y"," ","n","o","w"]

/*: "#4A89F3" :*/
fileprivate let k_tableValue:String = "#4A89F3type return equal"

/*: "Finish" :*/
fileprivate let kDataName:String = "Finiswith else time view interaction"
fileprivate let kClearPath:String = "line"

/*: "#8C7AFF" :*/
fileprivate let kChangeKey:String = "else else point left true#8C7AFF"

/*: "Skip" :*/
fileprivate let kTimeContent:String = "Skipclose text"

/*: "icon_successfylly" :*/
fileprivate let kRequestName:[Character] = ["i","c","o","n","_","s","u","c","c","e","s","s"]
fileprivate let kEqualTextContent:[Character] = ["f","y","l","l","y"]

/*: "Submitted successfully" :*/
fileprivate let kMakeMsg:String = "Submimodel self var let"
fileprivate let kEndMessage:String = "ucceclick"
fileprivate let k_viewValue:String = "sfuactualactualy"

/*: "#2ED180" :*/
fileprivate let k_sharedText:String = "content text app#2ED180"

/*: _ :*/
fileprivate let kModelKey:String = "_"

/*: "male" :*/
fileprivate let k_edgeContent:[UInt8] = [0xae,0xa2,0xad,0xa6]

fileprivate func accountingData(language num: UInt8) -> UInt8 {
    let value = Int(num) + 191
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "female" :*/
fileprivate let kTargetStatusStr:String = "FEMALE"

/*: "RegisterSuccess" :*/
fileprivate let k_showJumpTitle:[Character] = ["R","e","g","i","s","t"]
fileprivate let kTagValue:String = "make"
fileprivate let kLivePath:[Character] = ["S","u","c","c","e","s","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AtVideoVc.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/9/8.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditAuthAndVideoVC: TalkingBaseViewController {
class AtVideoVc: StartThen {
    //: private var VideoIconPath = ""
    private var VideoIconPath = ""
    //: private var videoPath = ""
    private var videoPath = ""
    //: var params = [String: Any]()
    var params = [String: Any]()

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
        self.title = (String(k_mUrl.prefix(5)) + String(kToKey)).localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.setupPushSubviewsMake()
        //: self.setupSubViewsConstraint()
        self.constraint()

        //: if !DistanceAppManager.share.appConfigMode.skipInputInviteCode {
        if !DistanceAppManager.share.appConfigMode.skipInputInviteCode {
            //: skipButton.isHidden = true
            skipButton.isHidden = true
//            skipTipLabel.isHidden = skipButton.isHidden
        }
        //: if DistanceAppManager.share.userFillInfoMode.authImage != nil {
        if DistanceAppManager.share.userFillInfoMode.authImage != nil {
            //: self.params["authPic"] = DistanceAppManager.share.userFillInfoMode.authImage?.jpegData(compressionQuality: 1)
            self.params[(k_userPath.replacingOccurrences(of: "on", with: "a") + String(kListMessage.suffix(6)))] = DistanceAppManager.share.userFillInfoMode.authImage?.jpegData(compressionQuality: 1)
            //: self.setConverView()
            self.display()
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
        }
    }

    // MARK: - Lazy Load

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let contentView = UIView.init()
        let contentView = UIView()
        //: return contentView
        return contentView
        //: }()
    }()

    //: lazy var converLB: UILabel = {
    lazy var converLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = .colorStatuteNameApp()
        lb.textColor = .colorStatuteNameApp()
        //: lb.font = UIFont.fontChange(type: .Semibold, fontSize: 17)
        lb.font = UIFont.fontChange(type: .Semibold, fontSize: 17)
        //: lb.text = "Face verification".localized
        lb.text = (String(k_messageFormat.suffix(4)) + " verifi" + k_kitTitle.replacingOccurrences(of: "color", with: "c")).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var converImag: UIImageView = {
    lazy var converImag: UIImageView = {
        //: let imagv = UIImageView.init()
        let imagv = UIImageView()
        //: imagv.image = UIImage.submitGift(name: "icon_zc_userconver")
        imagv.image = UIImage.submitGift(name: (String(k_leadingFormat) + kTapMakeKey.replacingOccurrences(of: "shared", with: "r")))
        //: return imagv
        return imagv
        //: }()
    }()

    //: lazy var converBtn: UIButton = {
    lazy var converBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(converBtnClick), for: UIControl.Event.touchUpInside)
        btn.addTarget(self, action: #selector(observance), for: UIControl.Event.touchUpInside)
        //: var attributedString = NSMutableAttributedString(string: "Verify now".localized)
        var attributedString = NSMutableAttributedString(string: (String(kPingMsg)).localized)
        //: attributedString.addAttributes([.underlineStyle: NSNumber(value: NSUnderlineStyle.single.rawValue), .foregroundColor: UIColor.init(hex: "#4A89F3")!, .font: UIFont.fontChange(type: .Semibold, fontSize: 15)], range: NSRange.init(location: 0, length: attributedString.length))
        attributedString.addAttributes([.underlineStyle: NSNumber(value: NSUnderlineStyle.single.rawValue), .foregroundColor: UIColor(hex: (String(k_tableValue.prefix(7))))!, .font: UIFont.fontChange(type: .Semibold, fontSize: 15)], range: NSRange(location: 0, length: attributedString.length))
        //: btn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        btn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishBtn: UIButton = {
    lazy var finishBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 17)
        //: btn.setTitle("Finish".localized, for: .normal)
        btn.setTitle((String(kDataName.prefix(5)) + kClearPath.replacingOccurrences(of: "line", with: "h")).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.makeEqual(colors: UIColor.georgiaHomeBoy(), size: CGSize(width: constFormalContent - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick(isSkip:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(sumerpolate(isSkip:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var skipButton: UIButton = {
    lazy var skipButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitleColor(UIColor.init(hex: "#8C7AFF"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(kChangeKey.suffix(7)))), for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 17)
        //: let attributeString = NSMutableAttributedString(string: "Skip".localized)
        let attributeString = NSMutableAttributedString(string: (String(kTimeContent.prefix(4))).localized)
        //: attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        attributeString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: attributeString.length))
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: btn.addTarget(self, action: #selector(skipButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(putDoingUp), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
//    lazy var skipTipLabel: UILabel = {
//        let label = UILabel()
//        label.font = .fontChange(type: .Regular, fontSize: 12)
//        label.textColor = .appValueDetailColor()
//        label.textAlignment = .center
//        label.numberOfLines = 0
//        label.text = "You can feel free to skip this step.".localized
//        return label
//    }()
}

//: extension TalkingLoginEditAuthAndVideoVC {
extension AtVideoVc {
    //: func setConverView() {
    func display() {
        //: self.converImag.image = UIImage.submitGift(name: "icon_successfylly")
        self.converImag.image = UIImage.submitGift(name: (String(kRequestName) + String(kEqualTextContent)))
        //: let attributedString = NSMutableAttributedString(string: "Submitted successfully".localized)
        let attributedString = NSMutableAttributedString(string: (String(kMakeMsg.prefix(5)) + "tted s" + kEndMessage.replacingOccurrences(of: "click", with: "s") + k_viewValue.replacingOccurrences(of: "actual", with: "l")).localized)
        //: attributedString.addAttributes([.foregroundColor: UIColor.init(hex: "#2ED180")!, .font: UIFont.fontChange(type: .Semibold, fontSize: 15)], range: NSRange.init(location: 0, length: attributedString.length))
        attributedString.addAttributes([.foregroundColor: UIColor(hex: (String(k_sharedText.suffix(7))))!, .font: UIFont.fontChange(type: .Semibold, fontSize: 15)], range: NSRange(location: 0, length: attributedString.length))
        //: self.converBtn.setAttributedTitle(attributedString, for: UIControl.State.normal)
        self.converBtn.setAttributedTitle(attributedString, for: UIControl.State.normal)
    }
}

/// event
//: extension TalkingLoginEditAuthAndVideoVC {
extension AtVideoVc {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func dataText() {
        //: super.naviPopback()
        super.dataText()
        // 埋点
        //: let eventID = "\(click_registration_information3_backBTN)_\(DistanceAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(main_lineData)_\(DistanceAppManager.share.userFillInfoMode.sex == ManagerQuickLookable.male.rawValue ? String(bytes: k_edgeContent.map{accountingData(language: $0)}, encoding: .utf8)! : (kTargetStatusStr.lowercased()))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kSoundName.messUp(eventID: eventID)
    }

    //: @objc func converBtnClick() {
    @objc func observance() {
        // 埋点
        //: let eventID = "\(click_registration_information3_verifyBTN)_\(DistanceAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(constAppName)_\(DistanceAppManager.share.userFillInfoMode.sex == ManagerQuickLookable.male.rawValue ? String(bytes: k_edgeContent.map{accountingData(language: $0)}, encoding: .utf8)! : (kTargetStatusStr.lowercased()))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kSoundName.messUp(eventID: eventID)

        //: let vc = TalkingVerificationExampleVC()
        let vc = SingleDisplayViewController()
        //: vc.isRegisterPush = true
        vc.isRegisterPush = true
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
        //: vc.iconActionBlock = { [weak self] image in
        vc.iconActionBlock = { [weak self] image in
            //: guard let self = self else {
            guard let self = self else {
                //: return
                return
            }
            //: DistanceAppManager.share.userFillInfoMode.authImage = image
            DistanceAppManager.share.userFillInfoMode.authImage = image
            //: self.params["authPic"] = image.jpegData(compressionQuality: 1)
            self.params[(k_userPath.replacingOccurrences(of: "on", with: "a") + String(kListMessage.suffix(6)))] = image.jpegData(compressionQuality: 1)
            //: self.setConverView()
            self.display()
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
        }
    }

    //: @objc private func skipButtonClick() {
    @objc private func putDoingUp() {
        // 埋点
        //: let eventID = "\(click_registration_information3_skipBTN)_\(DistanceAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(main_errorValue)_\(DistanceAppManager.share.userFillInfoMode.sex == ManagerQuickLookable.male.rawValue ? String(bytes: k_edgeContent.map{accountingData(language: $0)}, encoding: .utf8)! : (kTargetStatusStr.lowercased()))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kSoundName.messUp(eventID: eventID)

        //: params.removeValue(forKey: "authPic")
        params.removeValue(forKey: (k_userPath.replacingOccurrences(of: "on", with: "a") + String(kListMessage.suffix(6))))
        //: finishBtnClick(isSkip: true)
        sumerpolate(isSkip: true)
    }

    //: @objc private func finishBtnClick(isSkip: Bool = false) {
    @objc private func sumerpolate(isSkip: Bool = false) {
        // 埋点
        //: if isSkip == false {
        if isSkip == false {
            //: let eventID = "\(click_registration_information3_finishBTN)_\(DistanceAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
            let eventID = "\(showFailTitle)_\(DistanceAppManager.share.userFillInfoMode.sex == ManagerQuickLookable.male.rawValue ? String(bytes: k_edgeContent.map{accountingData(language: $0)}, encoding: .utf8)! : (kTargetStatusStr.lowercased()))"
            //: uploadRecord.uploadRecordEvent(eventID: eventID)
            kSoundName.messUp(eventID: eventID)
        }

        //: view.endEditing(true)
        view.endEditing(true)
        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: TalkingLoginRequestTool.req_updateUserInfo(params: params) { succeed, result, errorModel in
        IngatheringPullReactiveCompatible.show(params: params) { succeed, result, _ in
            //: EndProgressHUD.popEnable()
            EndProgressHUD.popEnable()
            //: if succeed {
            if succeed {
                // 发送通知
                //: NotificationCenter.default.post(name: DID_LOGIN_SUCCESS_NOTIFICATION, object: nil, userInfo: result as! Dictionary<String, Any>)
                NotificationCenter.default.post(name: user_liveVersionValue, object: nil, userInfo: result as! [String: Any])
                // 注册成功埋点
                //: TalkingAdjustManager.share.addEvent(key: "RegisterSuccess")
                ListReactiveCompatible.share.holder(key: (String(k_showJumpTitle) + kTagValue.replacingOccurrences(of: "make", with: "er") + String(kLivePath)))
                //: FirebaseAnalyticsManager.share.logEvent(name: "RegisterSuccess")
                DecisionMakerAnalyticsManager.share.upTimeParameters(name: (String(k_showJumpTitle) + kTagValue.replacingOccurrences(of: "make", with: "er") + String(kLivePath)))

                //: if DistanceAppManager.share.loginUserMode.remindBindEmail == true {
                if DistanceAppManager.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                    //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        //: AddReactiveCompatible.share.func__pushToLockUserEmailVC(isShowBack: false)
                        AddReactiveCompatible.share.makeColorView(isShowBack: false)
                    }
                }
            }
        }
    }
}

//: extension TalkingLoginEditAuthAndVideoVC {
extension AtVideoVc {
    //: func setupSubviews() {
    func setupPushSubviewsMake() {
        //: self.view.addSubview(converLB)
        self.view.addSubview(converLB)
        //: self.view.addSubview(converImag)
        self.view.addSubview(converImag)
        //: self.view.addSubview(converBtn)
        self.view.addSubview(converBtn)
        //: self.view.addSubview(finishBtn)
        self.view.addSubview(finishBtn)
        //: self.view.addSubview(skipButton)
        self.view.addSubview(skipButton)
//        self.view.addSubview(skipTipLabel)
    }

    //: func setupSubViewsConstraint() {
    func constraint() {
        //: converLB.snp.makeConstraints { make in
        converLB.snp.makeConstraints { make in
            //: make.top.equalTo(34)
            make.top.equalTo(34)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
        }
        //: converImag.snp.makeConstraints { make in
        converImag.snp.makeConstraints { make in
            //: make.top.equalTo(converLB.snp.bottom).offset(20)
            make.top.equalTo(converLB.snp.bottom).offset(20)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
            //: make.size.equalTo(125)
            make.size.equalTo(125)
        }
        //: converBtn.snp.makeConstraints { make in
        converBtn.snp.makeConstraints { make in
            //: make.top.equalTo(converImag.snp.bottom).offset(9)
            make.top.equalTo(converImag.snp.bottom).offset(9)
            //: make.centerX.equalTo(self.view)
            make.centerX.equalTo(self.view)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.top.equalTo(converBtn.snp.bottom).offset(40)
            make.top.equalTo(converBtn.snp.bottom).offset(40)
            //: make.height.equalTo(51)
            make.height.equalTo(51)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
        //: skipButton.snp.makeConstraints { make in
        skipButton.snp.makeConstraints { make in
            //: make.top.equalTo(finishBtn.snp.bottom).offset(20)
            make.top.equalTo(finishBtn.snp.bottom).offset(20)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 50, height: 18))
            make.size.equalTo(CGSize(width: 50, height: 18))
        }
//        skipTipLabel.snp.makeConstraints { make in
//            make.bottom.equalTo(skipButton.snp.top).offset(-15)
//            make.centerX.equalToSuperview()
//            make.width.equalTo(ScreenWidth-60)
//        }
    }
}
