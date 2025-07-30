
//: Declare String Begin

/*: "app/getConfig" :*/
fileprivate let k_layerId:[Character] = ["a","p","p","/","g","e"]
fileprivate let kActionKey:String = "tConfiglet menu"

/*: "mf/user/getMyInfo" :*/
fileprivate let kButtonDataId:[Character] = ["m","f","/","u","s","e","r","/","g","e","t","M","y","I","n","f","o"]

/*: "mf/user/getInfoColumn" :*/
fileprivate let kColorNameTitle:String = "mf/usekit name status"
fileprivate let k_makeKey:String = "r/gmake camera view import"
fileprivate let k_moreId:String = "make height name labetInfo"

/*: "%.2f" :*/
fileprivate let kDataTitleIfMessage:[Character] = ["%",".","2","f"]

/*: "mfCoin" :*/
fileprivate let k_contentRawName:String = "mfCoinsearch max like"

/*: "mf/index/getConfig" :*/
fileprivate let kInfoFormat:String = "else add temp viewmf/ind"
fileprivate let k_beginKey:String = "model model letex/get"

/*: _ :*/
fileprivate let kSuiteSizeId:String = "old"

/*: "baseinfo =  :*/
fileprivate let kWithId:String = "basefatal"
fileprivate let k_userId:String = "nfo = message photo value child text"

/*: "UserBasicInfoSetting" :*/
fileprivate let k_labelNameData:[Character] = ["U","s","e","r","B","a","s","i","c","I","n","f"]
fileprivate let kLabFormat:[Character] = ["o","S","e","t","t","i","n","g"]

/*: "/userTag.json" :*/
fileprivate let k_hiddenValue:String = "/userTaequal to type format"
fileprivate let k_viewRequestInstanceMessage:String = "cur let view actual textg.json"

/*: "json 解析失败" :*/
fileprivate let k_fileTitle:String = "make label info errorjson 解析失败"

/*: "app/reportDeviceId" :*/
fileprivate let k_beyondMsg:[Character] = ["a","p","p","/","r","e","p","o","r","t","D","e","v","i","c","e","I","d"]

/*: "p0" :*/
fileprivate let kMatchValue:[Character] = ["p","0"]

/*: "token" :*/
fileprivate let k_mapText:[UInt8] = [0x43,0x58,0x5c,0x52,0x59]

private func containerInfo(translation num: UInt8) -> UInt8 {
    return num ^ 55
}

/*: "app/reportFcmPushToken" :*/
fileprivate let kOccurTitle:[Character] = ["a","p","p","/","r","e","p","o","r","t"]
fileprivate let kPlayName:[Character] = ["F","c","m","P","u","s","h","T","o","k","e","n"]

/*: "app/init" :*/
fileprivate let k_nameLoopMsg:String = "abottom"
fileprivate let k_headName:String = "length framep/init"

/*: "app/ping" :*/
fileprivate let k_withTitle:String = "cell selected return player cancelapp/pi"
fileprivate let kLoadPath:[Character] = ["n","g"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModelThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/3/25.
//

//: import Adjust
import Adjust
//: import Alamofire
import Alamofire
//: import FirebaseMessaging
import FirebaseMessaging
//: import UIKit
import UIKit

//: var isRequestingInit = false
var dataSucceedName = false

//: var isRetryDeviceIdTime = 3.0
var dataBarItemScreenText = 3.0

//: class AppManagerRequest: NSObject {
class ModelThen: NSObject {
    /// 请求app配置信息【无需登录】
    //: class func requestAppConfig(completion: @escaping FinishBlock) {
    class func requestBy(completion: @escaping FinishBlock) {
        //: let requestModel = TalkingRequestModel.init()
        let requestModel = SweepRequestModel()
        //: requestModel.requestPath = "app/getConfig"
        requestModel.requestPath = (String(k_layerId) + String(kActionKey.prefix(7)))
        //: requestModel.showErrorStatusBar = false
        requestModel.showErrorStatusBar = false
        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: GJ.startRequest(model: requestModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: requestModel) { succeed, result, errorModel in
            //: EndProgressHUD.popEnable()
            EndProgressHUD.popEnable()
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: TalkingAppConfigKey)
                show_blockText.set(result, forKey: kNetValue)
                //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let configModel = JSONDeserializer<PerformanceConfigModel>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: DistanceAppManager.share.appConfigMode = configModel
                    DistanceAppManager.share.appConfigMode = configModel
                    // 通知
                    //: NotificationCenter.default.post(name: UPDATE_APP_GETCONFIG_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: appItemValue, object: nil)
                    //: completion(succeed, result, errorModel)
                    completion(succeed, result, errorModel)
                }
                //: } else {
            } else {
                //: let configInfo = Defaults.dictionary(forKey: TalkingAppConfigKey)
                let configInfo = show_blockText.dictionary(forKey: kNetValue)
                //: if let configModel = JSONDeserializer<AppConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                if let configModel = JSONDeserializer<PerformanceConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                    //: DistanceAppManager.share.appConfigMode = configModel
                    DistanceAppManager.share.appConfigMode = configModel
                    //: NotificationCenter.default.post(name: UPDATE_APP_GETCONFIG_NOTIFICATION, object: nil)
                    NotificationCenter.default.post(name: appItemValue, object: nil)
                    //: completion(true, result, errorModel)
                    completion(true, result, errorModel)
                }
            }
        }
    }

    //: class func func__requestUserInfo(completion: @escaping FinishBlock) {
    class func applicationCompletion(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/user/getMyInfo"
        reqModel.requestPath = (String(kButtonDataId))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: TalkingLoginUserInfoCacheKey)
                show_blockText.set(result, forKey: notiClickStatusTitle)
                //: if let userModel = JSONDeserializer<LoginUserModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let userModel = JSONDeserializer<CoverReactiveCompatible>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: DistanceAppManager.share.loginUserMode = userModel
                    DistanceAppManager.share.loginUserMode = userModel
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询用户余额
    //: class func func__getInfoColumn(completion: @escaping FinishBlock) {
    class func upButton(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/user/getInfoColumn"
        reqModel.requestPath = (String(kColorNameTitle.prefix(6)) + String(k_makeKey.prefix(3)) + String(k_moreId.suffix(6)) + "Column")
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: if succeed {
            if succeed {
                //: let json = JSON(result ?? [String: Any]())
                let json = JSON(result ?? [String: Any]())
                //: DistanceAppManager.share.loginUserMode.mf_coin = String(format: "%.2f", json["mfCoin"].doubleValue)
                DistanceAppManager.share.loginUserMode.mf_coin = String(format: "%.2f", json[(String(k_contentRawName.prefix(6)))].doubleValue)
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    //: class func func__requestUserConfig(completion: @escaping FinishBlock) {
    class func faq(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/index/getConfig"
        reqModel.requestPath = (String(kInfoFormat.suffix(6)) + String(k_beginKey.suffix(6)) + "Config")
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: let configKey = "\(TalkingLoginUserConfigKey)_\(String(describing: DistanceAppManager.share.loginUserMode.sex))"
            let configKey = "\(user_useTitle)_\(String(describing: DistanceAppManager.share.loginUserMode.sex))"
            //: if succeed {
            if succeed {
                //: Defaults.set(result, forKey: configKey)
                show_blockText.set(result, forKey: configKey)
                //: if let userModel = JSONDeserializer<AppUserConfigModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                if let userModel = JSONDeserializer<ViewConfigModel>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                    //: DistanceAppManager.share.appUserConfigMode = userModel
                    DistanceAppManager.share.appUserConfigMode = userModel
                    //: ResumeV2Listener.shared.func__LogingIn()
                    ResumeV2Listener.shared.loging()
                    //: func__checkUserBaseinfoFileVersionWithURL(baseinfo: DistanceAppManager.share.appUserConfigMode.baseInfo)
                    approximationColor(baseinfo: DistanceAppManager.share.appUserConfigMode.baseInfo)
                    // 上传用户日志
                    //: if userModel.needUploadLog == true {
                    if userModel.needUploadLog == true {
                        //: UploadLogTool.shared.uploadLog(false)
                        UploadDisplayThen.shared.towardContact(false)
                    }
                    // 上报女性用户busy状态
                    //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
                    (TouchMakeReactiveCompatible.shared as! TouchMakeReactiveCompatible).equalReport()
                }
                //: } else {
            } else {
                //: let configInfo = Defaults.dictionary(forKey: configKey)
                let configInfo = show_blockText.dictionary(forKey: configKey)
                //: if let userModel = JSONDeserializer<AppUserConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                if let userModel = JSONDeserializer<ViewConfigModel>.deserializeFrom(dict: configInfo, designatedPath: nil) {
                    //: DistanceAppManager.share.appUserConfigMode = userModel
                    DistanceAppManager.share.appUserConfigMode = userModel
                    //: ResumeV2Listener.shared.func__LogingIn()
                    ResumeV2Listener.shared.loging()
                }
            }
            //: NotificationCenter.default.post(name: UPDATE_INDEX_GETCONFIG_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: dataShowContent, object: nil)
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    //: class func func__checkUserBaseinfoFileVersionWithURL(baseinfo: String) {
    class func approximationColor(baseinfo: String) {
        //: let cacheUrl = Defaults.string(forKey: TalkingUserTagCacheUrlKey)
        let cacheUrl = show_blockText.string(forKey: k_micTopKeyValue)
        //: printLog(message: "baseinfo = \(baseinfo)")
        printLog(message: (kWithId.replacingOccurrences(of: "fatal", with: "i") + String(k_userId.prefix(6))) + "\(baseinfo)")
        //: if cacheUrl != baseinfo {
        if cacheUrl != baseinfo {
            //: AF.request(baseinfo, method: .get).responseData { responseData in
            AF.request(baseinfo, method: .get).responseData { responseData in
                //: switch responseData.result {
                switch responseData.result {
                //: case .success:
                case .success:
                    //: let responseJson = String(data: responseData.data!, encoding: .utf8)
                    let responseJson = String(data: responseData.data!, encoding: .utf8)
                    //: if let responseModel = JSONDeserializer<UserTagModel>.deserializeFrom(json: responseJson) {
                    if let responseModel = JSONDeserializer<ServerMeasurable>.deserializeFrom(json: responseJson) {
                        //: Defaults.set(baseinfo, forKey: TalkingUserTagCacheUrlKey)
                        show_blockText.set(baseinfo, forKey: k_micTopKeyValue)
                        //: let jsonPath = FileManager.CachesDirectory()+"UserBasicInfoSetting"
                        let jsonPath = FileManager.cognomen() + (String(k_labelNameData) + String(kLabFormat))
                        //: if FileManager.createFolder(folderPath: jsonPath) {
                        if FileManager.includeItem(folderPath: jsonPath) {
                            //: FileManager.writeStringToFile(content: responseJson!, writePath: jsonPath+"/userTag.json")
                            FileManager.failureOf(content: responseJson!, writePath: jsonPath + (String(k_hiddenValue.prefix(7)) + String(k_viewRequestInstanceMessage.suffix(6))))
                            //: DistanceAppManager.share.func__loadUserTagCacheData()
                            DistanceAppManager.share.numerousness()
                        }
                        //: } else {
                    } else {
                        //: printLog(message: "json 解析失败")
                        printLog(message: (String(k_fileTitle.suffix(9))))
                    }
                //: break
                //: case .failure:
                case .failure:

                    //: break
                    break
                }
            }
            //: } else {
        } else {
            //: DistanceAppManager.share.func__loadUserTagCacheData()
            DistanceAppManager.share.numerousness()
        }
    }

    // 登录后上报FCM跟Device
    //: class func func__reportDeviceID() {
    class func gray() {
        //: func__reportDeviceIdentifier()
        containerIdentifier()
    }

    /// 上报adid
    //: class func func__reportDeviceIdentifier() {
    class func containerIdentifier() {
        //: let adid = Adjust.adid() ?? ""
        let adid = Adjust.adid() ?? ""
        //: if !adid.isEmptyString {
        if !adid.isEmptyString {
            //: let reqModel = TalkingRequestModel.init()
            let reqModel = SweepRequestModel()
            //: reqModel.requestType = .POST
            reqModel.requestType = .POST
            //: reqModel.requestPath = "app/reportDeviceId"
            reqModel.requestPath = (String(k_beyondMsg))
            //: reqModel.showErrorStatusBar = false
            reqModel.showErrorStatusBar = false
            //: var params = UIDevice.deviceInfoDic
            var params = UIDevice.deviceInfoDic
            //: if let poStr = params["p0"] {
            if let poStr = params["p0"] {
                //: let token = NSDate.getCurrentTimeStamp()
                let token = NSDate.upToDate()
                //: reqModel.addHeaderToken = token
                reqModel.addHeaderToken = token
                //: let key = token.appending(TokenSaltStr)
                let key = token.appending(main_successTitle)
                //: params["p0"] = (poStr as? String)?.encrypt(withKey: key)
                params["p0"] = (poStr as? String)?.encrypt(withKey: key)
            }
            //: reqModel.params = params
            reqModel.params = params
            //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
            showEndName.buttonCompletion(model: reqModel) { _, _, _ in
            }
            //: }else {
        } else {
            //: if isRetryDeviceIdTime <= 384 {
            if dataBarItemScreenText <= 384 {
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + isRetryDeviceIdTime) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + dataBarItemScreenText) {
                    //: isRetryDeviceIdTime *= 2
                    dataBarItemScreenText *= 2
                    //: self.func__reportDeviceIdentifier()
                    self.containerIdentifier()
                }
            }
        }
    }

    //: class func func__reportFCMID() {
    class func versionDraw() {
        //: Messaging.messaging().token { token, error in
        Messaging.messaging().token { token, _ in
            //: if let token = token {
            if let token = token {
                //: let params = ["token": token]
                let params = [String(bytes: k_mapText.map{containerInfo(translation: $0)}, encoding: .utf8)!: token]
                //: let reqModel = TalkingRequestModel.init()
                let reqModel = SweepRequestModel()
                //: reqModel.requestType = .POST
                reqModel.requestType = .POST
                //: reqModel.requestPath = "app/reportFcmPushToken"
                reqModel.requestPath = (String(kOccurTitle) + String(kPlayName))
                //: reqModel.params = params
                reqModel.params = params
                //: reqModel.showErrorStatusBar = false
                reqModel.showErrorStatusBar = false
                //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
                showEndName.buttonCompletion(model: reqModel) { _, _, _ in
                }
            }
        }
    }

    //: class func func__initAppRequest() {
    class func playerPhone() {
        //: if isRequestingInit {
        if dataSucceedName {
            //: return
            return
        }
        //: isRequestingInit = true
        dataSucceedName = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "app/init"
        reqModel.requestPath = (k_nameLoopMsg.replacingOccurrences(of: "bottom", with: "p") + String(k_headName.suffix(6)))
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, _, _ in
            //: isRequestingInit =  false
            dataSucceedName = false
            //: if succeed && DistanceAppManager.share.request_HasInit == false {
            if succeed && DistanceAppManager.share.request_HasInit == false {
                //: DistanceAppManager.share.request_HasInit = true
                DistanceAppManager.share.request_HasInit = true
            }
        }
    }

    //: class func func__initRequestHost(completion: @escaping FinishBlock) {
    class func compass(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "app/ping"
        reqModel.requestPath = (String(k_withTitle.suffix(6)) + String(kLoadPath))
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
