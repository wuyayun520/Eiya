
//: Declare String Begin

/*: "CacheCompressVideo" :*/
fileprivate let k_buttonBorderId:String = "Cachekey transition value"
fileprivate let k_emptyPath:[Character] = ["e","s","s","V","i","d","e","o"]

/*: "/ :*/
fileprivate let k_libraryName:String = "view"

/*: .mp4" :*/
fileprivate let kShowAfterName:String = "make self cookie ya.mp4"

/*: "outputCut.mp4" :*/
fileprivate let k_requestMsg:String = "ogiftpu"

/*: .jpg" :*/
fileprivate let k_tabUserStr:String = ".jpgguidance stage"

/*: "outputCut.jpg" :*/
fileprivate let k_busyMessage:[Character] = ["o","u","t","p","u","t","C","u","t",".","j","p"]
fileprivate let kInfoMessage:[Character] = ["g"]

/*: "bucket" :*/
fileprivate let k_pageMsg:String = "bviewke"
fileprivate let k_directionMsg:[Character] = ["t"]

/*: "fileResource" :*/
fileprivate let kHiddenThenStr:String = "fiapp"
fileprivate let kQuantityNoData:[Character] = ["e","R","e","s","o","u","r","c","e"]

/*: "cos upload failed" :*/
fileprivate let k_makeData:[Character] = ["c","o","s"," ","u","p","l","o","a","d"]
fileprivate let kShowPath:[Character] = [" ","f"]
fileprivate let kTotalData:String = "AILED"

/*: "fileUrl" :*/
fileprivate let kTextMessage:[Character] = ["f","i","l","e","U"]
fileprivate let kCollectionToBuildKey:String = "contentl"

/*: "coverResource" :*/
fileprivate let k_theColorId:[Character] = ["c","o","v","e","r","R"]
fileprivate let kLabelId:String = "eindex"
fileprivate let k_makeMsg:String = "viewrce"

/*: "videoResource" :*/
fileprivate let k_videoTitle:[Character] = ["v","i","d","e","o","R","e","s","o","u","r","c","e"]

/*: "coverUrl" :*/
fileprivate let kListName:String = "coverUrlview for"

/*: "videoUrl" :*/
fileprivate let kAttachFrameFormat:String = "vtextde"

/*: "region" :*/
fileprivate let kRawName:[Character] = ["r","e","g","i","o","n"]

/*: "cos.accelerate.myqcloud.com" :*/
fileprivate let kFirstPath:String = "self name text elsecos.ac"
fileprivate let kColorUrl:[Character] = ["r","a","t","e",".","m","y","q","c","l","o","u","d",".","c","o","m"]

/*: "tmpSecretId" :*/
fileprivate let kImageStr:[Character] = ["t","m","p"]
fileprivate let kMakeData:String = "line path layer name touchSecr"

/*: "tmpSecretKey" :*/
fileprivate let k_timeOriginValue:String = "progress back to inputtmpSec"
fileprivate let kItemFormat:[Character] = ["r","e","t","K","e","y"]

/*: "sessionToken" :*/
fileprivate let kFaceContent:String = "sesskeyo"

/*: "startTime" :*/
fileprivate let k_dataMsg:[Character] = ["s","t","a","r"]
fileprivate let kEqualContent:[Character] = ["t","T","i","m","e"]

/*: "expiredTime" :*/
fileprivate let k_modelTitle:String = "pointpi"
fileprivate let k_errorEmptyName:String = "mview"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StartReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/10/31.
//

//: import QCloudCOSXML.QCloudCOSXMLTransfer
import QCloudCOSXML.QCloudCOSXMLTransfer
//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional
//: import UIKit
import UIKit

//: typealias MomentVideoBlock = (_ outputPath: String, _ coverPath: String) -> Void
typealias MomentVideoBlock = (_ outputPath: String, _ coverPath: String) -> Void

//: let CacheCompressVideoFile = "CacheCompressVideo"
let show_nameValue = (String(k_buttonBorderId.prefix(5)) + "Compr" + String(k_emptyPath))

//: class TalkingMomentVideoManager: NSObject {
class StartReactiveCompatible: NSObject {
    //: private var edit: TXVideoEditer?
    private var edit: TXVideoEditer?
    //: private var outputPath: String?
    private var outputPath: String?
    //: private var coverPath: String?
    private var coverPath: String?
    //: private var block: MomentVideoBlock?
    private var block: MomentVideoBlock?
    //: private var progressView: TalkingMomentCircleProgressView?
    private var progressView: DoingPublishProgressView?
    //: private var cosCredentialJson = JSON(["": ""])  // cos校验数据
    private var cosCredentialJson = JSON(["": ""]) // cos校验数据
    //: private var coverIsUpload = false
    private var coverIsUpload = false // 封面是否上传成功
    //: private var videoIsUpload = false
    private var videoIsUpload = false // 视频是否上传成功
    //: private var disposeBag = DisposeBag()
    private var disposeBag = DisposeBag()

    //: static let shared = TalkingMomentVideoManager()
    static let shared = StartReactiveCompatible()
    //: private override init() { super.init() }
    override private init() { super.init() }
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

// MARK: - Event

//: extension TalkingMomentVideoManager {
extension StartReactiveCompatible {
    /// 压缩视频
    /// - Parameters:
    ///   - videoInfo: 视频模型
    ///   - containerView: 进度条所在的容器【nil代表添加在window】
    ///   - saveDocuments: 是否保存到Documents【默认保存到tmp】
    ///   - completionHandler: 回调
    //: func compressVideo(videoInfo: TalkingVideoInfoModel,
    func diagonal(videoInfo: WithEqualTransformable,
                  //: containerView: UIView? = nil,
                  containerView: UIView? = nil,
                  //: saveDocuments: Bool = false,
                  saveDocuments: Bool = false,
                  //: completionHandler: @escaping MomentVideoBlock) {
                  completionHandler: @escaping MomentVideoBlock)
    {
        // 视频正在处理中，过滤重复压缩
        //: if self.progressView?.superview != nil { return }
        if self.progressView?.superview != nil { return }

        //: self.block = completionHandler
        self.block = completionHandler

        //: let param = TXPreviewParam()
        let param = TXPreviewParam()
        //: edit = TXVideoEditer(preview: param)
        edit = TXVideoEditer(preview: param)
        //: if videoInfo.needCut {
        if videoInfo.needCut {
            //: edit?.setCutFromTime(Float(videoInfo.fromTime), toTime: Float(videoInfo.toTime))
            edit?.setCutFromTime(Float(videoInfo.fromTime), toTime: Float(videoInfo.toTime))
        }
        //: let asset = AVAsset(url: URL(string: videoInfo.videoPath)!)
        let asset = AVAsset(url: URL(string: videoInfo.videoPath)!)
        //: edit?.setVideoAsset(asset)
        edit?.setVideoAsset(asset)
        //: edit?.setVideoBitrate(1500)
        edit?.setVideoBitrate(1500)
        //: edit?.generateDelegate = self
        edit?.generateDelegate = self
        //: if saveDocuments {
        if saveDocuments {
            //: outputPath = getOutputDocumentsPath().appending("/\(Date().timeIntervalSince1970).mp4")
            outputPath = makeShowObject().appending("/\(Date().timeIntervalSince1970)" + (String(kShowAfterName.suffix(4))))
            //: } else {
        } else {
            //: outputPath = NSTemporaryDirectory().appending("outputCut.mp4")
            outputPath = NSTemporaryDirectory().appending((k_requestMsg.replacingOccurrences(of: "gift", with: "ut") + "tCut.mp4"))
        }
        //: edit?.generateVideo(TXVideoCompressed.VIDEO_COMPRESSED_720P, videoOutputPath: outputPath!)
        edit?.generateVideo(TXVideoCompressed.VIDEO_COMPRESSED_720P, videoOutputPath: outputPath!)

        //: progressView = TalkingMomentCircleProgressView.init(frame: CGRect.init(x: 0, y: 0, width: 140, height: 140))
        progressView = DoingPublishProgressView(frame: CGRect(x: 0, y: 0, width: 140, height: 140))
        //: progressView?.show(superView: containerView)
        progressView?.tableOfTexts(superView: containerView)
    }

    /// 停止压缩视频
    //: func stopCompressVideo() {
    func response() {
        //: if self.progressView?.superview != nil {
        if self.progressView?.superview != nil {
            //: self.edit?.cancelGenerate()
            self.edit?.cancelGenerate()
            //: self.progressView?.removeFromSuperview()
            self.progressView?.removeFromSuperview()
        }
    }

    /// 获取压缩视频documents缓存路径
    /// - Returns: 缓存路径
    //: private func getOutputDocumentsPath() -> String {
    private func makeShowObject() -> String {
        //: let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let videoPath = (documentsPath as NSString).appendingPathComponent(CacheCompressVideoFile)
        let videoPath = (documentsPath as NSString).appendingPathComponent(show_nameValue)
        //: if FileManager.default.fileExists(atPath: videoPath) == false {
        if FileManager.default.fileExists(atPath: videoPath) == false {
            //: try? FileManager.default.createDirectory(atPath: videoPath, withIntermediateDirectories: true)
            try? FileManager.default.createDirectory(atPath: videoPath, withIntermediateDirectories: true)
        }

        //: return videoPath
        return videoPath
    }
}

// MARK: - TXVideoGenerateListener

//: extension TalkingMomentVideoManager: TXVideoGenerateListener {
extension StartReactiveCompatible: TXVideoGenerateListener {
    /// 压缩视频生成进度
    /// - Parameter progress: 生成视频进度百分比
    //: func onGenerateProgress(_ progress: Float) {
    func onGenerateProgress(_ progress: Float) {
        //: self.progressView?.progress = CGFloat(progress)
        self.progressView?.progress = CGFloat(progress)
    }

    /// 压缩视频生成完成
    /// - Parameter result: 生成结果
    //: func onGenerateComplete(_ result: TXGenerateResult) {
    func onGenerateComplete(_ result: TXGenerateResult) {
        //: if result.retCode == TXGenerateResultCode.GENERATE_RESULT_OK {
        if result.retCode == TXGenerateResultCode.GENERATE_RESULT_OK {
            //: let infoReader = TXVideoInfoReader.getVideoInfo(outputPath!)
            let infoReader = TXVideoInfoReader.getVideoInfo(outputPath!)
            //: if outputPath!.contains(CacheCompressVideoFile) {
            if outputPath!.contains(show_nameValue) { // 需要持久缓存
                //: coverPath = getOutputDocumentsPath().appending("/\(Date().timeIntervalSince1970).jpg")
                coverPath = makeShowObject().appending("/\(Date().timeIntervalSince1970)" + (String(k_tabUserStr.prefix(4))))
                //: } else {
            } else {
                //: coverPath = NSTemporaryDirectory().appending("outputCut.jpg")
                coverPath = NSTemporaryDirectory().appending((String(k_busyMessage) + String(kInfoMessage)))
            }
            //: let imageData = infoReader?.coverImage.compressedImageData() as? NSData
            let imageData = infoReader?.coverImage.compressedImageData() as? NSData
            //: imageData?.write(toFile: coverPath!, atomically: true)
            imageData?.write(toFile: coverPath!, atomically: true)

            //: if self.block != nil {
            if self.block != nil {
                //: self.block!(outputPath!, coverPath!)
                self.block!(outputPath!, coverPath!)
            }
        }

        //: self.progressView?.removeFromSuperview()
        self.progressView?.removeFromSuperview()
    }
}

// MARK: - 腾讯COS上传、下载

//: extension TalkingMomentVideoManager {
extension StartReactiveCompatible {
    /// COS日志上传
    /// - Parameters:
    ///   - filePath: 日志路径
    ///   - completion: 回调
    //: func cos_uploadLog(filePath: String, completion: @escaping (_ succeed: Bool, _ errorMsg: String?) -> Void) {
    func userCustom(filePath: String, completion: @escaping (_ succeed: Bool, _ errorMsg: String?) -> Void) {
        //: cos_inItConfig(type: 5) { succeed, msg in
        viewCompletion(type: 5) { succeed, msg in
            //: guard succeed else {
            guard succeed else {
                //: completion(false, msg)
                completion(false, msg)
                //: return
                return
            }

            // cos上传
            //: let put = QCloudCOSXMLUploadObjectRequest<AnyObject>()
            let put = QCloudCOSXMLUploadObjectRequest<AnyObject>()
            //: put.bucket = self.cosCredentialJson["bucket"].stringValue
            put.bucket = self.cosCredentialJson[(k_pageMsg.replacingOccurrences(of: "view", with: "uc") + String(k_directionMsg))].stringValue
            //: put.object = self.cosCredentialJson["fileResource"].stringValue
            put.object = self.cosCredentialJson[(kHiddenThenStr.replacingOccurrences(of: "app", with: "l") + String(kQuantityNoData))].stringValue
            //: put.body = NSURL.fileURL(withPath: filePath) as AnyObject
            put.body = NSURL.fileURL(withPath: filePath) as AnyObject
            //: put.setFinish { [weak self] (result, error) in
            put.setFinish { [weak self] _, error in
                //: guard error == nil else {
                guard error == nil else {
                    //: completion(false, "cos upload failed".localized)
                    completion(false, (String(k_makeData) + String(kShowPath) + kTotalData.lowercased()).localized)
                    //: return
                    return
                }
                //: guard let self = self else { return }
                guard let self = self else { return }
                // 上报后台
                //: TalkingMomentRequestTool.req_uploadLogPath(fileUrl: self.cosCredentialJson["fileUrl"].stringValue) { succeed, _, errorModel in
                TvThen.cardLike(fileUrl: self.cosCredentialJson[(String(kTextMessage) + kCollectionToBuildKey.replacingOccurrences(of: "content", with: "r"))].stringValue) { succeed, _, errorModel in
                    //: completion(succeed, errorModel?.errorMsg)
                    completion(succeed, errorModel?.errorMsg)
                }
            }
            //: QCloudCOSTransferMangerService.defaultCOSTransferManager().uploadObject(put)
            QCloudCOSTransferMangerService.defaultCOSTransferManager().uploadObject(put)
        }
    }

    /// COS 视频上传
    /// - Parameters:
    ///   - type: 1=动态，2=视频封面，3=私信视频
    ///   - coverPath: 封面本地路径
    ///   - videoPath: 视频本地路径
    ///   - completion: 回调
    //: func cos_uploadVideo(type: Int, coverPath: String, videoPath: String, completion: @escaping (_ coverUrl: String, _ videoUrl: String, _ succeed: Bool) -> Void) {
    func tv(type: Int, coverPath: String, videoPath: String, completion: @escaping (_ coverUrl: String, _ videoUrl: String, _ succeed: Bool) -> Void) {
        //: cos_inItConfig(type: type) { succeed, _ in
        viewCompletion(type: type) { succeed, _ in
            //: guard succeed else {
            guard succeed else {
                //: completion("", "", false)
                completion("", "", false)
                //: return
                return
            }

            // 上传
            //: let group = DispatchGroup()
            let group = DispatchGroup()
            //: for (index, path) in [coverPath, videoPath].enumerated() {
            for (index, path) in [coverPath, videoPath].enumerated() {
                //: group.enter()
                group.enter()
                //: DispatchQueue.global().async {
                DispatchQueue.global().async {
                    //: let put = QCloudCOSXMLUploadObjectRequest<AnyObject>()
                    let put = QCloudCOSXMLUploadObjectRequest<AnyObject>()
                    //: put.bucket = self.cosCredentialJson["bucket"].stringValue
                    put.bucket = self.cosCredentialJson[(k_pageMsg.replacingOccurrences(of: "view", with: "uc") + String(k_directionMsg))].stringValue
                    //: if index == 0 {
                    if index == 0 { // 封面
                        //: put.object = self.cosCredentialJson["coverResource"].stringValue
                        put.object = self.cosCredentialJson[(String(k_theColorId) + kLabelId.replacingOccurrences(of: "index", with: "s") + k_makeMsg.replacingOccurrences(of: "view", with: "ou"))].stringValue
                        //: } else {
                    } else { // 视频
                        //: put.object = self.cosCredentialJson["videoResource"].stringValue
                        put.object = self.cosCredentialJson[(String(k_videoTitle))].stringValue
                    }
                    //: put.body = NSURL.fileURL(withPath: path) as AnyObject
                    put.body = NSURL.fileURL(withPath: path) as AnyObject
                    //: put.setFinish { (result, error) in
                    put.setFinish { _, error in
                        //: if index == 0 {
                        if index == 0 { // 封面
                            //: self.coverIsUpload = (error == nil)
                            self.coverIsUpload = (error == nil)
                            //: } else {
                        } else { // 视频
                            //: self.videoIsUpload = (error == nil)
                            self.videoIsUpload = (error == nil)
                        }
                        //: group.leave()
                        group.leave()
                    }
                    //: QCloudCOSTransferMangerService.defaultCOSTransferManager().uploadObject(put)
                    QCloudCOSTransferMangerService.defaultCOSTransferManager().uploadObject(put)
                }
            }

            //: group.notify(queue: DispatchQueue.main) {
            group.notify(queue: DispatchQueue.main) {
                //: guard self.coverIsUpload == true, self.videoIsUpload == true else {
                guard self.coverIsUpload == true, self.videoIsUpload == true else {
                    //: completion("", "", false)
                    completion("", "", false)
                    //: return
                    return
                }
                // 上传成功
                //: completion(self.cosCredentialJson["coverUrl"].stringValue, self.cosCredentialJson["videoUrl"].stringValue, true)
                completion(self.cosCredentialJson[(String(kListName.prefix(8)))].stringValue, self.cosCredentialJson[(kAttachFrameFormat.replacingOccurrences(of: "text", with: "i") + "oUrl")].stringValue, true)
            }
        }
    }

    /// 初始化cos配置
    /// - Parameters:
    ///   - type: 1=动态，2=视频封面，3=私信视频，5=日志上传
    ///   - completion: 回调
    //: func cos_inItConfig(type: Int, completion: @escaping (_ isSucceed: Bool, _ errorMsg: String?) -> Void) {
    func viewCompletion(type: Int, completion: @escaping (_ isSucceed: Bool, _ errorMsg: String?) -> Void) {
        //: TalkingMomentRequestTool.req_getCredential(type: type) { succeed, result, errorModel in
        TvThen.tipCompletion(type: type) { succeed, result, errorModel in
            //: guard succeed else {
            guard succeed else {
                //: completion(false, errorModel?.errorMsg)
                completion(false, errorModel?.errorMsg)
                //: return
                return
            }
            //: guard let result = result as? [String: Any] else {
            guard let result = result as? [String: Any] else {
                //: completion(false, errorModel?.errorMsg)
                completion(false, errorModel?.errorMsg)
                //: return
                return
            }
            //: self.cosCredentialJson = JSON(result)
            self.cosCredentialJson = JSON(result)

            // 初始化 COS 服务示例
            //: let config = QCloudServiceConfiguration()
            let config = QCloudServiceConfiguration()
            //: config.signatureProvider = self
            config.signatureProvider = self
            //: let endpoint = QCloudCOSXMLEndPoint()
            let endpoint = QCloudCOSXMLEndPoint()
            //: endpoint.regionName = self.cosCredentialJson["region"].stringValue
            endpoint.regionName = self.cosCredentialJson[(String(kRawName))].stringValue
            //: if DistanceAppManager.share.appConfigMode.cosAccelerate {
            if DistanceAppManager.share.appConfigMode.cosAccelerate {
                //: endpoint.suffix = "cos.accelerate.myqcloud.com"
                endpoint.suffix = (String(kFirstPath.suffix(6)) + "cele" + String(kColorUrl))
            }
            //: config.endpoint = endpoint
            config.endpoint = endpoint
            //: QCloudCOSXMLService.registerDefaultCOSXML(with: config)
            QCloudCOSXMLService.registerDefaultCOSXML(with: config)
            //: QCloudCOSTransferMangerService.registerDefaultCOSTransferManger(with: config)
            QCloudCOSTransferMangerService.registerDefaultCOSTransferManger(with: config)

            //: completion(true, errorModel?.errorMsg)
            completion(true, errorModel?.errorMsg)
        }
    }
}

// MARK: - QCloudSignatureProvider

//: extension TalkingMomentVideoManager: QCloudSignatureProvider {
extension StartReactiveCompatible: QCloudSignatureProvider {
    //: func signature(with fileds: QCloudSignatureFields!, request: QCloudBizHTTPRequest!, urlRequest urlRequst: NSMutableURLRequest!, compelete continueBlock: QCloudHTTPAuthentationContinueBlock!) {
    func signature(with _: QCloudSignatureFields!, request _: QCloudBizHTTPRequest!, urlRequest urlRequst: NSMutableURLRequest!, compelete continueBlock: QCloudHTTPAuthentationContinueBlock!) {
        //: let credential = QCloudCredential.init()
        let credential = QCloudCredential()
        //: credential.secretID = cosCredentialJson["tmpSecretId"].stringValue
        credential.secretID = cosCredentialJson[(String(kImageStr) + String(kMakeData.suffix(4)) + "etId")].stringValue
        //: credential.secretKey = cosCredentialJson["tmpSecretKey"].stringValue
        credential.secretKey = cosCredentialJson[(String(k_timeOriginValue.suffix(6)) + String(kItemFormat))].stringValue
        //: credential.token = cosCredentialJson["sessionToken"].stringValue
        credential.token = cosCredentialJson[(kFaceContent.replacingOccurrences(of: "key", with: "i") + "nToken")].stringValue
        //: credential.startDate = Date(timeIntervalSince1970: TimeInterval(cosCredentialJson["startTime"].intValue))
        credential.startDate = Date(timeIntervalSince1970: TimeInterval(cosCredentialJson[(String(k_dataMsg) + String(kEqualContent))].intValue))
        //: credential.expirationDate = Date(timeIntervalSince1970: TimeInterval(cosCredentialJson["expiredTime"].intValue))
        credential.expirationDate = Date(timeIntervalSince1970: TimeInterval(cosCredentialJson[(k_modelTitle.replacingOccurrences(of: "point", with: "ex") + "redTi" + k_errorEmptyName.replacingOccurrences(of: "view", with: "e"))].intValue))
        //: let creator = QCloudAuthentationV5Creator.init(credential: credential)
        let creator = QCloudAuthentationV5Creator(credential: credential)
        //: let signature = creator?.signature(forData: urlRequst)
        let signature = creator?.signature(forData: urlRequst)
        //: continueBlock(signature, nil)
        continueBlock(signature, nil)
    }
}
