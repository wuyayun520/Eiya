
//: Declare String Begin

/*: "CacheGiftEffectCacheKey" :*/
fileprivate let kFieldTitle:[Character] = ["C","a","c","h","e","G","i","f","t","E","f","f","e","c","t","C","a","c","h","e"]
fileprivate let kStatuteUpStartStr:String = "Keymain make center color"

/*: "下载动画文件" :*/
fileprivate let k_pointFormat:[Character] = ["下","载","动","画","文","件"]

/*: "加载本地动画文件" :*/
fileprivate let kInfoId:[Character] = ["加","载","本","\u{5730}","\u{52a8}","画","文"]
fileprivate let kLabValue:String = "data"

/*: "%@/%@/" :*/
fileprivate let k_objectTitle:[Character] = ["%","@","/","%","@","/"]

/*: "%@/%zd/" :*/
fileprivate let kTextMotivationData:[Character] = ["%","@","/","%","z","d","/"]

/*: "Cache_GiftEffect/" :*/
fileprivate let kPostFormat:[Character] = ["C","a","c","h","e","_","G","i","f","t","E","f","f","e","c","t","/"]

/*: "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x" :*/
fileprivate let kScaleFormat:[UInt8] = [0x6d,0x78,0x7a,0xc0,0x6d,0x78,0x7a,0xc0,0x6d,0x78,0x7a,0xc0,0x6d,0x78,0x7a,0xc0,0x6d,0x78,0x7a,0xc0,0x6d,0x78,0x7a,0xc0,0x6d,0x78,0x7a,0xc0,0x6d,0x78,0x7a,0xc0,0x6d,0x78,0x7a,0xc0,0x6d,0x78,0x7a,0xc0,0x6d,0x78,0x7a,0xc0,0x6d,0x78,0x7a,0xc0,0x6d,0x78,0x7a,0xc0,0x6d,0x78,0x7a,0xc0,0x6d,0x78,0x7a,0xc0,0x6d,0x78,0x7a,0xc0]

fileprivate func equalReturn(video num: UInt8) -> UInt8 {
    let value = Int(num) - 72
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "GJSGVA" :*/
fileprivate let k_topKey:[Character] = ["G","J","S","G","V","A"]

/*: "GJVap" :*/
fileprivate let k_playMsg:String = "GJVaptext corner tip"

/*: "config.json" :*/
fileprivate let k_messageFormat:[Character] = ["c","o","n","f","i","g",".","j","s"]
fileprivate let k_statuteFormat:String = "oto"

/*: "%d" :*/
fileprivate let kTimeGiftValue:[Character] = ["%","d"]

/*: "app. :*/
fileprivate let kAcquirePath:[Character] = ["a","p","p","."]

/*: .com" :*/
fileprivate let kSizeTitle:[Character] = [".","c","o","m"]

/*: "key" :*/
fileprivate let kGiftKey:String = "KEY"

/*: "zip" :*/
fileprivate let k_messageStr:String = "toip"

/*: " fail to unzip file" :*/
fileprivate let k_labelMsg:[Character] = [" ","f","a","i","l"," ","t","o"]
fileprivate let kEraseTitleDataUrl:String = "name else in gift un"
fileprivate let kUpId:[Character] = ["z","i","p"," ","f","i","l","e"]

/*: "RSA 解密失败" :*/
fileprivate let k_framePath:String = "RSA request screen"

/*: "fail to unzip script file" :*/
fileprivate let k_kindName:[Character] = ["f","a","i","l"," ","t","o"," ","u","n","z","i","p"," ","s","c"]
fileprivate let kGiftFormat:String = "rkey"
fileprivate let kPartyPath:String = "white tot file"

/*: "%ld" :*/
fileprivate let k_restName:String = "%ldcenter value resign"

/*: "gift" :*/
fileprivate let kPhotoTitle:String = "childift"

/*: "%@%@effect_%ld" :*/
fileprivate let k_customLevelFormat:String = "%app%app"
fileprivate let k_travelRowKey:String = "domain extensionct_%ld"

/*: "%@%@effect_%ld_unzipTest/" :*/
fileprivate let kEdgePath:[Character] = ["%","@","%","@","e","f","f","e","c","t","_","%","l","d","_","u","n","z"]
fileprivate let kKindTitle:[Character] = ["i","p","T","e","s","t","/"]

/*: "%@%@effect_%ld_unzip/" :*/
fileprivate let kTitleStr:[Character] = ["%","@","%","@","e","f","f","e","c","t","_","%","l","d","_","u","n","z","i"]
fileprivate let k_videoPath:String = "p/make send label off"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FinancialAidThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/9.
//

//: import CommonCrypto
import CommonCrypto
//: import UIKit
import UIKit

/// 动效资源的下载，解压，校验，存储更新的辅助类

//: typealias CompletionBlock = (_ success: Bool, _ effectModel: TalkingGiftAnimatModel?) -> Void
typealias CompletionBlock = (_ success: Bool, _ effectModel: MakeHandyJSON?) -> Void

//: typealias ErrorBlock = (_ error: NSError?) -> Void
typealias ErrorBlock = (_ error: NSError?) -> Void

//: class TalkingGiftAnimatTool: NSObject {
class FinancialAidThen: NSObject {
    //: let TalkingGiftAnimatCacheKey  = "CacheGiftEffectCacheKey"
    let TalkingGiftAnimatCacheKey = (String(kFieldTitle) + String(kStatuteUpStartStr.prefix(3)))

    //: @objc static let shared = TalkingGiftAnimatTool()
    @objc static let shared = FinancialAidThen()

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    // 下载动效的资源（网络下载 或 加载本地存储）
    //: func loadEffectData(effectMsgModel: TalkingAnimatMsgModel, completion: @escaping CompletionBlock ) {
    func imageAction(effectMsgModel: DisappearMsgModel, completion: @escaping CompletionBlock) {
        //: if checkNewVersionWithAnimatMsgModel(model: effectMsgModel) {
        if observer(model: effectMsgModel) {
            //: printLog(message: "下载动画文件")
            printLog(message: (String(k_pointFormat)))
            //: downloadAnimat(effectMsgModel: effectMsgModel) { [weak self] error in
            mentalImageBlock(effectMsgModel: effectMsgModel) { [weak self] error in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: if error != nil {
                if error != nil {
                    //: DispatchQueue.main.async {
                    DispatchQueue.main.async {
                        //: completion(false, nil)
                        completion(false, nil)
                    }
                    //: return
                    return
                }
                //: self.loadLocalAnimatConfig(effectMsgModel: effectMsgModel, complete: completion)
                self.outsideTitle(effectMsgModel: effectMsgModel, complete: completion)
            }
            //: } else {
        } else {
            //: printLog(message: "加载本地动画文件")
            printLog(message: (String(kInfoId) + kLabValue.replacingOccurrences(of: "data", with: "件")))
            //: self.loadLocalAnimatConfig(effectMsgModel: effectMsgModel, complete: completion)
            self.outsideTitle(effectMsgModel: effectMsgModel, complete: completion)
        }
    }

    //: func filePathOfNameWithAnimatMsgModel(fileName: String, model: TalkingAnimatMsgModel) -> String {
    func rent(fileName: String, model: DisappearMsgModel) -> String {
        //: let scriptDirectory = fetchScriptDirectory(animatMsgModel: model)
        let scriptDirectory = tapRemove(animatMsgModel: model)
        //: let filePath = (scriptDirectory as NSString).appendingPathComponent(fileName)
        let filePath = (scriptDirectory as NSString).appendingPathComponent(fileName)
        //: return filePath
        return filePath
    }

    // 删除本地缓存
    //: func deleteCacheData() {
    func pointTarget() {
        //: deleteFolder(path: giftEffectDirectory())
        ambages(path: outsideLip())
    }

    // 动效资源本地的缓存目录路径
    //: func fetchScriptDirectory(animatMsgModel: TalkingAnimatMsgModel) -> String {
    func tapRemove(animatMsgModel: DisappearMsgModel) -> String {
        //: if animatMsgModel.eid == 0 {
        if animatMsgModel.eid == 0 {
            //: return String.init(format: "%@/%@/", giftEffectDirectory(), animatMsgModel.effectUrl.md5()!)
            return String(format: "%@/%@/", outsideLip(), animatMsgModel.effectUrl.md5()!)
            //: } else {
        } else {
            //: return String.init(format: "%@/%zd/", giftEffectDirectory(), animatMsgModel.eid)
            return String(format: "%@/%zd/", outsideLip(), animatMsgModel.eid)
        }
    }

    //: func giftEffectDirectory() -> String {
    func outsideLip() -> String {
        //: let subPath = "Cache_GiftEffect/"
        let subPath = (String(kPostFormat))

        //: let documentDictPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentDictPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let scriptDirectory = (documentDictPath as NSString).appendingPathComponent(subPath)
        let scriptDirectory = (documentDictPath as NSString).appendingPathComponent(subPath)
        //: return scriptDirectory
        return scriptDirectory
    }

    //: func fileMD5(filePath: String) -> String {
    func trademarkBind(filePath: String) -> String {
        //: let handle = FileHandle.init(forReadingAtPath: filePath)
        let handle = FileHandle(forReadingAtPath: filePath)
        //: if handle == nil {
        if handle == nil {
            //: return ""
            return ""
        }
        //: var md5 = CC_MD5_CTX()
        var md5 = CC_MD5_CTX()
        //: CC_MD5_Init(&md5)
        CC_MD5_Init(&md5)
        //: var done = false
        var done = false
        //: while (!done) {
        while !done {
            //: let fileData: NSData = handle?.readData(ofLength: 256) as? NSData ?? NSData.init()
            let fileData: NSData = handle?.readData(ofLength: 256) as? NSData ?? NSData()
            //: CC_MD5_Update(&md5, fileData.bytes, CC_LONG(fileData.length))
            CC_MD5_Update(&md5, fileData.bytes, CC_LONG(fileData.length))
            //: if fileData.length == 0 {
            if fileData.length == 0 {
                //: done = true
                done = true
            }
        }

        //: var digest = Data(count: Int(CC_MD5_DIGEST_LENGTH))
        var digest = Data(count: Int(CC_MD5_DIGEST_LENGTH))
        //: digest.withUnsafeMutableBytes({ pointer in
        digest.withUnsafeMutableBytes { pointer in
            //: _ = CC_MD5_Final(pointer, &md5)
            _ = CC_MD5_Final(pointer, &md5)
            //: })
        }

        //: let result = String.init(format: "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
        let result = String(format: "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
                            //: digest[0], digest[1],
                            digest[0], digest[1],
                            //: digest[2], digest[3],
                            digest[2], digest[3],
                            //: digest[4], digest[5],
                            digest[4], digest[5],
                            //: digest[6], digest[7],
                            digest[6], digest[7],
                            //: digest[8], digest[9],
                            digest[8], digest[9],
                            //: digest[10], digest[11],
                            digest[10], digest[11],
                            //: digest[12], digest[13],
                            digest[12], digest[13],
                            //: digest[14], digest[15])
                            digest[14], digest[15])
        //: return result
        return result
    }

    //: func isLocalFileExistViaAnimat(model: TalkingAnimatMsgModel) -> Bool {
    func upResumeModel(model: DisappearMsgModel) -> Bool {
        //: return !checkNewVersionWithAnimatMsgModel(model: model)
        return !observer(model: model)
    }

    //: func getNewAnimatClassName(oldName: String) -> String {
    func eyeContactImage(oldName: String) -> String {
        //: var newName = oldName
        var newName = oldName
        //: if newName.hasPrefix("GJSGVA") {
        if newName.hasPrefix((String(k_topKey))) {
            //: newName = String(describing: TalkingSGVAAnimationView.self)
            newName = String(describing: DisappearView.self)
            //: } else if newName.hasPrefix("GJVap") {
        } else if newName.hasPrefix((String(k_playMsg.prefix(5)))) {
            //: newName = String(describing: TalkingVapAnimationView.self)
            newName = String(describing: PopItemView.self)
        }
        //: return newName
        return newName
    }
}

//: extension TalkingGiftAnimatTool {
extension FinancialAidThen {
    //: func loadLocalAnimatConfig(effectMsgModel: TalkingAnimatMsgModel, complete: @escaping CompletionBlock) {
    func outsideTitle(effectMsgModel: DisappearMsgModel, complete: @escaping CompletionBlock) {
        //: let scriptDirectory = fetchScriptDirectory(animatMsgModel: effectMsgModel)
        let scriptDirectory = tapRemove(animatMsgModel: effectMsgModel)
        //: let scriptPath = (scriptDirectory as NSString).appendingPathComponent("config.json")
        let scriptPath = (scriptDirectory as NSString).appendingPathComponent((String(k_messageFormat) + k_statuteFormat.replacingOccurrences(of: "to", with: "n")))
        //: let configString = try? String.init(contentsOfFile: scriptPath, encoding: String.Encoding.utf8)
        let configString = try? String(contentsOfFile: scriptPath, encoding: String.Encoding.utf8)

        //: if configString?.count ?? 0 <= 0 {
        if configString?.count ?? 0 <= 0 {
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: complete(false, nil)
                complete(false, nil)
            }
            //: return
            return
        }

        //: let dic = NSDictionary.dictionary(withJsonString: configString!) ?? NSDictionary()
        let dic = NSDictionary.sinceFrom(withJsonString: configString!) ?? NSDictionary()
        //: let giftAmodel = TalkingGiftAnimatModel.init()
        let giftAmodel = MakeHandyJSON()
        //: let effectModel = giftAmodel.setAnimatModek(dic: dic)
        let effectModel = giftAmodel.marginOfSafety(dic: dic)
        //: var className = effectModel.className
        var className = effectModel.className

        //: if  className.count <= 0 && effectModel.nativeClassName.count > 0 {
        if className.count <= 0, effectModel.nativeClassName.count > 0 {
            //: className = effectModel.nativeClassName
            className = effectModel.nativeClassName
        }
        //: if className.count <= 0 {
        if className.count <= 0 {
            //: className = effectModel.className
            className = effectModel.className
        }
        //: className = getNewAnimatClassName(oldName: className)
        className = eyeContactImage(oldName: className)
        //: let clsName = PodspecName + "." + className
        let clsName = user_failModeData + "." + className
        //: let AnimatedViewClass: AnyClass? = NSClassFromString(clsName)
        let AnimatedViewClass: AnyClass? = NSClassFromString(clsName)

        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: complete(AnimatedViewClass != nil, effectModel)
            complete(AnimatedViewClass != nil, effectModel)
        }
    }

    // 如果有新版本，就删除旧版本，然后返回true
    //: func checkNewVersionWithAnimatMsgModel(model: TalkingAnimatMsgModel) ->Bool {
    func observer(model: DisappearMsgModel) -> Bool {
        //: let giftPlist = UserDefaults.standard.object(forKey: TalkingGiftAnimatCacheKey) as? Dictionary<String, Any> ?? Dictionary<String, Any>.init()
        let giftPlist = UserDefaults.standard.object(forKey: TalkingGiftAnimatCacheKey) as? [String: Any] ?? Dictionary<String, Any>.init()

        //: if giftPlist.count <= 0 {
        if giftPlist.count <= 0 {
            //: return true
            return true
        }
        // 新的动效资源的url

        //: var key = ""
        var key = ""
        //: var oldEffectUrlString = ""
        var oldEffectUrlString = ""
        //: if  model.eid == 0 {
        if model.eid == 0 {
            //: key = model.effectUrl.md5() ?? ""
            key = model.effectUrl.md5() ?? ""
            // 根据ID，获得存储的（旧的）对应资源的url
            //: oldEffectUrlString = giftPlist[key] as? String ?? ""
            oldEffectUrlString = giftPlist[key] as? String ?? ""
            //: } else {
        } else {
            //: key = String.init(format: "%d", model.eid)
            key = String(format: "%d", model.eid)
            // 根据ID，获得存储的（旧的）对应资源的url
            //: oldEffectUrlString = giftPlist[key] as? String ?? ""
            oldEffectUrlString = giftPlist[key] as? String ?? ""
        }

        // 动效资源本地的保存目录路径
        //: let scriptDirectory = fetchScriptDirectory(animatMsgModel: model)
        let scriptDirectory = tapRemove(animatMsgModel: model)

        //: if oldEffectUrlString == model.effectUrl {
        if oldEffectUrlString == model.effectUrl {
            // 检查config.json是否存在，不存在就返回YES；
            //: let scriptPath = (scriptDirectory as NSString).appendingPathComponent("config.json")
            let scriptPath = (scriptDirectory as NSString).appendingPathComponent((String(k_messageFormat) + k_statuteFormat.replacingOccurrences(of: "to", with: "n")))
            //: if FileManager.default.fileExists(atPath: scriptPath) {
            if FileManager.default.fileExists(atPath: scriptPath) {
                //: return false
                return false
            }
        }

        //: try? FileManager.default.removeItem(atPath: scriptDirectory)
        try? FileManager.default.removeItem(atPath: scriptDirectory)
        //: return true
        return true
    }

    // 实际的网络下载动效资源
    //: func downloadAnimat(effectMsgModel: TalkingAnimatMsgModel, errorBlock: @escaping ErrorBlock) {
    func mentalImageBlock(effectMsgModel: DisappearMsgModel, errorBlock: @escaping ErrorBlock) {
        //: PlayerRequestTool.req_giftEffectDataUrl(giftUrl: effectMsgModel.effectUrl, path: downloadTmpPath(model: effectMsgModel)) { [weak self] t in
        PlayerRequestTool.spilloverImage(giftUrl: effectMsgModel.effectUrl, path: upTouchTime(model: effectMsgModel)) { [weak self] t in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: DispatchQueue.global().async {
            DispatchQueue.global().async {
                //: self.afterDownloadGiftAnimat(effectMsgModel: effectMsgModel, isSucess: t, errorBlock: errorBlock)
                self.sucess(effectMsgModel: effectMsgModel, isSucess: t, errorBlock: errorBlock)
            }
        }
    }

    //: func afterDownloadGiftAnimat(effectMsgModel: TalkingAnimatMsgModel, isSucess: Bool, errorBlock: @escaping ErrorBlock) {
    func sucess(effectMsgModel: DisappearMsgModel, isSucess: Bool, errorBlock: @escaping ErrorBlock) {
        //: if !isSucess {
        if !isSucess {
            //: errorBlock(NSError.init(domain: "app.\(ReplaceUrlDomain).com", code: GiftAnimatUpdateError.DownLoadFailed.rawValue))
            errorBlock(NSError(domain: (String(kAcquirePath)) + "\(main_keyValue)" + (String(kSizeTitle)), code: CustomStreamCount.DownLoadFailed.rawValue))
            //: return
            return

                    //: } else {
        } else {
            // temporary files and directories
            //: let eid = effectMsgModel.eid
            let eid = effectMsgModel.eid
            //: let downloadPath       = downloadTmpPath(model: effectMsgModel)
            let downloadPath = upTouchTime(model: effectMsgModel)
            //: let unzipVerifyDir = unzipVerifyDirectory(model: effectMsgModel)
            let unzipVerifyDir = duringViewMargin(model: effectMsgModel)

            // is the processing flow failed
            //: var isFailed = false
            var isFailed = false

            // 1. unzip encrypted md5 file and script file
            //: var keyFilePath  = ""
            var keyFilePath = ""
            //: var scriptZipFilePath = ""
            var scriptZipFilePath = ""

            //: let verifyUnzipSucc = SSZipArchive.unzipFile(atPath: downloadPath, toDestination: unzipVerifyDir, overwrite: true, password: nil, progressHandler: nil)
            let verifyUnzipSucc = SSZipArchive.unzipFile(atPath: downloadPath, toDestination: unzipVerifyDir, overwrite: true, password: nil, progressHandler: nil)
            //: let unzippedFiles: Array = FileManager.default.subpaths(atPath: unzipVerifyDir) ?? []
            let unzippedFiles: Array = FileManager.default.subpaths(atPath: unzipVerifyDir) ?? []

            //: if (verifyUnzipSucc) {
            if verifyUnzipSucc {
                //: for filename in unzippedFiles {
                for filename in unzippedFiles {
                    //: if filename == "key" {
                    if filename == (kGiftKey.lowercased()) {
                        // encrypted md5 file
                        //: keyFilePath = (unzipVerifyDir as NSString).appendingPathComponent(filename)
                        keyFilePath = (unzipVerifyDir as NSString).appendingPathComponent(filename)
                        //: } else if (filename as NSString).pathExtension == "zip" {
                    } else if (filename as NSString).pathExtension == (k_messageStr.replacingOccurrences(of: "to", with: "z")) {
                        // script file
                        //: scriptZipFilePath = (unzipVerifyDir as NSString).appendingPathComponent(filename)
                        scriptZipFilePath = (unzipVerifyDir as NSString).appendingPathComponent(filename)
                    }
                }
                //: } else {
            } else {
                //: printLog(message: " fail to unzip file")
                printLog(message: (String(k_labelMsg) + String(kEraseTitleDataUrl.suffix(3)) + String(kUpId)))
                //: isFailed = true
                isFailed = true
                //: errorBlock(NSError.init(domain: "app.\(ReplaceUrlDomain).com", code: GiftAnimatUpdateError.UnzipFailed.rawValue))
                errorBlock(NSError(domain: (String(kAcquirePath)) + "\(main_keyValue)" + (String(kSizeTitle)), code: CustomStreamCount.UnzipFailed.rawValue))
            }
            // 2. decrypt and verify md5 file
            //: if !isFailed {
            if !isFailed {
                //: do {
                do {
                    //: let md5Data: Data = FZRSA.decryptData(NSData.init(contentsOfFile: keyFilePath) as Data?, publicKey: GiftRsaPublicKey)
                    let md5Data: Data = ViewModelFzrsa.decryptData(NSData(contentsOfFile: keyFilePath) as Data?, publicKey: userKeyViewMessageData)
                    //: let decryptMD5 = String.init(data: md5Data, encoding: String.Encoding.utf8)
                    let decryptMD5 = String(data: md5Data, encoding: String.Encoding.utf8)
                    //: let md5 = fileMD5(filePath: scriptZipFilePath)
                    let md5 = trademarkBind(filePath: scriptZipFilePath)

                    //: if decryptMD5 != md5 && FileManager.default.fileExists(atPath: keyFilePath) {
                    if decryptMD5 != md5, FileManager.default.fileExists(atPath: keyFilePath) {
                        //: isFailed = true
                        isFailed = true
                        //: errorBlock(NSError.init(domain: "app.\(ReplaceUrlDomain).com", code: GiftAnimatUpdateError.VerifyFailed.rawValue))
                        errorBlock(NSError(domain: (String(kAcquirePath)) + "\(main_keyValue)" + (String(kSizeTitle)), code: CustomStreamCount.VerifyFailed.rawValue))
                    }
                    //: printLog(message: decryptMD5)
                    printLog(message: decryptMD5)
                    //: } catch {
                } catch {
                    //: printLog(message: "RSA 解密失败")
                    printLog(message: (String(k_framePath.prefix(4)) + "解密失败"))
                    //: isFailed = true
                    isFailed = true
                    //: errorBlock(NSError.init(domain: "app.\(ReplaceUrlDomain).com", code: GiftAnimatUpdateError.VerifyFailed.rawValue))
                    errorBlock(NSError(domain: (String(kAcquirePath)) + "\(main_keyValue)" + (String(kSizeTitle)), code: CustomStreamCount.VerifyFailed.rawValue))
                }
            }

            // 3. unzip script file and save
            //: if !isFailed {
            if !isFailed {
                // tmp script directory
                //: let unzipTmpDir = unzipTmpDirectory(model: effectMsgModel)
                let unzipTmpDir = goOverTeam(model: effectMsgModel)
                //: let unzipSucc = SSZipArchive.unzipFile(atPath: scriptZipFilePath, toDestination: unzipTmpDir, overwrite: true, password: nil, progressHandler: nil)
                let unzipSucc = SSZipArchive.unzipFile(atPath: scriptZipFilePath, toDestination: unzipTmpDir, overwrite: true, password: nil, progressHandler: nil)

                //: if (unzipSucc) {
                if unzipSucc {
                    // script directory
                    //: let scriptDirectory = fetchScriptDirectory(animatMsgModel: effectMsgModel)
                    let scriptDirectory = tapRemove(animatMsgModel: effectMsgModel)
                    //: if FileManager.default.fileExists(atPath: scriptDirectory) {
                    if FileManager.default.fileExists(atPath: scriptDirectory) {
                        //: try? FileManager.default.removeItem(atPath: scriptDirectory)
                        try? FileManager.default.removeItem(atPath: scriptDirectory)
                    }
                    //: try? FileManager.default.createDirectory(atPath: scriptDirectory, withIntermediateDirectories: true)
                    try? FileManager.default.createDirectory(atPath: scriptDirectory, withIntermediateDirectories: true)

                    //: let unzippedFiles: Array = FileManager.default.subpaths(atPath: unzipTmpDir) ?? []
                    let unzippedFiles: Array = FileManager.default.subpaths(atPath: unzipTmpDir) ?? []

                    //: for filename in unzippedFiles {
                    for filename in unzippedFiles {
                        //: let filePath    = (unzipTmpDir as NSString).appendingPathComponent(filename)
                        let filePath = (unzipTmpDir as NSString).appendingPathComponent(filename)
                        //: let newFilePath = (scriptDirectory as NSString).appendingPathComponent(filename)
                        let newFilePath = (scriptDirectory as NSString).appendingPathComponent(filename)

                        //: var isDirectory: ObjCBool = false
                        var isDirectory: ObjCBool = false
                        //: FileManager.default.fileExists(atPath: filePath, isDirectory: &isDirectory)
                        FileManager.default.fileExists(atPath: filePath, isDirectory: &isDirectory)
                        //: if isDirectory.boolValue {
                        if isDirectory.boolValue {
                            //: try? FileManager.default.createDirectory(atPath: newFilePath, withIntermediateDirectories: true)
                            try? FileManager.default.createDirectory(atPath: newFilePath, withIntermediateDirectories: true)
                            //: continue
                            continue
                        }

                        //: let srcFileUrl = NSURL.fileURL(withPath: filePath)
                        let srcFileUrl = NSURL.fileURL(withPath: filePath)
                        //: let destFileUrl = NSURL.fileURL(withPath: newFilePath)
                        let destFileUrl = NSURL.fileURL(withPath: newFilePath)
                        //: do {
                        do {
                            //: try  FileManager.default.moveItem(at: srcFileUrl, to: destFileUrl)
                            try FileManager.default.moveItem(at: srcFileUrl, to: destFileUrl)
                            //: } catch {
                        } catch {
                            //: isFailed = true
                            isFailed = true
                            //: errorBlock(error as NSError)
                            errorBlock(error as NSError)
                            //: break
                            break
                        }
                    }
                }
                //: else {
                else {
                    //: printLog(message: "fail to unzip script file")
                    printLog(message: (String(k_kindName) + kGiftFormat.replacingOccurrences(of: "key", with: "ip") + String(kPartyPath.suffix(6))))
                    //: isFailed = true
                    isFailed = true
                    //: errorBlock(NSError.init(domain: "app.\(ReplaceUrlDomain).com", code: GiftAnimatUpdateError.UnzipFailed.rawValue))
                    errorBlock(NSError(domain: (String(kAcquirePath)) + "\(main_keyValue)" + (String(kSizeTitle)), code: CustomStreamCount.UnzipFailed.rawValue))
                }

                //: try? FileManager.default.removeItem(atPath: unzipTmpDir)
                try? FileManager.default.removeItem(atPath: unzipTmpDir)
            }

            // success
            //: if !isFailed {
            if !isFailed {
                // 下载资源成功后，将资源的ID和URL写进缓存(即：保存一份资源的最新版本记录)
                //: let cacheKey = TalkingGiftAnimatCacheKey
                let cacheKey = TalkingGiftAnimatCacheKey

                //: var giftPlist = UserDefaults.standard.object(forKey: cacheKey) as? Dictionary<String, Any> ?? Dictionary<String, Any>.init()
                var giftPlist = UserDefaults.standard.object(forKey: cacheKey) as? [String: Any] ?? Dictionary<String, Any>.init()

                //: var key = String.init(format: "%ld", eid)
                var key = String(format: "%ld", eid)

                /* 5.2.6 表情动效 没有设置eid 此处eid == 0 */
                //: if eid == 0 {
                if eid == 0 {
                    //: key = effectMsgModel.effectUrl.md5() ?? ""
                    key = effectMsgModel.effectUrl.md5() ?? ""
                }

                //: giftPlist[key] = effectMsgModel.effectUrl
                giftPlist[key] = effectMsgModel.effectUrl
                //: UserDefaults.standard.set(giftPlist, forKey: cacheKey)
                UserDefaults.standard.set(giftPlist, forKey: cacheKey)
                //: errorBlock(nil)
                errorBlock(nil)
            }

            // clear temporary files
            //: try? FileManager.default.removeItem(atPath: downloadPath)
            try? FileManager.default.removeItem(atPath: downloadPath)
            //: try? FileManager.default.removeItem(atPath: unzipVerifyDir)
            try? FileManager.default.removeItem(atPath: unzipVerifyDir)
        }
    }

    //: func deleteFolder(path: String) ->Bool {
    func ambages(path: String) -> Bool {
        //: if cleanFolder(path: path) {
        if detailPath(path: path) {
            //: try? FileManager.default.removeItem(atPath: path)
            try? FileManager.default.removeItem(atPath: path)
            //: return true
            return true
        }
        //: return false
        return false
    }

    //: func cleanFolder(path: String) ->Bool {
    func detailPath(path: String) -> Bool {
        //: let directory = FileManager.default.enumerator(atPath: path)
        let directory = FileManager.default.enumerator(atPath: path)
        //: if  directory == nil {
        if directory == nil {
            //: return false
            return false
        }
        //: var  filePath = ""
        var filePath = ""
        //: while  directory?.nextObject() != nil {
        while directory?.nextObject() != nil {
            //: filePath = directory?.nextObject() as! String
            filePath = directory?.nextObject() as! String
            //: try? FileManager.default.removeItem(atPath: (path as NSString).appendingPathComponent(filePath))
            try? FileManager.default.removeItem(atPath: (path as NSString).appendingPathComponent(filePath))
        }

        //: return true
        return true
    }

    //: func giftTypeIdentifier(type: TalkingAnimatType) ->String {
    func backgroundEqual(type: JoinBasicType) -> String {
        //: var tmpIdentify = ""
        var tmpIdentify = ""
        //: switch type {
        switch type {
        //: case .Gift:     tmpIdentify =  "gift"
        case .Gift: tmpIdentify = (kPhotoTitle.replacingOccurrences(of: "child", with: "g"))
        //: break
        //: default:
        default:
            //: break
            break
        }

        //: return tmpIdentify
        return tmpIdentify
    }

    //: func downloadTmpPath(model: TalkingAnimatMsgModel) ->String {
    func upTouchTime(model: DisappearMsgModel) -> String {
        //: let downloadTmpPath       = String.init(format: "%@%@effect_%ld", NSTemporaryDirectory(), giftTypeIdentifier(type: model.effectType), (model.eid))
        let downloadTmpPath = String(format: (k_customLevelFormat.replacingOccurrences(of: "app", with: "@") + "effe" + String(k_travelRowKey.suffix(6))), NSTemporaryDirectory(), backgroundEqual(type: model.effectType), model.eid)
        //: return downloadTmpPath
        return downloadTmpPath
    }

    //: func unzipVerifyDirectory(model: TalkingAnimatMsgModel)->String {
    func duringViewMargin(model: DisappearMsgModel) -> String {
        //: let unzipVerifyDirectory = String.init(format: "%@%@effect_%ld_unzipTest/", NSTemporaryDirectory(), giftTypeIdentifier(type: model.effectType), (model.eid))
        let unzipVerifyDirectory = String(format: (String(kEdgePath) + String(kKindTitle)), NSTemporaryDirectory(), backgroundEqual(type: model.effectType), model.eid)
        //: return unzipVerifyDirectory
        return unzipVerifyDirectory
    }

    //: func unzipTmpDirectory(model: TalkingAnimatMsgModel)->String {
    func goOverTeam(model: DisappearMsgModel) -> String {
        //: let unzipTmpDirectory    = String.init(format: "%@%@effect_%ld_unzip/", NSTemporaryDirectory(), giftTypeIdentifier(type: model.effectType), (model.eid))
        let unzipTmpDirectory = String(format: (String(kTitleStr) + String(k_videoPath.prefix(2))), NSTemporaryDirectory(), backgroundEqual(type: model.effectType), model.eid)
        //: return unzipTmpDirectory
        return unzipTmpDirectory
    }
}
