
//: Declare String Begin

/*: "mf/user/getUserInfo" :*/
fileprivate let k_labText:String = "mf/udouble field"
fileprivate let k_userText:String = "tUseview view make view"

/*: "uid" :*/
fileprivate let k_modelMessage:[UInt8] = [0x50,0x4c,0x41]

private func ditheredColor(by num: UInt8) -> UInt8 {
    return num ^ 37
}

/*: "mf/user/getReceivedGifts" :*/
fileprivate let k_makeTitle:String = "mf/uselet photo model info"
fileprivate let k_pingId:String = "tReceivealways for name value info"
fileprivate let k_popQuickStr:String = "dGiftsview photo"

/*: "mf/crush/send" :*/
fileprivate let k_tableName:[Character] = ["m","f","/","c","r","u"]
fileprivate let k_withPath:[Character] = ["s","h","/","s","e","n","d"]

/*: "targetUid" :*/
fileprivate let kAppearViewTitle:[UInt8] = [0xb5,0xa0,0xb3,0xa6,0xa4,0xb5,0x94,0xa8,0xa5]

/*: "user/attention" :*/
fileprivate let k_aSharedText:[UInt8] = [0x54,0x52,0x44,0x53,0xe,0x40,0x55,0x55,0x44,0x4f,0x55,0x48,0x4e,0x4f]

/*: "user/removeAttention" :*/
fileprivate let k_endData:[Character] = ["u","s","e","r","/","r","e"]
fileprivate let k_managerName:String = "let type click talk pathmoveAtte"
fileprivate let k_ofLabValue:String = "NTION"

/*: "attentionUid" :*/
fileprivate let k_withName:[UInt8] = [0x64,0x69,0x55,0x6e,0x6f,0x69,0x74,0x6e,0x65,0x74,0x74,0x61]

/*: "removeAttentionUid" :*/
fileprivate let k_styleTitle:[UInt8] = [0xd5,0xc2,0xca,0xc8,0xd1,0xc2,0xe6,0xd3,0xd3,0xc2,0xc9,0xd3,0xce,0xc8,0xc9,0xf2,0xce,0xc3]

private func landmarkHidden(count num: UInt8) -> UInt8 {
    return num ^ 167
}

/*: "user/addBlack" :*/
fileprivate let kMakeStr:[UInt8] = [0x68,0x6e,0x78,0x6f,0x32,0x7c,0x79,0x79,0x5f,0x71,0x7c,0x7e,0x76]

/*: "user/remBlack" :*/
fileprivate let k_addMsg:String = "appser"
fileprivate let kUpKey:[Character] = ["/","r","e","m","B","l","a","c","k"]

/*: "mf/moment/like" :*/
fileprivate let k_strengthMessage:String = "mf/motask bottom"
fileprivate let kVoiceId:[Character] = ["m","e","n","t","/","l","i","k","e"]

/*: "momentId" :*/
fileprivate let k_toPath:[UInt8] = [0xb1,0xb3,0xb1,0xa9,0xb2,0xb8,0x8d,0xa8]

fileprivate func actionEnable(path num: UInt8) -> UInt8 {
    let value = Int(num) + 188
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "type" :*/
fileprivate let kGiftUserHeightMsg:[UInt8] = [0x10,0x15,0xc,0x1]

fileprivate func tabWrap(to num: UInt8) -> UInt8 {
    let value = Int(num) + 100
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "mf/user/uploadAuthPic" :*/
fileprivate let kUserFormat:[Character] = ["m","f","/","u","s","e","r","/","u","p","l","o","a","d","A","u"]
fileprivate let kSharedKey:[Character] = ["t","h","P","i","c"]

/*: "auth_pic" :*/
fileprivate let k_nameMsg:[UInt8] = [0x4d,0x61,0x60,0x54,0x4b,0x5c,0x55,0x4f]

fileprivate func selectedStatus(label num: UInt8) -> UInt8 {
    let value = Int(num) + 20
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FrameThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/8.
//

//: import UIKit
import UIKit

//: class TalkingUserRequestManager: NSObject {
class FrameThen: NSObject {
    // MARK: - 用户信息

    //: class func func__otherUserInfo(uid: String, completion: @escaping FinishBlock) {
    class func opposite(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/user/getUserInfo"
        reqModel.requestPath = (String(k_labText.prefix(4)) + "ser/ge" + String(k_userText.prefix(4)) + "rInfo")
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: k_modelMessage.map{ditheredColor(by: $0)}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 收到的礼物

    //: class func func__getReceivedGift(uid: String, completion: @escaping FinishBlock) {
    class func partyEnable(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/user/getReceivedGifts"
        reqModel.requestPath = (String(k_makeTitle.prefix(6)) + "r/ge" + String(k_pingId.prefix(8)) + String(k_popQuickStr.prefix(6)))
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: k_modelMessage.map{ditheredColor(by: $0)}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 发送心动

    //: class func func__sendCrushWithUserId(targetUid: String, completion: @escaping FinishBlock) {
    class func betweenMessage(targetUid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/crush/send"
        reqModel.requestPath = (String(k_tableName) + String(k_withPath))
        //: reqModel.params = ["targetUid": targetUid]
        reqModel.params = [String(bytes: kAppearViewTitle.map{$0^193}, encoding: .utf8)!: targetUid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 关注

    //: class func func__attentionWithUserId(uid: String, isAttention: Bool, completion: @escaping FinishBlock) {
    class func label(uid: String, isAttention: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = isAttention == true ? "user/attention" : "user/removeAttention"
        reqModel.requestPath = isAttention == true ? String(bytes: k_aSharedText.map{$0^33}, encoding: .utf8)! : (String(k_endData) + String(k_managerName.suffix(8)) + k_ofLabValue.lowercased())
        //: reqModel.params = isAttention == true ? ["attentionUid": uid] : ["removeAttentionUid": uid]
        reqModel.params = isAttention == true ? [String(bytes: k_withName.reversed(), encoding: .utf8)!: uid] : [String(bytes: k_styleTitle.map{landmarkHidden(count: $0)}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 拉黑

    //: class func func__pullBlackWithUserId(uid: String, isBlack: Bool, completion: @escaping FinishBlock) {
    class func cagey(uid: String, isBlack: Bool, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = isBlack == true ? "user/addBlack" : "user/remBlack"
        reqModel.requestPath = isBlack == true ? String(bytes: kMakeStr.map{$0^29}, encoding: .utf8)! : (k_addMsg.replacingOccurrences(of: "app", with: "u") + String(kUpKey))
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: k_modelMessage.map{ditheredColor(by: $0)}, encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: if succeed == true {
            if succeed == true {
                //: if isBlack {
                if isBlack {
                    //: TalkingBlockListManager.shared.addUserToBlockList(userId: uid)
                    PlayerPopListManager.shared.spring(userId: uid)
                    //: } else {
                } else {
                    //: TalkingBlockListManager.shared.removeUserForBlockList(userId: uid)
                    PlayerPopListManager.shared.cornerOf(userId: uid)
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 点赞

    //: class func func__likeMoment(mid: String, type: String, completion: @escaping FinishBlock) {
    class func toCompletion(mid: String, type: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/moment/like"
        reqModel.requestPath = (String(k_strengthMessage.prefix(5)) + String(kVoiceId))
        //: reqModel.params = ["momentId": mid, "type": type]
        reqModel.params = [String(bytes: k_toPath.map{actionEnable(path: $0)}, encoding: .utf8)!: mid, String(bytes: kGiftUserHeightMsg.map{tabWrap(to: $0)}, encoding: .utf8)!: type]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 举报

    //: class func func__reportRequest(reqPath: String, reqParams: Dictionary<String, String>, completion: @escaping FinishBlock) {
    class func untilAge(reqPath: String, reqParams: [String: String], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = reqPath
        reqModel.requestPath = reqPath
        //: reqModel.params = reqParams
        reqModel.params = reqParams
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 真人认证

    //: class func func__realVerifyUploadPic(pic: UIImage, completion: @escaping FinishBlock) {
    class func funcThroughCompletion(pic: UIImage, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/user/uploadAuthPic"
        reqModel.requestPath = (String(kUserFormat) + String(kSharedKey))
        //: let data = pic.jpegData(compressionQuality: 1)
        let data = pic.jpegData(compressionQuality: 1)
        //: reqModel.params = ["auth_pic": data ?? ""]
        reqModel.params = [String(bytes: k_nameMsg.map{selectedStatus(label: $0)}, encoding: .utf8)!: data ?? ""]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
