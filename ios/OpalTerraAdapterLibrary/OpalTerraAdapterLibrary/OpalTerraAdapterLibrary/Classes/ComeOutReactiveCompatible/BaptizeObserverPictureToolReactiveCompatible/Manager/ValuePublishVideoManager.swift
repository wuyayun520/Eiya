
//: Declare String Begin

/*: "mf/videoMatch/switch" :*/
fileprivate let k_bottomText:[Character] = ["m","f","/","v","i","d","e","o","M","a","t","c","h","/","s","w","i","t","c","h"]

/*: "status" :*/
fileprivate let kTextMessage:[UInt8] = [0x74,0x73,0x66,0x73,0x72,0x74]

private func ifRecord(result num: UInt8) -> UInt8 {
    return num ^ 7
}

/*: "mf/videoMatch/checkMatch" :*/
fileprivate let kFrameTheTitle:String = "can model guard pimf/v"
fileprivate let kButtonName:[Character] = ["i","d","e","o","M","a","t","c","h","/","c","h","e","c","k","M","a","t","c","h"]

/*: "matchVersion" :*/
fileprivate let k_withMsg:[UInt8] = [0x1,0xd,0x18,0xf,0x4,0x3a,0x9,0x1e,0x1f,0x5,0x3,0x2]

private func totUp(add num: UInt8) -> UInt8 {
    return num ^ 108
}

/*: "v4" :*/
fileprivate let k_sendUserMessage:String = "vtop"

/*: "enterType" :*/
fileprivate let k_tagId:[UInt8] = [0xcf,0xc4,0xde,0xcf,0xd8,0xfe,0xd3,0xda,0xcf]

private func quickRequest(make num: UInt8) -> UInt8 {
    return num ^ 170
}

/*: "mf/videoMatch/headPics" :*/
fileprivate let k_postTitle:String = "mf/vidblock self appear time"
fileprivate let k_borderLabKey:String = "ch/heainfo lab"
fileprivate let k_addHiddenTitle:[Character] = ["d","P","i","c","s"]

/*: "mf/videoMatch/matchV3" :*/
fileprivate let kEndFormat:String = "mf/vibackground var gesture"
fileprivate let k_makeFormat:String = "let contentdeoMa"
fileprivate let k_fileText:String = "atchV3mode first"

/*: "matchId" :*/
fileprivate let k_shareMsg:[UInt8] = [0x64,0x49,0x68,0x63,0x74,0x61,0x6d]

/*: "mf/videoMatch/matchV4" :*/
fileprivate let k_dataPiValue:[Character] = ["m","f","/","v","i","d","e","o","M","a","t","c","h","/","m","a","t","c","h","V","4"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ValuePublishVideoManager.swift
//  AbroadTalking
//
//  Created by young on 2022/11/4.
//

//: import UIKit
import UIKit

//: class TalkingQuickVideoManager: NSObject {
class ValuePublishVideoManager: NSObject {
    /// 视频速配开关（女）
    /// - Parameters:
    ///   - status: status=1开启，status=0关闭
    ///   - completion: 回调
    //: class func req_videoMatchSwitch(status: Bool, completion: @escaping FinishBlock) {
    class func alongShouldDetail(status: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/videoMatch/switch"
        reqModel.requestPath = (String(k_bottomText))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: reqModel.params = ["status": status]
        reqModel.params = [String(bytes: kTextMessage.map{ifRecord(result: $0)}, encoding: .utf8)!: status]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 视频速配资格检查（男）
    /// - Parameters:
    ///   - isRandomVideo: 是否是随机视频
    ///   - completion: 回调
    //: class func req_videoMatchCheck(enterType: Int = 0, completion: @escaping FinishBlock) {
    class func thirdSub(enterType: Int = 0, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/videoMatch/checkMatch"
        reqModel.requestPath = (String(kFrameTheTitle.suffix(4)) + String(kButtonName))
        //: reqModel.params = ["matchVersion": "v4", "enterType": enterType]
        reqModel.params = [String(bytes: k_withMsg.map{totUp(add: $0)}, encoding: .utf8)!: "v4", String(bytes: k_tagId.map{quickRequest(make: $0)}, encoding: .utf8)!: enterType]
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 速配头像列表（男）
    /// - Parameter completion: 回调
    //: class func req_videoMatchHeadPics(completion: @escaping FinishBlock) {
    class func actuarialTable(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/videoMatch/headPics"
        reqModel.requestPath = (String(k_postTitle.prefix(6)) + "eoMat" + String(k_borderLabKey.prefix(6)) + String(k_addHiddenTitle))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 开始视频速配（男）
    /// - Parameters:
    ///   - matchId: 默认传0，skip的时候传之前的matchId
    ///   - completion: 回调
    //: class func req_videoMatchToMatch(matchId: Int, completion: @escaping FinishBlock) {
    class func viewSufficient(matchId: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/videoMatch/matchV3"
        reqModel.requestPath = (String(kEndFormat.prefix(5)) + String(k_makeFormat.suffix(5)) + "tch/m" + String(k_fileText.prefix(6)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["matchId": matchId]
        reqModel.params = [String(bytes: k_shareMsg.reversed(), encoding: .utf8)!: matchId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 开始随机视频（男）
    /// - Parameters:
    ///   - params: 参数
    ///   - completion: 回调
    //: class func req_randomVideoToMatch(params: [String: Any], completion: @escaping FinishBlock) {
    class func listObject(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/videoMatch/matchV4"
        reqModel.requestPath = (String(k_dataPiValue))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
