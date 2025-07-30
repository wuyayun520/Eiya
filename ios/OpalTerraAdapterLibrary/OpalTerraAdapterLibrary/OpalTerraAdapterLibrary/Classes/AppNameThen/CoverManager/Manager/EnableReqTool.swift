
//: Declare String Begin

/*: "party/enter" :*/
fileprivate let k_toMsg:String = "parvideo"
fileprivate let k_tempKey:String = "pic index toy/enter"

/*: "roomId" :*/
fileprivate let kVerticalStatutePath:[UInt8] = [0x3e,0x23,0x23,0x21,0x5,0x28]

/*: "party/start" :*/
fileprivate let k_cleanAppName:String = "PARTY"

/*: "party/close" :*/
fileprivate let k_scaleMsg:[Character] = ["p","a","r","t","y","/","c","l","o","s","e"]

/*: "party/changeRoom" :*/
fileprivate let kInfoStr:String = "PAR"
fileprivate let kVideoStr:[Character] = ["t","y","/","c","h","a","n","g","e","R","o","o","m"]

/*: "beforeRoomId" :*/
fileprivate let k_indexTitle:[UInt8] = [0x17,0x10,0x13,0x1a,0x7,0x10,0x27,0x1a,0x1a,0x18,0x3c,0x11]

/*: "party/mikeList" :*/
fileprivate let k_lengthFormat:[Character] = ["p","a","r","t","y","/","m","i","k","e","L","i","s","t"]

/*: "uid" :*/
fileprivate let kToStr:[UInt8] = [0x35,0x29,0x24]

fileprivate func goldCenter(bottom num: UInt8) -> UInt8 {
    let value = Int(num) - 192
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "type" :*/
fileprivate let k_textVideoData:[UInt8] = [0x65,0x70,0x79,0x74]

/*: "pos" :*/
fileprivate let k_packageSourceFormat:[UInt8] = [0xf0,0xef,0xf3]

fileprivate func nameRandomTitle(suite num: UInt8) -> UInt8 {
    let value = Int(num) - 128
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "toPos" :*/
fileprivate let kListMessage:String = "gift mess selftoPos"

/*: "party/mike" :*/
fileprivate let k_namePath:String = "pamanagert"
fileprivate let k_labelStr:[Character] = ["e"]

/*: "party/adminMike" :*/
fileprivate let kLoadMessage:String = "filterrt"
fileprivate let kTitleMessage:String = "ikphoto"

/*: "party/list" :*/
fileprivate let kBottomUrl:String = "size value model any makeparty/"

/*: "party/onlineNum" :*/
fileprivate let kUserModelFormat:[Character] = ["p","a","r","t","y","/","o","n","l","i","n","e"]
fileprivate let k_toUrl:String = "Numhead list"

/*: "party/onlineList" :*/
fileprivate let k_makeArrayName:String = "pminty"
fileprivate let kImageUrl:String = "name color action anyineLis"
fileprivate let k_priceValue:String = "T"

/*: "party/mute" :*/
fileprivate let kLabUrl:[Character] = ["p","a","r","t","y","/"]
fileprivate let kReplyStr:String = "MUTE"

/*: "targetUid" :*/
fileprivate let kImagePath:[UInt8] = [0xed,0xf8,0xeb,0xfe,0xfc,0xed,0xcc,0xf0,0xfd]

private func submitStrength(selected num: UInt8) -> UInt8 {
    return num ^ 153
}

/*: "duration" :*/
fileprivate let k_playerPlayUrl:[UInt8] = [0x92,0x83,0x84,0x97,0x82,0x9f,0x99,0x98]

private func varIf(indicator num: UInt8) -> UInt8 {
    return num ^ 246
}

/*: "party/unmute" :*/
fileprivate let k_voiceId:[Character] = ["p","a","r","t","y","/"]
fileprivate let k_goName:String = "unsucceedute"

/*: "party/kickout" :*/
fileprivate let kErrorWithMessage:String = "PART"
fileprivate let kSendValue:[Character] = ["t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EnableReqTool.swift
//  OpalTerraAdapterLibrary
//
//  Created by DouXiu on 2024/9/19.
//

/// 语聊房相关接口
//: class TalkingVoiceRoomReqTool {
class EnableReqTool {
    /// 开启语聊房
    /// - Parameters:
    ///   - roomId: 房间Id（nil：创建房间；有值：进入房间）
    ///   - completion: 回调
    //: class func req_voiceRoomCheck(roomId: String? = nil, completion: @escaping FinishBlock) {
    class func showContent(roomId: String? = nil, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: if let roomId = roomId {
        if let roomId = roomId { // 进入房间
            //: reqModel.requestPath = "party/enter"
            reqModel.requestPath = (k_toMsg.replacingOccurrences(of: "video", with: "t") + String(k_tempKey.suffix(7)))
            //: reqModel.params = ["roomId": roomId]
            reqModel.params = [String(bytes: kVerticalStatutePath.map{$0^76}, encoding: .utf8)!: roomId]
            //: } else {
        } else { // 创建房间
            //: reqModel.requestPath = "party/start"
            reqModel.requestPath = (k_cleanAppName.lowercased() + "/start")
        }
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 房主销毁语聊房
    //: class func req_voiceRoomClose(roomId: String, completion: FinishBlock? = nil) {
    class func styleCompletion(roomId: String, completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "party/close"
        reqModel.requestPath = (String(k_scaleMsg))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: kVerticalStatutePath.map{$0^76}, encoding: .utf8)!: roomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }

    /// 切房
    /// - Parameters:
    ///   - roomId: 当前进入房间Id
    ///   - beforeRoomId: 上一房间Id
    ///   - completion: 回调
    //: class func req_voiceRoomSwitch(roomId: String, beforeRoomId: String, completion: @escaping FinishBlock) {
    class func panoramicViewWrite(roomId: String, beforeRoomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = "party/changeRoom"
        reqModel.requestPath = (kInfoStr.lowercased() + String(kVideoStr))
        //: reqModel.params = ["roomId": roomId, "beforeRoomId": beforeRoomId]
        reqModel.params = [String(bytes: kVerticalStatutePath.map{$0^76}, encoding: .utf8)!: roomId, String(bytes: k_indexTitle.map{$0^117}, encoding: .utf8)!: beforeRoomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取语聊房麦位列表
    //: class func req_getMikeList(roomId: String, completion: @escaping (_ data: [TalkingMikeListItemModel]) -> Void) {
    class func purview(roomId: String, completion: @escaping (_ data: [ItemMeasurable]) -> Void) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "party/mikeList"
        reqModel.requestPath = (String(k_lengthFormat))
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: kVerticalStatutePath.map{$0^76}, encoding: .utf8)!: roomId]
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { _, result, _ in
        showEndName.buttonCompletion(model: reqModel) { _, result, _ in
            //: var dataArr: [TalkingMikeListItemModel] = []
            var dataArr: [ItemMeasurable] = []
            //: guard let arr = result as? [[String: Any]] else {
            guard let arr = result as? [[String: Any]] else {
                //: completion(dataArr)
                completion(dataArr)
                //: return
                return
            }
            //: if let datas = Array<TalkingMikeListItemModel>.deserialize(from: arr as? Array) as? [TalkingMikeListItemModel] {
            if let datas = Array<ItemMeasurable>.deserialize(from: arr as? Array) as? [ItemMeasurable] {
                //: dataArr.append(contentsOf: datas)
                dataArr.append(contentsOf: datas)
            }
            //: completion(dataArr)
            completion(dataArr)
        }
    }

    /// 房主/观众 语音房操作请求
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - uid: 用户Id
    ///   - type: 1 上麦，2 下麦，3 切麦，4 开麦，5 闭麦
    ///   - position: 当前麦位
    ///   - toPos: 目标麦位（切麦传值）
    ///   - completion: 回调
    //: class func req_changeMike(roomId: String, uid: Int, type: Int, position: Int, toPos: Int? = nil, completion: @escaping FinishBlock) {
    class func sourceCellPoint(roomId: String, uid: Int, type: Int, position: Int, toPos: Int? = nil, completion: @escaping FinishBlock) {
        //: var params: [String: Any] = ["roomId": roomId, "uid": uid, "type": type, "pos": position]
        var params: [String: Any] = [String(bytes: kVerticalStatutePath.map{$0^76}, encoding: .utf8)!: roomId, String(bytes: kToStr.map{goldCenter(bottom: $0)}, encoding: .utf8)!: uid, String(bytes: k_textVideoData.reversed(), encoding: .utf8)!: type, String(bytes: k_packageSourceFormat.map{nameRandomTitle(suite: $0)}, encoding: .utf8)!: position]
        //: if type == 3 {
        if type == 3 {
            //: params["toPos"] = toPos
            params[(String(kListMessage.suffix(5)))] = toPos
        }
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "party/mike"
        reqModel.requestPath = (k_namePath.replacingOccurrences(of: "manager", with: "r") + "y/mik" + String(k_labelStr))
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

    /// 房主对他人操作请求
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - uid: 用户Id
    ///   - type: 1 锁麦，2 解锁麦，3 踢下麦，4 开麦，5 闭麦
    ///   - position: 麦位
    ///   - completion: 回调
    //: class func req_adminChangeMike(roomId: String, uid: Int, type: Int, position: Int, completion: @escaping FinishBlock) {
    class func titlePost(roomId: String, uid: Int, type: Int, position: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "party/adminMike"
        reqModel.requestPath = (kLoadMessage.replacingOccurrences(of: "filter", with: "pa") + "y/adminM" + kTitleMessage.replacingOccurrences(of: "photo", with: "e"))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["roomId": roomId, "uid": uid, "type": type, "pos": position]
        reqModel.params = [String(bytes: kVerticalStatutePath.map{$0^76}, encoding: .utf8)!: roomId, String(bytes: kToStr.map{goldCenter(bottom: $0)}, encoding: .utf8)!: uid, String(bytes: k_textVideoData.reversed(), encoding: .utf8)!: type, String(bytes: k_packageSourceFormat.map{nameRandomTitle(suite: $0)}, encoding: .utf8)!: position]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// Party 列表
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_partyList(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func greenbackParty(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.requestPath = "party/list"
        reqModel.requestPath = (String(kBottomUrl.suffix(6)) + "list")
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询房间在线人数
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - completion: 回调
    //: class func req_partyOnlineNum(roomId: String, completion: @escaping FinishBlock) {
    class func party(roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "party/onlineNum"
        reqModel.requestPath = (String(kUserModelFormat) + String(k_toUrl.prefix(3)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: kVerticalStatutePath.map{$0^76}, encoding: .utf8)!: roomId]
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 查询房间在线用户列表
    /// - Parameters:
    ///   - roomId: 房间Id
    ///   - completion: 回调
    //: class func req_partyOnlineList(roomId: String, completion: @escaping FinishBlock) {
    class func paradigmCompletion(roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "party/onlineList"
        reqModel.requestPath = (k_makeArrayName.replacingOccurrences(of: "min", with: "ar") + "/onl" + String(kImageUrl.suffix(6)) + k_priceValue.lowercased())
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["roomId": roomId]
        reqModel.params = [String(bytes: kVerticalStatutePath.map{$0^76}, encoding: .utf8)!: roomId]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 禁言
    //: class func req_VoiceRoomMute(targetUid: String, roomID: String, duration: String, completion: @escaping FinishBlock) {
    class func currentMoment(targetUid: String, roomID: String, duration: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "party/mute"
        reqModel.requestPath = (String(kLabUrl) + kReplyStr.lowercased())
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomID, "duration": duration]
        reqModel.params = [String(bytes: kImagePath.map{submitStrength(selected: $0)}, encoding: .utf8)!: targetUid, String(bytes: kVerticalStatutePath.map{$0^76}, encoding: .utf8)!: roomID, String(bytes: k_playerPlayUrl.map{varIf(indicator: $0)}, encoding: .utf8)!: duration]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 解禁
    //: class func req_VoiceRoomUnMute(targetUid: String, roomID: String, completion: @escaping FinishBlock) {
    class func nameCompletion(targetUid: String, roomID: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "party/unmute"
        reqModel.requestPath = (String(k_voiceId) + k_goName.replacingOccurrences(of: "succeed", with: "m"))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomID]
        reqModel.params = [String(bytes: kImagePath.map{submitStrength(selected: $0)}, encoding: .utf8)!: targetUid, String(bytes: kVerticalStatutePath.map{$0^76}, encoding: .utf8)!: roomID]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 踢出房间
    //: class func req_VoiceRoomKickout(targetUid: String, roomId: String, completion: @escaping FinishBlock) {
    class func tight(targetUid: String, roomId: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "party/kickout"
        reqModel.requestPath = (kErrorWithMessage.lowercased() + "y/kickou" + String(kSendValue))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["targetUid": targetUid, "roomId": roomId]
        reqModel.params = [String(bytes: kImagePath.map{submitStrength(selected: $0)}, encoding: .utf8)!: targetUid, String(bytes: kVerticalStatutePath.map{$0^76}, encoding: .utf8)!: roomId]

        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
