
//: Declare String Begin

/*: "content" :*/
fileprivate let kDataPath:String = "conshowenshow"

/*: "jumpKey" :*/
fileprivate let k_pageKey:[Character] = ["j","u","m","p","K","e","y"]

/*: "uploadUserHeaderPic" :*/
fileprivate let kMessageName:String = "uploadUsindex false"
fileprivate let kToMsg:String = "erHtitle start"
fileprivate let k_rawInfoMessage:[Character] = ["e","a","d","e","r","P","i","c"]

/*: "truePersonAuth" :*/
fileprivate let kDailyStyleKey:String = "truePlet event current make icon"
fileprivate let k_assetName:String = "ERSON"

/*: "yyyy-MM-dd" :*/
fileprivate let k_sectionWithViewPath:[Character] = ["y","y"]
fileprivate let k_textMakeValue:String = "yy-Mself name"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FrameReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/17.
//

//: import UIKit
import UIKit

//: enum PopupWindowType: CaseIterable {
enum PitchWindowType: CaseIterable {
    //: case sign_in
    case sign_in // 签到
    //: case video_Cover
    case video_Cover // 上传视频封面提醒弹窗
    //: case startLive_Tips
    case startLive_Tips // 开播提醒弹窗
    //: case video_Call
    case video_Call // 主动拨打弹窗
    //: case face_Verification
    case face_Verification // 需要真人认证弹窗
    //: case Web_Subscribe
    case Web_Subscribe // 会员订阅弹窗
    //: case Attestation_Refuse
    case Attestation_Refuse // 真人认证，头像上传，被拒绝时提示弹窗
    //: case New_Guidance
    case New_Guidance // 主播引导弹窗（女性首次注册，未完成全部新人任务）
}

//: class TalkingPopupWindowManager: NSObject {
class FrameReactiveCompatible: NSObject {
    //: var dataSource = Array<PopupWindowType>()
    var dataSource = [PitchWindowType]()
    //: var alertQueue: PublishSubject<PopupWindowType> = PublishSubject<PopupWindowType>()
    var alertQueue: PublishSubject<PitchWindowType> = .init()
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: private var isShowLiveTipsView = false
    private var isShowLiveTipsView = false
    /// 通话中，结束后再显示审核拒绝提示弹窗
    //: private var isLateronRefuseView = false
    private var isLateronRefuseView = false

    //: var refuseViewData = [String: String]()
    var refuseViewData = [String: String]()

    //: static let shared = TalkingPopupWindowManager()
    static let shared = FrameReactiveCompatible()
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: setObserver()
        bottleShowBeholder()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: extension TalkingPopupWindowManager {
extension FrameReactiveCompatible {
    //: func setObserver() {
    func bottleShowBeholder() {
        //: alertQueue.asObservable().subscribe(onNext: { [weak self]  type in
        alertQueue.asObservable().subscribe(onNext: { [weak self] type in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.dataSource.append(type)
            self.dataSource.append(type)
            //: self.showAlert()
            self.underPack()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: NotificationCenter.default.addObserver(self, selector: #selector(showRefuseView), name: VIDEOCALL_END_CLOSEDISCOUNTS_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(exhibitEqual), name: constEventValue, object: nil)
    }

    //: func setHomePopUpWindow() {
    func formatWindow() {
        // 默认模式, 男性, 未订阅
        //: if DistanceAppManager.share.loginUserMode.jumpType == 0,
        if DistanceAppManager.share.loginUserMode.jumpType == 0,
           //: DistanceAppManager.share.appUserConfigMode.payWinType == 2,
           DistanceAppManager.share.appUserConfigMode.payWinType == 2,
           //: DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue,
           DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue,
           //: DistanceAppManager.share.loginUserMode.sex == Gender.male.rawValue,
           DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.male.rawValue,
           //: DistanceAppManager.share.loginUserMode.loungePlus == false {
           DistanceAppManager.share.loginUserMode.loungePlus == false
        {
            //: self.alertQueue.onNext(PopupWindowType.Web_Subscribe)
            self.alertQueue.onNext(PitchWindowType.Web_Subscribe)
        }

        //: if  DistanceAppManager.share.loginUserMode.showSignInPage && DistanceAppManager.share.loginUserMode.sex == Gender.male.rawValue && DistanceAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if DistanceAppManager.share.loginUserMode.showSignInPage, DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.male.rawValue, DistanceAppManager.share.appStatus != NameQuickLookable.special.rawValue {
            //: self.alertQueue.onNext(PopupWindowType.sign_in)
            self.alertQueue.onNext(PitchWindowType.sign_in)
        }

        //: if DistanceAppManager.share.loginUserMode.isNaUser == false,
        if DistanceAppManager.share.loginUserMode.isNaUser == false,
           //: DistanceAppManager.share.appUserConfigMode.videoCover.count > 0,
           DistanceAppManager.share.appUserConfigMode.videoCover.count > 0,
           //: DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue,
           DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue,
           //: DistanceAppManager.share.appStatus != AppSkinStatus.special.rawValue {
           DistanceAppManager.share.appStatus != NameQuickLookable.special.rawValue
        {
            //: self.alertQueue.onNext(PopupWindowType.video_Cover)
            self.alertQueue.onNext(PitchWindowType.video_Cover)
        }

        //: if DistanceAppManager.share.appUserConfigMode.showNewGuidance, DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue && DistanceAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if DistanceAppManager.share.appUserConfigMode.showNewGuidance, DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue, DistanceAppManager.share.appStatus != NameQuickLookable.special.rawValue {
            //: self.alertQueue.onNext(PopupWindowType.New_Guidance)
            self.alertQueue.onNext(PitchWindowType.New_Guidance)
        }

        //: if DistanceAppManager.share.appUserConfigMode.headPicRejectNotice.count > 0 && DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue && DistanceAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if DistanceAppManager.share.appUserConfigMode.headPicRejectNotice.count > 0, DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue, DistanceAppManager.share.appStatus != NameQuickLookable.special.rawValue {
            //: refuseViewData["content"] = DistanceAppManager.share.appUserConfigMode.headPicRejectNotice
            refuseViewData[(kDataPath.replacingOccurrences(of: "show", with: "t"))] = DistanceAppManager.share.appUserConfigMode.headPicRejectNotice
            //: refuseViewData["jumpKey"] = "uploadUserHeaderPic"
            refuseViewData[(String(k_pageKey))] = (String(kMessageName.prefix(8)) + String(kToMsg.prefix(3)) + String(k_rawInfoMessage))
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(PitchWindowType.Attestation_Refuse)
        }

        //: if DistanceAppManager.share.appUserConfigMode.realPicRejectNotice.count > 0 && DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue && DistanceAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if DistanceAppManager.share.appUserConfigMode.realPicRejectNotice.count > 0, DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue, DistanceAppManager.share.appStatus != NameQuickLookable.special.rawValue {
            //: refuseViewData["content"] = DistanceAppManager.share.appUserConfigMode.realPicRejectNotice
            refuseViewData[(kDataPath.replacingOccurrences(of: "show", with: "t"))] = DistanceAppManager.share.appUserConfigMode.realPicRejectNotice
            //: refuseViewData["jumpKey"] = "truePersonAuth"
            refuseViewData[(String(k_pageKey))] = (String(kDailyStyleKey.prefix(5)) + k_assetName.lowercased() + "Auth")
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(PitchWindowType.Attestation_Refuse)
        }
    }

    //: func startLivePopUpWindow() {
    func messageJumpEnable() {
        //: self.alertQueue.onNext(PopupWindowType.startLive_Tips)
        self.alertQueue.onNext(PitchWindowType.startLive_Tips)
    }

    /// 主动拨打弹窗
    //: func videoCallPopUpWindow() {
    func popOut() {
        //: self.alertQueue.onNext(PopupWindowType.video_Call)
        self.alertQueue.onNext(PitchWindowType.video_Call)
    }

    /// 需要真人认证弹窗
    //: func faceVerificationPopUpWindow() {
    func clickTo() {
        //: self.alertQueue.onNext(PopupWindowType.face_Verification)
        self.alertQueue.onNext(PitchWindowType.face_Verification)
    }

    /// 真人认证，头像上传，被拒绝时提示弹窗
    //: func attestationRefusePopUpWindow(dic: [String: Any]) {
    func afterDic(dic: [String: Any]) {
        //: refuseViewData["content"] = dic["content"] as? String
        refuseViewData[(kDataPath.replacingOccurrences(of: "show", with: "t"))] = dic[(kDataPath.replacingOccurrences(of: "show", with: "t"))] as? String
        //: refuseViewData["jumpKey"] = dic["jumpKey"] as? String
        refuseViewData[(String(k_pageKey))] = dic[(String(k_pageKey))] as? String
        //: guard TalkingSocketManager.shared.isSpace == false else {
        guard ListSocketManager.shared.isSpace == false else {
            //: isLateronRefuseView = true
            isLateronRefuseView = true
            //: return
            return
        }
        //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
        self.alertQueue.onNext(PitchWindowType.Attestation_Refuse)
    }

    /// 通话结束后
    //: @objc private func showRefuseView() {
    @objc private func exhibitEqual() {
        //: if isLateronRefuseView {
        if isLateronRefuseView {
            //: self.alertQueue.onNext(PopupWindowType.Attestation_Refuse)
            self.alertQueue.onNext(PitchWindowType.Attestation_Refuse)
        }
    }

    //: func showAlert() {
    func underPack() {
        //: guard self.dataSource.count > 0 else { return }
        guard self.dataSource.count > 0 else { return }
        //: self.actionForTask(type: self.dataSource.first!)
        self.appType(type: self.dataSource.first!)
    }

    //: func actionForTask(type: PopupWindowType) {
    func appType(type: PitchWindowType) {
        //: switch type {
        switch type {
        //: case .sign_in:
        case .sign_in:
            //: if let index = self.dataSource.firstIndex(of: .sign_in) {
            if let index = self.dataSource.firstIndex(of: .sign_in) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: AddReactiveCompatible.share.func__pushToWebVC(webViewType: .SiginPopup)
            AddReactiveCompatible.share.overCapacity(webViewType: .SiginPopup)

        //: case .video_Cover:
        case .video_Cover:
            //: if let index = self.dataSource.firstIndex(of: .video_Cover) {
            if let index = self.dataSource.firstIndex(of: .video_Cover) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingVideoCoverPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = RiteUpView(frame: CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue))
            //: view.show()
            view.subShow()

        //: case .startLive_Tips:
        case .startLive_Tips:
            //: if let index = self.dataSource.firstIndex(of: .startLive_Tips) {
            if let index = self.dataSource.firstIndex(of: .startLive_Tips) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: if isShowLiveTipsView {
            if isShowLiveTipsView {
                //: return
                return
            }
            //: let view = TalkingLiveTipsPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = MenuFatalReactiveCompatible(frame: CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue))
            //: view.show()
            view.targetEnd()
            //: isShowLiveTipsView = true
            isShowLiveTipsView = true
            //: view.endBlock = { [weak self] in
            view.endBlock = { [weak self] in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.isShowLiveTipsView = false
                self.isShowLiveTipsView = false
            }

        //: case.video_Call:
        case .video_Call:
            //: if let index = self.dataSource.firstIndex(of: .video_Call) {
            if let index = self.dataSource.firstIndex(of: .video_Call) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingVideoCallPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = MakeAtUpView(frame: CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue))
            //: view.show()
            view.equalShow()

        //: case.face_Verification:
        case .face_Verification:
            //: if let index = self.dataSource.firstIndex(of: .face_Verification) {
            if let index = self.dataSource.firstIndex(of: .face_Verification) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingFaceVerificationPopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = CoverView(frame: CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue))
            //: view.show()
            view.viewMediaSex()

        //: case .Web_Subscribe:
        case .Web_Subscribe:
            //: if let index = self.dataSource.firstIndex(of: .Web_Subscribe) {
            if let index = self.dataSource.firstIndex(of: .Web_Subscribe) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let date = Defaults.object(forKey: TalkingMaleUnsubscribedAlertIsShow)
            let date = show_blockText.object(forKey: constNextName)
            //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
            let today = NSDate.nameDateDayOfTheMonthAppearanceTimeGet(date: Date(), dateFormat: (String(k_sectionWithViewPath) + String(k_textMakeValue.prefix(4)) + "M-dd"))
            //: if date == nil || (date as! String) != today {
            if date == nil || (date as! String) != today {
                //: Defaults.set(today, forKey: TalkingMaleUnsubscribedAlertIsShow)
                show_blockText.set(today, forKey: constNextName)
                //: AddReactiveCompatible.share.func__pushToSubscribeAlert()
                AddReactiveCompatible.share.digitiserParams()
            }

        //: case.Attestation_Refuse:
        case .Attestation_Refuse:
            //: if let index = self.dataSource.firstIndex(of: .Attestation_Refuse) {
            if let index = self.dataSource.firstIndex(of: .Attestation_Refuse) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingAttestationRefusePopUpView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = GroupUpView(frame: CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue))
            //: view.setViewData(dit: refuseViewData)
            view.viewMini(dit: refuseViewData)
            //: view.show()
            view.atStop()

        //: case .New_Guidance:
        case .New_Guidance:
            //: if let index = self.dataSource.firstIndex(of: .New_Guidance) {
            if let index = self.dataSource.firstIndex(of: .New_Guidance) {
                //: self.dataSource.remove(at: index)
                self.dataSource.remove(at: index)
            }
            //: let view = TalkingNewGuidancePopUpView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = CynosureView(frame: CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue))
            //: view.show()
            view.buttonShow()
        }
    }
}
