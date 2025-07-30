
//: Declare String Begin

/*: "DBUserVoiceTable" :*/
fileprivate let k_contentStr:[Character] = ["D","B","U","s","e"]
fileprivate let k_infoData:String = "rVoiheight date view equal true"

/*: "msgId" :*/
fileprivate let kSharedStr:String = "msgIdself make data event"

/*: "toUid" :*/
fileprivate let k_elementPath:[Character] = ["t","o","U","i","d"]

/*: "senderId" :*/
fileprivate let kTempName:[Character] = ["s","e","n","d","e","r","I","d"]

/*: "audioSandbox" :*/
fileprivate let k_framePath:String = "audioSname size change"
fileprivate let k_managerText:String = "anmessageox"

/*: "audioLength" :*/
fileprivate let kValueStatusName:String = "audcorner"
fileprivate let k_successName:[Character] = ["h"]

/*: "audioData" :*/
fileprivate let k_toUrl:String = "aobserveri"

/*: "audioUri" :*/
fileprivate let k_moreTitle:String = "AUDI"

/*: "isRead" :*/
fileprivate let kPopMessage:String = "select"
fileprivate let kPathAddStr:String = "sReadcontent content tab label status"

/*: "WCDB表 :*/
fileprivate let kAppSizeUrl:[Character] = ["W","C","D","B","表"]

/*: : 批量插入数据失败。error： :*/
fileprivate let k_listMsg:[Character] = [":"," ","批","\u{91cf}","插"]
fileprivate let k_cellData:String = "入数\u{636e}\u{5931}败。"

/*: ." :*/
fileprivate let kAppName:String = "."

/*: : 更新数据失败。error： :*/
fileprivate let k_beyondName:String = ": 更新数"
fileprivate let kSizeStr:String = "managermanageromanager"
fileprivate let kPlayKey:[Character] = ["："]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BearEnableMsgTable.swift
//  OpalTerraAdapterLibrary
//
//  Created by DouXiu on 2024/8/29.
//

//: import UIKit
import UIKit
//: import WCDBSwift
import WCDBSwift

/// 表名
//: let WCDBVoiceMsgTableName = "DBUserVoiceTable"
let showLiveContent = (String(k_contentStr) + String(k_infoData.prefix(4)) + "ceTable")
//: @objcMembers
@objcMembers
//: public final class WCDBVoiceMsgTable: NSObject, TableCodable {
public final class BearEnableMsgTable: NSObject, TableCodable {
    /// 消息Id【主键】
    //: public var msgId: String = ""
    public var msgId: String = ""
    /// 语音长度
    //: public var db_audioLength: String = ""
    public var db_audioLength: String = ""
    /// 缓存路径
    //: public var db_filePath: String = ""
    public var db_filePath: String = ""
    /// 下载路径
    //: var db_voiceUri: String = ""
    var db_voiceUri: String = ""
    /// 发送方
    //: var db_senduid: String = ""
    var db_senduid: String = ""
    /// 接收方
    //: var db_touid: String = ""
    var db_touid: String = ""
    /// 是否已读; 0未读，1已读
    //: var db_isRead: String = ""
    var db_isRead: String = ""
    /// 下载状态
    //: var downloadStatus: String = ""
    var downloadStatus: String = ""

    //: public enum CodingKeys: String, CodingTableKey {
    public enum CodingKeys: String, CodingTableKey {
        //: public typealias Root = WCDBVoiceMsgTable
        public typealias Root = BearEnableMsgTable
        //: case msgId
        case msgId
        //: case db_voiceUri
        case db_voiceUri
        //: case db_filePath
        case db_filePath
        //: case db_senduid
        case db_senduid
        //: case db_touid
        case db_touid
        //: case db_isRead
        case db_isRead
        //: case db_audioLength
        case db_audioLength
        //: case downloadStatus
        case downloadStatus

        //: public static let objectRelationalMapping = TableBinding(CodingKeys.self) {
        public static let objectRelationalMapping = TableBinding(CodingKeys.self) {
            //: BindColumnConstraint(msgId, isPrimary: true)
            BindColumnConstraint(msgId, isPrimary: true)
        }
    }
}

// MARK: - 增、删、改、查

//: extension WCDBVoiceMsgTable {
extension BearEnableMsgTable {
    /// 插入单条数据
    /// - Parameter dic: 字典
    /// - Returns: 模型
    //: @discardableResult
    @discardableResult
    //: public class func db_inserVoiceMsgToDB(_ dic: [AnyHashable: Any]) -> WCDBVoiceMsgTable {
    public class func placeDb(_ dic: [AnyHashable: Any]) -> BearEnableMsgTable {
        //: let cache = WCDBVoiceMsgTable()
        let cache = BearEnableMsgTable()
        //: cache.msgId = dic["msgId"] as? String ?? ""
        cache.msgId = dic[(String(kSharedStr.prefix(5)))] as? String ?? ""
        //: cache.db_touid = String(dic["toUid"] as? Int ?? 0)
        cache.db_touid = String(dic[(String(k_elementPath))] as? Int ?? 0)
        //: cache.db_senduid = dic["senderId"] as? String ?? ""
        cache.db_senduid = dic[(String(kTempName))] as? String ?? ""
        //: cache.db_filePath = dic["audioSandbox"] as? String ?? ""
        cache.db_filePath = dic[(String(k_framePath.prefix(6)) + k_managerText.replacingOccurrences(of: "message", with: "db"))] as? String ?? ""
        //: cache.db_audioLength = dic["audioLength"] as? String ?? ""
        cache.db_audioLength = dic[(kValueStatusName.replacingOccurrences(of: "corner", with: "i") + "oLengt" + String(k_successName))] as? String ?? ""
        //: if dic.keys.contains("audioData") {
        if dic.keys.contains((k_toUrl.replacingOccurrences(of: "observer", with: "ud") + "oData")) {
            //: cache.db_voiceUri = dic["audioData"] as? String ?? ""
            cache.db_voiceUri = dic[(k_toUrl.replacingOccurrences(of: "observer", with: "ud") + "oData")] as? String ?? ""
        }
        //: if cache.db_voiceUri.isEmpty {
        if cache.db_voiceUri.isEmpty {
            //: if dic.keys.contains("audioUri") {
            if dic.keys.contains((k_moreTitle.lowercased() + "oUri")) {
                //: cache.db_voiceUri = dic["audioUri"] as? String ?? ""
                cache.db_voiceUri = dic[(k_moreTitle.lowercased() + "oUri")] as? String ?? ""
            }
        }
        //: cache.db_isRead = dic["isRead"] as? String ?? ""
        cache.db_isRead = dic[(kPopMessage.replacingOccurrences(of: "select", with: "i") + String(kPathAddStr.prefix(5)))] as? String ?? ""
        //: cache.downloadStatus = "0"
        cache.downloadStatus = "0"
        //: db_updateVoiceMsg(cache)
        showVoice(cache)
        //: return cache
        return cache
    }

    /// 插入单条数据
    /// - Parameter voiceMsg: 数据模型
    //: class func db_insertVoiceMsg(_ voiceMsg: WCDBVoiceMsgTable) {
    class func digitizer(_ voiceMsg: BearEnableMsgTable) {
        //: WCDBVoiceMsgTable.db_insertVoiceMsgs([voiceMsg])
        BearEnableMsgTable.imageDetailEqual([voiceMsg])
    }

    /// 插入多条数据
    /// - Parameter voiceMsgs: 数据数组
    //: class func db_insertVoiceMsgs(_ voiceMsgs: [WCDBVoiceMsgTable]) {
    class func imageDetailEqual(_ voiceMsgs: [BearEnableMsgTable]) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? ElementThen.shared.database?.run(transaction: { _ in
            //: do {
            do {
                //: try WCDBManager.shared.database?.insert(voiceMsgs, intoTable: WCDBVoiceMsgTableName)
                try ElementThen.shared.database?.insert(voiceMsgs, intoTable: showLiveContent)
                //: } catch {
            } catch {
                //: UploadLogTool.writeLog(msg: "WCDB表\(WCDBVoiceMsgTableName): 批量插入数据失败。error：\(error).")
                UploadDisplayThen.makeSelected(msg: (String(kAppSizeUrl)) + "\(showLiveContent)" + (String(k_listMsg) + k_cellData + "error：") + "\(error).")
            }
            //: })
        })
    }

    /// 查询单个数据
    /// - Parameter msgId: 消息id
    /// - Returns: 模型
    //: public class func db_getVoiceMsg(with msgId: String) -> WCDBVoiceMsgTable? {
    public class func sharedMini(with msgId: String) -> BearEnableMsgTable? {
        //: if let voiceMsgs = WCDBVoiceMsgTable.db_getVoiceMsgs(with: [msgId]) {
        if let voiceMsgs = BearEnableMsgTable.msgsPage(with: [msgId]) {
            //: return voiceMsgs.first
            return voiceMsgs.first
        }
        //: return nil
        return nil
    }

    /// 查询多条数据
    /// - Parameter msgIds: id数据
    /// - Returns: 数据数组
    //: class func db_getVoiceMsgs(with msgIds: [String]) -> [WCDBVoiceMsgTable]? {
    class func msgsPage(with msgIds: [String]) -> [BearEnableMsgTable]? {
        //: do {
        do {
            //: let condition = WCDBVoiceMsgTable.Properties.msgId.in(msgIds)
            let condition = BearEnableMsgTable.Properties.msgId.in(msgIds)
            //: let voiceMsgs: [WCDBVoiceMsgTable]? = try WCDBManager.shared.database?.getObjects(on: WCDBVoiceMsgTable.Properties.all, fromTable: WCDBVoiceMsgTableName, where: condition)
            let voiceMsgs: [BearEnableMsgTable]? = try ElementThen.shared.database?.getObjects(on: BearEnableMsgTable.Properties.all, fromTable: showLiveContent, where: condition)
            //: return voiceMsgs
            return voiceMsgs
            //: } catch {
        } catch {
            //: return nil
            return nil
        }
    }

    /// 更新单个数据【如果没有则插入】
    /// - Parameter voiceMsg: 数据模型
    //: class func db_updateVoiceMsg(_ voiceMsg: WCDBVoiceMsgTable) {
    class func showVoice(_ voiceMsg: BearEnableMsgTable) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? ElementThen.shared.database?.run(transaction: { _ in
            // 数据库中已存在，则更新数据
            //: if WCDBVoiceMsgTable.db_getVoiceMsg(with: voiceMsg.msgId) != nil {
            if BearEnableMsgTable.sharedMini(with: voiceMsg.msgId) != nil {
                //: do {
                do {
                    //: let condition = WCDBVoiceMsgTable.Properties.msgId == voiceMsg.msgId
                    let condition = BearEnableMsgTable.Properties.msgId == voiceMsg.msgId
                    //: try WCDBManager.shared.database?.update(table: WCDBVoiceMsgTableName,
                    try ElementThen.shared.database?.update(table: showLiveContent,
                                                            //: on: WCDBVoiceMsgTable.Properties.all,
                                                            on: BearEnableMsgTable.Properties.all,
                                                            //: with: voiceMsg,
                                                            with: voiceMsg,
                                                            //: where: condition)
                                                            where: condition)
                    //: } catch {
                } catch {
                    //: UploadLogTool.writeLog(msg: "WCDB表\(WCDBVoiceMsgTableName): 更新数据失败。error：\(error).")
                }

                //: } else {
            } else {
                // 数据库中不存在，则插入数据
                //: WCDBVoiceMsgTable.db_insertVoiceMsg(voiceMsg)
                BearEnableMsgTable.digitizer(voiceMsg)
            }
            //: })
        })
    }

    /// 更新单个数据【如果没有则插入】
    /// - Parameters:
    ///   - msgId: 消息Id
    ///   - status: 状态
    ///   - filePath: 路径
    //: class func db_updateVoiceMsg(msgId: String, status: String = "", filePath: String = "") {
    class func doingModify(msgId: String, status: String = "", filePath: String = "") {
        //: guard let dbModel = WCDBVoiceMsgTable.db_getVoiceMsg(with: msgId) else { return }
        guard let dbModel = BearEnableMsgTable.sharedMini(with: msgId) else { return }
        //: if status.isEmpty == false {
        if status.isEmpty == false {
            //: dbModel.downloadStatus = status
            dbModel.downloadStatus = status
        }
        //: if filePath.isEmpty == false {
        if filePath.isEmpty == false {
            //: dbModel.db_filePath = filePath
            dbModel.db_filePath = filePath
        }
        //: WCDBVoiceMsgTable.db_updateVoiceMsg(dbModel)
        BearEnableMsgTable.showVoice(dbModel)
    }

    /// 根据消息Id删除数据
    /// - Parameter msgId: 消息Id
    //: class func db_deleteVoiceMsg(msgId: String) {
    class func timePosition(msgId: String) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? ElementThen.shared.database?.run(transaction: { _ in
            //: let condition = WCDBVoiceMsgTable.Properties.msgId == msgId
            let condition = BearEnableMsgTable.Properties.msgId == msgId
            //: try? WCDBManager.shared.database?.delete(fromTable: WCDBVoiceMsgTableName,
            try? ElementThen.shared.database?.delete(fromTable: showLiveContent,
                                                     //: where: condition)
                                                     where: condition)
            //: })
        })
    }

    /// 根据userId、toUid删除数据
    /// - Parameters:
    ///   - userId: 用户id
    ///   - toUid: 对方id
    //: class func db_deleteVoiceMsg(_ userId: String, toUid: String) {
    class func transform(_ userId: String, toUid: String) {
        //: try? WCDBManager.shared.database?.run(transaction: { _ in
        try? ElementThen.shared.database?.run(transaction: { _ in
            //: let condition = WCDBVoiceMsgTable.Properties.db_senduid == userId && WCDBVoiceMsgTable.Properties.db_touid == toUid
            let condition = BearEnableMsgTable.Properties.db_senduid == userId && BearEnableMsgTable.Properties.db_touid == toUid
            //: try? WCDBManager.shared.database?.delete(fromTable: WCDBVoiceMsgTableName,
            try? ElementThen.shared.database?.delete(fromTable: showLiveContent,
                                                     //: where: condition)
                                                     where: condition)
            //: })
        })
    }
}
