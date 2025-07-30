
//: Declare String Begin

/*: "www.apple.com" :*/
fileprivate let k_itemFormat:[Character] = ["w","w","w",".","a"]
fileprivate let kBeginValue:String = "path"
fileprivate let kLabName:String = "le.comfound between add size"

/*: "后台播放音乐模式异常:  :*/
fileprivate let kUserValue:[Character] = ["后","台","播","放","音","乐","模"]
fileprivate let k_photoMsg:String = "式异常: "

/*: ." :*/
fileprivate let k_labelShareData:String = "."

/*: "click_id" :*/
fileprivate let kPlainUrl:String = "click_idtext image path back layer"

/*: "lkme.cc" :*/
fileprivate let kWithData:String = "lkme.ccindex item"

/*: "key_uid" :*/
fileprivate let k_selectionButtonEffectTitle:[Character] = ["k","e","y","_","u"]
fileprivate let kAreaText:[Character] = ["i","d"]

/*: "Reachable via WiFi" :*/
fileprivate let kTopKey:[Character] = ["R","e","a","c","h","a","b","l","e"]
fileprivate let kSourceMsg:String = "let let title via WiFi"

/*: "Reachable via Cellular" :*/
fileprivate let k_feeValue:[Character] = ["R","e","a","c","h","a","b","l","e"," ","v","i","a"," ","C","e","l","l","u","l"]
fileprivate let k_centerKey:[Character] = ["a","r"]

/*: "Current network unavailable" :*/
fileprivate let k_blockPicStr:String = "Current touch add player"
fileprivate let kPublicationMessage:String = "dataetwor"
fileprivate let k_tableValue:String = "ayourlable"

/*: "Network none" :*/
fileprivate let kFrameId:[Character] = ["N","e","t","w"]
fileprivate let kAwakeBlockChoiceStr:[Character] = ["o","r","k"," ","n","o","n","e"]

/*: "call_response_bgm" :*/
fileprivate let k_tableStr:String = "lab view interval age sharecall_"
fileprivate let k_tactKey:String = "nse_bgmframe self attribute number range"

/*: "Error playing BMG audio:  :*/
fileprivate let kFormatKey:String = "distance type letError"
fileprivate let k_bitUrl:String = "ing Badd next section"
fileprivate let k_labelLoadPath:String = "share table screen view normaludio:"
fileprivate let k_sourceFormat:String = "name"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RegisterDelegateHelper.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/5/30.
//

//: import AVFAudio
import AVFAudio
//: import FirebaseCrashlytics
import FirebaseCrashlytics
//: import UIKit
import UIKit
//: import WebKit
import WebKit

//: public class AppDelegateHelper: NSObject {
public class RegisterDelegateHelper: NSObject {
    // 后台下载
    //: var backgroundSessionCompletionHandler: (() -> Void)?
    var backgroundSessionCompletionHandler: (() -> Void)?
    //: private var window: UIWindow?
    private var window: UIWindow?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private let networkManager = NetworkReachabilityManager(host: "www.apple.com")
    private let networkManager = NetworkReachabilityManager(host: (String(k_itemFormat) + kBeginValue.replacingOccurrences(of: "path", with: "pp") + String(kLabName.prefix(6))))
    //: private var backTaskIdentifier = UIBackgroundTaskIdentifier.invalid
    private var backTaskIdentifier = UIBackgroundTaskIdentifier.invalid // 后台任务名称
    //: private var bgmPlayer: AVAudioPlayer?
    private var bgmPlayer: AVAudioPlayer? // 音视频通话后台播放音频
    //: private var currApplication: UIApplication?
    private var currApplication: UIApplication? // 当前application
    // singleton
    //: public static let shared = AppDelegateHelper()
    public static let shared = RegisterDelegateHelper()
    //: override private init() {
    override private init() {
        //: super.init()
        super.init()
        //: self.window?.rootViewController = NormalWaitingController()
        self.window?.rootViewController = OnWaitingController()
        //: self.window?.makeKeyAndVisible()
        self.window?.makeKeyAndVisible()
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(initRootController),
                                               selector: #selector(add),
                                               //: name: UPDATE_APP_GETCONFIG_NOTIFICATION,
                                               name: appItemValue,
                                               //: object: nil)
                                               object: nil)
    }
}

// MARK: - 系统API

//: public extension AppDelegateHelper {
public extension RegisterDelegateHelper {
    //: func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?, window: UIWindow?) -> Bool {
    func before(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?, window: UIWindow?) -> Bool {
        //: AppDelegateHelper.shared.window = window
        RegisterDelegateHelper.shared.window = window
        //: TalkingRequestAddrTool.share.func__setAppCookies()
        UserViewToolThen.share.cookies()
        //: AppDelegateHelper.shared.installNotificationObservers()
        RegisterDelegateHelper.shared.push()
        //: AppDelegateHelper.shared.initGetCache()
        RegisterDelegateHelper.shared.message()
        //: TalkingRequestAddrTool.share.checkServerUrl()
        UserViewToolThen.share.examineUrl()
        //: AppDelegateHelper.shared.currApplication = application
        RegisterDelegateHelper.shared.currApplication = application
        // 支持后台播放音乐
        //: do {
        do {
            //: try AVAudioSession.sharedInstance().setCategory(.playback)
            try AVAudioSession.sharedInstance().setCategory(.playback)
            //: try AVAudioSession.sharedInstance().setActive(true)
            try AVAudioSession.sharedInstance().setActive(true)
            //: } catch {
        } catch {
            //: UploadLogTool.writeLog(msg: "后台播放音乐模式异常: \(error).")
            UploadDisplayThen.makeSelected(msg: (String(kUserValue) + k_photoMsg.capitalized) + "\(error).")
        }

        //: if #available(iOS 15.0, *) {
        if #available(iOS 15.0, *) {
            //: UITableView.appearance().sectionHeaderTopPadding = 0
            UITableView.appearance().sectionHeaderTopPadding = 0
        }
        //: return true
        return true
    }

    //: class func applicationDidEnterBackground(_ application: UIApplication) {
    class func background(_: UIApplication) {
        // 开启后台任务，增加app后台运行时间
        //: AppDelegateHelper.shared.startBackgroundTask()
        RegisterDelegateHelper.shared.appBackground()
    }

    //: class func applicationWillEnterForeground(_ application: UIApplication) {
    class func goTeam(_: UIApplication) {
        //: AppDelegateHelper.shared.stopPlayBGM()
        RegisterDelegateHelper.shared.equality()
        // 进入前台，结束后台任务
        //: AppDelegateHelper.shared.checkAndEndBackgroundTask()
        RegisterDelegateHelper.shared.coloration()
    }

    //: class func applicationWillResignActive(_ application: UIApplication) {
    class func bindActive(_ application: UIApplication) {
        //: let unreadMsgCount = DistanceAppManager.share.unreadMessageNum
        let unreadMsgCount = DistanceAppManager.share.unreadMessageNum
        //: application.applicationIconBadgeNumber = unreadMsgCount
        application.applicationIconBadgeNumber = unreadMsgCount
    }

    //: class func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
    class func cuttingEdge(_: UIApplication) {
        //: URLCache.shared.removeAllCachedResponses()
        URLCache.shared.removeAllCachedResponses()
        //: URLCache.shared.diskCapacity = 0
        URLCache.shared.diskCapacity = 0
        //: URLCache.shared.memoryCapacity = 0
        URLCache.shared.memoryCapacity = 0
        //: let typeSet: Set<String> = [WKWebsiteDataTypeLocalStorage, WKWebsiteDataTypeDiskCache]
        let typeSet: Set<String> = [WKWebsiteDataTypeLocalStorage, WKWebsiteDataTypeDiskCache]
        //: WKWebsiteDataStore.default().removeData(ofTypes: typeSet, modifiedSince: Date(timeIntervalSince1970: 0)) {}
        WKWebsiteDataStore.default().removeData(ofTypes: typeSet, modifiedSince: Date(timeIntervalSince1970: 0)) {}
    }

    //: class func application(_ application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: @escaping () -> Void) {
    class func file(_: UIApplication, handleEventsForBackgroundURLSession _: String, completionHandler: @escaping () -> Void) {
        //: AppDelegateHelper.shared.backgroundSessionCompletionHandler = completionHandler
        RegisterDelegateHelper.shared.backgroundSessionCompletionHandler = completionHandler
    }
}

// MARK: - openURL

//: public extension AppDelegateHelper {
public extension RegisterDelegateHelper {
    //: class func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
    class func exceptAddSize(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
        //: if googleOpenURL(app, open: url, options: options) {
        if userOptions(app, open: url, options: options) {
            //: return true
            return true
            //: } else if url.absoluteString.components(separatedBy: "click_id").count > 1 {
        }
        //: return true
        return true
    }
}

// MARK: - 控制器初始化方法

//: extension AppDelegateHelper {
extension RegisterDelegateHelper {
    /// 获取config和userinfo缓存
    //: private func initGetCache() {
    private func message() {
        //: DistanceAppManager.share.func__checkAppConfigModeNeedUpdate()
        DistanceAppManager.share.needMakeModifyFuncMarkMentionForm()
        //: DistanceAppManager.share.func__loadCurrentLoginInfoData()
        DistanceAppManager.share.loadDownLive()
    }

    //: @objc private func initRootController() {
    @objc private func add() {
        // 延后初始化三方sdk, 防止首次安装时无网络初始化失败
        //: if currApplication != nil {
        if currApplication != nil {
            //: AppDelegateHelper.shared.initThirdPartySetup(currApplication!)
            RegisterDelegateHelper.shared.speakeasy(currApplication!)
        }
        //: DistanceAppManager.share.func__listenRequestHasInit()
        DistanceAppManager.share.doingInit()
        //: window = UIWindow(frame: UIScreen.main.bounds)
        window = UIWindow(frame: UIScreen.main.bounds)
        //: window?.backgroundColor = .white
        window?.backgroundColor = .white
        //: window?.makeKeyAndVisible()
        window?.makeKeyAndVisible()

        //: let uid = (Defaults.string(forKey: TalkingLoginUidCacheKey)) ?? ""
        let uid = (show_blockText.string(forKey: kVoiceData)) ?? ""
        //: if !uid.isEmptyString, Int(uid)! > 0 {
        if !uid.isEmptyString, Int(uid)! > 0 { // 登录状态
            //: func__setupTakingViewController()
            eventEqual()

            // 统计崩溃用户Id
            //: Crashlytics.crashlytics().setUserID(DistanceAppManager.share.loginUid)
            Crashlytics.crashlytics().setUserID(DistanceAppManager.share.loginUid)
            //: Crashlytics.crashlytics().setCustomValue(DistanceAppManager.share.loginUid, forKey: "key_uid")
            Crashlytics.crashlytics().setCustomValue(DistanceAppManager.share.loginUid, forKey: (String(k_selectionButtonEffectTitle) + String(kAreaText)))
            // 检查是否有未完成的支付订单
            //: AppleIAPManager.shared.iap_checkUnfinishedTransactions()
            InformationThen.shared.cellTo()
            //: DistanceAppManager.share.request_HasInit = false
            DistanceAppManager.share.request_HasInit = false
            // 清除礼物缓存
            //: TalkingChatGiftManager.share.gift_clearMemoryCache(showRed: false)
            AppNameGiftManager.share.pinData(showRed: false)
            // firebase上报token
            //: AppManagerRequest.func__reportFCMID()
            ModelThen.versionDraw()
            //: } else {
        } else {
            //: if DistanceAppManager.share.loginSessionId.count > 0 {
            if DistanceAppManager.share.loginSessionId.count > 0 {
                //: TalkingLoginRequestTool.req_loginOut { _ in
                IngatheringPullReactiveCompatible.harvestMoon { _ in
                }
                //: DistanceAppManager.share.func__cleanPrevLoginData()
                DistanceAppManager.share.passe()
            }
            //: func__setupLoginViewController()
            error()
            //: DistanceAppManager.share.request_HasInit = true
            DistanceAppManager.share.request_HasInit = true
        }
    }

    //: private func func__setupTakingViewController() {
    private func eventEqual() {
        //: func__setupRootViewController(type: .Taking)
        plumb(type: .Taking)
    }

    //: private func func__setupLoginViewController() {
    private func error() {
        //: func__setupRootViewController(type: .Login)
        plumb(type: .Login)
    }

    //: private func func__setupRootViewController(type: TarBarControllerViewType) {
    private func plumb(type: BreakUpViewType) {
        //: if Thread.current.isMainThread {
        if Thread.current.isMainThread {
            //: func__setWindowRootViewController(type: type)
            textUp(type: type)
            //: } else {
        } else {
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: self.func__setWindowRootViewController(type: type)
                self.textUp(type: type)
            }
        }
    }

    //: private func func__setWindowRootViewController(type: TarBarControllerViewType) {
    private func textUp(type: BreakUpViewType) {
        //: if checkRootTarBarController(type: type) {
        if upwards(type: type) {
            //: return
            return
                //: } else {
        } else {
            //: let tabbar = TalkingTabBarViewController(tabBarType: type)
            let tabbar = LimitViewController(tabBarType: type)
            //: window?.rootViewController = tabbar
            window?.rootViewController = tabbar
        }
    }

    //: private func checkRootTarBarController(type: TarBarControllerViewType) -> Bool {
    private func upwards(type: BreakUpViewType) -> Bool {
        //: let rootVC = window?.rootViewController
        let rootVC = window?.rootViewController
        //: if rootVC is TalkingTabBarViewController {
        if rootVC is LimitViewController {
            //: if let rootVC1 = rootVC as? TalkingTabBarViewController {
            if let rootVC1 = rootVC as? LimitViewController {
                //: if rootVC1.tabBarVCType == type {
                if rootVC1.tabBarVCType == type {
                    //: return true
                    return true
                }
            }
        }
        //: return false
        return false
    }
}

// MARK: - 通知监听

//: extension AppDelegateHelper {
extension RegisterDelegateHelper {
    /// 初始化通知监听
    //: private func installNotificationObservers() {
    private func push() {
        // 网络状态监听
        //: DistanceAppManager.share.startNotifierNetwork()
        DistanceAppManager.share.fallCollectEspionageNetworkVideo()

        //: NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChanged(note:)), name: .reachabilityChanged, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(frame(note:)), name: .reachabilityChanged, object: nil)

        // 登录成功通知
        //: NotificationCenter.default.rx
        NotificationCenter.default.rx
            //: .notification(DID_LOGIN_SUCCESS_NOTIFICATION)
            .notification(user_liveVersionValue)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in

                /// 重新打开数据库
                //: WCDBManager.shared.connectDatabase()
                ElementThen.shared.sessionAction()
                //: self.func__setupTakingViewController()
                self.eventEqual()
                //: DistanceAppManager.share.func__UserLoginChanged(isLogin: true)
                DistanceAppManager.share.skinColor(isLogin: true)

                // 统计崩溃用户Id
                //: Crashlytics.crashlytics().setUserID(DistanceAppManager.share.loginUid)
                Crashlytics.crashlytics().setUserID(DistanceAppManager.share.loginUid)
                //: Crashlytics.crashlytics().setCustomValue(DistanceAppManager.share.loginUid, forKey: "key_uid")
                Crashlytics.crashlytics().setCustomValue(DistanceAppManager.share.loginUid, forKey: (String(k_selectionButtonEffectTitle) + String(kAreaText)))
                // 检查是否有末完成的支付订单
                //: AppleIAPManager.shared.iap_checkUnfinishedTransactions()
                InformationThen.shared.cellTo()
                //: if !DistanceAppManager.share.request_HasInit {
                if !DistanceAppManager.share.request_HasInit {
                    //: DistanceAppManager.share.request_HasInit = true
                    DistanceAppManager.share.request_HasInit = true
                }
                // firebase上报token
                //: AppManagerRequest.func__reportFCMID()
                ModelThen.versionDraw()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 退出登录通知
        //: NotificationCenter.default.rx
        NotificationCenter.default.rx
            //: .notification(DID_LOGIN_OUT_SUCCESS_NOTIFICATION)
            .notification(notiButtonData)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in
                //: DistanceAppManager.share.func__UserLoginChanged(isLogin: false)
                DistanceAppManager.share.skinColor(isLogin: false)
                //: TalkingSocketManager.shared.closeWebSocket(userLoginOut: true)
                ListSocketManager.shared.tableApp(userLoginOut: true)
                //: self.func__setupLoginViewController()
                self.error()
                //: (TalkingApplication.shared as! TalkingApplication).destroy()
                (TouchMakeReactiveCompatible.shared as! TouchMakeReactiveCompatible).textAdd()

                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        // 刷新个人资料
        //: NotificationCenter.default.rx.notification(UPDATE_USER_GETMYINFO_NOTIFICATION)
        NotificationCenter.default.rx.notification(app_errorValue)
            //: .take(until: rx.deallocated)
            .take(until: rx.deallocated)
            //: .subscribe(onNext: { _ in
            .subscribe(onNext: { _ in
                //: AppManagerRequest.func__requestUserInfo { succeed, _, _ in
                ModelThen.applicationCompletion { succeed, _, _ in
                    //: guard succeed else { return }
                    guard succeed else { return }
                    // 个人信息请求成功发送通知
                    //: NotificationCenter.default.post(name: USER_GETMYINFO_SUCCEED_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: dataQueryName, object: nil)
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }

    //: @objc private func reachabilityChanged(note: Notification) {
    @objc private func frame(note: Notification) {
        //: let reachability = note.object as! Reachability
        let reachability = note.object as! Reachability
        //: switch reachability.connection {
        switch reachability.connection {
        //: case .wifi:
        case .wifi:
            //: printLog(message: "Reachable via WiFi")
            printLog(message: (String(kTopKey) + String(kSourceMsg.suffix(9))))
        //: case .cellular:
        case .cellular:
            //: printLog(message: "Reachable via Cellular")
            printLog(message: (String(k_feeValue) + String(k_centerKey)))
        //: case .unavailable:
        case .unavailable:
            // 网络不可用，全局提示用户
            //: func__showStatusBarErrorMsg(showMsg: "Current network unavailable".localized)
            arcInfo(showMsg: (String(k_blockPicStr.prefix(8)) + kPublicationMessage.replacingOccurrences(of: "data", with: "n") + "k unav" + k_tableValue.replacingOccurrences(of: "your", with: "i")).localized)
        //: case .none:
        case .none:
            //: printLog(message: "Network none")
            printLog(message: (String(kFrameId) + String(kAwakeBlockChoiceStr)))
        }
    }
}

// MARK: - 后台任务

//: extension AppDelegateHelper {
extension RegisterDelegateHelper {
    // 开启后台任务
    //: private func startBackgroundTask() {
    private func appBackground() {
        //: checkAndEndBackgroundTask()
        coloration()
        //: if backTaskIdentifier == .invalid {
        if backTaskIdentifier == .invalid {
            //: backTaskIdentifier = UIApplication.shared.beginBackgroundTask {
            backTaskIdentifier = UIApplication.shared.beginBackgroundTask {
                //: self.checkAndEndBackgroundTask()
                self.coloration()
            }
        }
    }

    /// 结束后台任务
    //: private func checkAndEndBackgroundTask() {
    private func coloration() {
        //: if backTaskIdentifier != .invalid {
        if backTaskIdentifier != .invalid {
            //: UIApplication.shared.endBackgroundTask(backTaskIdentifier)
            UIApplication.shared.endBackgroundTask(backTaskIdentifier)
            //: backTaskIdentifier = .invalid
            backTaskIdentifier = .invalid
        }
    }

    /// 开始播放背景音乐
    //: func startPlayBGM() {
    func backCustom() {
        //: let filePath = SVGAEffectTool.default.getMp3Path(name: "call_response_bgm")
        let filePath = VideoEffectTool.default.titleType(name: (String(k_tableStr.suffix(5)) + "respo" + String(k_tactKey.prefix(7))))

        //: let fileURL = URL(fileURLWithPath: filePath)
        let fileURL = URL(fileURLWithPath: filePath)
        //: do {
        do {
            //: bgmPlayer = try AVAudioPlayer(contentsOf: fileURL)
            bgmPlayer = try AVAudioPlayer(contentsOf: fileURL)
            //: bgmPlayer?.play()
            bgmPlayer?.play()
            //: startSystemVibrate()
            quickIntervalerval()
            //: } catch {
        } catch {
            //: printLog(message: "Error playing BMG audio: \(error.localizedDescription)")
            printLog(message: (String(kFormatKey.suffix(5)) + " play" + String(k_bitUrl.prefix(5)) + "MG a" + String(k_labelLoadPath.suffix(5)) + k_sourceFormat.replacingOccurrences(of: "name", with: " ")) + "\(error.localizedDescription)")
        }
    }

    ///  停止播放背景音乐
    //: func stopPlayBGM() {
    func equality() {
        //: stopSystemVibrate()
        backgroundVibrate()
        //: guard bgmPlayer != nil else { return }
        guard bgmPlayer != nil else { return }
        //: bgmPlayer?.stop()
        bgmPlayer?.stop()
        //: bgmPlayer = nil
        bgmPlayer = nil
    }

    /// 开始震动
    //: private func startSystemVibrate() {
    private func quickIntervalerval() {
        //: AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, nil, nil, { _, _ in
        AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, nil, nil, { _, _ in
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
                AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
            }
            //: }, nil)
        }, nil)
        //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }

    /// 停止震动
    //: private func stopSystemVibrate() {
    private func backgroundVibrate() {
        //: AudioServicesRemoveSystemSoundCompletion(kSystemSoundID_Vibrate)
        AudioServicesRemoveSystemSoundCompletion(kSystemSoundID_Vibrate)
        //: AudioServicesDisposeSystemSoundID(kSystemSoundID_Vibrate)
        AudioServicesDisposeSystemSoundID(kSystemSoundID_Vibrate)
    }
}
