
//: Declare String Begin

/*: "live/enter" :*/
fileprivate let k_colorContent:String = "on imagelive/ent"
fileprivate let k_userFormat:String = "esucceed"

/*: "streamerUid" :*/
fileprivate let k_showTableData:[UInt8] = [0x51,0x56,0x50,0x47,0x43,0x4f,0x47,0x50,0x77,0x4b,0x46]

/*: "live/userNum" :*/
fileprivate let k_changeUrl:String = "live/uname false"
fileprivate let k_keyMessage:String = "title"

/*: "chatGroupId" :*/
fileprivate let kCookieUrl:[UInt8] = [0xe6,0xed,0xe4,0xf1,0xc2,0xf7,0xea,0xf0,0xf5,0xcc,0xe1]

private func myCell(model num: UInt8) -> UInt8 {
    return num ^ 133
}

/*: "live/members" :*/
fileprivate let kShowId:String = "litexte"
fileprivate let kPlayerWhiteMakeData:String = "face"

/*: "live/mute" :*/
fileprivate let k_voiceFormat:[Character] = ["l","i","v","e","/"]
fileprivate let k_modelMsg:String = "mutmoment"

/*: "targetUid" :*/
fileprivate let kLikeText:[UInt8] = [0x5e,0x4b,0x5c,0x51,0x4f,0x5e,0x3f,0x53,0x4e]

fileprivate func withVideo(window num: UInt8) -> UInt8 {
    let value = Int(num) + 22
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "duration" :*/
fileprivate let k_messageMsg:[UInt8] = [0x6e,0x6f,0x69,0x74,0x61,0x72,0x75,0x64]

/*: "live/unmute" :*/
fileprivate let kTargetDataFormat:String = "live/model live extension table"
fileprivate let kLockOfUrl:[Character] = ["e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LimitReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

// 观众/主播
//: class TalkingAudienceManager: NSObject {
class LimitReactiveCompatible: NSObject {
    /// 进房
    //: func req_enterLiveRoom(streamerUid: String, completion: @escaping FinishBlock) {
    func completionByTitle(streamerUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "live/enter"
        reqModel.requestPath = (String(k_colorContent.suffix(8)) + k_userFormat.replacingOccurrences(of: "succeed", with: "r"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["streamerUid": streamerUid]
        reqModel.params = [String(bytes: k_showTableData.map{$0^34}, encoding: .utf8)!: streamerUid]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 在线人数
    //: func req_liveRoomOnlineNum(chatGroupId: String, completion: @escaping FinishBlock) {
    func nearMode(chatGroupId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "live/userNum"
        reqModel.requestPath = (String(k_changeUrl.prefix(6)) + "serNu" + k_keyMessage.replacingOccurrences(of: "title", with: "m"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["chatGroupId": chatGroupId]
        reqModel.params = [String(bytes: kCookieUrl.map{myCell(model: $0)}, encoding: .utf8)!: chatGroupId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 在线列表
    //: func req_liveRoomOnlineList(chatGroupId: String, completion: @escaping FinishBlock) {
    func overClear(chatGroupId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "live/members"
        reqModel.requestPath = (kShowId.replacingOccurrences(of: "text", with: "v") + "/member" + kPlayerWhiteMakeData.replacingOccurrences(of: "face", with: "s"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["chatGroupId": chatGroupId]
        reqModel.params = [String(bytes: kCookieUrl.map{myCell(model: $0)}, encoding: .utf8)!: chatGroupId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 禁言
    //: func req_liveRoomMute(targetUid: String, duration: String, completion: @escaping FinishBlock) {
    func statusSimultaneously(targetUid: String, duration: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "live/mute"
        reqModel.requestPath = (String(k_voiceFormat) + k_modelMsg.replacingOccurrences(of: "moment", with: "e"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "duration": duration]
        reqModel.params = [String(bytes: kLikeText.map{withVideo(window: $0)}, encoding: .utf8)!: targetUid, String(bytes: k_messageMsg.reversed(), encoding: .utf8)!: duration]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 解禁
    //: func req_liveRoomUnmute(targetUid: String, completion: @escaping FinishBlock) {
    func errorAll(targetUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "live/unmute"
        reqModel.requestPath = (String(kTargetDataFormat.prefix(5)) + "unmut" + String(kLockOfUrl))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid]
        reqModel.params = [String(bytes: kLikeText.map{withVideo(window: $0)}, encoding: .utf8)!: targetUid]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
