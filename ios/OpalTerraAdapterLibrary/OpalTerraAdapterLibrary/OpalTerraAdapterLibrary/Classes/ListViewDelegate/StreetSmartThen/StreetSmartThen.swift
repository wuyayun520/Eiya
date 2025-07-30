
//: Declare String Begin

/*: "V4ujGjsNUl6RvgjvgD6m91" :*/
fileprivate let kChangeMomentName:String = "V4ujtext user self"
fileprivate let kOldName:String = "item popUl6Rvg"
fileprivate let kMessageTitle:[Character] = ["9","1"]

/*: "data/index" :*/
fileprivate let k_atTitle:String = "data/cell view path"
fileprivate let k_eventMessage:String = "indragx"

/*: "toUid" :*/
fileprivate let k_normalPath:String = "view make view phonetoUid"

/*: "uid" :*/
fileprivate let kDataContent:String = "UID"

/*: "POST" :*/
fileprivate let k_layerName:String = "POSof"

/*: "Token" :*/
fileprivate let k_textData:String = "manager if request makeToken"

/*: "%@" :*/
fileprivate let kGiftValue:String = "mode@"

/*: "无法解析出JSON字符串" :*/
fileprivate let k_appData:String = "\u{65e0}法\u{89e3}析出J"
fileprivate let kEqualId:String = "red"

/*: "plat" :*/
fileprivate let kNameValue:[Character] = ["p","l","a","t"]

/*: "ios" :*/
fileprivate let kAttentionId:String = "ivoices"

/*: "packageId" :*/
fileprivate let kErrorStr:String = "PACK"
fileprivate let k_featureConstraintUrl:String = "style"

/*: "channel" :*/
fileprivate let k_resultValue:String = "channhiddenl"

/*: "type" :*/
fileprivate let kTopTitle:String = "apppe"

/*: "stat" :*/
fileprivate let k_micFrameValue:String = "sclickt"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StreetSmartThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/19.
//

//: import Alamofire
import Alamofire
//: import UIKit
import UIKit

//: let uploadRecord = UploadRecordManage()
let kSoundName = StreetSmartThen()
//: let TokenSaltStr = "V4ujGjsNUl6RvgjvgD6m91"
let main_successTitle = (String(kChangeMomentName.prefix(4)) + "GjsN" + String(kOldName.suffix(6)) + "jvgD6m" + String(kMessageTitle))

//: class UploadRecordManage: NSObject {
class StreetSmartThen: NSObject {
    //: public func uploadRecordEvent(eventID: String, toUid: String? = nil, jsonStr: String? = nil) {
    public func messUp(eventID: String, toUid: String? = nil, jsonStr: String? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "data/index"
        reqModel.requestPath = (String(k_atTitle.prefix(5)) + k_eventMessage.replacingOccurrences(of: "drag", with: "de"))
        //: reqModel.requestServer = DistanceAppManager.share.appConfigMode.reportDomain
        reqModel.requestServer = DistanceAppManager.share.appConfigMode.reportDomain
        //: var dict = self.getUploadInfoDict()
        var dict = self.uploadText()
        //: dict["e"] = eventID /// 事件关键字
        dict["e"] = eventID /// 事件关键字
        //: if jsonStr?.count ?? 0 > 0 {
        if jsonStr?.count ?? 0 > 0 {
            //: dict["c"] = NSDictionary.dictionary(withJsonString: jsonStr)
            dict["c"] = NSDictionary.sinceFrom(withJsonString: jsonStr)
            //: } else {
        } else {
            //: var messageDic = [String: Any]()
            var messageDic = [String: Any]()
            //: if toUid?.count ?? 0 > 0 {
            if toUid?.count ?? 0 > 0 {
                //: messageDic["toUid"] = toUid
                messageDic[(String(k_normalPath.suffix(5)))] = toUid
            }
            //: messageDic["uid"] = DistanceAppManager.share.loginUserMode.userID
            messageDic[(kDataContent.lowercased())] = DistanceAppManager.share.loginUserMode.userID
            //: dict["c"] = messageDic /// 事件详细内容
            dict["c"] = messageDic /// 事件详细内容
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: self.uploadRecordRequest(model: reqModel) { succeed, _, _ in
        self.canto(model: reqModel) { succeed, _, _ in
            //: if succeed {}
            if succeed {}
        }
    }

    //: public func uploadRecordEvent(eventID: String, parameterStr: [String: Any]) {
    public func releaseStr(eventID: String, parameterStr: [String: Any]) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "data/index"
        reqModel.requestPath = (String(k_atTitle.prefix(5)) + k_eventMessage.replacingOccurrences(of: "drag", with: "de"))
        //: reqModel.requestServer = DistanceAppManager.share.appConfigMode.reportDomain
        reqModel.requestServer = DistanceAppManager.share.appConfigMode.reportDomain
        //: var dict = self.getUploadInfoDict()
        var dict = self.uploadText()
        //: dict["e"] = eventID /// 事件关键字
        dict["e"] = eventID /// 事件关键字
        //: let messageDic = NSMutableDictionary(dictionary: parameterStr)
        let messageDic = NSMutableDictionary(dictionary: parameterStr)
        //: messageDic["uid"] = DistanceAppManager.share.loginUserMode.userID
        messageDic[(kDataContent.lowercased())] = DistanceAppManager.share.loginUserMode.userID
        //: dict["c"] = messageDic /// 事件详细内容
        dict["c"] = messageDic /// 事件详细内容
        //: reqModel.params = dict
        reqModel.params = dict
        //: self.uploadRecordRequest(model: reqModel) { succeed, _, _ in
        self.canto(model: reqModel) { succeed, _, _ in
            //: if succeed {}
            if succeed {}
        }
    }

    //: public func uploadRecordRequest(model: TalkingRequestModel, completion: @escaping FinishBlock) {
    public func canto(model: SweepRequestModel, completion _: @escaping FinishBlock) {
        //: let serverUrl = GJ.buildServerUrl(model: model)
        let serverUrl = showEndName.schemeBackground(model: model)

        //: let token = NSDate.getCurrentTimeStamp()
        let token = NSDate.upToDate()

        //: let request = NSMutableURLRequest()
        let request = NSMutableURLRequest()
        //: request.httpMethod = "POST"
        request.httpMethod = (k_layerName.replacingOccurrences(of: "of", with: "T"))
        //: request.url = NSURL(string: serverUrl) as URL?
        request.url = NSURL(string: serverUrl) as URL?
        //: request.timeoutInterval = 30
        request.timeoutInterval = 30
//        request.setValue("keep-alive", forHTTPHeaderField: "Connection")
//        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        //: request.setValue(token, forHTTPHeaderField: "Token")
        request.setValue(token, forHTTPHeaderField: (String(k_textData.suffix(5))))

        //: let key = token.appendingFormat("%@", TokenSaltStr)
        let key = token.appendingFormat("%@", main_successTitle)
        //: let bodyString = self.getJSONStringFromDictionary(model.params as NSDictionary)
        let bodyString = self.packthread(model.params as NSDictionary)
        //: let encryStr = bodyString.encrypt(withKey: key)
        let encryStr = bodyString.encrypt(withKey: key)
        //: request.httpBody = encryStr?.data(using: .utf8)
        request.httpBody = encryStr?.data(using: .utf8)
        //: let session = URLSession.shared
        let session = URLSession.shared
        //: let datatask = session.dataTask(with: request as URLRequest) { data, _, error in
        let datatask = session.dataTask(with: request as URLRequest) { data, _, error in
            //: if error != nil {
            if error != nil {
                //: print(error ?? "")
                //: } else {
            } else {
                //: let jsonStr = NSString(data: data!, encoding: NSUTF8StringEncoding)
                let jsonStr = NSString(data: data!, encoding: NSUTF8StringEncoding)
                //: if let responseModel = JSONDeserializer<TalkingBaseResponse>.deserializeFrom(json: jsonStr as String?) {
                if let responseModel = JSONDeserializer<SimulationModelType>.deserializeFrom(json: jsonStr as String?) {
                    //: print(responseModel)
                }
            }
        }
        //: datatask.resume()
        datatask.resume()
    }

    //: func getJSONStringFromDictionary(_ dictionary: NSDictionary) -> String {
    func packthread(_ dictionary: NSDictionary) -> String {
        //: if !JSONSerialization.isValidJSONObject(dictionary) {
        if !JSONSerialization.isValidJSONObject(dictionary) {
            //: printLog(message: "无法解析出JSON字符串")
            printLog(message: (k_appData + "SON字符" + kEqualId.replacingOccurrences(of: "red", with: "串")))
            //: return String()
            return String()
        }
        //: let data: NSData! = try? JSONSerialization.data(withJSONObject: dictionary, options: []) as NSData?
        let data: NSData! = try? JSONSerialization.data(withJSONObject: dictionary, options: []) as NSData?
        //: let JSONString = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue)
        let JSONString = NSString(data: data as Data, encoding: String.Encoding.utf8.rawValue)
        //: return JSONString! as String
        return JSONString! as String
    }
}

//: extension UploadRecordManage {
extension StreetSmartThen {
    /// 获取上报字典信息
    //: private func getUploadInfoDict() -> [String: Any] {
    private func uploadText() -> [String: Any] {
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["plat"] = "ios" /// 客户端平台
        dict[(String(kNameValue))] = (kAttentionId.replacingOccurrences(of: "voice", with: "o")) /// 客户端平台
        //: dict["packageId"] = PackageID /// 分包号
        dict[(kErrorStr.lowercased() + "ageI" + k_featureConstraintUrl.replacingOccurrences(of: "style", with: "d"))] = const_userName /// 分包号
        //: dict["v"] = AppNetVersion /// 客户端版本
        dict["v"] = mainConversationName /// 客户端版本
        //: dict["t"] = NSDate.getCurrentTimeStamp() /// 事件发生的时间
        dict["t"] = NSDate.upToDate() /// 事件发生的时间
        //: dict["channel"] = PackageID /// 渠道代号,ios默认和packageId 相同
        dict[(k_resultValue.replacingOccurrences(of: "hidden", with: "e"))] = const_userName /// 渠道代号,ios默认和packageId 相同
        //: dict["type"] = "stat" /// 上报类型(stat埋点上报、pfm性能指标)
        dict[(kTopTitle.replacingOccurrences(of: "app", with: "ty"))] = (k_micFrameValue.replacingOccurrences(of: "click", with: "ta")) /// 上报类型(stat埋点上报、pfm性能指标)
        //: return dict
        return dict
    }
}
