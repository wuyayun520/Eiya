
//: Declare String Begin

/*: "PHPSESSID" :*/
fileprivate let kSucceedValue:String = "showPSE"

/*: "UID" :*/
fileprivate let kViewMessage:String = "Uwindow"

/*: "Any" :*/
fileprivate let kAppData:[Character] = ["A","n","y"]

/*: "UserBasicInfoSetting/userTag.json" :*/
fileprivate let k_fileTitle:[UInt8] = [0xaf,0x89,0x9f,0x88,0xb8,0x9b,0x89,0x93,0x99,0xb3,0x94,0x9c,0x95,0xa9,0x9f,0x8e,0x8e,0x93,0x94,0x9d,0xd5,0x8f,0x89,0x9f,0x88,0xae,0x9b,0x9d,0xd4,0x90,0x89,0x95,0x94]

private func originInfo(path num: UInt8) -> UInt8 {
    return num ^ 250
}

/*: "获取数据" :*/
fileprivate let kModelData:[Character] = ["获","取","数","据"]

/*: "json 解析失败" :*/
fileprivate let kOfText:[Character] = ["j","s","o","n"," ","解","析"]
fileprivate let kToMessage:[Character] = ["失","败"]

/*: "request_HasInit" :*/
fileprivate let kKitKey:[Character] = ["r","e","q","u","e"]
fileprivate let k_viewValue:[Character] = ["s","t","_","H","a"]
fileprivate let k_makeIconName:String = "frame replace rank colorsInit"

/*: "Reachable via WiFi" :*/
fileprivate let kTitleMessage:String = "request dataReacha"
fileprivate let k_makeId:String = "via WiFto window cookie to"
fileprivate let k_indexElementTitle:[Character] = ["i"]

/*: "Reachable via Cellular" :*/
fileprivate let k_errorColorSubData:[Character] = ["R","e","a","c","h","a","b","l","e"," ","v","i","a"," ","C","e","l","l","u","l","a","r"]

/*: "Network not reachable" :*/
fileprivate let k_modeData:[Character] = ["N","e","t","w","o","r","k"," ","n","o","t"," ","r","e","a"]
fileprivate let k_cookieId:String = "CHABLE"

/*: "Not reachable" :*/
fileprivate let k_controlSharedCornerUrl:String = "select dataNot reac"
fileprivate let k_endLabelViewPath:String = "habstrength"

/*: "Unable to start notifier" :*/
fileprivate let kProgressMakeMsg:[Character] = ["U","n","a","b","l","e"," ","t","o"," ","s","t","a"]
fileprivate let kShareFormat:[Character] = ["r","t"," ","n","o","t","i","f","i","e","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DistanceAppManager.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/26.
//

//: import UIKit
import UIKit

//: public class DistanceAppManager: NSObject {
public class DistanceAppManager: NSObject {
    //: @objc static public let share = DistanceAppManager()
    @objc public static let share = DistanceAppManager()
    //: private override init() {}
    override private init() {}

    //: @objc public var loginUserMode = LoginUserModel()
    @objc public var loginUserMode = CoverReactiveCompatible() // 用户登录的信息
    //: @objc public var appUserConfigMode = AppUserConfigModel()
    @objc public var appUserConfigMode = ViewConfigModel() // App 用户配置信息
    //: var showWindow = false
    var showWindow = false // 是否需要展示巨星邀请引导弹窗【只在注册更新资料流程中才返回】
    //: var userFillInfoMode = UserFillInfoModel.init()
    var userFillInfoMode = SightInfoModel() // 用户完善资料缓存
    //: var appConfigMode = AppConfigModel()
    var appConfigMode = PerformanceConfigModel() // App 配置信息
    //: var reachability: Reachability?
    var reachability: Reachability? // 网络监听
    //: @objc public dynamic var networkStatus: AppNetworkStatus = .Unavailable
    @objc public dynamic var networkStatus: SizeHashableRepresentation = .Unavailable // 网络状态

    //: @objc public dynamic var request_HasInit: Bool = false
    @objc public dynamic var request_HasInit: Bool = false

    //: @objc public var appStatus: Int {
    @objc public var appStatus: Int { // 审核状态
        //: if loginUserMode.status == 0, appConfigMode.status == 0 {
        if loginUserMode.status == 0, appConfigMode.status == 0 {
            //: return AppSkinStatus.normal.rawValue
            return NameQuickLookable.normal.rawValue
            //: } else {
        } else {
            //: return AppSkinStatus.special.rawValue
            return NameQuickLookable.special.rawValue
        }
    }

    //: @objc public dynamic var unreadMessageNum: Int = 0
    @objc public dynamic var unreadMessageNum: Int = 0

    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: var loginSessionId: String {
    var loginSessionId: String {
        //: let url = URL.init(string: TalkingRequestAddrTool.share.serverUrlStr)!
        let url = URL(string: UserViewToolThen.share.serverUrlStr)!
        //: let cookieArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies(for: url)!
        let cookieArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: url)!
        //: for cookie in cookieArr {
        for cookie in cookieArr {
            //: if cookie.name.uppercased() == "PHPSESSID" {
            if cookie.name.uppercased() == (kSucceedValue.replacingOccurrences(of: "show", with: "PH") + "SSID") {
                //: return cookie.value
                return cookie.value
            }
        }
        //: return ""
        return ""
    }

    //: var loginUid: String {
    var loginUid: String {
        //: let url = URL.init(string: TalkingRequestAddrTool.share.serverUrlStr)!
        let url = URL(string: UserViewToolThen.share.serverUrlStr)!
        //: let cookieArr: Array<HTTPCookie> = HTTPCookieStorage.shared.cookies(for: url)!
        let cookieArr: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: url)!
        //: for cookie in cookieArr {
        for cookie in cookieArr {
            //: if cookie.name.uppercased() == "UID" {
            if cookie.name.uppercased() == (kViewMessage.replacingOccurrences(of: "window", with: "ID")) {
                //: return cookie.value
                return cookie.value
            }
        }
        //: return ""
        return ""
    }

    // 重置参数
    //: func func__reSet() {
    func little() {
        //: loginUserMode = LoginUserModel.init()
        loginUserMode = CoverReactiveCompatible()
        // 首页列表筛选条件
        //: SEARCH_AGE = "Any".localized
        noti_failureValue = (String(kAppData)).localized
        //: SEARCH_VIDEOCOVER = "Any".localized
        dataMinText = (String(kAppData)).localized
    }
}

//: extension DistanceAppManager {
extension DistanceAppManager {
    /// 更改用户登录状态
    /// - Parameter isLogin: 是否登录
    //: func func__UserLoginChanged(isLogin: Bool) {
    func skinColor(isLogin: Bool) {
        //: if isLogin {
        if isLogin {
            //: Defaults.set(DistanceAppManager.share.loginUserMode.userID, forKey: TalkingLoginUidCacheKey)
            show_blockText.set(DistanceAppManager.share.loginUserMode.userID, forKey: kVoiceData)
            //: } else {
        } else {
            //: ResumeV2Listener.shared.func__LogingOut()
            ResumeV2Listener.shared.language()
            //: Defaults.removeObject(forKey: TalkingLoginUidCacheKey)
            show_blockText.removeObject(forKey: kVoiceData)
            //: func__cleanPrevLoginData()
            passe()
//            UserViewToolThen.share.func__removeAllCookies()
            // 清除礼物缓存
            //: TalkingChatGiftManager.share.gift_clearMemoryCache(showRed: false)
            AppNameGiftManager.share.pinData(showRed: false)
        }
    }

    //: func func__checkAppConfigModeNeedUpdate() {
    func needMakeModifyFuncMarkMentionForm() {
        //: let configInfo = Defaults.dictionary(forKey: TalkingAppConfigKey)
        let configInfo = show_blockText.dictionary(forKey: kNetValue)
        //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
        if let configModel = JSONDeserializer<PerformanceConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
            //: DistanceAppManager.share.appConfigMode = configModel
            DistanceAppManager.share.appConfigMode = configModel
        }
        //: if let status = DistanceAppManager.share.reachability?.connection, status != .unavailable {
        if let status = DistanceAppManager.share.reachability?.connection, status != .unavailable {
            //: func__loadAppConfigData()
            configDown()
            //: } else {
        } else {
            //: NotificationCenter.default.addObserver(self, selector: #selector(reachabilityChanged(note:)), name: .reachabilityChanged, object: nil)
            NotificationCenter.default.addObserver(self, selector: #selector(errorNext(note:)), name: .reachabilityChanged, object: nil)
        }
    }

    //: func func__loadAppConfigData() {
    func configDown() {
        //: AppManagerRequest.requestAppConfig { succeed, result, errorModel in
        ModelThen.requestBy { succeed, _, _ in
            //: if succeed {
            if succeed {
                //: NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: nil)
                NotificationCenter.default.removeObserver(self, name: .reachabilityChanged, object: nil)
            }
        }
    }

    //: func func__loadCurrentLoginInfoData() {
    func loadDownLive() {
        //: let userInfo = Defaults.dictionary(forKey: TalkingLoginUserInfoCacheKey)
        let userInfo = show_blockText.dictionary(forKey: notiClickStatusTitle)
        //: if let userModel = JSONDeserializer<LoginUserModel>.deserializeFrom(dict: userInfo, designatedPath: nil) {
        if let userModel = JSONDeserializer<CoverReactiveCompatible>.deserializeFrom(dict: userInfo, designatedPath: nil) {
            //: loginUserMode = userModel
            loginUserMode = userModel
        }
    }

    //: func func__cleanPrevLoginData() {
    func passe() {
        //: func__reSet()
        little()
        //: Defaults.removeObject(forKey: TalkingLoginUserInfoCacheKey)
        show_blockText.removeObject(forKey: notiClickStatusTitle)
//        let oldServerUrl: String = UserViewToolThen.share.serverUrlStr
//        if oldServerUrl.count > 0 {
//            let oldCookies: [HTTPCookie] = HTTPCookieStorage.shared.cookies(for: URL.init(string: oldServerUrl)!)!
//            for cookies in oldCookies {
//                if cookies.name.uppercased() == "PHPSESSID" {
//                    HTTPCookieStorage.shared.deleteCookie(cookies)
//                } else if(cookies.name.uppercased() == "UID") {
//                    HTTPCookieStorage.shared.deleteCookie(cookies)
//                }
//            }
//        }
    }

    //: func func__loadUserTagCacheData() -> Any? {
    func numerousness() -> Any? {
        // MARK: 数据的读取

        //: let jsonPath = FileManager.CachesDirectory()+"UserBasicInfoSetting/userTag.json"
        let jsonPath = FileManager.cognomen() + String(bytes: k_fileTitle.map{originInfo(path: $0)}, encoding: .utf8)!
        //: if FileManager.judgeFileOrFolderExists(filePath: jsonPath) {
        if FileManager.archetypical(filePath: jsonPath) {
            //: let dataInfo = FileManager.default.contents(atPath: jsonPath)
            let dataInfo = FileManager.default.contents(atPath: jsonPath)
            //: let readStr = String.init(data: dataInfo!, encoding: .utf8)
            let readStr = String(data: dataInfo!, encoding: .utf8)
            //: if let tagModel = JSONDeserializer<UserTagModel>.deserializeFrom(json: readStr) {
            if let tagModel = JSONDeserializer<ServerMeasurable>.deserializeFrom(json: readStr) {
                //: printLog(message: "获取数据")
                printLog(message: (String(kModelData)))
                //: return tagModel
                return tagModel
                //: } else {
            } else {
                //: printLog(message: "json 解析失败")
                printLog(message: (String(kOfText) + String(kToMessage)))
            }
        }
        //: return nil
        return nil
    }

    //: func func__listenRequestHasInit() {
    func doingInit() {
        //: self.rx.observeWeakly(Bool.self, "request_HasInit")
        self.rx.observeWeakly(Bool.self, (String(kKitKey) + String(k_viewValue) + String(k_makeIconName.suffix(5))))
            //: .subscribe(onNext: { (value) in
            .subscribe(onNext: { value in
                //: let valueBool = value ?? false
                let valueBool = value ?? false
                //: if valueBool {
                if valueBool {
                    //: } else {
                } else {
                    //: AppManagerRequest.func__initAppRequest()
                    ModelThen.playerPhone()
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }

    /// 网络状态监测
    //: func startNotifierNetwork() {
    func fallCollectEspionageNetworkVideo() {
        //: if self.reachability == nil {
        if self.reachability == nil {
            //: guard let reachability = try? Reachability() else { return }
            guard let reachability = try? Reachability() else { return }
            //: self.reachability = reachability
            self.reachability = reachability
            //: reachability.whenReachable = { reach in
            reachability.whenReachable = { reach in
                //: switch reach.connection {
                switch reach.connection {
                //: case .wifi:
                case .wifi:
                    //: self.networkStatus = .Wifi
                    self.networkStatus = .Wifi
                    //: printLog(message: "Reachable via WiFi")
                    printLog(message: (String(kTitleMessage.suffix(6)) + "ble " + String(k_makeId.prefix(7)) + String(k_indexElementTitle)))
                //: case .cellular:
                case .cellular:
                    //: self.networkStatus = .Cellular
                    self.networkStatus = .Cellular
                    //: printLog(message: "Reachable via Cellular")
                    printLog(message: (String(k_errorColorSubData)))
                //: default:
                default:
                    //: self.networkStatus = .Unavailable
                    self.networkStatus = .Unavailable
                    //: printLog(message: "Network not reachable")
                    printLog(message: (String(k_modeData) + k_cookieId.lowercased()))
                }
            }
            //: reachability.whenUnreachable = { _ in
            reachability.whenUnreachable = { _ in
                //: self.networkStatus = .Unavailable
                self.networkStatus = .Unavailable
                //: printLog(message: "Not reachable")
                printLog(message: (String(k_controlSharedCornerUrl.suffix(8)) + k_endLabelViewPath.replacingOccurrences(of: "strength", with: "le")))
            }

            //: do {
            do {
                //: try reachability.startNotifier()
                try reachability.startNotifier()
                //: } catch {
            } catch {
                //: printLog(message: "Unable to start notifier")
                printLog(message: (String(kProgressMakeMsg) + String(kShareFormat)))
            }
        }
    }

    //: @objc func reachabilityChanged(note: Notification) {
    @objc func errorNext(note: Notification) {
        //: let reachability = note.object as? Reachability
        let reachability = note.object as? Reachability
        //: if reachability?.connection != .unavailable {
        if reachability?.connection != .unavailable {
            //: func__loadAppConfigData()
            configDown()
        }
    }
}
