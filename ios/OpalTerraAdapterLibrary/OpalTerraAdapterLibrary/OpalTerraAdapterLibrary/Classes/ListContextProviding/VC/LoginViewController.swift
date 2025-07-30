
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_delayKey:[UInt8] = [0xd6,0xdb,0xd6,0xe1,0x95,0xd0,0xdc,0xd1,0xd2,0xdf,0xa7,0x96,0x8d,0xd5,0xce,0xe0,0x8d,0xdb,0xdc,0xe1,0x8d,0xcf,0xd2,0xd2,0xdb,0x8d,0xd6,0xda,0xdd,0xd9,0xd2,0xda,0xd2,0xdb,0xe1,0xd2,0xd1]

fileprivate func videoItem(frame num: UInt8) -> UInt8 {
    let value = Int(num) - 109
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Personal information" :*/
fileprivate let k_popValue:String = "Personorigin self color path manager"
fileprivate let kCancelFormat:String = "FORMATION"

/*: _ :*/
fileprivate let kBackgroundName:[Character] = ["_"]

/*: "male" :*/
fileprivate let kLabModelStr:[UInt8] = [0x33,0x27,0x32,0x2b]

fileprivate func fromDelay(make num: UInt8) -> UInt8 {
    let value = Int(num) + 58
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "female" :*/
fileprivate let kAttachStr:[Character] = ["f"]
fileprivate let k_iconUrl:[Character] = ["e","m","a","l","e"]

/*: "newHeadPic" :*/
fileprivate let kToMsg:String = "translate else comment textnewH"

/*: "invite_code" :*/
fileprivate let kIndexStr:String = "class enable size to datainvite_c"
fileprivate let kPopTitle:String = "ODE"

/*: "codeFillType" :*/
fileprivate let kHeadTotalStr:[Character] = ["c","o","d","e","F","i","l","l","T","y","p","e"]

/*: "RegisterSuccess" :*/
fileprivate let k_succeedMsg:[Character] = ["R","e","g","i","s","t","e"]
fileprivate let k_automaticKey:String = "rSucmode for"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LoginViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/24.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditPhotoVC: TalkingBaseViewController {
class LoginViewController: StartThen {
    //: fileprivate let disposeBag = DisposeBag()
    fileprivate let disposeBag = DisposeBag()
    //: var params = [String: Any]()
    var params = [String: Any]()
    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_delayKey.map{videoItem(frame: $0)}, encoding: .utf8)!)
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
        self.title = (String(k_popValue.prefix(6)) + "al in" + kCancelFormat.lowercased()).localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: self.setupSubviews()
        self.subviews()
        //: self.setupSubViewsConstraint()
        self.visualCommunicationPop()
        //: self.bindInteraction()
        self.humanAction()
        //: addTapGestureRecognizer()
        viewRecognizer()

        //: func__checkFinishBtnState()
        momentRange()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var editInfoView: TalkingLoginEditPhotoView = {
    lazy var editInfoView: AlongReactiveCompatible = {
        //: let infoView = TalkingLoginEditPhotoView.init()
        let infoView = AlongReactiveCompatible()
        //: return infoView
        return infoView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginEditPhotoVC {
extension LoginViewController {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func dataText() {
        //: super.naviPopback()
        super.dataText()
        // 埋点
        //: let eventID = "\(click_registration_information2_backBTN)_\(DistanceAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(const_endFileName)_\(DistanceAppManager.share.userFillInfoMode.sex == ManagerQuickLookable.male.rawValue ? String(bytes: kLabModelStr.map{fromDelay(make: $0)}, encoding: .utf8)! : (String(kAttachStr) + String(k_iconUrl)))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kSoundName.messUp(eventID: eventID)
    }

    /// next事件
    //: func commitControlAction() {
    func statusTotaleraction() {
        // 埋点
        //: let eventID = "\(click_registration_information2_nextBTN)_\(DistanceAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(userInformationValue)_\(DistanceAppManager.share.userFillInfoMode.sex == ManagerQuickLookable.male.rawValue ? String(bytes: kLabModelStr.map{fromDelay(make: $0)}, encoding: .utf8)! : (String(kAttachStr) + String(k_iconUrl)))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kSoundName.messUp(eventID: eventID)

        //: if DistanceAppManager.share.userFillInfoMode.headImage != nil {
        if DistanceAppManager.share.userFillInfoMode.headImage != nil {
            //: let image = DistanceAppManager.share.userFillInfoMode.headImage!
            let image = DistanceAppManager.share.userFillInfoMode.headImage!
            //: params["newHeadPic"] = image.jpegData(compressionQuality: 1)
            params[(String(kToMsg.suffix(4)) + "eadPic")] = image.jpegData(compressionQuality: 1)
        }
        //: if DistanceAppManager.share.userFillInfoMode.inviteCode.count > 0 {
        if DistanceAppManager.share.userFillInfoMode.inviteCode.count > 0 {
            //: params["invite_code"] = DistanceAppManager.share.userFillInfoMode.inviteCode
            params[(String(kIndexStr.suffix(8)) + kPopTitle.lowercased())] = DistanceAppManager.share.userFillInfoMode.inviteCode

            //: } else {
        } else {
            //: let inviteCode = UserDefaults.standard.string(forKey: SaveInviteCodeKey)
            let inviteCode = UserDefaults.standard.string(forKey: showIndexConversationTitle)
            //: if inviteCode?.count ?? 0 > 1 {
            if inviteCode?.count ?? 0 > 1 {
                //: params["invite_code"] = inviteCode
                params[(String(kIndexStr.suffix(8)) + kPopTitle.lowercased())] = inviteCode
                //: params["codeFillType"] = 1
                params[(String(kHeadTotalStr))] = 1
            }
        }

        //: if DistanceAppManager.share.userFillInfoMode.sex == "1" {
        if DistanceAppManager.share.userFillInfoMode.sex == "1" {
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
                    ListReactiveCompatible.share.holder(key: (String(k_succeedMsg) + String(k_automaticKey.prefix(4)) + "cess"))
                    //: FirebaseAnalyticsManager.share.logEvent(name: "RegisterSuccess")
                    DecisionMakerAnalyticsManager.share.upTimeParameters(name: (String(k_succeedMsg) + String(k_automaticKey.prefix(4)) + "cess"))

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
            //: } else {
        } else {
            //: let VC = TalkingLoginEditAuthAndVideoVC.init()
            let VC = AtVideoVc()
            //: VC.params = params
            VC.params = params
            //: self.currentViewController()?.navigationController?.pushViewController(VC, animated: true)
            self.selectStart()?.navigationController?.pushViewController(VC, animated: true)
        }
    }

    //: func func__checkFinishBtnState() {
    func momentRange() {
        //: let headImg = DistanceAppManager.share.userFillInfoMode.headImage ?? nil
        let headImg = DistanceAppManager.share.userFillInfoMode.headImage ?? nil
        //: editInfoView.commitButton.isEnabled = headImg != nil
        editInfoView.commitButton.isEnabled = headImg != nil
    }
}

// MARK: - Delegate

//: extension TalkingLoginEditPhotoVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
extension LoginViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //: private func func__choicePhotos() {
    private func reply() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) {  (isOpen: Bool) in
        ToolThen.withViewMerge(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                let vc = SizeThen.die(allowImgCrop: true, maxCount: 1, allowPhoto: true, allowVideo: false)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: AddReactiveCompatible.share.func__getCurrentActivityVC()?.present(vc, animated: true)
                AddReactiveCompatible.share.pageBy()?.present(vc, animated: true)
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
                            //: DistanceAppManager.share.userFillInfoMode.headImage = photos![0]
                            DistanceAppManager.share.userFillInfoMode.headImage = photos![0]
                            //: self.editInfoView.addHeadButton.setImage(photos![0], for: .normal)
                            self.editInfoView.addHeadButton.setImage(photos![0], for: .normal)
                            //: self.func__checkFinishBtnState()
                            self.momentRange()
                        }
                }
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLoginEditPhotoVC {
extension LoginViewController {
    // 添加视图
    //: private func setupSubviews() {
    private func subviews() {
        //: view.addSubview(editInfoView)
        view.addSubview(editInfoView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func visualCommunicationPop() {
        //: editInfoView.snp.makeConstraints { make in
        editInfoView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func humanAction() {
        //: editInfoView.btnBlock = { [weak self] (_ type: EditInfoType) -> Void in
        editInfoView.btnBlock = { [weak self] (_ type: FileInfoType) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: switch type {
            switch type {
            //: case .HeadPic:
            case .HeadPic:
                //: func__choicePhotos()
                reply()
            //: break
            //: case .NickName, .Birth, .Skip: break
            case .NickName, .Birth, .Skip: break
            //: case .Finish:
            case .Finish:
                //: self.commitControlAction()
                self.statusTotaleraction()
                //: break
            }

            //: return
        }
    }
}
