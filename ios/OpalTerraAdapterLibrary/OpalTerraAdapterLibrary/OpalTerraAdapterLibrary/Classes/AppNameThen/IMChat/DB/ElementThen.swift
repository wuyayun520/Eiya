
//: Declare String Begin

/*: ".db" :*/
fileprivate let kResultStr:[Character] = [".","d","b"]

/*: "WCDB数据库打开失败：userId为空。" :*/
fileprivate let k_toKey:String = "wcd"
fileprivate let k_placeName:[Character] = ["B","数","据","库","打","\u{5f00}","\u{5931}","\u{8d25}","：","u","s","e","r","I","d","为","空","\u{3002}"]

/*: "WCDB/ :*/
fileprivate let kBackUrl:String = "equal gift from string modelWCDB/"

/*: "WCDB数据库打开失败： :*/
fileprivate let kLineDataFormat:[Character] = ["W","C","D","B","\u{6570}","据"]
fileprivate let kUserStr:[Character] = ["库","打","开","失","败","："]

/*: "WCDB数据库成功打开： :*/
fileprivate let kStyleItemName:[Character] = ["W","C","D","B"]
fileprivate let k_contentMsg:String = "数据\u{5e93}成功打开："

/*: "WCDB数据库成功关闭。" :*/
fileprivate let k_nameValue:String = "numberDB"

/*: "WCDB数据库：创建表失败。error： :*/
fileprivate let k_managerPath:String = "WCDB数image select"
fileprivate let k_beautyName:String = "建表失败"
fileprivate let kDataName:[Character] = ["。","e","r","r","o","r","："]

/*: ." :*/
fileprivate let k_giftUrl:String = "."

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ElementThen.swift
//  OpalTerraAdapterLibrary
//
//  Created by DouXiu on 2024/8/29.
//

//: import UIKit
import UIKit
//: import WCDBSwift
import WCDBSwift

//: class WCDBManager: NSObject {
class ElementThen: NSObject {
    //: static let shared = WCDBManager()
    static let shared = ElementThen()
    /// 数据库
    //: var database: Database?
    var database: Database?
    /// 数据库名称
    //: private var wcdbName: String {
    private var wcdbName: String {
        //: return DistanceAppManager.share.loginUserMode.userID + ".db"
        return DistanceAppManager.share.loginUserMode.userID + ".db"
    }

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: self.connectDatabase()
        self.sessionAction()
    }

    /// 连接数据库
    //: func connectDatabase() {
    func sessionAction() {
        //: closeDatabase()
        curriculumConsultingService()

        //: guard !DistanceAppManager.share.loginUserMode.userID.isEmpty else {
        guard !DistanceAppManager.share.loginUserMode.userID.isEmpty else {
            //: UploadLogTool.writeLog(msg: "WCDB数据库打开失败：userId为空。")
            UploadDisplayThen.makeSelected(msg: (k_toKey.uppercased() + String(k_placeName)))
            //: return
            return
        }
        //: guard let fileURL = try? FileManager.default
        guard let fileURL = try? FileManager.default
            //: .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            //: .appendingPathComponent("WCDB/\(wcdbName)") else { return }
            .appendingPathComponent((String(kBackUrl.suffix(5))) + "\(wcdbName)") else { return }
        //: database = Database(at: fileURL)
        database = Database(at: fileURL)
        //: guard database?.canOpen == true else {
        guard database?.canOpen == true else {
            //: UploadLogTool.writeLog(msg: "WCDB数据库打开失败：\(fileURL.path)")
            UploadDisplayThen.makeSelected(msg: (String(kLineDataFormat) + String(kUserStr)) + "\(fileURL.path)")
            //: return
            return
        }
        //: printLog(message: "WCDB数据库成功打开：\(fileURL.path)")
        printLog(message: (String(kStyleItemName) + k_contentMsg) + "\(fileURL.path)")
        //: createTables()
        messageData()
    }

    /// 关闭数据库
    //: private func closeDatabase() {
    private func curriculumConsultingService() {
        //: guard database != nil else { return }
        guard database != nil else { return }
        //: database?.close()
        database?.close()
        //: try? database?.close(onClosed: { [weak self] in
        try? database?.close(onClosed: { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.database = nil
            self.database = nil
            //: printLog(message: "WCDB数据库成功关闭。")
            printLog(message: (k_nameValue.replacingOccurrences(of: "number", with: "WC") + "数\u{636e}库成功关闭\u{3002}"))
            //: })
        })
    }
}

// MARK: - 创建表

//: extension WCDBManager {
extension ElementThen {
    /// 创建表
    //: private func createTables() {
    private func messageData() {
        //: do {
        do {
            // 用户信息表
            //: try database?.create(table: WCDBUserInfoTableName, of: WCDBUserInfoTable.self)
            try database?.create(table: showFormalValue, of: ConcealedInfoTable.self)
            // 语音消息表
            //: try database?.create(table: WCDBVoiceMsgTableName, of: WCDBVoiceMsgTable.self)
            try database?.create(table: showLiveContent, of: BearEnableMsgTable.self)
            //: } catch {
        } catch {
            //: UploadLogTool.writeLog(msg: "WCDB数据库：创建表失败。error：\(error).")
            UploadDisplayThen.makeSelected(msg: (String(k_managerPath.prefix(5)) + "据库\u{ff1a}创" + k_beautyName.capitalized + String(kDataName)) + "\(error).")
        }
    }
}
