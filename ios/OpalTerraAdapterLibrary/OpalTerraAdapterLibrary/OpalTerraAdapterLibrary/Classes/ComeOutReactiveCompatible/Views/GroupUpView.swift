
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_voiceValue:[UInt8] = [0x8e,0x93,0x8e,0x99,0x4d,0x88,0x94,0x89,0x8a,0x97,0x5f,0x4e,0x45,0x8d,0x86,0x98,0x45,0x93,0x94,0x99,0x45,0x87,0x8a,0x8a,0x93,0x45,0x8e,0x92,0x95,0x91,0x8a,0x92,0x8a,0x93,0x99,0x8a,0x89]

fileprivate func firstOrigin(page num: UInt8) -> UInt8 {
    let value = Int(num) - 37
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_livetc_warn" :*/
fileprivate let kIconStr:[Character] = ["i","c","o","n","_"]
fileprivate let k_windowFormat:[Character] = ["l","i","v","e","t","c","_","w","a","r","n"]

/*: "System notification" :*/
fileprivate let k_hiddenId:String = "Systelet normal post"
fileprivate let k_voiceFormat:String = "cardica"
fileprivate let k_toName:String = "tioview"

/*: "Upload Now" :*/
fileprivate let k_nameValue:[Character] = ["U","p","l","o","a","d"]
fileprivate let k_sessionName:String = "make item gesture range Now"

/*: "btn_me_program_photo_delete" :*/
fileprivate let k_appUrl:String = "let data fillbtn_m"
fileprivate let k_userId:String = "class labelram_p"
fileprivate let kModeColorData:[Character] = ["h","o","t","o","_","d"]
fileprivate let k_phoneId:[Character] = ["e","l","e","t","e"]

/*: "content" :*/
fileprivate let k_nameStr:[Character] = ["c","o","n","t","e","n","t"]

/*: "jumpKey" :*/
fileprivate let kTitleMakeHeightContent:String = "origin title makejumpKey"

/*: "uploadUserHeaderPic" :*/
fileprivate let kLineTitle:String = "U"
fileprivate let kButtonPlayerKey:[Character] = ["p","l","o","a","d","U","s","e","r","H","e","a","d","e","r","P","i","c"]

/*: "truePersonAuth" :*/
fileprivate let k_makeTitle:[Character] = ["t","r","u","e","P","e","r","s","o"]
fileprivate let k_messageModelSuperName:String = "currency table selected data submitnAuth"

/*: "headPic" :*/
fileprivate let k_greetStr:[Character] = ["h","e","a","d","P","i","c"]

/*: "Modify the success" :*/
fileprivate let k_yourTitle:String = "Modifystyle interaction size of"
fileprivate let kFrameText:String = "sumanageress"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GroupUpView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/23.
//

//: import UIKit
import UIKit

/// 真人认证被拒,头像审核提示弹窗

//: class TalkingAttestationRefusePopUpView: UIView {
class GroupUpView: UIView {
    //: var popView: TalkingPopView?
    var popView: DataPopView?
    //: var pushType = ""
    var pushType = ""

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.setupShSubviews()
        //: self.setupSubViewsConstraint()
        self.georgiaHomeBoyConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_voiceValue.map{firstOrigin(page: $0)}, encoding: .utf8)!)
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
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.image = UIImage.submitGift(name: "icon_livetc_warn")
        imag.image = UIImage.submitGift(name: (String(kIconStr) + String(k_windowFormat)))
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var title: UILabel = {
    private lazy var title: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.black
        lb.textColor = UIColor.black
        //: lb.font = UIFont.fontChange(type: .Medium, fontSize: 18)
        lb.font = UIFont.fontChange(type: .Medium, fontSize: 18)
        //: lb.text = "System notification".localized
        lb.text = (String(k_hiddenId.prefix(5)) + "m not" + k_voiceFormat.replacingOccurrences(of: "card", with: "if") + k_toName.replacingOccurrences(of: "view", with: "n")).localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var mesageLB: UILabel = {
    private lazy var mesageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.black
        lb.textColor = UIColor.black
        //: lb.font = UIFont.fontChange(type: .Regular, fontSize: 16)
        lb.font = UIFont.fontChange(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
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
        //: btn.setTitle("Upload Now".localized, for: .normal)
        btn.setTitle((String(k_nameValue) + String(k_sessionName.suffix(4))).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 18)
        btn.titleLabel?.font = UIFont.tapShared(fontSize: 18)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(completeForClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.submitGift(name: "btn_me_program_photo_delete"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(k_appUrl.suffix(5)) + "e_prog" + String(k_userId.suffix(5)) + String(kModeColorData) + String(k_phoneId))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(fileCell), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingAttestationRefusePopUpView {
extension GroupUpView {
    //: func setViewData(dit: [String: String]) {
    func viewMini(dit: [String: String]) {
        //: mesageLB.text = dit["content"]
        mesageLB.text = dit[(String(k_nameStr))]
        //: pushType = dit["jumpKey"] ?? ""
        pushType = dit[(String(kTitleMakeHeightContent.suffix(7)))] ?? ""
    }

    //: @objc private func finishBtnClick() {
    @objc private func completeForClick() {
        //: if pushType == "uploadUserHeaderPic" {
        if pushType == (kLineTitle.lowercased() + String(kButtonPlayerKey)) {
            //: updatePhotoButtonClick()
            modifyShow()
            //: } else if pushType == "truePersonAuth" {
        } else if pushType == (String(k_makeTitle) + String(k_messageModelSuperName.suffix(5))) {
            //: DistanceAppManager.share.loginUserMode.isTPAuth = "3"
            DistanceAppManager.share.loginUserMode.isTPAuth = "3"
            //: AddReactiveCompatible.share.func__pushUserVerifyController(toast: nil)
            AddReactiveCompatible.share.decisionToast(toast: nil)
            //: dismiss()
            upDismiss()
        }
    }

    //: @objc private func closeBtnClick() {
    @objc private func fileCell() {
        //: dismiss()
        upDismiss()
    }

    //: func show() {
    func atStop() {
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
    @objc func upDismiss() {
        //: popView?.dismissView()
        popView?.upView()
        //: popView = nil
        popView = nil
    }

    /// 更新photo
    //: private func updatePhotoButtonClick() {
    private func modifyShow() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        ToolThen.withViewMerge(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = SizeThen.die(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: self.currentViewController()?.present(vc, animated: true)
                self.selectStart()?.present(vc, animated: true)
                //: vc.didFinishPickingPhotosHandle = { [weak self] ( photos: Array<UIImage>?,
                vc.didFinishPickingPhotosHandle = { [weak self] (photos: [UIImage]?,
                                                                 //: assets: Array<Any>?,
                                                                 _: [Any]?,
                                                                 //: isSelectOriginalPhoto: Bool?)  in
                                                                 _: Bool?) in
                        //: guard let self = self else {return}
                        guard let self = self else { return }
                        //: if photos!.count > 0 {
                        if photos!.count > 0 {
                            //: let image: UIImage = photos?[0] ?? UIImage()
                            let image: UIImage = photos?[0] ?? UIImage()
                            // 上传头像
                            //: self.req_updateInfo(img: image)
                            self.popDoing(img: image)
                        }
                        //: return
                }
                //: vc.imagePickerControllerDidCancelHandle = { [weak self] in
                vc.imagePickerControllerDidCancelHandle = { [weak self] in
                    //: guard let self = self else {return}
                    guard let self = self else { return }
                    //: self.dismiss()
                    self.upDismiss()
                }
                //: } else {
            } else {
                //: self.dismiss()
                self.upDismiss()
            }
        }
    }

    //: private func req_updateInfo(img: UIImage) {
    private func popDoing(img: UIImage) {
        //: let resultData: NSData = img.compressedImageData()! as NSData
        let resultData: NSData = img.compressedImageData()! as NSData
        //: let dict = ["headPic": resultData]
        let dict = [(String(k_greetStr)): resultData]
        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: TalkingMeRequestTool.req_UpdateUserInfo(params: dict) { [weak self] succeed, result, errorModel in
        FileListRequestTool.equalCompletion(params: dict) { [weak self] succeed, result, errorModel in
            //: EndProgressHUD.popEnable()
            EndProgressHUD.popEnable()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.dismiss()
            self.upDismiss()
            //: guard succeed else {
            guard succeed else {
                //: if errorModel?.errorCode != 100 {
                if errorModel?.errorCode != 100 {
                    //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                    self.arcInfo(showMsg: errorModel!.errorMsg)
                }
                //: return
                return
            }
            //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
            self.rear(showMsg: (String(k_yourTitle.prefix(6)) + " the " + kFrameText.replacingOccurrences(of: "manager", with: "cc")).localized)
            //: let data: Dictionary = result as! Dictionary<String, Any>
            let data: Dictionary = result as! [String: Any]
            //: DistanceAppManager.share.loginUserMode.headPic = data["headPic"] as? String
            DistanceAppManager.share.loginUserMode.headPic = data[(String(k_greetStr))] as? String
            //: DistanceAppManager.share.loginUserMode.headPicStatus = 0
            DistanceAppManager.share.loginUserMode.headPicStatus = 0
        }
    }
}

// MARK: - Layout

//: extension TalkingAttestationRefusePopUpView {
extension GroupUpView {
    // 添加视图
    //: private func setupSubviews() {
    private func setupShSubviews() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(title)
        contentView.addSubview(title)
        //: contentView.addSubview(mesageLB)
        contentView.addSubview(mesageLB)
        //: contentView.addSubview(finishBtn)
        contentView.addSubview(finishBtn)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func georgiaHomeBoyConstraint() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 297), height: actualWidth(w: 350)))
            make.size.equalTo(CGSize(width: actualWidth(w: 297), height: actualWidth(w: 350)))
        }
        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.size.equalTo(actualWidth(w: 93))
            make.size.equalTo(actualWidth(w: 93))
        }
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(topIcon.snp.bottom).offset(21)
            make.top.equalTo(topIcon.snp.bottom).offset(21)
        }
        //: mesageLB.snp.makeConstraints { make in
        mesageLB.snp.makeConstraints { make in
            //: make.leading.equalTo(21)
            make.leading.equalTo(21)
            //: make.trailing.equalTo(-21)
            make.trailing.equalTo(-21)
            //: make.top.equalTo(title.snp.bottom).offset(10)
            make.top.equalTo(title.snp.bottom).offset(10)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.width.equalTo(203)
            make.width.equalTo(203)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentView.snp.bottom).offset(30)
            make.top.equalTo(contentView.snp.bottom).offset(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
    }
}
