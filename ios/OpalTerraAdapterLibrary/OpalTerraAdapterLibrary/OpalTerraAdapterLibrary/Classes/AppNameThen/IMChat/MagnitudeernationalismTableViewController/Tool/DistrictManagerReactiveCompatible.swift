
//: Declare String Begin

/*: "msgType" :*/
fileprivate let kSkinUrl:String = "color var count server tomsgType"

/*: "audio" :*/
fileprivate let k_coordinatorUrl:String = "audcontent"

/*: "contentType" :*/
fileprivate let k_resultAddFormat:[Character] = ["c"]
fileprivate let kRestText:String = "oblockte"

/*: "AudioMsg" :*/
fileprivate let k_layerData:String = "AudioMscenter frame pic type"
fileprivate let k_buttonLabName:String = "name"

/*: "audioData" :*/
fileprivate let k_imageText:[Character] = ["a","u","d","i","o"]
fileprivate let k_sizeAddSelectedStr:[Character] = ["D","a","t","a"]

/*: "audioUri" :*/
fileprivate let kEmptyVoiceStr:String = "audioUriindex if current of change"

/*: " customElem.data is error" :*/
fileprivate let k_blockData:[Character] = [" ","c","u","s","t","o","m","E"]
fileprivate let k_objectFormat:String = "table if user makelem."
fileprivate let kColorName:String = "table in view namedata i"

/*: "extra" :*/
fileprivate let kTotaleractionDataTitle:[Character] = ["e","x","t","r","a"]

/*: "msgInfo" :*/
fileprivate let k_managerMsg:String = "in daily hidden addmsgInfo"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DistrictManagerReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/12.
//

//: import Foundation
import Foundation

//: public class DistrictManagerReactiveCompatible: NSObject {
public class DistrictManagerReactiveCompatible: NSObject {
    //: @objc class public func parseTXMessageData(data: Data)-> Dictionary<String, Any> {
    @objc public class func productData(data: Data) -> [String: Any] {
        //: let dict = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers)
        let dict = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers)
        //: if dict != nil {
        if dict != nil {
            //: return (dict as! NSDictionary) as! Dictionary<String, Any>
            return (dict as! NSDictionary) as! [String: Any]
        }
        //: return NSDictionary() as! Dictionary<String, Any>
        return NSDictionary() as! [String: Any]
    }
}

//: extension DistrictManagerReactiveCompatible {
extension DistrictManagerReactiveCompatible {
    //: class func getMessageInsertTime() -> Double {
    class func cannulate() -> Double {
        //: var timeStamp: Double = 0
        var timeStamp: Double = 0
        //: let curDate = Date().timeIntervalSince1970
        let curDate = Date().timeIntervalSince1970
        //: let msInterval = floor(curDate * 1000)
        let msInterval = floor(curDate * 1000)
        //: var deltaTime = Double(V2TIMManager.sharedInstance().getServerTime())
        var deltaTime = Double(V2TIMManager.sharedInstance().getServerTime()) // 秒为单位
        //: if deltaTime<1 {
        if deltaTime < 1 {
            //: deltaTime = 0
            deltaTime = 0
        }
        //: timeStamp = msInterval-deltaTime
        timeStamp = msInterval - deltaTime
        //: return timeStamp
        return timeStamp
    }

    //: class func checkVoiceJsonMsg(msginfo: [String: JSON]) -> Bool {
    class func quote(msginfo: [String: JSON]) -> Bool {
        //: let msgType = msginfo["msgType"]?.stringValue ?? ""
        let msgType = msginfo[(String(kSkinUrl.suffix(7)))]?.stringValue ?? ""
        //: if msgType == "audio" {
        if msgType == (k_coordinatorUrl.replacingOccurrences(of: "content", with: "io")) {
            //: return true
            return true
        }
        //: let contentType = msginfo["contentType"]?.stringValue ?? ""
        let contentType = msginfo[(String(k_resultAddFormat) + kRestText.replacingOccurrences(of: "block", with: "n") + "ntType")]?.stringValue ?? ""
        //: if contentType == "AudioMsg" {
        if contentType == (String(k_layerData.prefix(7)) + k_buttonLabName.replacingOccurrences(of: "name", with: "g")) {
            //: return true
            return true
        }
        //: let audioData = msginfo["audioData"]?.stringValue ?? ""
        let audioData = msginfo[(String(k_imageText) + String(k_sizeAddSelectedStr))]?.stringValue ?? ""
        //: if  audioData.isEmptyString == false {
        if audioData.isEmptyString == false {
            //: return true
            return true
        }

        //: let audioUri = msginfo["audioUri"]?.stringValue ?? ""
        let audioUri = msginfo[(String(kEmptyVoiceStr.prefix(8)))]?.stringValue ?? ""
        //: if audioUri.isEmptyString == false {
        if audioUri.isEmptyString == false {
            //: return true
            return true
        }
        //: return false
        return false
    }

    //: class func checkVoiceMessage(message: V2TIMMessage) -> Bool {
    class func applicationMessage(message: V2TIMMessage) -> Bool {
        //: guard let extra = String(data: message.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: message.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            printLog(message: (String(k_blockData) + String(k_objectFormat.suffix(4)) + String(kColorName.suffix(6)) + "s error"))
            //: return false
            return false
        }
        //: let json = JSON(parseJSON: extra)
        let json = JSON(parseJSON: extra)
        //: let extraDic = json["extra"]
        let extraDic = json[(String(kTotaleractionDataTitle))]
        //: let msgInfo = extraDic["msgInfo"]
        let msgInfo = extraDic[(String(k_managerMsg.suffix(7)))]
        //: return checkVoiceJsonMsg(msginfo: msgInfo.dictionaryValue)
        return quote(msginfo: msgInfo.dictionaryValue)
    }

    //: @objc class public func checkVoiceMsg(msginfo: [String: Any]) -> Bool {
    @objc public class func blockMsginfo(msginfo: [String: Any]) -> Bool {
        //: if msginfo.keys.contains("msgType") {
        if msginfo.keys.contains((String(kSkinUrl.suffix(7)))) {
            //: let msgType = msginfo["msgType"] as? String
            let msgType = msginfo[(String(kSkinUrl.suffix(7)))] as? String
            //: if msgType == "audio" {
            if msgType == (k_coordinatorUrl.replacingOccurrences(of: "content", with: "io")) {
                //: return true
                return true
            }
        }
        //: if msginfo.keys.contains("contentType") {
        if msginfo.keys.contains((String(k_resultAddFormat) + kRestText.replacingOccurrences(of: "block", with: "n") + "ntType")) {
            //: let contentType = msginfo["contentType"] as? String
            let contentType = msginfo[(String(k_resultAddFormat) + kRestText.replacingOccurrences(of: "block", with: "n") + "ntType")] as? String
            //: if contentType == "AudioMsg" {
            if contentType == (String(k_layerData.prefix(7)) + k_buttonLabName.replacingOccurrences(of: "name", with: "g")) {
                //: return true
                return true
            }
        }
        //: if msginfo.keys.contains("audioData") {
        if msginfo.keys.contains((String(k_imageText) + String(k_sizeAddSelectedStr))) {
            //: let audioData = msginfo["audioData"] as? String
            let audioData = msginfo[(String(k_imageText) + String(k_sizeAddSelectedStr))] as? String
            //: if !audioData!.isEmptyString {
            if !audioData!.isEmptyString {
                //: return true
                return true
            }
        }
        //: if msginfo.keys.contains("audioUri") {
        if msginfo.keys.contains((String(kEmptyVoiceStr.prefix(8)))) {
            //: let audioUri = msginfo["audioUri"] as? String
            let audioUri = msginfo[(String(kEmptyVoiceStr.prefix(8)))] as? String
            //: if !audioUri!.isEmptyString {
            if !audioUri!.isEmptyString {
                //: return true
                return true
            }
        }
        //: return false
        return false
    }
}
