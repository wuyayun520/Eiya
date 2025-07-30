
//: Declare String Begin

/*: ".wav" :*/
fileprivate let kStatusMsg:String = ".wavimage cell let"

/*: "Documents/User/voice/" :*/
fileprivate let k_pathFormat:String = "equal color equal inDocu"
fileprivate let k_touchValue:String = "self system toolments/"
fileprivate let kStyleMsg:String = "for to count imagevoice/"

/*: "Documents/User/record/" :*/
fileprivate let kColorData:String = "Doculet in text manage"
fileprivate let k_withMessage:String = "name lets/Use"
fileprivate let kSearchedMsg:[Character] = ["r","/","r","e","c","o","r","d","/"]

/*: "voice dataTaskDownloadFinish" :*/
fileprivate let k_rowTitle:String = "voicreply"
fileprivate let k_showStr:String = "let manager activity self stringaTaskD"
fileprivate let k_endTitle:String = "group block celloadF"
fileprivate let k_shareValue:[Character] = ["h"]

/*: "voice dataTaskDownloadCancel" :*/
fileprivate let k_taskTempContent:[Character] = ["v","o","i","c","e"," ","d","a"]
fileprivate let kSectionLoadData:String = "index equaltaTaskD"
fileprivate let kPlayerId:String = "ownviewa"

/*: "voice dataTaskDownloadExpired" :*/
fileprivate let k_infoMessage:[Character] = ["v","o","i","c","e"," ","d","a","t","a","T","a","s","k","D","o","w","n","l"]
fileprivate let k_cellUrl:String = "mode superoadExp"

/*: "voice dataTaskDownloadErro" :*/
fileprivate let kWindowStr:[Character] = ["v","o","i","c","e"," ","d","a","t","a","T","a","s","k","D","o","w","n"]
fileprivate let k_modeCurValue:String = "color gift image gift capacityloadErro"

/*: "Play Error,File does not exist" :*/
fileprivate let kThePath:String = "Play Eself log outer in"
fileprivate let kPicMsg:String = "in type scale,Fil"
fileprivate let kNowStr:String = "es ncell info"
fileprivate let k_downData:String = "ot existcenter to"

/*: "Play Error,File expired" :*/
fileprivate let kSucceedId:String = "info text voice statusPlay E"
fileprivate let k_viewData:String = ",Fileobserver self value"
fileprivate let kHeadData:String = "ED"

/*: "Play Error，Net error" :*/
fileprivate let k_hiddenFormat:String = "text varPlay"
fileprivate let k_nowMsg:String = "make true，Net"
fileprivate let k_bubbleManagerData:[Character] = [" ","e","r","r","o","r"]

/*: "Currently in mute mode" :*/
fileprivate let k_acrossMessage:String = "return time request chinCurr"
fileprivate let k_areaStr:String = "type back user viewin m"
fileprivate let k_bottomPath:[Character] = ["o","d","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CommonManagerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/10.
//

//: import UIKit
import UIKit

/// 播放器状态
//: enum AudioMsgPlayStatus {
enum IncidentalPlayStatus {
    //: case Unknown
    case Unknown // 未开始
    //: case Waiting
    case Waiting // 等待中
    //: case Playing
    case Playing // 播放中
}

//: enum AudioPlayingErrorStatus: Int {
enum SizePropertyProtocol: Int {
    //: case AudioPlayerNil = 0
    case AudioPlayerNil = 0 // audioPlayer初始化失败，多半是路径下文件的问题
    //: case FileExpired = 1
    case FileExpired = 1 // 文件过期
    //: case TaskError = 2
    case TaskError = 2 // 下载报错
    //: case NotFileAtPath = 3
    case NotFileAtPath = 3 // 路径下文件不存在
    //: case FirstMuteTip = 100
    case FirstMuteTip = 100 // 静音提醒
}

//: class TalkingVoiceMsgPlayManager: NSObject {
class CommonManagerDelegate: NSObject {
    //: static let shared = TalkingVoiceMsgPlayManager()
    static let shared = CommonManagerDelegate()

    //: var  voiceDataList: [TalkingVoiceMsgPlayModel] = []
    var voiceDataList: [KeyPullReactiveCompatible] = []

    //: var playItemDic: Dictionary<String, TalkingVoiceMsgPlayModel> = [:]
    var playItemDic: [String: KeyPullReactiveCompatible] = [:]

    //: var audioPlayer: AVAudioPlayer?
    var audioPlayer: AVAudioPlayer?
    //: var playStatus: AudioMsgPlayStatus = .Unknown
    var playStatus: IncidentalPlayStatus = .Unknown
    //: var playIndex = 0
    var playIndex = 0 // 当前播放的下标
    //: var waitPlayID = ""   // 将要播放的主键id
    var waitPlayID = "" // 将要播放的主键id
    //: var clickCellId = ""   // 记录点击的
    var clickCellId = "" // 记录点击的
    //: var isMute = false
    var isMute = false // 是否静音，默认否

    //: private let multiDelegate: NSHashTable<AnyObject> = NSHashTable.weakObjects()
    private let multiDelegate: NSHashTable<AnyObject> = NSHashTable.weakObjects()

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: initialization()
        inputTask()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    //: func initialization() {
    func inputTask() {
        //: self.voiceDataList.removeAll()
        self.voiceDataList.removeAll()
        //: self.playItemDic.removeAll()
        self.playItemDic.removeAll()
        //: self.playIndex = 0
        self.playIndex = 0
    }
}

//: extension TalkingVoiceMsgPlayManager {
extension CommonManagerDelegate {
    //: func stopAudioPlayer() {
    func appMedium() {
        //: if playStatus != .Unknown {
        if playStatus != .Unknown {
            //: for  model in voiceDataList {
            for model in voiceDataList {
                //: model.isPlayingStatus = 2
                model.isPlayingStatus = 2
                //: model.activityShowStatus = 2
                model.activityShowStatus = 2
            }
        }
        //: if self.audioPlayer != nil {
        if self.audioPlayer != nil {
            //: self.audioPlayer?.stop()
            self.audioPlayer?.stop()
            //: self.audioPlayer = nil
            self.audioPlayer = nil
        }
    }

    /// 播放引用消息
    //: func starPlayReplyMsg(playModel: TalkingVoiceMsgPlayModel) {
    func everyPlay(playModel: KeyPullReactiveCompatible) {
        //: stopAudioPlayer()
        appMedium()
        //: initialization()
        inputTask()
        //: voiceDataList.append(playModel)
        voiceDataList.append(playModel)
        //: let status = Int(playModel.db_voiceCacheWrap.downloadStatus)
        let status = Int(playModel.db_voiceCacheWrap.downloadStatus)
        //: waitPlayID = playModel.db_voiceCacheWrap.msgId
        waitPlayID = playModel.db_voiceCacheWrap.msgId
        //: self.playItemDic[playModel.db_voiceCacheWrap.msgId] = playModel
        self.playItemDic[playModel.db_voiceCacheWrap.msgId] = playModel
        //: let dbFilePath = playModel.db_voiceCacheWrap.db_filePath
        let dbFilePath = playModel.db_voiceCacheWrap.db_filePath
        //: if status == DownloadTaskStatus.finish.rawValue ||
        if status == AppComparable.finish.rawValue ||
            //: !dbFilePath.isEmpty && dbFilePath.hasSuffix(".wav")  {
            !dbFilePath.isEmpty && dbFilePath.hasSuffix((String(kStatusMsg.prefix(4))))
        {
            //: starPlayVoiceMsg(filePath: playModel.db_voiceCacheWrap.db_filePath, msgID: playModel.db_voiceCacheWrap.msgId)
            variableStar(filePath: playModel.db_voiceCacheWrap.db_filePath, msgID: playModel.db_voiceCacheWrap.msgId)
            //: } else {
        } else {
            //: let taskModel = VoiceDownloadTaskModel.getVoiceModel(playModel.db_voiceCacheWrap)
            let taskModel = ViewStreamThen.copernicanSystem(playModel.db_voiceCacheWrap)
            //: VoiceDownloadTaskManager.shared.addDownloadTasks([taskModel])
            PlayerSessionDelegate.shared.tasks([taskModel])
        }
    }

    //: func starPlayMsg(msgArr: [TalkingVoiceMsgPlayModel]) {
    func dayArr(msgArr: [KeyPullReactiveCompatible]) {
        //: if msgArr.count == 0 {
        if msgArr.count == 0 {
            //: return
            return
        }
        //: stopAudioPlayer()
        appMedium()
        //: initialization()
        inputTask()
        //: voiceDataList += msgArr
        voiceDataList += msgArr
        //: var index = 0
        var index = 0
        //: var tempArray: [VoiceDownloadTaskModel] = []
        var tempArray: [ViewStreamThen] = []
        //: var firstModel: TalkingVoiceMsgPlayModel?
        var firstModel: KeyPullReactiveCompatible?
        //: for model in msgArr {
        for model in msgArr {
            //: let bindWrap = WCDBVoiceMsgTable.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
            let bindWrap = BearEnableMsgTable.sharedMini(with: model.db_voiceCacheWrap.msgId)
            //: if bindWrap != nil {
            if bindWrap != nil {
                //: model.db_voiceCacheWrap = bindWrap!
                model.db_voiceCacheWrap = bindWrap!
            }
            //: let isMySend = (model.db_voiceCacheWrap.db_senduid == DistanceAppManager.share.loginUserMode.userID)
            let isMySend = (model.db_voiceCacheWrap.db_senduid == DistanceAppManager.share.loginUserMode.userID)
            //: self.playItemDic[model.db_voiceCacheWrap.msgId] = model
            self.playItemDic[model.db_voiceCacheWrap.msgId] = model
            //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
            let status = Int(model.db_voiceCacheWrap.downloadStatus)
            //: if index == 0 {
            if index == 0 {
                //: waitPlayID = model.db_voiceCacheWrap.msgId
                waitPlayID = model.db_voiceCacheWrap.msgId
                //: if status == DownloadTaskStatus.finish.rawValue || isMySend {
                if status == AppComparable.finish.rawValue || isMySend {
                    //: firstModel = model
                    firstModel = model
                }
                //: if (status != DownloadTaskStatus.finish.rawValue) {
                if status != AppComparable.finish.rawValue {
                    //: if playStatus != .Unknown {
                    if playStatus != .Unknown {
                        //: model.activityShowStatus = 1
                        model.activityShowStatus = 1
                    }
                }
            }
            //: if status != DownloadTaskStatus.finish.rawValue && !isMySend {
            if status != AppComparable.finish.rawValue, !isMySend {
                //: let taskModel = VoiceDownloadTaskModel.getVoiceModel(model.db_voiceCacheWrap)
                let taskModel = ViewStreamThen.copernicanSystem(model.db_voiceCacheWrap)
                //: tempArray.append(taskModel)
                tempArray.append(taskModel)
            }
            //: index += 1
            index += 1
        }

        //: if firstModel != nil {
        if firstModel != nil {
            //: firstModel?.isPlayingStatus = 1
            firstModel?.isPlayingStatus = 1
            //: starPlayVoiceMsg(filePath: (firstModel?.db_voiceCacheWrap.db_filePath)!, msgID: (firstModel?.db_voiceCacheWrap.msgId)!)
            variableStar(filePath: (firstModel?.db_voiceCacheWrap.db_filePath)!, msgID: (firstModel?.db_voiceCacheWrap.msgId)!)
        }
        //: VoiceDownloadTaskManager.shared.addDownloadTasks(tempArray)
        PlayerSessionDelegate.shared.tasks(tempArray)
    }

    //: func starPlayVoiceMsg(filePath: String, msgID: String) {
    func variableStar(filePath: String, msgID: String) {
        //: if self.audioPlayer != nil {
        if self.audioPlayer != nil {
            //: self.audioPlayer?.stop()
            self.audioPlayer?.stop()
            //: self.audioPlayer = nil
            self.audioPlayer = nil
        }
        //: let model = self.playItemDic[msgID]
        let model = self.playItemDic[msgID]
        //: if model == nil {
        if model == nil {
            //: return
            return
        }
        //: var temfilePath = filePath
        var temfilePath = filePath
        //: let theFileName = (temfilePath as NSString).lastPathComponent
        let theFileName = (temfilePath as NSString).lastPathComponent

        // 重编译，相对路径会变
        //: if filePath.contains("Documents/User/voice/") {
        if filePath.contains((String(k_pathFormat.suffix(4)) + String(k_touchValue.suffix(6)) + "User/" + String(kStyleMsg.suffix(6)))) {
            //: temfilePath = Talking_Chat_voice_SandboxPath + theFileName
            temfilePath = show_bottomGameValue + theFileName
        }
        //: if filePath.contains("Documents/User/record/") {
        if filePath.contains((String(kColorData.prefix(4)) + "ment" + String(k_withMessage.suffix(5)) + String(kSearchedMsg))) {
            //: temfilePath = Talking_Chat_record_SandboxPath + theFileName
            temfilePath = user_methodData + theFileName
        }
        //: if !FileManager.fileManager.fileExists(atPath: temfilePath) {
        if !FileManager.fileManager.fileExists(atPath: temfilePath) {
            //: model?.isPlayingStatus = 2
            model?.isPlayingStatus = 2
            //: showToast(status: .NotFileAtPath)
            service(status: .NotFileAtPath)
            //: return
            return
        }
        //: model?.db_voiceCacheWrap.db_isRead = "1"
        model?.db_voiceCacheWrap.db_isRead = "1"
        //: WCDBVoiceMsgTable.db_updateVoiceMsg(model!.db_voiceCacheWrap)
        BearEnableMsgTable.showVoice(model!.db_voiceCacheWrap)
        //: let session = AVAudioSession.sharedInstance()
        let session = AVAudioSession.sharedInstance()
        //: do {
        do {
            //: try session.setCategory(AVAudioSession.Category.ambient)
            try session.setCategory(AVAudioSession.Category.ambient)
            //: } catch {
        } catch {}
        //: let url = URL.init(fileURLWithPath: temfilePath)
        let url = URL(fileURLWithPath: temfilePath)
        //: do {
        do {
            //: try audioPlayer = AVAudioPlayer.init(contentsOf: url)
            try audioPlayer = AVAudioPlayer(contentsOf: url)
            //: } catch {
        } catch {}
        //: audioPlayer?.delegate = self
        audioPlayer?.delegate = self
        //: audioPlayer?.prepareToPlay()
        audioPlayer?.prepareToPlay()
        //: audioPlayer?.play()
        audioPlayer?.play()
        //: self.playStatus = .Playing
        self.playStatus = .Playing
        //: setMutedDetection()
        snapDetection()
    }

    //: func addDaskManagerDelegate() {
    func barDelegate() {
        //: stopAudioPlayer()
        appMedium()
        //: VoiceDownloadTaskManager.shared.delegate = self
        PlayerSessionDelegate.shared.delegate = self
    }

    //: func removeDaskManagerDelegate() {
    func arrayDelegate() {
        //: stopAudioPlayer()
        appMedium()
        //: VoiceDownloadTaskManager.shared.delegate = nil
        PlayerSessionDelegate.shared.delegate = nil
    }
}

//: extension TalkingVoiceMsgPlayManager: AVAudioPlayerDelegate {
extension CommonManagerDelegate: AVAudioPlayerDelegate {
    //: func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
    func audioPlayerDidFinishPlaying(_: AVAudioPlayer, successfully flag: Bool) {
        //: let lastModel = voiceDataList[playIndex]
        let lastModel = voiceDataList[playIndex]
        //: lastModel.isPlayingStatus = 2
        lastModel.isPlayingStatus = 2
        //: if flag {
        if flag {
            //: if playIndex < voiceDataList.count - 1 {
            if playIndex < voiceDataList.count - 1 {
                //: playIndex += 1
                playIndex += 1
                //: let model = voiceDataList[playIndex]
                let model = voiceDataList[playIndex]
                //: let bindWrap = WCDBVoiceMsgTable.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
                let bindWrap = BearEnableMsgTable.sharedMini(with: model.db_voiceCacheWrap.msgId)
                //: if bindWrap != nil {
                if bindWrap != nil {
                    //: model.db_voiceCacheWrap = bindWrap!
                    model.db_voiceCacheWrap = bindWrap!
                    //: self.waitPlayID = bindWrap!.msgId
                    self.waitPlayID = bindWrap!.msgId
                }
                //: voiceDataList[playIndex] = model
                voiceDataList[playIndex] = model
                //: self.playItemDic[model.db_voiceCacheWrap.msgId] = model
                self.playItemDic[model.db_voiceCacheWrap.msgId] = model

                //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
                let status = Int(model.db_voiceCacheWrap.downloadStatus)
                //: if status == DownloadTaskStatus.finish.rawValue {
                if status == AppComparable.finish.rawValue {
                    //: model.isPlayingStatus = 1
                    model.isPlayingStatus = 1
                    //: starPlayVoiceMsg(filePath: model.db_voiceCacheWrap.db_filePath, msgID: model.db_voiceCacheWrap.msgId)
                    variableStar(filePath: model.db_voiceCacheWrap.db_filePath, msgID: model.db_voiceCacheWrap.msgId)
                    //: playStatus = .Waiting
                    playStatus = .Waiting
                    //: } else if (status == DownloadTaskStatus.error.rawValue) {
                } else if status == AppComparable.error.rawValue {
                    //: self.showToast(status: .TaskError)
                    self.service(status: .TaskError)
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                    //: } else if (status == DownloadTaskStatus.expired.rawValue) {
                } else if status == AppComparable.expired.rawValue {
                    //: self.showToast(status: .FileExpired)
                    self.service(status: .FileExpired)
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                    //: } else if (status == DownloadTaskStatus.cancel.rawValue) {
                } else if status == AppComparable.cancel.rawValue {
                    //: playStatus = .Unknown
                    playStatus = .Unknown
                }

                //: } else {
            } else {
                //: playStatus = .Unknown
                playStatus = .Unknown
                //: stopAudioPlayer()
                appMedium()
            }
        }
    }

    //: func audioPlayerDecodeErrorDidOccur(_ player: AVAudioPlayer, error: Error?) {
    func audioPlayerDecodeErrorDidOccur(_: AVAudioPlayer, error: Error?) {
        //: printLog(message: error)
        printLog(message: error)
    }
}

// MARK: - StackObjectProtocol

//: extension TalkingVoiceMsgPlayManager: VoiceDownloadTaskManagerDelegate {
extension CommonManagerDelegate: StackObjectProtocol {
    //: func voiceDownloadFinish(model: VoiceDownloadTaskModel) {
    func render(model: ViewStreamThen) {
        //: printLog(message: "voice dataTaskDownloadFinish")
        printLog(message: (k_rowTitle.replacingOccurrences(of: "reply", with: "e") + " dat" + String(k_showStr.suffix(6)) + "ownl" + String(k_endTitle.suffix(4)) + "inis" + String(k_shareValue)))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        delegatePath(taskModel: model)
    }

    //: func voiceDownloadCancel(model: VoiceDownloadTaskModel) {
    func exaggerateMessage(model: ViewStreamThen) {
        //: printLog(message: "voice dataTaskDownloadCancel")
        printLog(message: (String(k_taskTempContent) + String(kSectionLoadData.suffix(7)) + kPlayerId.replacingOccurrences(of: "view", with: "lo") + "dCancel"))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        delegatePath(taskModel: model)
    }

    //: func voiceDownloadExpired(model: VoiceDownloadTaskModel) {
    func black(model: ViewStreamThen) {
        //: printLog(message: "voice dataTaskDownloadExpired")
        printLog(message: (String(k_infoMessage) + String(k_cellUrl.suffix(6)) + "ired"))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        delegatePath(taskModel: model)
    }

    //: func voiceDownloading(model: VoiceDownloadTaskModel) {
    func overContent(model _: ViewStreamThen) {}

    //: func voiceDownloadError(model: VoiceDownloadTaskModel) {
    func usufructuaryModel(model: ViewStreamThen) {
        //: printLog(message: "voice dataTaskDownloadErro")
        printLog(message: (String(kWindowStr) + String(k_modeCurValue.suffix(8))))
        //: handleDataTaskDownloadDelegate(taskModel: model)
        delegatePath(taskModel: model)
    }

    //: func handleDataTaskDownloadDelegate(taskModel: VoiceDownloadTaskModel) {
    func delegatePath(taskModel: ViewStreamThen) {
        //: if voiceDataList.count  == 0 {
        if voiceDataList.count == 0 {
            //: return
            return
        }

        //: if self.waitPlayID == taskModel.taskId {
        if self.waitPlayID == taskModel.taskId {
            //: let model = self.voiceDataList[playIndex]
            let model = self.voiceDataList[playIndex]
            //: let warp = WCDBVoiceMsgTable.db_getVoiceMsg(with: model.db_voiceCacheWrap.msgId)
            let warp = BearEnableMsgTable.sharedMini(with: model.db_voiceCacheWrap.msgId)
            //: if warp != nil {
            if warp != nil {
                //: model.db_voiceCacheWrap = warp!
                model.db_voiceCacheWrap = warp!
            }
            //: let status = Int(model.db_voiceCacheWrap.downloadStatus)
            let status = Int(model.db_voiceCacheWrap.downloadStatus)
            //: if status == DownloadTaskStatus.finish.rawValue {
            if status == AppComparable.finish.rawValue {
                //: model.isPlayingStatus = 1
                model.isPlayingStatus = 1
                //: starPlayVoiceMsg(filePath: taskModel.unZipFilePath, msgID: model.db_voiceCacheWrap.msgId)
                variableStar(filePath: taskModel.unZipFilePath, msgID: model.db_voiceCacheWrap.msgId)

                //: } else if status == DownloadTaskStatus.error.rawValue ||
            } else if status == AppComparable.error.rawValue ||
                //: status == DownloadTaskStatus.expired.rawValue ||
                status == AppComparable.expired.rawValue ||
                //: status == DownloadTaskStatus.cancel.rawValue {
                status == AppComparable.cancel.rawValue
            {
                //: playStatus = .Unknown
                playStatus = .Unknown
                //: model.isPlayingStatus = 2
                model.isPlayingStatus = 2
                //: model.activityShowStatus = 2
                model.activityShowStatus = 2
                //: if status == DownloadTaskStatus.expired.rawValue {
                if status == AppComparable.expired.rawValue {
                    //: self.showToast(status: .FileExpired)
                    self.service(status: .FileExpired)
                    //: } else {
                } else {
                    //: self.showToast(status: .TaskError)
                    self.service(status: .TaskError)
                }
            }
            //: } else {
        } else {
            //: let warp = WCDBVoiceMsgTable.db_getVoiceMsg(with: taskModel.taskId)
            let warp = BearEnableMsgTable.sharedMini(with: taskModel.taskId)
            //: let model = self.playItemDic[taskModel.taskId]
            let model = self.playItemDic[taskModel.taskId]
            //: if warp != nil {
            if warp != nil {
                //: model?.db_voiceCacheWrap = warp!
                model?.db_voiceCacheWrap = warp!
            }
        }
    }

    //: func showToast(status: AudioPlayingErrorStatus) {
    func service(status: SizePropertyProtocol) {
        //: var toastStr = ""
        var toastStr = ""
        //: switch status {
        switch status {
        //: case .NotFileAtPath, .AudioPlayerNil:
        case .NotFileAtPath, .AudioPlayerNil:
            //: toastStr = "Play Error,File does not exist".localized
            toastStr = (String(kThePath.prefix(6)) + "rror" + String(kPicMsg.suffix(4)) + "e do" + String(kNowStr.prefix(4)) + String(k_downData.prefix(8))).localized
        //: break
        //: case .FileExpired:
        case .FileExpired:
            //: toastStr = "Play Error,File expired".localized
            toastStr = (String(kSucceedId.suffix(6)) + "rror" + String(k_viewData.prefix(5)) + " expir" + kHeadData.lowercased()).localized
        //: break
        //: case .TaskError:
        case .TaskError:
            //: toastStr = "Play Error，Net error".localized
            toastStr = (String(k_hiddenFormat.suffix(4)) + " Error" + String(k_nowMsg.suffix(4)) + String(k_bubbleManagerData)).localized
        //: break
        //: case .FirstMuteTip:
        case .FirstMuteTip:
            //: toastStr = "Currently in mute mode".localized
            toastStr = (String(k_acrossMessage.suffix(4)) + "ently " + String(k_areaStr.suffix(4)) + "ute m" + String(k_bottomPath)).localized
            //: break
        }

        //: if toastStr.isEmptyString == false {
        if toastStr.isEmptyString == false {
            //: self.func__showStatusBarErrorMsg(showMsg: toastStr)
            self.arcInfo(showMsg: toastStr)
        }
        //: if status.rawValue < 100 {
        if status.rawValue < 100 {
            //: stopAudioPlayer()
            appMedium()
        }
    }
}

//: extension TalkingVoiceMsgPlayManager {
extension CommonManagerDelegate {
    //: func setMutedDetection() {
    func snapDetection() {
        //: RBDMuteSwitch.shared.detectMuteSwitch()
        TouchThen.shared.placeTitle()
        //: RBDMuteSwitch.shared.isMutedBlock = { [weak self] mute in
        TouchThen.shared.isMutedBlock = { [weak self] mute in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.isMute = mute
            self.isMute = mute
            //: if self.isMute {
            if self.isMute {
                //: self.showToast(status: .FirstMuteTip)
                self.service(status: .FirstMuteTip)
            }
        }
    }
}
