
//: Declare String Begin

/*: "http://" :*/
fileprivate let kBlockData:String = "manager lab scalehttp://"

/*: "https://" :*/
fileprivate let kGameUrl:[Character] = ["h","t","t","p","s",":","/","/"]

/*: "platform=iphone&version=%@&packageId=%@&bundleId=%@" :*/
fileprivate let k_rowData:[UInt8] = [0xc0,0xdc,0xd1,0xc4,0xd6,0xdf,0xc2,0xdd,0x8d,0xd9,0xc0,0xd8,0xdf,0xde,0xd5,0x96,0xc6,0xd5,0xc2,0xc3,0xd9,0xdf,0xde,0x8d,0x95,0xf0,0x96,0xc0,0xd1,0xd3,0xdb,0xd1,0xd7,0xd5,0xf9,0xd4,0x8d,0x95,0xf0,0x96,0xd2,0xc5,0xde,0xd4,0xdc,0xd5,0xf9,0xd4,0x8d,0x95,0xf0]

/*: "%@%@&%@" :*/
fileprivate let kTransitionCustomOffMessage:[Character] = ["%","@","%","@","&","%","@"]

/*: "url" :*/
fileprivate let k_specialValue:[Character] = ["u","r","l"]

/*: "id" :*/
fileprivate let kInputMessage:String = "icover"

/*: "length" :*/
fileprivate let kFatalPath:String = "lendetailh"

/*: "getFileSize error : :*/
fileprivate let k_finishKey:String = "back app producegetFil"
fileprivate let k_directionValue:String = "error :corner array"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewStreamThen.swift
//  OpalTerraAdapterLibrary
//
//  Created by DouXiu on 2024/8/26.
//

//: import UIKit
import UIKit

//: enum DownloadTaskStatus: Int {
enum AppComparable: Int {
    //: case none = 0
    case none = 0 // 未定义
    //: case prepare = 1
    case prepare = 1 // 准备
    //: case running = 10
    case running = 10 // 下载中
    //: case pause = 20
    case pause = 20 // 暂停
    //: case cancel = 30
    case cancel = 30 // 取消
    //: case expired = 40
    case expired = 40 // 过期
    //: case finish = 100
    case finish = 100 // 完成
    //: case error = 1000
    case error = 1000 // 错误
}

//: enum DownloadTaskTypeID: Int {
enum ManagerPropertyProtocol: Int {
    //: case undefined = 0
    case undefined = 0 // 未定义
    //: case chatRecord = 1
    case chatRecord = 1 // 语音聊天
    //: case oneKeyGreet = 2
    case oneKeyGreet = 2 // 一键发送打招呼语音
}

//: class VoiceDownloadTaskModel: NSObject {
class ViewStreamThen: NSObject {
    //: var taskId: String = ""
    var taskId: String = ""
    /// 下载地址
    //: var downloadUri: String = ""
    var downloadUri: String = ""
    /// 输出路径zip包
    //: var zipFilePath: String = ""
    var zipFilePath: String = ""
    /// 已下载大小
    //: var currentSize: Double = 0.0
    var currentSize: Double = 0.0
    /// 总大小
    //: var totalSize: Double = 0.0
    var totalSize: Double = 0.0
    /// 下载状态
    //: var taskStatus: DownloadTaskStatus = .none
    var taskStatus: AppComparable = .none
    /// 解压后路径
    //: var unZipFilePath: String = ""
    var unZipFilePath: String = ""
    /// 下载区分标识回调
    //: var taskTypeId: DownloadTaskTypeID = .undefined
    var taskTypeId: ManagerPropertyProtocol = .undefined
    /// 语音id
    //: var vid: String = ""
    var vid: String = ""
    /// 时长
    //: var length = 0
    var length = 0
    /// 输出流
    //: var stream: OutputStream?
    var stream: OutputStream?
    /// session
    //: var dataTask: URLSessionDataTask?
    var dataTask: URLSessionDataTask?

    /// 获取语音下载model
    //: class func getVoiceModel(_ tempModel: WCDBVoiceMsgTable) -> VoiceDownloadTaskModel {
    class func copernicanSystem(_ tempModel: BearEnableMsgTable) -> ViewStreamThen {
        //: let model = VoiceDownloadTaskModel()
        let model = ViewStreamThen()
        //: model.taskTypeId = .chatRecord
        model.taskTypeId = .chatRecord
        //: model.taskId = tempModel.msgId
        model.taskId = tempModel.msgId
        //: model.zipFilePath = tempModel.db_filePath
        model.zipFilePath = tempModel.db_filePath
        //: if tempModel.db_voiceUri.contains("http://") || tempModel.db_voiceUri.contains("https://") {
        if tempModel.db_voiceUri.contains((String(kBlockData.suffix(7)))) || tempModel.db_voiceUri.contains((String(kGameUrl))) {
            //: model.downloadUri = tempModel.db_voiceUri
            model.downloadUri = tempModel.db_voiceUri
            //: } else {
        } else {
            //: let otherParams = String(format: "platform=iphone&version=%@&packageId=%@&bundleId=%@", UserTextMacroDefine.getAppNetVersion(), UserTextMacroDefine.getPackageID(), UserTextMacroDefine.getAppBundle())
            let otherParams = String(format: String(bytes: k_rowData.map{$0^176}, encoding: .utf8)!, UserTextMacroDefine.equalState(), UserTextMacroDefine.makeBar(), UserTextMacroDefine.stream())
            //: model.downloadUri = String(format: "%@%@&%@", TalkingRequestAddrTool.share.serverUrlStr, tempModel.db_voiceUri, otherParams)
            model.downloadUri = String(format: "%@%@&%@", UserViewToolThen.share.serverUrlStr, tempModel.db_voiceUri, otherParams)

            //: model.currentSize = VoiceDownloadTaskModel.getFileSize(path: tempModel.db_filePath)
            model.currentSize = ViewStreamThen.popular(path: tempModel.db_filePath)
        }
        //: return model
        return model
    }

    /// 获取一键打招呼model
    //: class func getOneKeyGreetModel(_ voiceInfo: [String: Any]) -> VoiceDownloadTaskModel {
    class func isolateMedium(_ voiceInfo: [String: Any]) -> ViewStreamThen {
        //: let model = VoiceDownloadTaskModel()
        let model = ViewStreamThen()
        //: model.taskTypeId = .oneKeyGreet
        model.taskTypeId = .oneKeyGreet
        //: model.downloadUri = voiceInfo["url"] as? String ?? ""
        model.downloadUri = voiceInfo[(String(k_specialValue))] as? String ?? ""
        //: model.vid = voiceInfo["id"] as? String ?? ""
        model.vid = voiceInfo["id"] as? String ?? ""
        //: model.length = Int(voiceInfo["length"] as? String ?? "0") ?? 0
        model.length = Int(voiceInfo[(kFatalPath.replacingOccurrences(of: "detail", with: "gt"))] as? String ?? "0") ?? 0
        //: let fileName = (model.downloadUri as NSString).lastPathComponent
        let fileName = (model.downloadUri as NSString).lastPathComponent
        //: let pathName = fileName.replacingOccurrences(of: ".", with: "_")
        let pathName = fileName.replacingOccurrences(of: ".", with: "_")
        //: let timeInterval = Int(Date().timeIntervalSince1970)
        let timeInterval = Int(Date().timeIntervalSince1970)
        //: model.zipFilePath = "\(AppCacheDefine.getChatVoicePath())\(pathName)\(timeInterval)"
        model.zipFilePath = "\(CancelCacheDefine.needPath())\(pathName)\(timeInterval)"
        //: return model
        return model
    }
}

//: extension VoiceDownloadTaskModel {
extension ViewStreamThen {
    /// 获取文件大小
    /// - Parameter path: 文件完整路径
    /// - Returns: 文件size
    //: class func getFileSize(path: String) -> Double {
    class func popular(path: String) -> Double {
        //: let fileManager = FileManager.default
        let fileManager = FileManager.default
        //: guard fileManager.fileExists(atPath: path) else {
        guard fileManager.fileExists(atPath: path) else {
            //: return 0.0
            return 0.0
        }
        //: do {
        do {
            //: let attr = try fileManager.attributesOfItem(atPath: path)
            let attr = try fileManager.attributesOfItem(atPath: path)
            //: let fileSize = attr[FileAttributeKey.size] as! UInt64
            let fileSize = attr[FileAttributeKey.size] as! UInt64
            //: return Double(fileSize)
            return Double(fileSize)
            //: } catch {
        } catch {
            //: printLog(message: "getFileSize error :\(error)")
            printLog(message: (String(k_finishKey.suffix(6)) + "eSize " + String(k_directionValue.prefix(7))) + "\(error)")
            //: return 0.0
            return 0.0
        }
    }

    /// 获取文件本地存储路径
    /// - Returns: 路径
    //: func getDownloadZipFilePath() -> String {
    func cornerRePath() -> String {
        //: guard self.zipFilePath.isEmpty else {
        guard self.zipFilePath.isEmpty else {
            //: return self.zipFilePath
            return self.zipFilePath
        }
        //: let timeInterval = Int(Date().timeIntervalSince1970)
        let timeInterval = Int(Date().timeIntervalSince1970)
        //: return "\(AppCacheDefine.getChatVoicePath())\(self.taskId)\(timeInterval)"
        return "\(CancelCacheDefine.needPath())\(self.taskId)\(timeInterval)"
    }
}
