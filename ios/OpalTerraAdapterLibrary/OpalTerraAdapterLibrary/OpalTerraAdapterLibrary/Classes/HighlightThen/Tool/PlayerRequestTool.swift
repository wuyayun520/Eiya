
//: Declare String Begin

/*: "mf/business/giftList" :*/
fileprivate let k_sourcePathName:String = "mf/buname if request in"
fileprivate let kServerTitle:String = "view error count center ifs/giftL"
fileprivate let kLayerFormat:[Character] = ["i","s","t"]

/*: "type" :*/
fileprivate let kCollectionId:[UInt8] = [0x65,0x70,0x79,0x74]

/*: "mf/chatRoom/giftList" :*/
fileprivate let kAgreeData:String = "cell collection picmf/ch"
fileprivate let k_thanUrl:String = "/giftLto add leading"
fileprivate let kWaitTopContent:[Character] = ["i","s","t"]

/*: "live/giftList" :*/
fileprivate let k_transformId:String = "modelve"
fileprivate let kToColorPath:String = "tListbutton any dynamic"

/*: "party/giftList" :*/
fileprivate let k_normalFormat:String = "femalert"
fileprivate let kSectionText:[Character] = ["f","t","L","i","s","t"]

/*: "IM/getMessageList" :*/
fileprivate let kRenderElementUrl:String = "view"
fileprivate let k_customFormat:[Character] = ["M","/","g","e","t","M","e","s","s","a","g","e","L","i","s","t"]

/*: "mf/business/sendMsg" :*/
fileprivate let kViewText:String = "awake tagmf/bu"
fileprivate let kManagerInputId:String = "player app path color/sendMsg"

/*: "mf/chatRoom/sendMsg" :*/
fileprivate let kMakeUrl:String = "import hiddenmf/cha"
fileprivate let k_blockServiceMessage:String = "item var pushdMsg"

/*: "mf/business/sendGift" :*/
fileprivate let kPicStr:[Character] = ["m","f","/","b","u","s","i","n","e"]
fileprivate let kRowName:String = "ss/senapp size"

/*: "mf/chatRoom/sendGift" :*/
fileprivate let kSizeFeeRecordData:String = "mf/chauser type event"
fileprivate let k_modelKey:String = "/sendGiftself small"

/*: "live/sendGift" :*/
fileprivate let kMainKey:String = "live/mode i"
fileprivate let kColorTitle:String = "Giftview view model"

/*: "party/sendGift" :*/
fileprivate let kGiftName:String = "party/self case"
fileprivate let k_screenValue:String = "Giftup as string"

/*: "mf/user/getChatInfo" :*/
fileprivate let k_intimateValue:[Character] = ["m","f","/","u","s"]
fileprivate let kAddKey:String = "view lefter/ge"
fileprivate let k_kitName:String = "tInfomake remove"

/*: "IM/getMessageUserInfoList" :*/
fileprivate let k_backgroundDataContent:[Character] = ["I","M","/","g","e","t","M","e","s","s","a","g","e","U","s","e","r","I","n"]
fileprivate let kErrorFormat:String = "foListcolor self"

/*: "mf/crush/whoLikeMeList" :*/
fileprivate let kCountMessage:[Character] = ["m","f","/","c","r","u","s","h","/","w","h"]
fileprivate let k_showMessage:String = "oLshare user succeed method"
fileprivate let k_firstUrl:String = "view class equal buttonikeM"

/*: "mf/crush/ignore" :*/
fileprivate let kServiceText:String = "mf/cinformation size will button make"
fileprivate let k_labelData:String = "igcountre"

/*: "mf/crush/like" :*/
fileprivate let kToMsg:String = "no gift data pushmf/c"
fileprivate let kImageValue:String = "IKE"

/*: "mf/user/getRelation" :*/
fileprivate let k_sMessage:[Character] = ["m","f","/","u","s","e","r","/","g","e","t","R","e","l","a","t","i","o"]
fileprivate let k_fileName:String = "max"

/*: "user/attention" :*/
fileprivate let k_styleValue:[UInt8] = [0xf2,0xf0,0xe2,0xef,0xac,0xde,0xf1,0xf1,0xe2,0xeb,0xf1,0xe6,0xec,0xeb]

fileprivate func infoImage(touch num: UInt8) -> UInt8 {
    let value = Int(num) + 131
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "user/removeAttention" :*/
fileprivate let kDoingMsg:String = "guard number whiteuser/r"
fileprivate let kWhoName:String = "entgroupn"

/*: "Can't earn points if you follow each other~" :*/
fileprivate let kAppInfoMessage:[UInt8] = [0x7e,0x72,0x65,0x68,0x74,0x6f,0x20,0x68,0x63,0x61,0x65,0x20,0x77,0x6f,0x6c,0x6c,0x6f,0x66,0x20,0x75,0x6f,0x79,0x20,0x66,0x69,0x20,0x73,0x74,0x6e,0x69,0x6f,0x70,0x20,0x6e,0x72,0x61,0x65,0x20,0x74,0x27,0x6e,0x61,0x43]

/*: "follow Success" :*/
fileprivate let kViewKeyStr:[Character] = ["f","o","l","l","o","w"]
fileprivate let kNovaPath:String = "image with touch let in Suc"

/*: "unfollow Success" :*/
fileprivate let k_foundationValue:String = "unfoviewview"
fileprivate let k_equalUrl:String = "ccestatus"

/*: "translate/msg" :*/
fileprivate let k_countUrl:String = "transpoint"

/*: "msgId" :*/
fileprivate let kSignFormat:[UInt8] = [0x4e,0x54,0x48,0x2a,0x45]

fileprivate func makeFrame(fatal num: UInt8) -> UInt8 {
    let value = Int(num) - 225
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "targetLng" :*/
fileprivate let kSubmitFormat:[UInt8] = [0x96,0x83,0x90,0x85,0x87,0x96,0xae,0x8c,0x85]

/*: "mf/greet/getAutoGreetContent" :*/
fileprivate let kHiddenValue:String = "mf/gritem time"
fileprivate let kVoiceNetPath:String = "eet/gaction style any mic model"
fileprivate let kTheValue:String = "manager me var kindGreetC"

/*: "mf/greet/getIntimatePhoto" :*/
fileprivate let kTimeFormat:String = "with equal asmf/g"
fileprivate let kQuoteLessName:String = "/getIarray model nor photo make"
fileprivate let k_moreData:String = "send view listateP"

/*: "toUid" :*/
fileprivate let kMinKey:[UInt8] = [0x64,0x69,0x55,0x6f,0x74]

/*: "mf/chatRoom/info" :*/
fileprivate let k_shareMessage:String = "mf/chm type model event object"
fileprivate let kValueAppTitle:[Character] = ["a","t","R","o","o","m","/","i","n","f","o"]

/*: "mf/chatRoom/list" :*/
fileprivate let k_backgroundFormat:String = "info type menumf/cha"
fileprivate let k_viewMsg:String = "/listtable size time import"

/*: "roomId" :*/
fileprivate let k_reportMsg:[UInt8] = [0x3d,0x3a,0x3a,0x38,0x14,0x2f]

fileprivate func makeName(succeed num: UInt8) -> UInt8 {
    let value = Int(num) + 53
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "needExtraInfo" :*/
fileprivate let k_contentData:[UInt8] = [0x50,0x5b,0x5b,0x5a,0x7b,0x46,0x4a,0x4c,0x5f,0x77,0x50,0x58,0x51]

private func pointOfMagnitudeersection(quote num: UInt8) -> UInt8 {
    return num ^ 62
}

/*: "mf/chatRoom/check" :*/
fileprivate let kSendViewUrl:[Character] = ["m","f","/","c","h","a","t","R","o","o","m","/","c","h","e","c","k"]

/*: "mf/chatRoom/joinOrQuit" :*/
fileprivate let kTargetTitle:[Character] = ["m","f","/","c","h","a","t"]
fileprivate let k_allowIndexId:[Character] = ["R","o","o","m","/","j","o","i"]
fileprivate let kTitleMessage:String = "equal string returnnOrQuit"

/*: "mf/chatRoom/members" :*/
fileprivate let kPointData:String = "path succeed return labelmf/cha"
fileprivate let k_withKey:String = "mimagembimagers"

/*: "translate/text" :*/
fileprivate let kTimeKey:String = "transhalf"
fileprivate let kTotalById:String = "XT"

/*: "text" :*/
fileprivate let kFrameId:[UInt8] = [0x86,0x77,0x8a,0x86]

fileprivate func collectionCell(insert num: UInt8) -> UInt8 {
    let value = Int(num) - 18
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "mf/user/queryStatus" :*/
fileprivate let kGiftKey:[Character] = ["m","f","/","u","s","e","r","/","q","u","e"]
fileprivate let kCenterLiveMsg:String = "observe background size makerySt"

/*: "toUids" :*/
fileprivate let k_labStr:[UInt8] = [0x73,0x64,0x69,0x55,0x6f,0x74]

/*: "call/getCallTab" :*/
fileprivate let k_appText:String = "call/else me model file"
fileprivate let k_indexMsg:String = "make of view interest tolTab"

/*: "mf/user/remark" :*/
fileprivate let kEffectMenuMsg:String = "bag followingmf/us"
fileprivate let k_insidePath:String = "er/rgift direction var manager"

/*: "content" :*/
fileprivate let k_currentData:[UInt8] = [0x92,0x9e,0x9d,0xa3,0x94,0x9d,0xa3]

fileprivate func sectionCount(equal num: UInt8) -> UInt8 {
    let value = Int(num) - 47
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "top" :*/
fileprivate let kFrameKey:[UInt8] = [0x62,0x79,0x66]

private func contentPath(lab num: UInt8) -> UInt8 {
    return num ^ 22
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PlayerRequestTool.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/7.
//

//: import UIKit
import UIKit

//: public class PlayerRequestTool: NSObject {
public class PlayerRequestTool: NSObject {
    //: public typealias RequestEndBlock = (_ t: Bool) -> Void
    public typealias RequestEndBlock = (_ t: Bool) -> Void
    //: typealias FinishBlocks = (_ succeed: Bool, _ result: NSDictionary) -> Void
    typealias FinishBlocks = (_ succeed: Bool, _ result: NSDictionary) -> Void
    //: public typealias RequestMsgUserListBlock = (_ succeed: Bool, _ dataArr: [HumankindThen]) -> Void
    public typealias RequestMsgUserListBlock = (_ succeed: Bool, _ dataArr: [HumankindThen]) -> Void

    /// 私信礼物面板
    /// - Parameters:
    ///   - type: 0=默认， 1=私密照片，2=私密视频,3=节目单
    ///   - completion: 回调
    //: class func req_ChatGiftList(type: String, completion: @escaping FinishBlock) {
    class func typeWill(type: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/business/giftList"
        reqModel.requestPath = (String(k_sourcePathName.prefix(5)) + "sines" + String(kServerTitle.suffix(7)) + String(kLayerFormat))
        //: reqModel.params = ["type": type]
        reqModel.params = [String(bytes: kCollectionId.reversed(), encoding: .utf8)!: type]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 聊天室礼物面板
    /// - Parameters：
    ///   - completion: 回调
    //: class func req_ChatRoomGiftList(type: String, completion: @escaping FinishBlock) {
    class func slide(type _: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/chatRoom/giftList"
        reqModel.requestPath = (String(kAgreeData.suffix(5)) + "atRoom" + String(k_thanUrl.prefix(6)) + String(kWaitTopContent))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 直播礼物面板
    /// - Parameters：
    ///   - completion: 回调
    //: class func req_LiveGiftList(type: String, completion: @escaping FinishBlock) {
    class func afterWith(type _: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "live/giftList"
        reqModel.requestPath = (k_transformId.replacingOccurrences(of: "model", with: "li") + "/gif" + String(kToColorPath.prefix(5)))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 语聊房礼物面板
    /// - Parameters：
    ///   - completion: 回调
    //: class func req_partyGiftList(type: String, completion: @escaping FinishBlock) {
    class func viewShow(type _: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "party/giftList"
        reqModel.requestPath = (k_normalFormat.replacingOccurrences(of: "female", with: "pa") + "y/gi" + String(kSectionText))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 请求系统消息
    /// - Parameter completion: 回调
    //: @objc class func req_sysMessageList(completion: @escaping FinishBlocks) {
    @objc class func soundAwake(completion: @escaping FinishBlocks) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "IM/getMessageList"
        reqModel.requestPath = (kRenderElementUrl.replacingOccurrences(of: "view", with: "I") + String(k_customFormat))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, _ in
            //: if succeed {
            if succeed {
                //: completion(true, result as! NSDictionary)
                completion(true, result as! NSDictionary)
            }
        }
    }

    /// 私聊发送消息
    /// - Parameters:
    ///   - param: 传参
    ///   - completion: 回调
    //: class func req_SendPrivete(param: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func cellBy(param: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/business/sendMsg"
        reqModel.requestPath = (String(kViewText.suffix(5)) + "siness" + String(kManagerInputId.suffix(8)))
        //: reqModel.params = param
        reqModel.params = param
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 公共聊天室发送消息
    /// - Parameters:
    ///   - param: 传参
    ///   - completion: 回调
    //: class func req_SendRoomMsg(param: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func outCompletion(param: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/chatRoom/sendMsg"
        reqModel.requestPath = (String(kMakeUrl.suffix(6)) + "tRoom/sen" + String(k_blockServiceMessage.suffix(4)))
        //: reqModel.params = param
        reqModel.params = param
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 送礼物
    /// - Parameters:
    ///   - param: 参数
    ///   - completion: 回调
    //: class func req_SendGiftPrivete( param: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func playerLast(param: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/business/sendGift"
        reqModel.requestPath = (String(kPicStr) + String(kRowName.prefix(6)) + "dGift")
        //: reqModel.params = param
        reqModel.params = param
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 聊天室送礼物
    /// - Parameters:
    ///   - param: 参数
    ///   - completion: 回调
    //: class func req_SendGiftChatRoom( param: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func belowGift(param: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/chatRoom/sendGift"
        reqModel.requestPath = (String(kSizeFeeRecordData.prefix(6)) + "tRoom" + String(k_modelKey.prefix(9)))
        //: reqModel.params = param
        reqModel.params = param
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 直播送礼物
    /// - Parameters:
    ///   - param: 参数
    ///   - completion: 回调
    //: class func req_SendGiftLive( param: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func smallParamNeighbourSendGiftData(param: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "live/sendGift"
        reqModel.requestPath = (String(kMainKey.prefix(5)) + "send" + String(kColorTitle.prefix(4)))
        //: reqModel.params = param
        reqModel.params = param
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 语聊房送礼物
    /// - Parameters:
    ///   - param: 参数
    ///   - completion: 回调
    //: class func req_sendPartyGift(param: [String: Any], completion: @escaping FinishBlock) {
    class func giftBy(param: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "party/sendGift"
        reqModel.requestPath = (String(kGiftName.prefix(6)) + "send" + String(k_screenValue.prefix(4)))
        //: reqModel.params = param
        reqModel.params = param
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 请求聊天用户信息
    /// - Parameters:
    //: class func req_refreshUserChatInfo( param: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func modelCompletion(param: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/user/getChatInfo"
        reqModel.requestPath = (String(k_intimateValue) + String(kAddKey.suffix(5)) + "tCha" + String(k_kitName.prefix(5)))
        //: reqModel.params = param
        reqModel.params = param
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 请求用户消息列表
    /// - Parameters:
    //: @objc class public func req_refreshMsgUserListInfo( param: Dictionary<String, Any>, completion: @escaping RequestMsgUserListBlock) {
    @objc public class func usageConversation(param: [String: Any], completion: @escaping RequestMsgUserListBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "IM/getMessageUserInfoList"
        reqModel.requestPath = (String(k_backgroundDataContent) + String(kErrorFormat.prefix(6)))
        //: reqModel.params = param
        reqModel.params = param
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, _ in
            //: guard succeed else {
            guard succeed else {
                //: completion(succeed, [])
                completion(succeed, [])
                //: return
                return
            }

            //: if let datas = Array<HumankindThen>.deserialize(from: result as? Array) {
            if let datas = Array<HumankindThen>.deserialize(from: result as? Array) {
                //: completion(succeed, datas as! [HumankindThen])
                completion(succeed, datas as! [HumankindThen])
            }
        }
    }

    /// 请求用户消息列表
    //: @objc class public func req_giftEffectDataUrl(giftUrl: String, path: String, completion: @escaping RequestEndBlock) {
    @objc public class func spilloverImage(giftUrl: String, path: String, completion: @escaping RequestEndBlock) {
        //: GJ.startGiftZipRequest(giftUrl: giftUrl, path: path) { succeed, result, errorModel in
        showEndName.holdDoingInwards(giftUrl: giftUrl, path: path) { succeed, _, _ in
            //: completion(succeed)
            completion(succeed)
        }
    }

    /// 谁心动我 - 列表
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_whoLikeMeList(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func listTo(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/crush/whoLikeMeList"
        reqModel.requestPath = (String(kCountMessage) + String(k_showMessage.prefix(2)) + String(k_firstUrl.suffix(4)) + "eList")
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 谁心动我 - nope拒绝操作
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_whoLikeMeIgnore(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func afterData(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/crush/ignore"
        reqModel.requestPath = (String(kServiceText.prefix(4)) + "rush/" + k_labelData.replacingOccurrences(of: "count", with: "no"))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 谁心动我 - like操作
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_whoLikeMelike(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func makeUp(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/crush/like"
        reqModel.requestPath = (String(kToMsg.suffix(4)) + "rush/l" + kImageValue.lowercased())
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 关注列表
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_atationList(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func permission(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/user/getRelation"
        reqModel.requestPath = (String(k_sMessage) + k_fileName.replacingOccurrences(of: "max", with: "n"))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 关注操作
    /// - Parameters:
    /// - isAttention: 关注/取消
    ///   - completion: 回调
    //: class func req_atationTool(isAttention: Bool, params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func appPath(isAttention: Bool, params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: let path = isAttention==true ? "user/attention" :"user/removeAttention"
        let path = isAttention == true ? String(bytes: k_styleValue.map{infoImage(touch: $0)}, encoding: .utf8)! : (String(kDoingMsg.suffix(6)) + "emoveAtt" + kWhoName.replacingOccurrences(of: "group", with: "io"))
        //: reqModel.requestPath = path
        reqModel.requestPath = path
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            // 统一处理toast
            //: if succeed {
            if succeed {
                //: if isAttention {
                if isAttention {
                    //: if DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue {
                    if DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue { // 女性
                        //: object.func__showStatusBarSuccessMsg(showMsg: "Can't earn points if you follow each other~".localized)
                        showEnableDomainAppValue.rear(showMsg: String(bytes: kAppInfoMessage.reversed(), encoding: .utf8)!.localized)
                        //: } else {
                    } else {
                        //: object.func__showStatusBarSuccessMsg(showMsg: "follow Success".localized)
                        showEnableDomainAppValue.rear(showMsg: (String(kViewKeyStr) + String(kNovaPath.suffix(4)) + "cess").localized)
                    }
                    //: } else {
                } else {
                    //: object.func__showStatusBarSuccessMsg(showMsg: "unfollow Success".localized)
                    showEnableDomainAppValue.rear(showMsg: (k_foundationValue.replacingOccurrences(of: "view", with: "l") + "ow Su" + k_equalUrl.replacingOccurrences(of: "status", with: "ss")).localized)
                }

                //: } else {
            } else {
                //: object.func__showStatusBarErrorMsg(showMsg: errorModel?.errorMsg ?? "")
                showEnableDomainAppValue.arcInfo(showMsg: errorModel?.errorMsg ?? "")
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 文本翻译
    /// - Parameters:
    ///   - msgId: 消息ID
    ///   - type=0表示私聊消息，type=1表示聊天室消息
    ///   - completion: 回调
    //: @objc class public func req_translateMsg(msgId: String, type: Int, completion: @escaping (_ succeed: Bool, _ result: NSDictionary, _ errorCode: Int) -> Void) {
    @objc public class func nearType(msgId: String, type: Int, completion: @escaping (_ succeed: Bool, _ result: NSDictionary, _ errorCode: Int) -> Void) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "translate/msg"
        reqModel.requestPath = (k_countUrl.replacingOccurrences(of: "point", with: "l") + "ate/msg")
        //: reqModel.params = ["msgId": msgId, "targetLng": UserTextMacroDefine.getSystemLangCode(), "type": "\(type)"]
        reqModel.params = [String(bytes: kSignFormat.map{makeFrame(fatal: $0)}, encoding: .utf8)!: msgId, String(bytes: kSubmitFormat.map{$0^226}, encoding: .utf8)!: UserTextMacroDefine.societalLoad(), String(bytes: kCollectionId.reversed(), encoding: .utf8)!: "\(type)"]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result as? NSDictionary ?? [:], errorModel?.errorCode ?? 0)
            completion(succeed, result as? NSDictionary ?? [:], errorModel?.errorCode ?? 0)
        }
    }

    /// 获取一键打招呼内容
    ///   - completion: 回调
    //: class func req_getAutoGreetContent(completion: @escaping FinishBlock) {
    class func nor(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/greet/getAutoGreetContent"
        reqModel.requestPath = (String(kHiddenValue.prefix(5)) + String(kVoiceNetPath.prefix(5)) + "etAuto" + String(kTheValue.suffix(6)) + "ontent")
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取随机私密照片
    ///   - completion: 回调
    //: class func req_getIntimatePhoto(toUid: String, completion: @escaping FinishBlock) {
    class func endUserDisable(toUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/greet/getIntimatePhoto"
        reqModel.requestPath = (String(kTimeFormat.suffix(4)) + "reet" + String(kQuoteLessName.prefix(5)) + "ntim" + String(k_moreData.suffix(4)) + "hoto")
        //: reqModel.params = ["toUid": toUid]
        reqModel.params = [String(bytes: kMinKey.reversed(), encoding: .utf8)!: toUid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取聊天广场在线人数和家族信息
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_getChatRoomInfo(completion: @escaping FinishBlock) {
    class func mini(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/chatRoom/info"
        reqModel.requestPath = (String(k_shareMessage.prefix(5)) + String(kValueAppTitle))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 聊天广场列表
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_getChatRoomList(completion: @escaping FinishBlock) {
    class func doingEnable(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/chatRoom/list"
        reqModel.requestPath = (String(k_backgroundFormat.suffix(6)) + "tRoom" + String(k_viewMsg.prefix(5)))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 检测聊天室
    /// - Parameters:
    ///   - roomId: 聊天室Id
    ///   - completion: 回调
    //: class func req_checkChatRoom(roomId: String, completion: @escaping FinishBlock) {
    class func circumferenceCompletion(roomId: String, completion: @escaping FinishBlock) {
        //: let params = ["roomId": roomId, "needExtraInfo": "1"]
        let params = [String(bytes: k_reportMsg.map{makeName(succeed: $0)}, encoding: .utf8)!: roomId, String(bytes: k_contentData.map{pointOfMagnitudeersection(quote: $0)}, encoding: .utf8)!: "1"]
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/chatRoom/check"
        reqModel.requestPath = (String(kSendViewUrl))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 进入或退出聊天室
    /// - Parameters:
    ///   - params: 参数
    ///   - completion: 回调
    //: class func req_chatRoomJoinOrQuit(params: [String: Any], completion: @escaping FinishBlock) {
    class func completionCell(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/chatRoom/joinOrQuit"
        reqModel.requestPath = (String(kTargetTitle) + String(k_allowIndexId) + String(kTitleMessage.suffix(7)))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 聊天室在线名单
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_getChatRoomMembers(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func cameraCommit(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/chatRoom/members"
        reqModel.requestPath = (String(kPointData.suffix(6)) + "tRoom/" + k_withKey.replacingOccurrences(of: "image", with: "e"))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 文本翻译
    /// - Parameters:
    ///   - text: 文本
    ///   - completion: 回调
    //: class func req_translateText(text: String, completion: @escaping FinishBlock) {
    class func fromShowUser(text: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "translate/text"
        reqModel.requestPath = (kTimeKey.replacingOccurrences(of: "half", with: "l") + "ate/te" + kTotalById.lowercased())
        //: reqModel.params = ["text": text]
        reqModel.params = [String(bytes: kFrameId.map{collectionCell(insert: $0)}, encoding: .utf8)!: text]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 批量查询消息列表用户在线状态
    /// - Parameters:
    ///   - toUids: 用户ids
    ///   - completion: 回调
    //: @objc class public func req_queryStatus(toUids: String, completion: @escaping (_ succeed: Bool, _ result: [[String: Any]]?) -> Void) {
    @objc public class func doOrigin(toUids: String, completion: @escaping (_ succeed: Bool, _ result: [[String: Any]]?) -> Void) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/user/queryStatus"
        reqModel.requestPath = (String(kGiftKey) + String(kCenterLiveMsg.suffix(4)) + "atus")
        //: reqModel.params = ["toUids": toUids, "type": 1]
        reqModel.params = [String(bytes: k_labStr.reversed(), encoding: .utf8)!: toUids, String(bytes: kCollectionId.reversed(), encoding: .utf8)!: 1]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, _ in
            //: completion(succeed, result as? [[String: Any]] ?? [])
            completion(succeed, result as? [[String: Any]] ?? [])
        }
    }

    /// 拨打通话记录
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_getCallTab(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func nearFormatShow(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "call/getCallTab"
        reqModel.requestPath = (String(k_appText.prefix(5)) + "getCal" + String(k_indexMsg.suffix(4)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 新增/修改备注
    /// - Parameters:
    ///   - content: 备注内容
    ///   - isTop: 是否置顶，1：是，2：否
    ///   - toUid: 对方uid
    ///   - completion: 回调
    //: class func req_remark(content: String, isTop: Int, toUid: String, completion: @escaping FinishBlock) {
    class func afterCompletion(content: String, isTop: Int, toUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/user/remark"
        reqModel.requestPath = (String(kEffectMenuMsg.suffix(5)) + String(k_insidePath.prefix(4)) + "emark")
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["content": content, "top": isTop, "toUid": toUid]
        reqModel.params = [String(bytes: k_currentData.map{sectionCount(equal: $0)}, encoding: .utf8)!: content, String(bytes: kFrameKey.map{contentPath(lab: $0)}, encoding: .utf8)!: isTop, String(bytes: kMinKey.reversed(), encoding: .utf8)!: toUid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
