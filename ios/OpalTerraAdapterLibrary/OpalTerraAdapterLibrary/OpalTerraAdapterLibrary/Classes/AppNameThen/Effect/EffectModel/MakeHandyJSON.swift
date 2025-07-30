
//: Declare String Begin

/*: "className" :*/
fileprivate let k_pointPath:String = "let message success model textclassName"

/*: "nativeClassName" :*/
fileprivate let kSumContent:String = "nativeCbutton top"
fileprivate let kValidUrl:[Character] = ["l","a","s","s","N","a","m","e"]

/*: "effectType" :*/
fileprivate let k_tagPath:String = "into"
fileprivate let k_pathName:String = "source blockffectType"

/*: "gifFile" :*/
fileprivate let kBackMessage:String = "gifFileview stop and"

/*: "versions" :*/
fileprivate let kManagerTitle:String = "VERSIONS"

/*: "config" :*/
fileprivate let k_refData:[Character] = ["c","o","n","f","i","g"]

/*: "mainFile" :*/
fileprivate let k_imageMessage:String = "mainFileself count text bottom"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeHandyJSON.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/9.
//

//: import UIKit
import UIKit

//: enum TalkingGiftAnimatType: String {
enum AnimatSubqueryConvertible: String {
    //: case Gif  = "gif"
    case Gif = "gif"
    //: case Chat = "chatGift"
    case Chat = "chatGift"
}

//: enum GiftAnimatUpdateError: Int {
enum CustomStreamCount: Int {
    //: case UnzipFailed  = -1001
    case UnzipFailed = -1001 // 资源 解压失败
    //: case VerifyFailed = -1002
    case VerifyFailed = -1002 // 资源 校验失败
    //: case DownLoadFailed = -1003
    case DownLoadFailed = -1003 // 资源 下载失败
}

//: enum TalkingAnimatType: Int {
enum JoinBasicType: Int {
    //: case Unknown  = 0
    case Unknown = 0
    //: case Gift = 1
    case Gift = 1 // 礼物动效
}

/// 动效资源的信息封装，对应一个zip资源的config.json

//: struct TalkingGiftAnimatModel: HandyJSON {
struct MakeHandyJSON: HandyJSON {
    //: init() {
    init() {}

    //: var className = ""
    var className = ""
    //: var nativeClassName = ""
    var nativeClassName = ""
    //: var effectType = TalkingGiftAnimatType.Gif
    var effectType = AnimatSubqueryConvertible.Gif /// 加载动效指定的类型
    //: var mainFile = ""
    var mainFile = ""
    //: var effectConfig = Dictionary<String, Any>()
    var effectConfig = [String: Any]()
}

//: extension TalkingGiftAnimatModel {
extension MakeHandyJSON {
    //: func setAnimatModek(dic: NSDictionary) -> TalkingGiftAnimatModel {
    func marginOfSafety(dic: NSDictionary) -> MakeHandyJSON {
        //: var model =  TalkingGiftAnimatModel.init()
        var model = MakeHandyJSON()
        //: model.className = dic["className"] as? String ?? ""
        model.className = dic[(String(k_pointPath.suffix(9)))] as? String ?? ""
        //: model.nativeClassName = dic["nativeClassName"] as? String ?? ""
        model.nativeClassName = dic[(String(kSumContent.prefix(7)) + String(kValidUrl))] as? String ?? ""
        //: model.effectType = dic["effectType"] as? TalkingGiftAnimatType ?? TalkingGiftAnimatType.Gif
        model.effectType = dic[(k_tagPath.replacingOccurrences(of: "into", with: "e") + String(k_pathName.suffix(9)))] as? AnimatSubqueryConvertible ?? AnimatSubqueryConvertible.Gif

        //: if model.effectType == .Gif {
        if model.effectType == .Gif {
            //: model.mainFile = dic["gifFile"] as? String ?? ""
            model.mainFile = dic[(String(kBackMessage.prefix(7)))] as? String ?? ""
            //: } else {
        } else {
            //: model.mainFile = dic[TalkingGiftAnimatType.Chat.rawValue] as? String ?? ""
            model.mainFile = dic[AnimatSubqueryConvertible.Chat.rawValue] as? String ?? ""
        }
        //: let versions: Array = dic["versions"] as! Array<Dictionary<String, Any>>
        let versions: Array = dic[(kManagerTitle.lowercased())] as! [[String: Any]]
        //: if versions.count <= 0 {
        if versions.count <= 0 {
            //: return model
            return model
        }
        //: let match = true
        let match = true
        /*!
         * 遍历versions数组，匹配应用版本，匹配到则使用config数据
         */
        //: for item in versions {
        for item in versions {
            //: model.effectConfig = item["config"] as! [String: Any]
            model.effectConfig = item[(String(k_refData))] as! [String: Any]
        }
        //: if (match) {
        if match {
            //: model.className       = model.effectConfig["className"] as? String ?? ""
            model.className = model.effectConfig[(String(k_pointPath.suffix(9)))] as? String ?? ""
            //: model.nativeClassName = model.effectConfig["nativeClassName"] as? String ?? ""
            model.nativeClassName = model.effectConfig[(String(kSumContent.prefix(7)) + String(kValidUrl))] as? String ?? ""
            //: model.effectType      = model.effectConfig["effectType"] as? TalkingGiftAnimatType ?? TalkingGiftAnimatType.Gif
            model.effectType = model.effectConfig[(k_tagPath.replacingOccurrences(of: "into", with: "e") + String(k_pathName.suffix(9)))] as? AnimatSubqueryConvertible ?? AnimatSubqueryConvertible.Gif
            //: model.mainFile        = model.effectConfig["mainFile"] as? String ?? ""
            model.mainFile = model.effectConfig[(String(k_imageMessage.prefix(8)))] as? String ?? ""
        }
        //: return model
        return model
    }
}
