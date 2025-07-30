
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_titleStr:[UInt8] = [0x23,0x28,0x23,0x2e,0xe2,0x1d,0x29,0x1e,0x1f,0x2c,0xf4,0xe3,0xda,0x22,0x1b,0x2d,0xda,0x28,0x29,0x2e,0xda,0x1c,0x1f,0x1f,0x28,0xda,0x23,0x27,0x2a,0x26,0x1f,0x27,0x1f,0x28,0x2e,0x1f,0x1e]

fileprivate func cellViewMouth(appear num: UInt8) -> UInt8 {
    let value = Int(num) + 70
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "login_logo_icon" :*/
fileprivate let k_frameMessage:[Character] = ["l","o","g","i","n","_","l","o","g","o","_","i","c","o","n"]

/*: "FFFFFF" :*/
fileprivate let k_imageId:[Character] = ["F","F","F","F","F","F"]

/*: "128CFF" :*/
fileprivate let kCenterMsg:String = "1"
fileprivate let kUpMsg:[Character] = ["2","8","C","F","F"]

/*: "Privacy Policy" :*/
fileprivate let k_viewMessage:String = "p"
fileprivate let kRankMsg:[Character] = ["r","i","v","a","c","y"," ","P","o","l","i","c","y"]

/*: "Terms of Use" :*/
fileprivate let kSucceedData:String = "color normal list return makeTer"
fileprivate let kMediumValue:String = "for leading in barms o"

/*: "Contact Us" :*/
fileprivate let k_distanceUrl:[Character] = ["C","o","n","t","a"]
fileprivate let k_userData:String = "ct Usfalse guard index"

/*: "btn_login_google_nor" :*/
fileprivate let kViewToStr:String = "my quote equipment centerbtn_lo"
fileprivate let k_iconName:String = "to data text inogle_nor"

/*: "btn_login_phone_nor" :*/
fileprivate let k_managerFormat:[Character] = ["b","t"]
fileprivate let k_pushUrl:[Character] = ["n","_","l","o","g","i","n","_","p","h","o","n","e","_","n","o","r"]

/*: "btn_login_email_nor" :*/
fileprivate let kPinTitle:String = "model truebtn_lo"
fileprivate let kFieldValue:String = "gin_tap app show make"
fileprivate let kAppUrl:String = "return second importemail_nor"

/*: "or" :*/
fileprivate let kIndexShareName:[Character] = ["o","r"]

/*: "btn_login_apple_nor" :*/
fileprivate let k_pathUrl:String = "add the manager to varbtn_l"
fileprivate let k_frontFormat:[Character] = ["o","g","i"]
fileprivate let k_videoUrl:[Character] = ["n","_","a","p","p","l","e","_","n","o","r"]

/*: "Continue with Apple" :*/
fileprivate let kSharedUserValue:String = "Continstring let size"
fileprivate let kLocationFrameTopStr:[Character] = ["u","e"," ","w","i","t","h"," ","A","p","p","l","e"]

/*: "login_last_way_icon" :*/
fileprivate let k_titleId:String = "lognativen"
fileprivate let k_intervalPath:[Character] = ["_","l","a","s","t","_","w","a","y"]
fileprivate let kModelKey:String = "to category equal block_icon"

/*: "get json error" :*/
fileprivate let kFillFormat:String = "gicon"
fileprivate let kBlockUrl:[Character] = [" ","j","s","o","n"," ","e","r","r","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WillReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingLoginMainView: UIView {
class WillReactiveCompatible: UIView {
    //: typealias BtnActionBlock = (_ type: LoginType) -> Void
    typealias BtnActionBlock = (_ type: PalmClusterLiteral) -> Void

    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var btnBlock: BtnActionBlock?
    var btnBlock: BtnActionBlock?

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_titleStr.map{cellViewMouth(appear: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: self.setupSubviews()
        self.collectionText()
        //: self.setupSubViewsConstraint()
        self.setup()
        //: self.bindInteraction()
        self.bind()
    }

    // MARK: - Lazy load

    //: lazy var bgPlayer: SVGAPlayer = {
    lazy var bgPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var logoView: UIImageView = {
    lazy var logoView: UIImageView = {
        //: let imageView = UIImageView(image: UIImage.submitGift(name: "login_logo_icon"))
        let imageView = UIImageView(image: UIImage.submitGift(name: (String(k_frameMessage))))
        //: return imageView
        return imageView
        //: }()
    }()

    //: lazy var logoTitleLabel: UILabel = {
    lazy var logoTitleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .fontChange(type: .Semibold, fontSize: 28.0)
        label.font = .fontChange(type: .Semibold, fontSize: 28.0)
        //: label.textColor = UIColor(hex: "FFFFFF")
        label.textColor = UIColor(hex: (String(k_imageId)))
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = AppName
        label.text = kAddData
        //: return label
        return label
        //: }()
    }()

    //: lazy var privacyBtn: UIButton = {
    lazy var privacyBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let attributes = [.foregroundColor: UIColor(hex: "128CFF")!, .font: UIFont.fontChange(type: .Regular, fontSize: 14), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor(hex: (kCenterMsg.capitalized + String(kUpMsg)))!, .font: UIFont.fontChange(type: .Regular, fontSize: 14), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        //: let attributeString = NSAttributedString(string: "Privacy Policy".localized, attributes: attributes)
        let attributeString = NSAttributedString(string: (k_viewMessage.uppercased() + String(kRankMsg)).localized, attributes: attributes)
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var termsUserBtn: UIButton = {
    lazy var termsUserBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)

        //: let attributes = [.foregroundColor: UIColor(hex: "128CFF")!, .font: UIFont.fontChange(type: .Regular, fontSize: 14), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor(hex: (kCenterMsg.capitalized + String(kUpMsg)))!, .font: UIFont.fontChange(type: .Regular, fontSize: 14), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        //: let attributeString = NSAttributedString(string: "Terms of Use".localized, attributes: attributes)
        let attributeString = NSAttributedString(string: (String(kSucceedData.suffix(3)) + String(kMediumValue.suffix(4)) + "f Use").localized, attributes: attributes)
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var contactBtn: UIButton = {
    lazy var contactBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)

        //: let attributes = [.foregroundColor: UIColor(hex: "128CFF")!, .font: UIFont.fontChange(type: .Regular, fontSize: 14), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor(hex: (kCenterMsg.capitalized + String(kUpMsg)))!, .font: UIFont.fontChange(type: .Regular, fontSize: 14), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        //: let attributeString = NSAttributedString(string: "Contact Us".localized, attributes: attributes)
        let attributeString = NSAttributedString(string: (String(k_distanceUrl) + String(k_userData.prefix(5))).localized, attributes: attributes)
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var stackView: UIStackView = {
    lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .center
        v.alignment = .center
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 60.0
        v.spacing = 60.0
        //: return v
        return v
        //: }()
    }()

    //: lazy var googleLoginBtn: UIButton = {
    lazy var googleLoginBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.submitGift(name: "btn_login_google_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kViewToStr.suffix(6)) + "gin_go" + String(k_iconName.suffix(8)))), for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "btn_login_google_nor"), for: .highlighted)
        btn.setImage(UIImage.submitGift(name: (String(kViewToStr.suffix(6)) + "gin_go" + String(k_iconName.suffix(8)))), for: .highlighted)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var phoneLoginBtn: UIButton = {
    lazy var phoneLoginBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.submitGift(name: "btn_login_phone_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(k_managerFormat) + String(k_pushUrl))), for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "btn_login_phone_nor"), for: .highlighted)
        btn.setImage(UIImage.submitGift(name: (String(k_managerFormat) + String(k_pushUrl))), for: .highlighted)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var emailLoginBtn: UIButton = {
    lazy var emailLoginBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.submitGift(name: "btn_login_email_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kPinTitle.suffix(6)) + String(kFieldValue.prefix(4)) + String(kAppUrl.suffix(9)))), for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "btn_login_email_nor"), for: .highlighted)
        btn.setImage(UIImage.submitGift(name: (String(kPinTitle.suffix(6)) + String(kFieldValue.prefix(4)) + String(kAppUrl.suffix(9)))), for: .highlighted)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var otherLabel: UILabel = {
    lazy var otherLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font =  .fontChange(type: .Regular, fontSize: 20)
        label.font = .fontChange(type: .Regular, fontSize: 20)
        //: label.textColor =  UIColor(hex: "FFFFFF")
        label.textColor = UIColor(hex: (String(k_imageId)))
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.text = "or".localized
        label.text = "or".localized
        //: return label
        return label
        //: }()
    }()

    //: lazy var otherLeftLine: UIView = {
    lazy var otherLeftLine: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor(hex: "FFFFFF")?.withAlphaComponent(0.7)
        view.backgroundColor = UIColor(hex: (String(k_imageId)))?.withAlphaComponent(0.7)
        //: return view
        return view
        //: }()
    }()

    //: lazy var otherRightLine: UIView = {
    lazy var otherRightLine: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor(hex: "FFFFFF")?.withAlphaComponent(0.7)
        view.backgroundColor = UIColor(hex: (String(k_imageId)))?.withAlphaComponent(0.7)
        //: return view
        return view
        //: }()
    }()

    //: lazy var appleLoginBtn: TalkingButton = {
    lazy var appleLoginBtn: ResumeControl = {
        //: let btn = TalkingButton(type: .custom)
        let btn = ResumeControl(type: .custom)
        //: btn.setBackgroundImage(UIImage.imageFillColor(color: UIColor(hex: "FFFFFF")!), for: .normal)
        btn.setBackgroundImage(UIImage.beginLine(color: UIColor(hex: (String(k_imageId)))!), for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "btn_login_apple_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(k_pathUrl.suffix(5)) + String(k_frontFormat) + String(k_videoUrl))), for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "btn_login_apple_nor"), for: .highlighted)
        btn.setImage(UIImage.submitGift(name: (String(k_pathUrl.suffix(5)) + String(k_frontFormat) + String(k_videoUrl))), for: .highlighted)
        //: btn.setTitle("Continue with Apple".localized, for: .normal)
        btn.setTitle((String(kSharedUserValue.prefix(6)) + String(kLocationFrameTopStr)).localized, for: .normal)
        //: btn.setTitleColor(.colorStatuteNameApp(), for: .normal)
        btn.setTitleColor(.colorStatuteNameApp(), for: .normal)
        //: btn.titleLabel?.textAlignment = .center
        btn.titleLabel?.textAlignment = .center
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.titleLabel?.font = .fontChange(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .fontChange(type: .Medium, fontSize: 17)
        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: btn.isHidden = false
            btn.isHidden = false
            //: } else {
        } else {
            //: btn.isHidden = true
            btn.isHidden = true
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var lastLoginImgV: TalkingButton = {
    private lazy var lastLoginImgV: ResumeControl = {
        //: let btn = TalkingButton()
        let btn = ResumeControl()
        //: let ret = UIImage.submitGift(name: "login_last_way_icon")
        let ret = UIImage.submitGift(name: (k_titleId.replacingOccurrences(of: "native", with: "i") + String(k_intervalPath) + String(kModelKey.suffix(5))))
        //: btn.setImage(ret, for: .normal)
        btn.setImage(ret, for: .normal)
//        btn.titleLabel?.font = UIFont.fontChange(type: .Semibold, fontSize: 13)
//        btn.setTitleColor(.white, for: .normal)
//        btn.setTitle("Last Login".localized, for: .normal)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingLoginMainView {
extension WillReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func collectionText() {
        //: addSubview(bgPlayer)
        addSubview(bgPlayer)
        //: addSubview(logoView)
        addSubview(logoView)
        //: addSubview(logoTitleLabel)
        addSubview(logoTitleLabel)
        //: addSubview(privacyBtn)
        addSubview(privacyBtn)
        //: addSubview(termsUserBtn)
        addSubview(termsUserBtn)
        //: addSubview(contactBtn)
        addSubview(contactBtn)

        //: addSubview(stackView)
        addSubview(stackView)

        //: addSubview(googleLoginBtn)
        addSubview(googleLoginBtn)
        //: stackView.addArrangedSubview(googleLoginBtn)
        stackView.addArrangedSubview(googleLoginBtn)
        //: if DistanceAppManager.share.appConfigMode.enableEmailLogin == true {
        if DistanceAppManager.share.appConfigMode.enableEmailLogin == true {
            //: addSubview(emailLoginBtn)
            addSubview(emailLoginBtn)
            //: stackView.addArrangedSubview(emailLoginBtn)
            stackView.addArrangedSubview(emailLoginBtn)
        }
        //: if DistanceAppManager.share.appConfigMode.enableSmsLogin == true {
        if DistanceAppManager.share.appConfigMode.enableSmsLogin == true {
            //: addSubview(phoneLoginBtn)
            addSubview(phoneLoginBtn)
            //: stackView.addArrangedSubview(phoneLoginBtn)
            stackView.addArrangedSubview(phoneLoginBtn)
        }

        //: addSubview(otherLabel)
        addSubview(otherLabel)
        //: addSubview(otherLeftLine)
        addSubview(otherLeftLine)
        //: addSubview(otherRightLine)
        addSubview(otherRightLine)
        //: addSubview(appleLoginBtn)
        addSubview(appleLoginBtn)
        //: addSubview(lastLoginImgV)
        addSubview(lastLoginImgV)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func setup() {
        //: bgPlayer.snp.makeConstraints { make in
        bgPlayer.snp.makeConstraints { make in
            //: make.top.bottom.leading.trailing.equalToSuperview()
            make.top.bottom.leading.trailing.equalToSuperview()
        }
        //: logoView.snp.makeConstraints { make in
        logoView.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(77)
            make.width.height.equalTo(77)
            //: make.top.equalTo(StatusBarHeight + actualHeight(h: 80))
            make.top.equalTo(main_netValue + actualHeight(h: 80))
        }
        //: logoTitleLabel.snp.makeConstraints { make in
        logoTitleLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(logoView.snp.bottom).offset(9)
            make.top.equalTo(logoView.snp.bottom).offset(9)
        }
        //: privacyBtn.snp.makeConstraints { make in
        privacyBtn.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(33)
            make.height.equalTo(33)
            //: make.bottom.equalToSuperview().offset(-kDeviceSafeBottomHeight-10)
            make.bottom.equalToSuperview().offset(-appButtonData - 10)
        }
        //: termsUserBtn.snp.makeConstraints { make in
        termsUserBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(privacyBtn)
            make.centerY.equalTo(privacyBtn)
            //: make.height.equalTo(33)
            make.height.equalTo(33)
            //: make.trailing.equalTo(privacyBtn.snp.leading).offset(-24)
            make.trailing.equalTo(privacyBtn.snp.leading).offset(-24)
        }
        //: contactBtn.snp.makeConstraints { make in
        contactBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(privacyBtn)
            make.centerY.equalTo(privacyBtn)
            //: make.height.equalTo(33)
            make.height.equalTo(33)
            //: make.leading.equalTo(privacyBtn.snp.trailing).offset(24)
            make.leading.equalTo(privacyBtn.snp.trailing).offset(24)
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(privacyBtn.snp.top).offset(-20)
            make.bottom.equalTo(privacyBtn.snp.top).offset(-20)
        }

        //: let smallBtnSize = CGSize(width: 51, height: 51)
        let smallBtnSize = CGSize(width: 51, height: 51)
        //: googleLoginBtn.snp.makeConstraints { make in
        googleLoginBtn.snp.makeConstraints { make in
            //: make.size.equalTo(smallBtnSize)
            make.size.equalTo(smallBtnSize)
        }
        //: if DistanceAppManager.share.appConfigMode.enableEmailLogin == true {
        if DistanceAppManager.share.appConfigMode.enableEmailLogin == true {
            //: emailLoginBtn.snp.makeConstraints { make in
            emailLoginBtn.snp.makeConstraints { make in
                //: make.size.equalTo(smallBtnSize)
                make.size.equalTo(smallBtnSize)
            }
        }
        //: if DistanceAppManager.share.appConfigMode.enableSmsLogin == true {
        if DistanceAppManager.share.appConfigMode.enableSmsLogin == true {
            //: phoneLoginBtn.snp.makeConstraints { make in
            phoneLoginBtn.snp.makeConstraints { make in
                //: make.size.equalTo(smallBtnSize)
                make.size.equalTo(smallBtnSize)
            }
        }

        //: otherLabel.snp.makeConstraints { make in
        otherLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(stackView.snp.top).offset(-18)
            make.bottom.equalTo(stackView.snp.top).offset(-18)
        }
        //: otherLeftLine.snp.makeConstraints { make in
        otherLeftLine.snp.makeConstraints { make in
            //: make.centerY.equalTo(otherLabel)
            make.centerY.equalTo(otherLabel)
            //: make.height.equalTo(1)
            make.height.equalTo(1)
            //: make.width.equalTo(actualWidth(w: 106))
            make.width.equalTo(actualWidth(w: 106))
            //: make.trailing.equalTo(otherLabel.snp.leading).offset(-16)
            make.trailing.equalTo(otherLabel.snp.leading).offset(-16)
        }

        //: otherRightLine.snp.makeConstraints { make in
        otherRightLine.snp.makeConstraints { make in
            //: make.height.equalTo(1)
            make.height.equalTo(1)
            //: make.width.equalTo(actualWidth(w: 106))
            make.width.equalTo(actualWidth(w: 106))
            //: make.centerY.equalTo(otherLabel)
            make.centerY.equalTo(otherLabel)
            //: make.leading.equalTo(otherLabel.snp.trailing).offset(16)
            make.leading.equalTo(otherLabel.snp.trailing).offset(16)
        }
        //: appleLoginBtn.snp.makeConstraints { make in
        appleLoginBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(40)
            make.leading.equalTo(40)
            //: make.trailing.equalTo(-40)
            make.trailing.equalTo(-40)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.bottom.equalTo(otherLeftLine.snp.top).offset(-54)
            make.bottom.equalTo(otherLeftLine.snp.top).offset(-54)
        }

        //: appleLoginBtn.imageRectBlock = { (rect: CGRect) in
        appleLoginBtn.imageRectBlock = { (rect: CGRect) in
            //: if LanguageManager.shared.direction == .rightToLeft {
            if MakeLanguageManager.shared.direction == .rightToLeft {
                //: return CGRect(x: rect.width-30-9, y: (rect.height-37)/2, width: 30, height: 37)
                return CGRect(x: rect.width - 30 - 9, y: (rect.height - 37) / 2, width: 30, height: 37)
                //: } else {
            } else {
                //: return CGRect(x: 9, y: (rect.height-37)/2, width: 30, height: 37)
                return CGRect(x: 9, y: (rect.height - 37) / 2, width: 30, height: 37)
            }
        }
        //: appleLoginBtn.titleRectBlock = { (rect: CGRect) in
        appleLoginBtn.titleRectBlock = { (rect: CGRect) in
            //: return rect
            rect
        }

        // 展示上次登录提示
        //: let lastLogin = Defaults.string(forKey: TalkingLastLoginTypeCacheKey)
        let lastLogin = show_blockText.string(forKey: noti_buttonData)
        //: guard lastLogin != nil else {
        guard lastLogin != nil else {
            //: lastLoginImgV.isHidden = true
            lastLoginImgV.isHidden = true
            //: return
            return
        }
        //: switch LoginType(rawValue: lastLogin!) {
        switch PalmClusterLiteral(rawValue: lastLogin!) {
        //: case .AppleLogin:
        case .AppleLogin:
            //: lastLoginImgV.isHidden = appleLoginBtn.isHidden
            lastLoginImgV.isHidden = appleLoginBtn.isHidden
            //: lastLoginImgV.snp.makeConstraints { make in
            lastLoginImgV.snp.makeConstraints { make in
                //: make.trailing.equalTo(-15)
                make.trailing.equalTo(-15)
                //: make.bottom.equalTo(appleLoginBtn.snp.top).offset(17)
                make.bottom.equalTo(appleLoginBtn.snp.top).offset(17)
                //: if LanguageManager.shared.direction == .rightToLeft {
                if MakeLanguageManager.shared.direction == .rightToLeft {
                    //: make.height.equalTo(40)
                    make.height.equalTo(40)
                    //: make.width.equalTo(120)
                    make.width.equalTo(120)
                }
            }

        //: case .EmailLogin, .PwdEmailLogin:
        case .EmailLogin, .PwdEmailLogin:
            //: guard DistanceAppManager.share.appConfigMode.enableEmailLogin == true else {
            guard DistanceAppManager.share.appConfigMode.enableEmailLogin == true else {
                //: return }
                return
            }

            //: lastLoginImgV.snp.makeConstraints { make in
            lastLoginImgV.snp.makeConstraints { make in
                //: make.leading.equalTo(emailLoginBtn.snp.centerX).offset(-10)
                make.leading.equalTo(emailLoginBtn.snp.centerX).offset(-10)
                //: make.bottom.equalTo(emailLoginBtn.snp.top).offset(17)
                make.bottom.equalTo(emailLoginBtn.snp.top).offset(17)
                //: if LanguageManager.shared.direction == .rightToLeft {
                if MakeLanguageManager.shared.direction == .rightToLeft {
                    //: make.height.equalTo(40)
                    make.height.equalTo(40)
                    //: make.width.equalTo(120)
                    make.width.equalTo(120)
                }
            }

        //: case .GoogleLogin:
        case .GoogleLogin:
            //: lastLoginImgV.snp.makeConstraints { make in
            lastLoginImgV.snp.makeConstraints { make in
                //: make.leading.equalTo(googleLoginBtn.snp.centerX).offset(-10)
                make.leading.equalTo(googleLoginBtn.snp.centerX).offset(-10)
                //: make.bottom.equalTo(googleLoginBtn.snp.top).offset(17)
                make.bottom.equalTo(googleLoginBtn.snp.top).offset(17)
                //: if LanguageManager.shared.direction == .rightToLeft {
                if MakeLanguageManager.shared.direction == .rightToLeft {
                    //: make.height.equalTo(40)
                    make.height.equalTo(40)
                    //: make.width.equalTo(120)
                    make.width.equalTo(120)
                }
            }

        //: case .PhoneLogin, .PwdPhoneLogin:
        case .PhoneLogin, .PwdPhoneLogin:
            //: guard DistanceAppManager.share.appConfigMode.enableSmsLogin == true else {
            guard DistanceAppManager.share.appConfigMode.enableSmsLogin == true else {
                //: return }
                return
            }

            //: lastLoginImgV.snp.makeConstraints { make in
            lastLoginImgV.snp.makeConstraints { make in
                //: make.leading.equalTo(phoneLoginBtn.snp.centerX).offset(-10)
                make.leading.equalTo(phoneLoginBtn.snp.centerX).offset(-10)
                //: make.bottom.equalTo(phoneLoginBtn.snp.top).offset(17)
                make.bottom.equalTo(phoneLoginBtn.snp.top).offset(17)
                //: if LanguageManager.shared.direction == .rightToLeft {
                if MakeLanguageManager.shared.direction == .rightToLeft {
                    //: make.height.equalTo(40)
                    make.height.equalTo(40)
                    //: make.width.equalTo(120)
                    make.width.equalTo(120)
                }
            }

        //: default:
        default:
            //: break
            break
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func bind() {
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Login_Main_BG)
        let url = VideoEffectTool.default.conType(type: .Login_Main_BG)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.bgPlayer.videoItem = videoItem
                self.bgPlayer.videoItem = videoItem
                //: self.bgPlayer.startAnimation()
                self.bgPlayer.startAnimation()
            }
            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (kFillFormat.replacingOccurrences(of: "icon", with: "et") + String(kBlockUrl)))
        }

        //: appleLoginBtn.rx.controlEvent(.touchUpInside)
        appleLoginBtn.rx.controlEvent(.touchUpInside)
            //: .asObservable().throttle(RxTimeInterval.seconds(2), scheduler: MainScheduler.instance)
            .asObservable().throttle(RxTimeInterval.seconds(2), scheduler: MainScheduler.instance) // 2s内只处理第一次点击
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.btnBlock!(.AppleLogin)
                self.btnBlock!(.AppleLogin)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: googleLoginBtn.rx.controlEvent(.touchUpInside)
        googleLoginBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.btnBlock!(.GoogleLogin)
                self.btnBlock!(.GoogleLogin)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: phoneLoginBtn.rx.controlEvent(.touchUpInside)
        phoneLoginBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.btnBlock!(.PhoneLogin)
                self.btnBlock!(.PhoneLogin)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: emailLoginBtn.rx.controlEvent(.touchUpInside)
        emailLoginBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.btnBlock!(.EmailLogin)
                self.btnBlock!(.EmailLogin)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: termsUserBtn.rx.controlEvent(.touchUpInside)
        termsUserBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: {
            .subscribe(onNext: {
                //: AddReactiveCompatible.share.func__pushToWebVC(webViewType: .TermsofUse)
                AddReactiveCompatible.share.overCapacity(webViewType: .TermsofUse)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: privacyBtn.rx.controlEvent(.touchUpInside)
        privacyBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: {
            .subscribe(onNext: {
                //: AddReactiveCompatible.share.func__pushToWebVC(webViewType: .PrivacyPolicy)
                AddReactiveCompatible.share.overCapacity(webViewType: .PrivacyPolicy)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
        //: contactBtn.rx.controlEvent(.touchUpInside)
        contactBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: {
            .subscribe(onNext: {
                //: AddReactiveCompatible.share.func__pushFeedbackVC()
                AddReactiveCompatible.share.naturalProcess()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
