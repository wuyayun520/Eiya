
//: Declare String Begin

/*: "call/sendMsg" :*/
fileprivate let kTableName:String = "view hidden modecall/"
fileprivate let k_dataFormat:String = "S"
fileprivate let kLengthInsideData:String = "count accelerateendMsg"

/*: "logId" :*/
fileprivate let kEquipmentTitle:String = "user let applogId"

/*: "content" :*/
fileprivate let k_addEventFormat:String = "contcentern"
fileprivate let kContentUrl:String = "T"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DirectorDanmuManager.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingVideoDanmuManagerDelegate: NSObject {
protocol BulgeOutManagerDelegate: NSObject {
    /// 弹幕消息
    //: func func__DanmuRecvNewModel(Msg: TalkingVideoCallDanmuModel)
    func changeMsg(Msg: StartMeasurable)
}

//: class TalkingVideoDanmuManager: NSObject {
class DirectorDanmuManager: NSObject {
    //: private var maxJoinRoom = 1
    private var maxJoinRoom = 1 // 重试加入弹幕房间次数

    //: private static var _instance: TalkingVideoDanmuManager?
    private static var _instance: DirectorDanmuManager? // singleton

    //: open weak var delegate: TalkingVideoDanmuManagerDelegate?
    open weak var delegate: BulgeOutManagerDelegate?

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
    //: private override init() {}
    override private init() {}
    //: class func shared() -> TalkingVideoDanmuManager {
    class func blockCurrent() -> DirectorDanmuManager {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingVideoDanmuManager()
            _instance = DirectorDanmuManager()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }
}

// MARK: - 展示消息通知

//: extension TalkingVideoDanmuManager {
extension DirectorDanmuManager {
    /// 处理接收到的弹幕消息，展示
    /// - Parameters:
    ///   - msg:
    //: func onRecvDanmuNewMsg(msg: [String: Any]) {
    func sequenceData(msg: [String: Any]) {
        //: if var model = TalkingVideoCallDanmuModel.deserialize(from: msg) {
        if var model = StartMeasurable.deserialize(from: msg) {
            //: let celldata = TalkingVideoCallDammuCellData.init()
            let celldata = VideoCellData()
            //: model = celldata.caculateMsgHeight(model: model)
            model = celldata.deleteModel(model: model)
            //: self.delegate?.func__DanmuRecvNewModel(Msg: model)
            self.delegate?.changeMsg(Msg: model)
        }
    }

    /// 发送文本弹幕消息
    /// - Parameters:
    ///   - logId: 当前通话id
    ///   - content: 消息内容
    ///   - completion: 回调

    //: class func uploadToTextMsg(logId: String, content: String, completion: FinishBlock? = nil) {
    class func untilSend(logId: String, content: String, completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "call/sendMsg"
        reqModel.requestPath = (String(kTableName.suffix(5)) + k_dataFormat.lowercased() + String(kLengthInsideData.suffix(6)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["logId"] = logId
        dict[(String(kEquipmentTitle.suffix(5)))] = logId
        //: dict["content"] = content
        dict[(k_addEventFormat.replacingOccurrences(of: "center", with: "e") + kContentUrl.lowercased())] = content
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }
}

//: extension TalkingVideoDanmuManager {
extension DirectorDanmuManager {
    /// 释放单利
    //: class func danmu_releaseAllResource() {
    class func doAdd() {
        //: if TalkingVideoDanmuManager._instance != nil {
        if DirectorDanmuManager._instance != nil {
            //: TalkingVideoDanmuManager._instance = nil
            DirectorDanmuManager._instance = nil
        }
    }
}
