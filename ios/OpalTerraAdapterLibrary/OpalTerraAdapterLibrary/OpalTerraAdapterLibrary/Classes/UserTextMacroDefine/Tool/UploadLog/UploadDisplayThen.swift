
//: Declare String Begin

/*: "There is no data to upload" :*/
fileprivate let k_leadingMsg:String = "add return mail false wrapTher"
fileprivate let k_cellFormat:String = "ata normal source extension ting gift"
fileprivate let kThirdValue:String = "to upload equal rim"

/*: "Upload Log successfully!" :*/
fileprivate let k_afterId:[Character] = ["U","p","l","o","a","d"," ","L","o","g"," ","s","u","c","c","e","s","s"]
fileprivate let kEraseLabMessage:String = "data truefully!"

/*: "UID:  :*/
fileprivate let kCaptureSystemName:[Character] = ["U","I","D",":"," "]

/*: "/com_tencent_imsdk_log" :*/
fileprivate let k_toName:String = "app array/com_t"
fileprivate let kPhotoValue:String = "joint viewt_ims"
fileprivate let k_titleKey:[Character] = ["d","k","_","l","o","g"]

/*: "/log" :*/
fileprivate let k_tapValue:String = "/logheight icon"

/*: "/TempLogZip" :*/
fileprivate let kAppearUrl:String = "/TempLdismiss let make var"
fileprivate let kCellContent:[Character] = ["o","g","Z","i","p"]

/*: "/LogZip.zip" :*/
fileprivate let k_downName:[Character] = ["/","L","o","g","Z","i","p",".","z","i","p"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UploadDisplayThen.swift
//  Adjust
//
//  Created by DouXiu on 2024/5/22.
//

//: import DXMarsXlog
import DXMarsXlog
//: import UIKit
import UIKit

//: class UploadLogTool: NSObject {
class UploadDisplayThen: NSObject {
    /// 上传7天内
    //: private let uploadDay = 7
    private let uploadDay = 7
    //: static let shared = UploadLogTool()
    static let shared = UploadDisplayThen()

    /// 上传日志
    /// - Parameter showTips: 是否展示提示
    //: func uploadLog(_ showTips: Bool = true) {
    func towardContact(_ showTips: Bool = true) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            arcInfo(showMsg: appViewPingValue)
            //: return
            return
        }
        //: if showTips {
        if showTips {
            //: ProgressHUD.show()
            EndProgressHUD.listHide()
        }
        // im
        //: if let path = UploadLogTool.getIMSDKLogPath() {
        if let path = UploadDisplayThen.reclaimFromAmbagesPath() {
            //: copyLogToTempPath(logPath: path)
            infoPath(logPath: path)
        }
        // trtc
        //: if let path = UploadLogTool.getTRTCLogPath() {
        if let path = UploadDisplayThen.atomicMagnitude85() {
            //: copyLogToTempPath(logPath: path)
            infoPath(logPath: path)
        }
        // xlog
        //: DXMarsXLogger.shared().flush()
        DXMarsXLogger.shared().flush()
        //: copyLogToTempPath(logPath: DXMarsXLogger.getLogPath())
        infoPath(logPath: DXMarsXLogger.getLogPath())

        // 压缩上传
        //: if let tempPath = UploadLogTool.getTempUploadLogPath(), let zipPath = UploadLogTool.getZipLogPath() {
        if let tempPath = UploadDisplayThen.messageMap(), let zipPath = UploadDisplayThen.selectedColor() {
            //: SSZipArchive.createZipFile(atPath: zipPath, withContentsOfDirectory: tempPath, keepParentDirectory: true)
            SSZipArchive.createZipFile(atPath: zipPath, withContentsOfDirectory: tempPath, keepParentDirectory: true)
            //: if let file = NSData(contentsOfFile: zipPath) {
            if let file = NSData(contentsOfFile: zipPath) {
                //: if file.length < 10 {
                if file.length < 10 {
                    //: EndProgressHUD.popEnable()
                    EndProgressHUD.popEnable()
                    //: if showTips {
                    if showTips {
                        //: self.func__showStatusBarErrorMsg(showMsg: "There is no data to upload".localized)
                        self.arcInfo(showMsg: (String(k_leadingMsg.suffix(4)) + "e is no d" + String(k_cellFormat.prefix(4)) + String(kThirdValue.prefix(5)) + "load").localized)
                    }
                    //: return
                    return
                }
                // cos上传
                //: TalkingMomentVideoManager.shared.cos_uploadLog(filePath: zipPath) { succeed, errorMsg in
                StartReactiveCompatible.shared.userCustom(filePath: zipPath) { succeed, errorMsg in
                    //: EndProgressHUD.popEnable()
                    EndProgressHUD.popEnable()
                    //: guard succeed else {
                    guard succeed else {
                        //: if showTips, errorMsg?.isEmpty == false {
                        if showTips, errorMsg?.isEmpty == false {
                            //: self.func__showStatusBarErrorMsg(showMsg: errorMsg!)
                            self.arcInfo(showMsg: errorMsg!)
                        }
                        //: return
                        return
                    }

                    //: if showTips {
                    if showTips {
                        //: self.func__showStatusBarSuccessMsg(showMsg: "Upload Log successfully!".localized)
                        self.rear(showMsg: (String(k_afterId) + String(kEraseLabMessage.suffix(6))).localized)
                    }

                    // 移除缓存
                    //: try? FileManager.default.removeItem(atPath: zipPath)
                    try? FileManager.default.removeItem(atPath: zipPath)
                    //: try? FileManager.default.removeItem(atPath: tempPath)
                    try? FileManager.default.removeItem(atPath: tempPath)
                    //: self.clearContentsOfDirectory(atPath: DXMarsXLogger.getLogPath())
                    self.namePath(atPath: DXMarsXLogger.getLogPath())
                }
            }
        }
    }
}

// MARK: - 写入用户行为日志到本地文件

//: extension UploadLogTool {
extension UploadDisplayThen {
    /// 写入用户行为日志到本地文件
    /// - Parameter msg: 日志
    //: static func writeLog<T>(msg: T,
    static func makeSelected<T>(msg: T,
                                //: file: String = #file,
                                file: String = #file,
                                //: method: String = #function,
                                method: String = #function,
                                //: line: Int = #line) {
                                line: Int = #line)
    {
        //: DXMarsXLogger.logInfo("UID: \(DistanceAppManager.share.loginUserMode.userID)",
        DXMarsXLogger.logInfo((String(kCaptureSystemName)) + "\(DistanceAppManager.share.loginUserMode.userID)",
                              //: message: "\(msg)",
                              message: "\(msg)",
                              //: file: file,
                              file: file,
                              //: line: line,
                              line: line,
                              //: function: method)
                              function: method)
        //: DXMarsXLogger.shared().flush()
        DXMarsXLogger.shared().flush()
    }
}

// MARK: - 日志路径操作

//: extension UploadLogTool {
extension UploadDisplayThen {
    /// Copy符合条件的日志到指定路径
    //: private func copyLogToTempPath(logPath: String) {
    private func infoPath(logPath: String) {
        //: guard let subpaths = FileManager.default.subpaths(atPath: logPath) else { return }
        guard let subpaths = FileManager.default.subpaths(atPath: logPath) else { return }
        // 获取当前日期和指定天数前的日期
        //: let calendar = Calendar.current
        let calendar = Calendar.current
        //: let today = Date()
        let today = Date()
        //: guard let daysAgo = calendar.date(byAdding: .day, value: -uploadDay, to: calendar.startOfDay(for: today)) else { return }
        guard let daysAgo = calendar.date(byAdding: .day, value: -uploadDay, to: calendar.startOfDay(for: today)) else { return }
        //: subpaths.forEach { fileName in
        subpaths.forEach { fileName in
            //: let fullPath = logPath + "/" + fileName
            let fullPath = logPath + "/" + fileName
            //: guard let dict = try? FileManager.default.attributesOfItem(atPath: fullPath),
            guard let dict = try? FileManager.default.attributesOfItem(atPath: fullPath),
                  //: let modificationDate = dict[FileAttributeKey.modificationDate] as? Date else { return }
                  let modificationDate = dict[FileAttributeKey.modificationDate] as? Date else { return }
            // 获取文件修改日期的开始时间
            //: let fileDate = calendar.startOfDay(for: modificationDate)
            let fileDate = calendar.startOfDay(for: modificationDate)
            // 判断文件日期是否在指定天数范围内
            //: if fileDate > daysAgo,
            if fileDate > daysAgo,
               //: let tempPath = UploadLogTool.getTempUploadLogPath() {
               let tempPath = UploadDisplayThen.messageMap()
            {
                //: try? FileManager.default.copyItem(atPath: fullPath, toPath: tempPath + "/" + fileName)
                try? FileManager.default.copyItem(atPath: fullPath, toPath: tempPath + "/" + fileName)
            }
        }
    }

    /// 清空指定路径下的所有文件
    //: private func clearContentsOfDirectory(atPath path: String) {
    private func namePath(atPath path: String) {
        //: let fileManager = FileManager.default
        let fileManager = FileManager.default
        //: if let files = try? fileManager.contentsOfDirectory(atPath: path) {
        if let files = try? fileManager.contentsOfDirectory(atPath: path) {
            //: for file in files {
            for file in files {
                //: let filePath = path + "/" + file
                let filePath = path + "/" + file
                //: try? fileManager.removeItem(atPath: filePath)
                try? fileManager.removeItem(atPath: filePath)
            }
        }
    }
}

// MARK: - 日志本地路径

//: extension UploadLogTool {
extension UploadDisplayThen {
    /// 获取腾讯IM日志路径
    //: private static func getIMSDKLogPath() -> String? {
    private static func reclaimFromAmbagesPath() -> String? {
        //: return NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first?.appending("/com_tencent_imsdk_log")
        return NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first?.appending((String(k_toName.suffix(6)) + "encen" + String(kPhotoValue.suffix(5)) + String(k_titleKey)))
    }

    /// 获取腾讯TRTC日志路径
    //: private static func getTRTCLogPath() -> String? {
    private static func atomicMagnitude85() -> String? {
        //: return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first?.appending("/log")
        return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first?.appending((String(k_tapValue.prefix(4))))
    }

    /// copy临时路径
    //: private static func getTempUploadLogPath() -> String? {
    private static func messageMap() -> String? {
        //: if let logPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first?.appending("/TempLogZip") {
        if let logPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first?.appending((String(kAppearUrl.prefix(6)) + String(kCellContent))) {
            //: if FileManager.default.fileExists(atPath: logPath) == false {
            if FileManager.default.fileExists(atPath: logPath) == false {
                //: try? FileManager.default.createDirectory(atPath: logPath, withIntermediateDirectories: true)
                try? FileManager.default.createDirectory(atPath: logPath, withIntermediateDirectories: true)
            }
            //: return logPath
            return logPath
        }
        //: return nil
        return nil
    }

    /// 压缩日志文件路径
    //: private static func getZipLogPath() -> String? {
    private static func selectedColor() -> String? {
        //: return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first?.appending("/LogZip.zip")
        return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first?.appending((String(k_downName)))
    }
}
