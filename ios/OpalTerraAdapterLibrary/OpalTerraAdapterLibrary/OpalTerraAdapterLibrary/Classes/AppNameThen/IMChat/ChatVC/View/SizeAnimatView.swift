
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kCellMessage:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "gift" :*/
fileprivate let kSizeKey:[Character] = ["g","i","f","t"]

/*: "iosEffect" :*/
fileprivate let kShowData:String = "iosEfframe image"

/*: "iosEmperorEffect" :*/
fileprivate let k_clearData:String = "manager need return viewiosEm"
fileprivate let kBackTitle:String = "toct"

/*: "fromUid" :*/
fileprivate let k_underId:[Character] = ["f","r","o","m","U","i","d"]

/*: "fromNickname" :*/
fileprivate let kMakeMessage:[Character] = ["f","r","o","m","N","i","c","k","n","a"]
fileprivate let k_stateMessage:[Character] = ["m","e"]

/*: "fromHeadPic" :*/
fileprivate let k_equalIndexKey:String = "button data color withfromH"
fileprivate let k_clearPath:[Character] = ["e","a","d","P","i","c"]

/*: "pid" :*/
fileprivate let k_jumpUrl:[Character] = ["p","i","d"]

/*: "num" :*/
fileprivate let k_pushPath:String = "numatch"

/*: "pname" :*/
fileprivate let k_viewFormat:[Character] = ["p","n","a","m","e"]

/*: "name" :*/
fileprivate let kMainId:String = "NAME"

/*: "giftPic" :*/
fileprivate let k_actionLayerLoadPath:String = "equal scale ingiftP"
fileprivate let k_frameId:[Character] = ["i","c"]

/*: "imgPreview" :*/
fileprivate let kCenterId:String = "party"
fileprivate let k_errorValue:[Character] = ["m","g","P","r","e","v","i","e","w"]

/*: "comboNum" :*/
fileprivate let k_headTitle:[Character] = ["c","o","m","b","o","N","u","m"]

/*: "showType" :*/
fileprivate let k_toName:String = "where placeshowType"

/*: "animationTimes" :*/
fileprivate let kColorMakeId:String = "anactualation"
fileprivate let kNameUrl:[Character] = ["T","i","m","e","s"]

/*: "id" :*/
fileprivate let kLiveId:String = "ito"

/*: "iosVapEffect" :*/
fileprivate let kByMakeFormat:String = "page status list max trueiosVapE"
fileprivate let kAddSucceedBackMessage:String = "FFECT"

/*: "giftNum" :*/
fileprivate let kKitName:String = "to actualgiftNum"

/*: "Send to %@" :*/
fileprivate let k_convertStatusPath:[Character] = ["S","e","n","d"," ","t","o"," ","%"]
fileprivate let k_userFormat:String = "@"

/*: "all" :*/
fileprivate let k_panNorName:String = "apathpath"

/*: "Send to All Numbers" :*/
fileprivate let k_imageScaleName:[Character] = ["S","e","n","d"," ","t","o"," ","A","l","l"]
fileprivate let k_textHidePath:String = "live add Num"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SizeAnimatView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/7.
//

//: import UIKit
import UIKit

/// 私聊 礼物动效层
//: class TalkingPrivateChatAnimatView: UIView {
class SizeAnimatView: UIView {
    //: var animatArray: NSMutableArray =  NSMutableArray.init(capacity: 0)
    var animatArray: NSMutableArray = .init(capacity: 0)
    //: var isPlayAnimat = false
    var isPlayAnimat = false

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.source()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kCellMessage.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
    //: public lazy var giftAnimatView: TalkingGiftAnimatView = {
    public lazy var giftAnimatView: ItemViewDelegate = {
        //: let view = TalkingGiftAnimatView.init()
        let view = ItemViewDelegate()
        //: return view
        return view
        //: }()
    }()
}

//: extension TalkingPrivateChatAnimatView {
extension SizeAnimatView {
    /// 自己私聊送礼,动效处理

    //: func dealGiftAnimatData(dict: Dictionary<String, Any>) {
    func asReceiveDict(dict: [String: Any]) {
        //: if dict.keys.isEmpty {
        if dict.keys.isEmpty {
            //: return
            return
        }
        //: let  giftInfo: Dictionary? = dict["gift"] as? Dictionary<String, Any>
        let giftInfo: Dictionary? = dict[(String(kSizeKey))] as? [String: Any]
        //: if giftInfo == nil || giftInfo?.keys.contains("iosEffect") == false {
        if giftInfo == nil || giftInfo?.keys.contains((String(kShowData.prefix(5)) + "fect")) == false {
            //: return
            return
        }

        // 帝王礼物特效
        //: if  giftInfo?.keys.contains("iosEmperorEffect") != false {
        if giftInfo?.keys.contains((String(k_clearData.suffix(5)) + "perorEf" + kBackTitle.replacingOccurrences(of: "to", with: "fe"))) != false {
            // 开头动效
            //: let giftArr: NSMutableArray = giftInfo?["iosEmperorEffect"] as! NSMutableArray
            let giftArr: NSMutableArray = giftInfo?[(String(k_clearData.suffix(5)) + "perorEf" + kBackTitle.replacingOccurrences(of: "to", with: "fe"))] as! NSMutableArray

            //: giftArr.insert(giftInfo!["iosEffect"] ?? "", at: 0)
            giftArr.insert(giftInfo![(String(kShowData.prefix(5)) + "fect")] ?? "", at: 0)
            //: let tempArr = NSMutableArray.init()
            let tempArr = NSMutableArray()

            //: for giftStr in giftArr {
            for giftStr in giftArr {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)
                //: dictM["fromUid"] = DistanceAppManager.share.loginUserMode.userID
                dictM[(String(k_underId))] = DistanceAppManager.share.loginUserMode.userID
                //: dictM["fromNickname"] = DistanceAppManager.share.loginUserMode.nickname
                dictM[(String(kMakeMessage) + String(k_stateMessage))] = DistanceAppManager.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = DistanceAppManager.share.loginUserMode.headPic
                dictM[(String(k_equalIndexKey.suffix(5)) + String(k_clearPath))] = DistanceAppManager.share.loginUserMode.headPic
                //: dictM["pid"] = "0" // 缓存兼容
                dictM[(String(k_jumpUrl))] = "0" // 缓存兼容
                //: dictM["num"] =  giftInfo?["num"]
                dictM[(k_pushPath.replacingOccurrences(of: "match", with: "m"))] = giftInfo?[(k_pushPath.replacingOccurrences(of: "match", with: "m"))]
                //: dictM["pname"] = giftInfo?["name"]
                dictM[(String(k_viewFormat))] = giftInfo?[(kMainId.lowercased())]
                //: dictM["giftPic"] = giftInfo?["imgPreview"]
                dictM[(String(k_actionLayerLoadPath.suffix(5)) + String(k_frameId))] = giftInfo?[(kCenterId.replacingOccurrences(of: "party", with: "i") + String(k_errorValue))]
                //: dictM["comboNum"] = giftInfo?["comboNum"]
                dictM[(String(k_headTitle))] = giftInfo?[(String(k_headTitle))]
                //: dictM["iosEffect"] = giftStr
                dictM[(String(kShowData.prefix(5)) + "fect")] = giftStr
                //: dictM["showType"] = giftInfo?["showType"]
                dictM[(String(k_toName.suffix(8)))] = giftInfo?[(String(k_toName.suffix(8)))]
                //: dictM["animationTimes"] = "1"
                dictM[(kColorMakeId.replacingOccurrences(of: "actual", with: "im") + String(kNameUrl))] = "1"
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<TitleManagerMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: tempArr.add(giftModel)
                    tempArr.add(giftModel)
                }
            }
            // 循环播放次数
            //: var animationTimes = 1
            var animationTimes = 1
            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((kColorMakeId.replacingOccurrences(of: "actual", with: "im") + String(kNameUrl))) != false {
                //: animationTimes = giftInfo!["animationTimes"] as! Int
                animationTimes = giftInfo![(kColorMakeId.replacingOccurrences(of: "actual", with: "im") + String(kNameUrl))] as! Int
                //: } else {
            } else {
                //: animationTimes = giftInfo!["num"] as! Int
                animationTimes = giftInfo![(k_pushPath.replacingOccurrences(of: "match", with: "m"))] as! Int
            }
            //: let tempGiftArr = tempArr
            let tempGiftArr = tempArr
            //: for _ in 0..<animationTimes {
            for _ in 0 ..< animationTimes {
                //: self.animatArray.addObjects(from: tempGiftArr as! [Any])
                self.animatArray.addObjects(from: tempGiftArr as! [Any])
            }

            //: } else {
        } else {
            //: let dictM = NSMutableDictionary.init(capacity: 0)
            let dictM = NSMutableDictionary(capacity: 0)
            //: dictM["fromUid"] = DistanceAppManager.share.loginUserMode.userID
            dictM[(String(k_underId))] = DistanceAppManager.share.loginUserMode.userID
            //: dictM["fromNickname"] = DistanceAppManager.share.loginUserMode.nickname
            dictM[(String(kMakeMessage) + String(k_stateMessage))] = DistanceAppManager.share.loginUserMode.nickname
            //: dictM["fromHeadPic"] = DistanceAppManager.share.loginUserMode.headPic
            dictM[(String(k_equalIndexKey.suffix(5)) + String(k_clearPath))] = DistanceAppManager.share.loginUserMode.headPic
            //: dictM["pid"] = giftInfo?["id"]
            dictM[(String(k_jumpUrl))] = giftInfo?["id"]
            //: dictM["num"] =  giftInfo?["num"]
            dictM[(k_pushPath.replacingOccurrences(of: "match", with: "m"))] = giftInfo?[(k_pushPath.replacingOccurrences(of: "match", with: "m"))]
            //: dictM["pname"] = giftInfo?["name"]
            dictM[(String(k_viewFormat))] = giftInfo?[(kMainId.lowercased())]
            //: dictM["giftPic"] = giftInfo?["imgPreview"]
            dictM[(String(k_actionLayerLoadPath.suffix(5)) + String(k_frameId))] = giftInfo?[(kCenterId.replacingOccurrences(of: "party", with: "i") + String(k_errorValue))]
            //: dictM["comboNum"] = giftInfo?["comboNum"]
            dictM[(String(k_headTitle))] = giftInfo?[(String(k_headTitle))]
            //: dictM["iosEffect"] = giftInfo?["iosEffect"]
            dictM[(String(kShowData.prefix(5)) + "fect")] = giftInfo?[(String(kShowData.prefix(5)) + "fect")]
            //: dictM["showType"] = giftInfo?["showType"]
            dictM[(String(k_toName.suffix(8)))] = giftInfo?[(String(k_toName.suffix(8)))]
            //: dictM["iosVapEffect"] = giftInfo?["iosVapEffect"]
            dictM[(String(kByMakeFormat.suffix(7)) + kAddSucceedBackMessage.lowercased())] = giftInfo?[(String(kByMakeFormat.suffix(7)) + kAddSucceedBackMessage.lowercased())]

            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((kColorMakeId.replacingOccurrences(of: "actual", with: "im") + String(kNameUrl))) != false {
                //: dictM["animationTimes"] = giftInfo?["animationTimes"]
                dictM[(kColorMakeId.replacingOccurrences(of: "actual", with: "im") + String(kNameUrl))] = giftInfo?[(kColorMakeId.replacingOccurrences(of: "actual", with: "im") + String(kNameUrl))]
                //: } else {
            } else {
                //: dictM["animationTimes"] = dictM["num"]
                dictM[(kColorMakeId.replacingOccurrences(of: "actual", with: "im") + String(kNameUrl))] = dictM[(k_pushPath.replacingOccurrences(of: "match", with: "m"))]
            }
            //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
            if let giftModel = JSONDeserializer<TitleManagerMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                //: self.animatArray.add(giftModel)
                self.animatArray.add(giftModel)
            }
        }
        //: judgePlay()
        hypothesis()
    }

    /// 视频通话送礼,模型转换
    //: func changeGiftToModel(dict: Dictionary<String, Any>) ->TalkingGiftMsgAnimatModel? {
    func social(dict: [String: Any]) -> TitleManagerMeasurable? {
        //: if dict.keys.isEmpty {
        if dict.keys.isEmpty {
            //: return nil
            return nil
        }
        //: let  giftInfo: Dictionary? = dict["gift"] as? Dictionary<String, Any>
        let giftInfo: Dictionary? = dict[(String(kSizeKey))] as? [String: Any]
        //: if giftInfo == nil {
        if giftInfo == nil {
            //: return nil
            return nil
        }

        // 帝王礼物特效
        //: if  giftInfo?.keys.contains("iosEmperorEffect") != false {
        if giftInfo?.keys.contains((String(k_clearData.suffix(5)) + "perorEf" + kBackTitle.replacingOccurrences(of: "to", with: "fe"))) != false {
            // 开头动效
            //: let giftArr: NSMutableArray = giftInfo?["iosEmperorEffect"] as! NSMutableArray
            let giftArr: NSMutableArray = giftInfo?[(String(k_clearData.suffix(5)) + "perorEf" + kBackTitle.replacingOccurrences(of: "to", with: "fe"))] as! NSMutableArray

            //: giftArr.insert(giftInfo!["iosEffect"] ?? "", at: 0)
            giftArr.insert(giftInfo![(String(kShowData.prefix(5)) + "fect")] ?? "", at: 0)

            //: for giftStr in giftArr {
            for giftStr in giftArr {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)
                //: dictM["fromUid"] = DistanceAppManager.share.loginUserMode.userID
                dictM[(String(k_underId))] = DistanceAppManager.share.loginUserMode.userID
                //: dictM["fromNickname"] = DistanceAppManager.share.loginUserMode.nickname
                dictM[(String(kMakeMessage) + String(k_stateMessage))] = DistanceAppManager.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = DistanceAppManager.share.loginUserMode.headPic
                dictM[(String(k_equalIndexKey.suffix(5)) + String(k_clearPath))] = DistanceAppManager.share.loginUserMode.headPic
                //: dictM["pid"] = "0" // 缓存兼容
                dictM[(String(k_jumpUrl))] = "0" // 缓存兼容
                //: dictM["num"] =  giftInfo?["num"]
                dictM[(k_pushPath.replacingOccurrences(of: "match", with: "m"))] = giftInfo?[(k_pushPath.replacingOccurrences(of: "match", with: "m"))]
                //: dictM["pname"] = giftInfo?["name"]
                dictM[(String(k_viewFormat))] = giftInfo?[(kMainId.lowercased())]
                //: dictM["giftPic"] = giftInfo?["imgPreview"]
                dictM[(String(k_actionLayerLoadPath.suffix(5)) + String(k_frameId))] = giftInfo?[(kCenterId.replacingOccurrences(of: "party", with: "i") + String(k_errorValue))]
                //: dictM["comboNum"] = giftInfo?["comboNum"]
                dictM[(String(k_headTitle))] = giftInfo?[(String(k_headTitle))]
                //: dictM["iosEffect"] = giftStr
                dictM[(String(kShowData.prefix(5)) + "fect")] = giftStr
                //: dictM["showType"] = giftInfo?["showType"]
                dictM[(String(k_toName.suffix(8)))] = giftInfo?[(String(k_toName.suffix(8)))]
                //: dictM["animationTimes"] = "1"
                dictM[(kColorMakeId.replacingOccurrences(of: "actual", with: "im") + String(kNameUrl))] = "1"
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<TitleManagerMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: return giftModel
                    return giftModel
                }
            }
            //: } else {
        } else {
            //: let dictM = NSMutableDictionary.init(capacity: 0)
            let dictM = NSMutableDictionary(capacity: 0)
            //: dictM["fromUid"] = DistanceAppManager.share.loginUserMode.userID
            dictM[(String(k_underId))] = DistanceAppManager.share.loginUserMode.userID
            //: dictM["fromNickname"] = DistanceAppManager.share.loginUserMode.nickname
            dictM[(String(kMakeMessage) + String(k_stateMessage))] = DistanceAppManager.share.loginUserMode.nickname
            //: dictM["fromHeadPic"] = DistanceAppManager.share.loginUserMode.headPic
            dictM[(String(k_equalIndexKey.suffix(5)) + String(k_clearPath))] = DistanceAppManager.share.loginUserMode.headPic
            //: dictM["pid"] = giftInfo?["id"]
            dictM[(String(k_jumpUrl))] = giftInfo?["id"]
            //: dictM["num"] =  giftInfo?["num"]
            dictM[(k_pushPath.replacingOccurrences(of: "match", with: "m"))] = giftInfo?[(k_pushPath.replacingOccurrences(of: "match", with: "m"))]
            //: dictM["pname"] = giftInfo?["name"]
            dictM[(String(k_viewFormat))] = giftInfo?[(kMainId.lowercased())]
            //: dictM["giftPic"] = giftInfo?["imgPreview"]
            dictM[(String(k_actionLayerLoadPath.suffix(5)) + String(k_frameId))] = giftInfo?[(kCenterId.replacingOccurrences(of: "party", with: "i") + String(k_errorValue))]
            //: dictM["comboNum"] = giftInfo?["comboNum"]
            dictM[(String(k_headTitle))] = giftInfo?[(String(k_headTitle))]
            //: dictM["iosEffect"] = giftInfo?["iosEffect"]
            dictM[(String(kShowData.prefix(5)) + "fect")] = giftInfo?[(String(kShowData.prefix(5)) + "fect")]
            //: dictM["showType"] = giftInfo?["showType"]
            dictM[(String(k_toName.suffix(8)))] = giftInfo?[(String(k_toName.suffix(8)))]
            //: dictM["iosVapEffect"] = giftInfo?["iosVapEffect"]
            dictM[(String(kByMakeFormat.suffix(7)) + kAddSucceedBackMessage.lowercased())] = giftInfo?[(String(kByMakeFormat.suffix(7)) + kAddSucceedBackMessage.lowercased())]

            //: if giftInfo?.keys.contains("animationTimes") != false {
            if giftInfo?.keys.contains((kColorMakeId.replacingOccurrences(of: "actual", with: "im") + String(kNameUrl))) != false {
                //: dictM["animationTimes"] = giftInfo?["animationTimes"]
                dictM[(kColorMakeId.replacingOccurrences(of: "actual", with: "im") + String(kNameUrl))] = giftInfo?[(kColorMakeId.replacingOccurrences(of: "actual", with: "im") + String(kNameUrl))]
                //: } else {
            } else {
                //: dictM["animationTimes"] = dictM["num"]
                dictM[(kColorMakeId.replacingOccurrences(of: "actual", with: "im") + String(kNameUrl))] = dictM[(k_pushPath.replacingOccurrences(of: "match", with: "m"))]
            }
            //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
            if let giftModel = JSONDeserializer<TitleManagerMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                //: return giftModel
                return giftModel
            }
        }
        //: return nil
        return nil
    }

    /// 聊天室收到礼物消息处理
    //: func chatRoomDisposeReceiveGiftMsg(giftMessageDic: Dictionary<String, Any>, model: TalkingChatRoomMemberModel)->TalkingGiftMsgAnimatModel? {
    func totalelligentsia(giftMessageDic: [String: Any], model: RunOutMemberModel) -> TitleManagerMeasurable? {
        //: if  giftMessageDic.keys.contains("gift") == false {
        if giftMessageDic.keys.contains((String(kSizeKey))) == false {
            //: return nil
            return nil
        }
        //: if var roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: giftMessageDic["gift"] as? Dictionary<String, Any>, designatedPath: nil) {
        if var roomGiftModel = JSONDeserializer<WithCloseTransformable>.deserializeFrom(dict: giftMessageDic[(String(kSizeKey))] as? [String: Any], designatedPath: nil) {
            //: let dic =  giftMessageDic["gift"] as? Dictionary<String, Any>
            let dic = giftMessageDic[(String(kSizeKey))] as? [String: Any]
            //: roomGiftModel.giftNum = dic?["giftNum"] as? Int ?? 0
            roomGiftModel.giftNum = dic?[(String(kKitName.suffix(7)))] as? Int ?? 0
            //: var effect = roomGiftModel.iosEffect
            var effect = roomGiftModel.iosEffect
            //: if effect.count == 0 {
            if effect.count == 0 {
                //: effect = roomGiftModel.effect
                effect = roomGiftModel.effect
            }

            //: let tempGiftModel = NSMutableArray.init()
            let tempGiftModel = NSMutableArray()
            //: let tempDictM = NSMutableArray.init()
            let tempDictM = NSMutableArray()

            // 帝王礼物特效
            //: if  roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
            if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                // 开头动效
                //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                //: let tempArr = NSMutableArray.init()
                let tempArr = NSMutableArray()
                //: let tempDicArr = NSMutableArray.init()
                let tempDicArr = NSMutableArray()

                //: for giftStr in giftArr! {
                for giftStr in giftArr! {
                    //: let dictM = NSMutableDictionary.init(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)
                    //: dictM["fromUid"] = DistanceAppManager.share.loginUserMode.userID
                    dictM[(String(k_underId))] = DistanceAppManager.share.loginUserMode.userID
                    //: dictM["fromNickname"] = DistanceAppManager.share.loginUserMode.nickname
                    dictM[(String(kMakeMessage) + String(k_stateMessage))] = DistanceAppManager.share.loginUserMode.nickname
                    //: dictM["fromHeadPic"] = DistanceAppManager.share.loginUserMode.headPic
                    dictM[(String(k_equalIndexKey.suffix(5)) + String(k_clearPath))] = DistanceAppManager.share.loginUserMode.headPic
                    //: dictM["pid"] = "0" // 缓存兼容
                    dictM[(String(k_jumpUrl))] = "0" // 缓存兼容
                    //: dictM["num"] =  (roomGiftModel.giftNum)
                    dictM[(k_pushPath.replacingOccurrences(of: "match", with: "m"))] = (roomGiftModel.giftNum)
                    //: dictM["pname"] = "Send to %@".localizedArguments(model.nickname)
                    dictM[(String(k_viewFormat))] = (String(k_convertStatusPath) + k_userFormat.capitalized).edgeDelay(model.nickname)
                    //: if model.uid == "all" {
                    if model.uid == (k_panNorName.replacingOccurrences(of: "path", with: "l")) {
                        //: dictM["pname"] = "Send to All Numbers".localized
                        dictM[(String(k_viewFormat))] = (String(k_imageScaleName) + String(k_textHidePath.suffix(4)) + "bers").localized
                    }
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(k_actionLayerLoadPath.suffix(5)) + String(k_frameId))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(String(k_headTitle))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = giftStr
                    dictM[(String(kShowData.prefix(5)) + "fect")] = giftStr
                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(k_toName.suffix(8)))] = (roomGiftModel.showType)
                    //: dictM["animationTimes"] = "1"
                    dictM[(kColorMakeId.replacingOccurrences(of: "actual", with: "im") + String(kNameUrl))] = "1"

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                    if let giftModel = JSONDeserializer<TitleManagerMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: return giftModel
                        return giftModel
                    }
                }
                // 循环播放次数
                //: var animationTimes = 1
                var animationTimes = 1
                //: if roomGiftModel.animationTimes > 0 {
                if roomGiftModel.animationTimes > 0 {
                    //: animationTimes = roomGiftModel.animationTimes
                    animationTimes = roomGiftModel.animationTimes
                    //: } else {
                } else {
                    //: animationTimes = roomGiftModel.giftNum
                    animationTimes = roomGiftModel.giftNum
                }
                //: let tempGiftArr = tempArr
                let tempGiftArr = tempArr
                //: for _ in 0..<animationTimes {
                for _ in 0 ..< animationTimes {
                    //: tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                    tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                    //: tempDictM.addObjects(from: tempDicArr as! [Any])
                    tempDictM.addObjects(from: tempDicArr as! [Any])
                }
                //: } else {
            } else {
                //: let dictM = NSMutableDictionary.init(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)

                //: dictM["fromUid"] = DistanceAppManager.share.loginUserMode.userID
                dictM[(String(k_underId))] = DistanceAppManager.share.loginUserMode.userID
                //: dictM["fromNickname"] = DistanceAppManager.share.loginUserMode.nickname
                dictM[(String(kMakeMessage) + String(k_stateMessage))] = DistanceAppManager.share.loginUserMode.nickname
                //: dictM["fromHeadPic"] = DistanceAppManager.share.loginUserMode.headPic
                dictM[(String(k_equalIndexKey.suffix(5)) + String(k_clearPath))] = DistanceAppManager.share.loginUserMode.headPic

                //: dictM["pid"] = roomGiftModel.giftId
                dictM[(String(k_jumpUrl))] = roomGiftModel.giftId
                //: dictM["num"] =  (roomGiftModel.giftNum)
                dictM[(k_pushPath.replacingOccurrences(of: "match", with: "m"))] = (roomGiftModel.giftNum)
                // 显示送给谁
                //: dictM["pname"] = "Send to %@".localizedArguments(model.nickname)
                dictM[(String(k_viewFormat))] = (String(k_convertStatusPath) + k_userFormat.capitalized).edgeDelay(model.nickname)
                //: if model.uid == "all" {
                if model.uid == (k_panNorName.replacingOccurrences(of: "path", with: "l")) {
                    //: dictM["pname"] = "Send to All Numbers".localized
                    dictM[(String(k_viewFormat))] = (String(k_imageScaleName) + String(k_textHidePath.suffix(4)) + "bers").localized
                }
                //: dictM["giftPic"] = roomGiftModel.imgPreview
                dictM[(String(k_actionLayerLoadPath.suffix(5)) + String(k_frameId))] = roomGiftModel.imgPreview
                //: dictM["comboNum"] = (roomGiftModel.comboNum)
                dictM[(String(k_headTitle))] = (roomGiftModel.comboNum)
                //: dictM["iosEffect"] = effect
                dictM[(String(kShowData.prefix(5)) + "fect")] = effect
                //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                dictM[(String(kByMakeFormat.suffix(7)) + kAddSucceedBackMessage.lowercased())] = roomGiftModel.iosVapEffect

                //: dictM["showType"] = (roomGiftModel.showType)
                dictM[(String(k_toName.suffix(8)))] = (roomGiftModel.showType)
                //: if (roomGiftModel.animationTimes > 0) {
                if roomGiftModel.animationTimes > 0 {
                    //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                    dictM[(kColorMakeId.replacingOccurrences(of: "actual", with: "im") + String(kNameUrl))] = (roomGiftModel.animationTimes)
                    //: } else {
                } else {
                    //: dictM["animationTimes"] = dictM["num"]
                    dictM[(kColorMakeId.replacingOccurrences(of: "actual", with: "im") + String(kNameUrl))] = dictM[(k_pushPath.replacingOccurrences(of: "match", with: "m"))]
                }

                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? Dictionary<String, Any>, designatedPath: nil) {
                if let giftModel = JSONDeserializer<TitleManagerMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: return giftModel
                    return giftModel
                }
            }
        }
        //: return nil
        return nil
    }

    /// 收到礼物消息的动效模型(私信收到)
    //: func addGiftAnimatModel(model: TalkingGiftMsgAnimatModel) {
    func willBy(model: TitleManagerMeasurable) {
        //: animatArray.add(model)
        animatArray.add(model)
        //: judgePlay()
        hypothesis()
    }

    /// 收到礼物消息的动效组(私信收到)
    //: func addGiftAnimatModelArr(modelArr: Array<Any>) {
    func keyArr(modelArr: [Any]) {
        //: animatArray.addObjects(from: modelArr)
        animatArray.addObjects(from: modelArr)
        //: judgePlay()
        hypothesis()
    }

    /// 获取剩余的动画队列
    //: func getLeftGiftAnimat() ->NSMutableArray {
    func recover() -> NSMutableArray {
        //: let data = animatArray
        let data = animatArray
        //: animatArray.removeAllObjects()
        animatArray.removeAllObjects()
        //: isPlayAnimat = false
        isPlayAnimat = false
        //: return data
        return data
    }

    /// 初始化动画资源(针对通话的显示 最小化 关闭的切换)
    //: func initAnimatData(data: NSMutableArray) {
    func broadcast(data: NSMutableArray) {
        //: animatArray.removeAllObjects()
        animatArray.removeAllObjects()
        //: isPlayAnimat = false
        isPlayAnimat = false
        //: if data.count > 0 {
        if data.count > 0 {
            //: animatArray.addObjects(from: data as! [Any])
            animatArray.addObjects(from: data as! [Any])
        }
        //: judgePlay()
        hypothesis()
    }

    /// 根据会话id 将对应的缓存动画加进来

    //: func initCachAnimatData(tagetID: String) {
    func exhibit(tagetID: String) {
        //: let data = AbTalkingPrivateChatAnimatTool.shared.getConverCacheGiftAnimat(tagetId: tagetID)
        let data = ViewMakeReactiveCompatible.shared.doingLine(tagetId: tagetID)
        //: if data.count > 0 {
        if data.count > 0 {
            //: animatArray.addObjects(from: data as! [Any])
            animatArray.addObjects(from: data as! [Any])
        }
        //: judgePlay()
        hypothesis()
    }

    /// 判断是否要取数组动效 开始播放
    //: func judgePlay() {
    func hypothesis() {
        //: if animatArray.count>0 && isPlayAnimat == false {
        if animatArray.count > 0, isPlayAnimat == false {
            //: playNext()
            competeTo()
        }
    }

    /// 播放
    //: func playNext() {
    func competeTo() {
        //: if animatArray.count > 0 {
        if animatArray.count > 0 {
            //: var index = 0
            var index = 0
            //: animatArray.enumerateObjects { obj, idx, stop in
            animatArray.enumerateObjects { obj, idx, stop in
                // 盲盒礼物\帝王礼物 优先播放
                //: let model: TalkingGiftMsgAnimatModel = obj as! TalkingGiftMsgAnimatModel
                let model: TitleManagerMeasurable = obj as! TitleManagerMeasurable
                //: if (model.showType == ChatGiftAnimatType.myStery.rawValue || model.showType == ChatGiftAnimatType.king.rawValue) {
                if model.showType == BugOutMirrorPath.myStery.rawValue || model.showType == BugOutMirrorPath.king.rawValue {
                    //: index = idx
                    index = idx
                    //: stop.pointee = true
                    stop.pointee = true
                }
            }
            //: let giftModel = self.animatArray[index]
            let giftModel = self.animatArray[index]
            //: self.isPlayAnimat = true
            self.isPlayAnimat = true
            //: self.animatArray.removeObject(at: index)
            self.animatArray.removeObject(at: index)
            //: let iscanPlay = self.giftAnimatView.didReceiveMsgModel(msgModel: giftModel)
            let iscanPlay = self.giftAnimatView.computerSimulation(msgModel: giftModel)
            //: if !iscanPlay {
            if !iscanPlay {
                //: self.isPlayAnimat = false
                self.isPlayAnimat = false
                //: judgePlay()
                hypothesis()
            }
        }
    }

    //: override var contentMode: UIView.ContentMode {
    override var contentMode: UIView.ContentMode {
        //: didSet {
        didSet {
            //: self.giftAnimatView.contentMode = contentMode
            self.giftAnimatView.contentMode = contentMode
        }
    }
}

//: extension TalkingPrivateChatAnimatView {
extension SizeAnimatView {
    // 添加视图
    //: private func setupSubviews() {
    private func source() {
        //: self.isUserInteractionEnabled = false
        self.isUserInteractionEnabled = false

        //: self.addSubview(giftAnimatView)
        self.addSubview(giftAnimatView)

        //: giftAnimatView.snp.makeConstraints { make in
        giftAnimatView.snp.makeConstraints { make in
            //: make.edges.equalTo(self)
            make.edges.equalTo(self)
        }
        //: giftAnimatView.animationFinishCallback = { [weak self] obj in
        giftAnimatView.animationFinishCallback = { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.isPlayAnimat = false
            self.isPlayAnimat = false
            //: self.playNext()
            self.competeTo()
        }

        //: giftAnimatView.finishAnimBlock = { [weak self] success in
        giftAnimatView.finishAnimBlock = { [weak self] success in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if !success {
            if !success {
                //: self.isPlayAnimat = false
                self.isPlayAnimat = false
                //: self.playNext()
                self.competeTo()
            }
        }
    }
}
