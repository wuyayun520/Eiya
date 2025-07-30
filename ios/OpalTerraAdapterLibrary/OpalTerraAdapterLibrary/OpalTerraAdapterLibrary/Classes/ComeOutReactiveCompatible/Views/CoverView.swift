
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_modelKey:[UInt8] = [0xfe,0xf9,0xfe,0xe3,0xbf,0xf4,0xf8,0xf3,0xf2,0xe5,0xad,0xbe,0xb7,0xff,0xf6,0xe4,0xb7,0xf9,0xf8,0xe3,0xb7,0xf5,0xf2,0xf2,0xf9,0xb7,0xfe,0xfa,0xe7,0xfb,0xf2,0xfa,0xf2,0xf9,0xe3,0xf2,0xf3]

private func equalBack(progress num: UInt8) -> UInt8 {
    return num ^ 151
}

/*: "icon_window_verification" :*/
fileprivate let kGenerateKey:String = "icon_share fill type"
fileprivate let k_buttonStr:[Character] = ["w","i"]
fileprivate let kEqualCustomUrl:String = "word button targetndow_"
fileprivate let kCoverFormat:String = "catgroupn"

/*: "Go to certify" :*/
fileprivate let kKeyName:[Character] = ["G","o"," ","t","o"," ","c","e","r","t","i","f","y"]

/*: "btn_me_program_photo_delete" :*/
fileprivate let kNumberUrl:String = "content self returnbtn_me"
fileprivate let k_liveKey:String = "gram_view table"
fileprivate let kShareKey:[Character] = ["p","h"]
fileprivate let kOfPath:String = "oto_break press"

/*: "Authentication is under reviewing" :*/
fileprivate let kSizeMessage:[UInt8] = [0x42,0x76,0x75,0x69,0x66,0x6f,0x75,0x6a,0x64,0x62,0x75,0x6a,0x70,0x6f,0x21,0x6a,0x74,0x21,0x76,0x6f,0x65,0x66,0x73,0x21,0x73,0x66,0x77,0x6a,0x66,0x78,0x6a,0x6f,0x68]

fileprivate func originShadow(model num: UInt8) -> UInt8 {
    let value = Int(num) + 255
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CoverView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/15.
//

//: import UIKit
import UIKit

//: class TalkingFaceVerificationPopUpView: UIView {
class CoverView: UIView {
    //: var popView: TalkingPopView?
    var popView: DataPopView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.troponomy()
        //: self.setupSubViewsConstraint()
        self.viewsViewConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_modelKey.map{equalBack(progress: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var backIcon: UIImageView = {
    private lazy var backIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.setUrlImage(urlStr: DistanceAppManager.share.appUserConfigMode.rpWindowBg, placeImg: UIImage.submitGift(name: "icon_window_verification"))
        imag.setUrlImage(urlStr: DistanceAppManager.share.appUserConfigMode.rpWindowBg, placeImg: UIImage.submitGift(name: (String(kGenerateKey.prefix(5)) + String(k_buttonStr) + String(kEqualCustomUrl.suffix(5)) + "verifi" + kCoverFormat.replacingOccurrences(of: "group", with: "io"))))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        btn.setBackgroundImage(UIImage.makeEqual(colors: UIColor.georgiaHomeBoy(), size: CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Go to certify".localized, for: .normal)
        btn.setTitle((String(kKeyName)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 16)
        btn.titleLabel?.font = UIFont.tapShared(fontSize: 16)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(upwardsOfMove), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.submitGift(name: "btn_me_program_photo_delete"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kNumberUrl.suffix(6)) + "_pro" + String(k_liveKey.prefix(5)) + String(kShareKey) + String(kOfPath.prefix(4)) + "delete")), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(admin), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFaceVerificationPopUpView {
extension CoverView {
    //: @objc private func finishBtnClick() {
    @objc private func upwardsOfMove() {
        //: dismiss()
        quantityeractionPresentation()
        //: if DistanceAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
        if DistanceAppManager.share.loginUserMode.isTPAuth == BreakValueConvertible.isSuccessed.rawValue {
            //: return
            return
                //: } else if DistanceAppManager.share.loginUserMode.isTPAuth == TPUserAuth.unknown.rawValue {
        } else if DistanceAppManager.share.loginUserMode.isTPAuth == BreakValueConvertible.unknown.rawValue {
            //: AddReactiveCompatible.share.func__pushUserVerifyController(toast: nil)
            AddReactiveCompatible.share.decisionToast(toast: nil)
            //: } else if DistanceAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if DistanceAppManager.share.loginUserMode.isTPAuth == BreakValueConvertible.isOnGoing.rawValue {
            //: self.func__showStatusBarErrorMsg(showMsg: "Authentication is under reviewing".localized)
            self.arcInfo(showMsg: String(bytes: kSizeMessage.map{originShadow(model: $0)}, encoding: .utf8)!.localized)
            //: } else {
        } else {
            //: AddReactiveCompatible.share.func__pushUserVerifyController(toast: nil)
            AddReactiveCompatible.share.decisionToast(toast: nil)
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func admin() {
        //: dismiss()
        quantityeractionPresentation()
    }

    //: func show() {
    func viewMediaSex() {
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
    @objc func quantityeractionPresentation() {
        //: popView?.dismissView()
        popView?.upView()
        //: popView = nil
        popView = nil
    }
}

// MARK: - Layout

//: extension TalkingFaceVerificationPopUpView {
extension CoverView {
    // 添加视图
    //: private func setupSubviews() {
    private func troponomy() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(backIcon)
        contentView.addSubview(backIcon)
        //: backIcon.addSubview(finishBtn)
        backIcon.addSubview(finishBtn)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func viewsViewConstraint() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(ScreenHeight/4)
            make.top.equalTo(user_recordMarginValue / 4)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 319, height: 386+60))
            make.size.equalTo(CGSize(width: 319, height: 386 + 60))
        }

        //: backIcon.snp.makeConstraints { make in
        backIcon.snp.makeConstraints { make in
            //: make.leading.trailing.top.equalToSuperview()
            make.leading.trailing.top.equalToSuperview()
            //: make.height.equalTo(386)
            make.height.equalTo(386)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-25)
            make.bottom.equalTo(-25)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.height.equalTo(203)
            make.height.equalTo(203)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(backIcon.snp.bottom).offset(30)
            make.top.equalTo(backIcon.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
    }
}
