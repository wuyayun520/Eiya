
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_dataStr:[UInt8] = [0x7c,0x81,0x7c,0x87,0x3b,0x76,0x82,0x77,0x78,0x85,0x4d,0x3c,0x33,0x7b,0x74,0x86,0x33,0x81,0x82,0x87,0x33,0x75,0x78,0x78,0x81,0x33,0x7c,0x80,0x83,0x7f,0x78,0x80,0x78,0x81,0x87,0x78,0x77]

fileprivate func socialLayer(last num: UInt8) -> UInt8 {
    let value = Int(num) - 19
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "bg_message_top" :*/
fileprivate let k_imageFormat:String = "make crop text viewbg_m"
fileprivate let k_upUrl:[Character] = ["e","_","t","o","p"]

/*: "img_me_edit_photo_default" :*/
fileprivate let kAccountId:String = "menu var view let modelimg_m"
fileprivate let kTingId:String = "style videot_ph"
fileprivate let k_rateMessage:[Character] = ["o","t","o","_","d","e","f","a","u","l","t"]

/*: "icon_lounge" :*/
fileprivate let kReasonCenterText:String = "model self icon counticon_"
fileprivate let kMonthMessage:String = "lbottomunge"

/*: "#777777" :*/
fileprivate let k_buttonMessage:String = "#"
fileprivate let kAlongName:[Character] = ["7","7","7","7","7","7"]

/*: "btn_me_copy" :*/
fileprivate let k_toMessage:String = "btn_mereason shrink"

/*: "btn_me_verify" :*/
fileprivate let k_changeId:String = "observe else cell kitbtn_m"
fileprivate let kListValue:String = "modefy"

/*: "btn_me_new_edit" :*/
fileprivate let k_infoMsg:String = "btn_mnumber status actual section cell"
fileprivate let kDataId:String = "e_neindex with"
fileprivate let k_actionData:[Character] = ["w","_","e","d","i","t"]

/*: "Followers" :*/
fileprivate let k_equalModelName:[Character] = ["F","o","l","l","o","w","e","r","s"]

/*: "Following" :*/
fileprivate let kAddText:String = "Follshow to return make"
fileprivate let k_workData:String = "G"

/*: "#D8D8D8" :*/
fileprivate let kTitleKey:String = "manager model nor#D8D8D8"

/*: "#FF506D" :*/
fileprivate let kDetailMsg:String = "#Fawake for self"
fileprivate let k_directionUrl:String = "Fapplication06D"

/*: "Reviewing" :*/
fileprivate let k_noName:String = "frame angle makeReviewi"
fileprivate let k_dataCustomMessage:[Character] = ["n","g"]

/*: "headPic" :*/
fileprivate let kConText:String = "headPimage feature make"
fileprivate let k_cellFormat:[Character] = ["i","c"]

/*: "Modify the success" :*/
fileprivate let kItemText:String = "make colorModify t"
fileprivate let kModeMessage:[Character] = ["h","e"," ","s","u"]
fileprivate let k_centerName:[Character] = ["c","c","e","s","s"]

/*: "UID:" :*/
fileprivate let k_voiceContent:[Character] = ["U","I","D",":"]

/*: "btn_me_verifed" :*/
fileprivate let k_modelEqualMessage:String = "btn_memake table"

/*: "UID Copied" :*/
fileprivate let k_domainViewFormat:String = "UID icon player"
fileprivate let kResignTitle:String = "size"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UserPullTopCell.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeTopCell: UITableViewCell {
class UserPullTopCell: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        withTable()
        //: setupSubViewsConstraint()
        createVerbally()
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_dataStr.map{socialLayer(last: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.submitGift(name: "bg_message_top"))
        let imag = UIImageView(image: UIImage.submitGift(name: (String(k_imageFormat.suffix(4)) + "essag" + String(k_upUrl))))
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var whiteBgView: UIView = {
    private lazy var whiteBgView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.layer.cornerRadius = 10
        v.layer.cornerRadius = 10
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var iconImag: UIButton = {
    private lazy var iconImag: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "img_me_edit_photo_default"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kAccountId.suffix(5)) + "e_edi" + String(kTingId.suffix(4)) + String(k_rateMessage))), for: .normal)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.layer.cornerRadius = 69/2
        btn.layer.cornerRadius = 69 / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(updatePhotoButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(voiceMove), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var iconBorder: UIButton = {
    private lazy var iconBorder: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var nameLB: UILabel = {
    private lazy var nameLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.fontChange(type: .Semibold, fontSize: 18)
        lb.font = UIFont.fontChange(type: .Semibold, fontSize: 18)
        //: lb.textColor = UIColor.colorStatuteNameApp()
        lb.textColor = UIColor.colorStatuteNameApp()
        //: lb.text = ""
        lb.text = ""
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var loungeImgV: UIImageView = {
    private lazy var loungeImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.submitGift(name: "icon_lounge")
        img.image = UIImage.submitGift(name: (String(kReasonCenterText.suffix(5)) + kMonthMessage.replacingOccurrences(of: "bottom", with: "o")))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var idBtn: TalkingButton = {
    private lazy var idBtn: ResumeControl = {
        //: let btn = TalkingButton.init()
        let btn = ResumeControl()
        //: btn.imageAlignment = .right
        btn.imageAlignment = .right
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.setTitleColor(UIColor.init(hex: "#777777"), for: .normal)
        btn.setTitleColor(UIColor(hex: (k_buttonMessage.capitalized + String(kAlongName))), for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.fontChange(type: .Regular, fontSize: 14)
        //: btn.setImage(UIImage.submitGift(name: "btn_me_copy"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(k_toMessage.prefix(6)) + "_copy")), for: .normal)
        //: btn.addTarget(self, action: #selector(copyBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(own), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var verifyBtn: UIButton = {
    private lazy var verifyBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "btn_me_verify"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(k_changeId.suffix(5)) + "e_ve" + kListValue.replacingOccurrences(of: "mode", with: "ri"))), for: .normal)
        //: btn.addTarget(self, action: #selector(verifyBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(imageClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var editImag: UIImageView = {
    private lazy var editImag: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.submitGift(name: "btn_me_new_edit"))
        let imag = UIImageView(image: UIImage.submitGift(name: (String(k_infoMsg.prefix(5)) + String(kDataId.prefix(4)) + String(k_actionData))))
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var editPushBtn: UIButton = {
    private lazy var editPushBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(editBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(decisionMakerGreet), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var followersBtn: UIButton = {
    private lazy var followersBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(followersBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(firstName), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var followersLab: UILabel = {
    private lazy var followersLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appValueDetailColor()
        lab.textColor = .childMenu()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Followers".localized
        lab.text = (String(k_equalModelName)).localized
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.targetFor(fontSize: 14)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followersNum: UILabel = {
    private lazy var followersNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .colorStatuteNameApp()
        lab.textColor = .colorStatuteNameApp()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 15)
        lab.font = UIFont.tapShared(fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followingBtn: UIButton = {
    private lazy var followingBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(followingBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(objectTip), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var followingLab: UILabel = {
    private lazy var followingLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appValueDetailColor()
        lab.textColor = .childMenu()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Following".localized
        lab.text = (String(kAddText.prefix(4)) + "owin" + k_workData.lowercased()).localized
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.targetFor(fontSize: 14)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followingNum: UILabel = {
    private lazy var followingNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .colorStatuteNameApp()
        lab.textColor = .colorStatuteNameApp()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 15)
        lab.font = UIFont.tapShared(fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var line: UIView = {
    private lazy var line: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#D8D8D8")
        v.backgroundColor = UIColor(hex: (String(kTitleKey.suffix(7))))
        //: v.layer.cornerRadius = 1
        v.layer.cornerRadius = 1
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var statusLB: UILabel = {
    private lazy var statusLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.fontChange(type: .Medium, fontSize: 12)
        lb.font = UIFont.fontChange(type: .Medium, fontSize: 12)
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.backgroundColor = UIColor.init(hex: "#FF506D")
        lb.backgroundColor = UIColor(hex: (String(kDetailMsg.prefix(2)) + k_directionUrl.replacingOccurrences(of: "application", with: "5")))
        //: lb.text = "Reviewing".localized
        lb.text = (String(k_noName.suffix(7)) + String(k_dataCustomMessage)).localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.layer.cornerRadius = 8
        lb.layer.cornerRadius = 8
        //: lb.layer.masksToBounds = true
        lb.layer.masksToBounds = true
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingMeTopCell {
extension UserPullTopCell {
    /// 更新个人资料
    //: private func req_updateInfo(img: UIImage) {
    private func modifyPush(img: UIImage) {
        //: let resultData: NSData = img.compressedImageData()! as NSData
        let resultData: NSData = img.compressedImageData()! as NSData
        //: let dict = ["headPic": resultData]
        let dict = [(String(kConText.prefix(5)) + String(k_cellFormat)): resultData]
        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: TalkingMeRequestTool.req_UpdateUserInfo(params: dict) { [weak self] succeed, result, errorModel in
        FileListRequestTool.equalCompletion(params: dict) { [weak self] succeed, result, errorModel in
            //: EndProgressHUD.popEnable()
            EndProgressHUD.popEnable()
            //: guard let self = self else {return}
            guard let self = self else { return }
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
            self.rear(showMsg: (String(kItemText.suffix(8)) + String(kModeMessage) + String(k_centerName)).localized)
            //: let data: Dictionary = result as! Dictionary<String, Any>
            let data: Dictionary = result as! [String: Any]
            //: DistanceAppManager.share.loginUserMode.headPic = data["headPic"] as? String
            DistanceAppManager.share.loginUserMode.headPic = data[(String(kConText.prefix(5)) + String(k_cellFormat))] as? String
            //: statusLB.isHidden = false
            statusLB.isHidden = false
            //: DistanceAppManager.share.loginUserMode.headPicStatus = 0
            DistanceAppManager.share.loginUserMode.headPicStatus = 0
            //: self.iconImag.setUrlImage(urlStr: DistanceAppManager.share.loginUserMode.headPic ?? "img_me_edit_photo_default")
            self.iconImag.successOn(urlStr: DistanceAppManager.share.loginUserMode.headPic ?? (String(kAccountId.suffix(5)) + "e_edi" + String(kTingId.suffix(4)) + String(k_rateMessage)))
        }
    }
}

// MARK: - Event

//: extension TalkingMeTopCell {
extension UserPullTopCell {
    /// 更新数据
    //: func setViewData() {
    func receiveSuccess() {
        //: iconImag.setUrlImage(urlStr: DistanceAppManager.share.loginUserMode.headPic ?? "img_me_edit_photo_default")
        iconImag.successOn(urlStr: DistanceAppManager.share.loginUserMode.headPic ?? (String(kAccountId.suffix(5)) + "e_edi" + String(kTingId.suffix(4)) + String(k_rateMessage)))
        //: iconBorder.setHeadFrameUrlImage(urlStr: DistanceAppManager.share.loginUserMode.headPicFrame)
        iconBorder.templeVisualisationSetFrame(urlStr: DistanceAppManager.share.loginUserMode.headPicFrame)
        //: nameLB.textColor = DistanceAppManager.share.loginUserMode.loungePlus ? .userVipColor():.colorStatuteNameApp()
        nameLB.textColor = DistanceAppManager.share.loginUserMode.loungePlus ? .usufructuaryHeadSkinColour() : .colorStatuteNameApp()
        //: nameLB.text = DistanceAppManager.share.loginUserMode.nickname
        nameLB.text = DistanceAppManager.share.loginUserMode.nickname
        //: loungeImgV.isHidden = !DistanceAppManager.share.loginUserMode.loungePlus
        loungeImgV.isHidden = !DistanceAppManager.share.loginUserMode.loungePlus
        //: idBtn.setTitle("UID:" + DistanceAppManager.share.loginUserMode.userID, for: .normal)
        idBtn.setTitle((String(k_voiceContent)) + DistanceAppManager.share.loginUserMode.userID, for: .normal)
        //: if DistanceAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
        if DistanceAppManager.share.loginUserMode.isTPAuth == BreakValueConvertible.isSuccessed.rawValue {
            //: verifyBtn.setImage(UIImage.submitGift(name: "btn_me_verifed"), for: .normal)
            verifyBtn.setImage(UIImage.submitGift(name: (String(k_modelEqualMessage.prefix(6)) + "_verifed")), for: .normal)
            //: } else {
        } else {
            //: verifyBtn.setImage(UIImage.submitGift(name: "btn_me_verify"), for: .normal)
            verifyBtn.setImage(UIImage.submitGift(name: (String(k_changeId.suffix(5)) + "e_ve" + kListValue.replacingOccurrences(of: "mode", with: "ri"))), for: .normal)
        }
        //: statusLB.isHidden = (DistanceAppManager.share.loginUserMode.headPicStatus != HeadePicStatus.isOnGoing.rawValue)
        statusLB.isHidden = (DistanceAppManager.share.loginUserMode.headPicStatus != WithStatusTitleConvertible.isOnGoing.rawValue)
        //: followersNum.text = DistanceAppManager.share.loginUserMode.fansNum ?? "0"
        followersNum.text = DistanceAppManager.share.loginUserMode.fansNum ?? "0"
        //: followingNum.text = DistanceAppManager.share.loginUserMode.attentionNum ?? "0"
        followingNum.text = DistanceAppManager.share.loginUserMode.attentionNum ?? "0"
    }

    /// copy Id
    //: @objc private func copyBtnClick() {
    @objc private func own() {
        //: let paste = UIPasteboard.general
        let paste = UIPasteboard.general
        //: paste.string = DistanceAppManager.share.loginUserMode.userID
        paste.string = DistanceAppManager.share.loginUserMode.userID
        //: self.func__showStatusBarSuccessMsg(showMsg: "UID Copied".localized)
        self.rear(showMsg: (String(k_domainViewFormat.prefix(4)) + "Copie" + kResignTitle.replacingOccurrences(of: "size", with: "d")).localized)
    }

    /// 更新photo
    //: @objc private func updatePhotoButtonClick() {
    @objc private func voiceMove() {
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
                            self.modifyPush(img: image)
                        }
                        //: return
                }
            }
        }
    }

    /// 真人认证
    //: @objc private func verifyBtnClick() {
    @objc private func imageClick() {
        // 先判断上传的头像是否通过，再判断真人认证状态
//        if DistanceAppManager.share.loginUserMode.headPicStatus == WithStatusTitleConvertible.unknown.rawValue {
//            self.func__showStatusBarErrorMsg(showMsg: "Please finish uploading your avatar first")
//        } else if DistanceAppManager.share.loginUserMode.headPicStatus == WithStatusTitleConvertible.isOnGoing.rawValue {
//            self.func__showStatusBarErrorMsg(showMsg: "Avatar is under reviewing")
//        } else {
//            isTPAuthTool()
//        }
        //: isTPAuthTool()
        enableCorner()
    }

    //: private func isTPAuthTool() {
    private func enableCorner() {
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
            //: let vc = TalkingFinalVerificationVC()
            let vc = StreamViewController()
            //: AddReactiveCompatible.share.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
            AddReactiveCompatible.share.pageBy()?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: AddReactiveCompatible.share.func__pushUserVerifyController(toast: nil)
            AddReactiveCompatible.share.decisionToast(toast: nil)
        }
    }

    /// 编辑个人资料
    //: @objc private func editBtnClick() {
    @objc private func decisionMakerGreet() {
        //: AddReactiveCompatible.share.func__pushToUserDetailVC(uid: DistanceAppManager.share.loginUid)
        AddReactiveCompatible.share.afterTo(uid: DistanceAppManager.share.loginUid)
    }

    /// followers
    //: @objc private func followersBtnClick() {
    @objc private func firstName() {
        //: let vc = TalkingFavouriteViewController()
        let vc = LadeViewController()
        //: vc.currentIndex = 0
        vc.currentIndex = 0
        //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
        self.selectStart()?.navigationController?.pushViewController(vc, animated: true)
    }

    /// following
    //: @objc private func followingBtnClick() {
    @objc private func objectTip() {
        //: let vc = TalkingFavouriteViewController()
        let vc = LadeViewController()
        //: vc.currentIndex = 1
        vc.currentIndex = 1
        //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
        self.selectStart()?.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingMeTopCell {
extension UserPullTopCell {
    /// 添加视图
    //: private func setupSubviews() {
    private func withTable() {
        //: self.contentView.addSubview(bgImgView)
        self.contentView.addSubview(bgImgView)
        //: bgImgView.addSubview(whiteBgView)
        bgImgView.addSubview(whiteBgView)
        //: whiteBgView.addSubview(iconImag)
        whiteBgView.addSubview(iconImag)
        //: whiteBgView.addSubview(iconBorder)
        whiteBgView.addSubview(iconBorder)
        //: whiteBgView.addSubview(nameLB)
        whiteBgView.addSubview(nameLB)
        //: whiteBgView.addSubview(loungeImgV)
        whiteBgView.addSubview(loungeImgV)
        //: whiteBgView.addSubview(idBtn)
        whiteBgView.addSubview(idBtn)
        //: whiteBgView.addSubview(verifyBtn)
        whiteBgView.addSubview(verifyBtn)
        //: whiteBgView.addSubview(editImag)
        whiteBgView.addSubview(editImag)
        //: whiteBgView.addSubview(editPushBtn)
        whiteBgView.addSubview(editPushBtn)
        //: whiteBgView.addSubview(followersBtn)
        whiteBgView.addSubview(followersBtn)
        //: whiteBgView.addSubview(statusLB)
        whiteBgView.addSubview(statusLB)
        //: followersBtn.addSubview(followersLab)
        followersBtn.addSubview(followersLab)
        //: followersBtn.addSubview(followersNum)
        followersBtn.addSubview(followersNum)
        //: whiteBgView.addSubview(followingBtn)
        whiteBgView.addSubview(followingBtn)
        //: followingBtn.addSubview(followingLab)
        followingBtn.addSubview(followingLab)
        //: followingBtn.addSubview(followingNum)
        followingBtn.addSubview(followingNum)
        //: whiteBgView.addSubview(line)
        whiteBgView.addSubview(line)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func createVerbally() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
            //: make.height.equalTo(StatusBarHeight+181)
            make.height.equalTo(main_netValue + 181)
        }

        //: whiteBgView.snp.makeConstraints { make in
        whiteBgView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(StatusBarHeight+9)
            make.top.equalTo(main_netValue + 9)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(160)
            make.height.equalTo(160)
        }

        //: iconImag.snp.makeConstraints { make in
        iconImag.snp.makeConstraints { make in
            //: make.leading.top.equalToSuperview().offset(12)
            make.leading.top.equalToSuperview().offset(12)
            //: make.width.height.equalTo(69)
            make.width.height.equalTo(69)
        }
        //: iconBorder.snp.makeConstraints { make in
        iconBorder.snp.makeConstraints { make in
            //: make.leading.top.equalToSuperview().offset(7)
            make.leading.top.equalToSuperview().offset(7)
            //: make.width.height.equalTo(80)
            make.width.height.equalTo(80)
        }
        //: statusLB.snp.makeConstraints { make in
        statusLB.snp.makeConstraints { make in
            //: make.top.equalTo(iconImag.snp.top).offset(-7)
            make.top.equalTo(iconImag.snp.top).offset(-7)
            //: make.centerX.equalTo(iconImag)
            make.centerX.equalTo(iconImag)
            //: make.size.equalTo(CGSize.init(width: 65, height: 16))
            make.size.equalTo(CGSize(width: 65, height: 16))
        }

        //: nameLB.snp.makeConstraints { make in
        nameLB.snp.makeConstraints { make in
            //: make.leading.equalTo(iconImag.snp.trailing).offset(10)
            make.leading.equalTo(iconImag.snp.trailing).offset(10)
            //: make.top.equalTo(iconImag)
            make.top.equalTo(iconImag)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
            //: make.width.lessThanOrEqualTo(ScreenWidth/2)
            make.width.lessThanOrEqualTo(constFormalContent / 2)
        }

        //: loungeImgV.snp.makeConstraints { make in
        loungeImgV.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLB.snp.trailing).offset(4)
            make.leading.equalTo(nameLB.snp.trailing).offset(4)
            //: make.centerY.equalTo(nameLB)
            make.centerY.equalTo(nameLB)
            //: make.size.equalTo(CGSize(width: 20, height: 20))
            make.size.equalTo(CGSize(width: 20, height: 20))
        }

        //: idBtn.snp.makeConstraints { make in
        idBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(iconImag.snp.trailing).offset(12)
            make.leading.equalTo(iconImag.snp.trailing).offset(12)
            //: make.top.equalTo(nameLB.snp.bottom).offset(8)
            make.top.equalTo(nameLB.snp.bottom).offset(8)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
        }

        //: verifyBtn.snp.makeConstraints { make in
        verifyBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLB)
            make.leading.equalTo(nameLB)
            //: make.top.equalTo(idBtn.snp.bottom).offset(8)
            make.top.equalTo(idBtn.snp.bottom).offset(8)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
        }

        //: editImag.snp.makeConstraints { make in
        editImag.snp.makeConstraints { make in
            //: make.centerY.equalTo(iconImag)
            make.centerY.equalTo(iconImag)
            //: make.trailing.equalToSuperview().offset(-16)
            make.trailing.equalToSuperview().offset(-16)
            //: make.width.equalTo(6)
            make.width.equalTo(6)
            //: make.height.equalTo(11)
            make.height.equalTo(11)
        }
        //: editPushBtn.snp.makeConstraints { make in
        editPushBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(editImag)
            make.centerY.equalTo(editImag)
            //: make.trailing.equalToSuperview().offset(-10)
            make.trailing.equalToSuperview().offset(-10)
            //: make.width.height.equalTo(60)
            make.width.height.equalTo(60)
        }

        //: followersBtn.snp.makeConstraints { make in
        followersBtn.snp.makeConstraints { make in
            //: make.top.equalTo(iconImag.snp.bottom)
            make.top.equalTo(iconImag.snp.bottom)
            //: make.leading.bottom.equalToSuperview()
            make.leading.bottom.equalToSuperview()
            //: make.trailing.equalTo(whiteBgView.snp.centerX)
            make.trailing.equalTo(whiteBgView.snp.centerX)
        }
        //: followersLab.snp.makeConstraints { make in
        followersLab.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(25)
            make.top.equalToSuperview().offset(25)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: followersNum.snp.makeConstraints { make in
        followersNum.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }

        //: followingBtn.snp.makeConstraints { make in
        followingBtn.snp.makeConstraints { make in
            //: make.top.equalTo(followersBtn)
            make.top.equalTo(followersBtn)
            //: make.trailing.bottom.equalToSuperview()
            make.trailing.bottom.equalToSuperview()
            //: make.leading.equalTo(whiteBgView.snp.centerX)
            make.leading.equalTo(whiteBgView.snp.centerX)
        }
        //: followingLab.snp.makeConstraints { make in
        followingLab.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(25)
            make.top.equalToSuperview().offset(25)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: followingNum.snp.makeConstraints { make in
        followingNum.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }

        //: line.snp.makeConstraints { make in
        line.snp.makeConstraints { make in
            //: make.top.equalTo(iconImag.snp.bottom).offset(32)
            make.top.equalTo(iconImag.snp.bottom).offset(32)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 2, height: 27))
            make.size.equalTo(CGSize(width: 2, height: 27))
        }
    }
}
