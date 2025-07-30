
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kManagerName:[UInt8] = [0xd8,0xdf,0xd8,0xc5,0x99,0xd2,0xde,0xd5,0xd4,0xc3,0x8b,0x98,0x91,0xd9,0xd0,0xc2,0x91,0xdf,0xde,0xc5,0x91,0xd3,0xd4,0xd4,0xdf,0x91,0xd8,0xdc,0xc1,0xdd,0xd4,0xdc,0xd4,0xdf,0xc5,0xd4,0xd5]

private func inFeature(age num: UInt8) -> UInt8 {
    return num ^ 177
}

/*: "btn_recording" :*/
fileprivate let kUserEffectPath:[Character] = ["b","t","n","_","r","e","c"]
fileprivate let kIconMediumIfFormat:String = "inside"
fileprivate let k_particleUrl:[Character] = ["r","d","i","n","g"]

/*: "btn_marching" :*/
fileprivate let kLineFilterId:String = "btn_mimage view list index button"

/*: "btn_upload" :*/
fileprivate let k_taskId:String = "photo makebtn_up"

/*: "btn_audition" :*/
fileprivate let k_shareTitle:[Character] = ["b","t","n","_","a"]
fileprivate let kMovePath:String = "uditiotop"

/*: "Click to listen" :*/
fileprivate let kTargetStr:String = "Clicback in"
fileprivate let kClickText:String = "listemanager"

/*: "Click to start recording" :*/
fileprivate let k_officialViewName:String = "clear center var front shareClic"
fileprivate let kWindowMsg:String = "self let app selftart r"
fileprivate let kSexTapValue:String = "ecordstallng"

/*: "00:00" :*/
fileprivate let k_appBlockEqualText:[Character] = ["0","0",":","0","0"]

/*: "brn_cycle" :*/
fileprivate let kUserData:String = "blayer"
fileprivate let k_listYouImportFormat:String = "hidden effect falsen_cycle"

/*: "Come back" :*/
fileprivate let kFromLabelText:String = "Comvar text view by"
fileprivate let kInfoMessage:[Character] = ["e"," ","b","a","c","k"]

/*: "btn_submit" :*/
fileprivate let kModelBarFormat:String = "btn_strue view image"
fileprivate let k_observerValue:String = "UBMIT"

/*: "Submit" :*/
fileprivate let k_coverId:String = "key make with in fieldSubmit"

/*: "Click to finish recording" :*/
fileprivate let k_bottomPath:String = "Clickelse share view make"
fileprivate let k_toImageFormat:String = "finipin"
fileprivate let kVideoId:String = "rdiview"

/*: "Under time" :*/
fileprivate let k_formatPath:[Character] = ["U","n","d","e","r"," ","t","i","m","e"]

/*: "Click to pause" :*/
fileprivate let k_centerValue:[Character] = ["C","l","i","c","k"," ","t","o"," ","p","a","u","s"]
fileprivate let k_dayText:[Character] = ["e"]

/*: "Click to play" :*/
fileprivate let k_colorMsg:[Character] = ["C","l","i"]
fileprivate let k_managerPath:[Character] = ["c","k"," ","t","o"," ","p","l","a","y"]

/*: "filePath" :*/
fileprivate let k_firstNoseId:[UInt8] = [0x58,0x57,0x52,0x5b,0x6e,0x5f,0x4a,0x56]

private func psychologicalFeatureHead(begin num: UInt8) -> UInt8 {
    return num ^ 62
}

/*: "time" :*/
fileprivate let k_managerTitle:[UInt8] = [0x2f,0x32,0x36,0x3e]

private func productText(touch num: UInt8) -> UInt8 {
    return num ^ 91
}

/*: "Recording cancelled" :*/
fileprivate let kMostColorPath:[Character] = ["R","e","c","o","r","d","i","n","g"," ","c","a"]
fileprivate let k_regularId:[Character] = ["n","c","e","l","l","e","d"]

/*: "get json error" :*/
fileprivate let k_pathButtonCopyName:String = "get jssize selected video push"
fileprivate let k_colorId:[Character] = ["o","n"," ","e","r","r","o","r"]

/*: "%02d:%02d" :*/
fileprivate let kTitlePath:String = "%0at"
fileprivate let k_currentUserTitle:String = "add bar userd:%02d"

/*: "btn_delete" :*/
fileprivate let kHourPageForPath:[Character] = ["b","t","n","_","d","e","l","e"]
fileprivate let kFromRawValue:String = "ttime"

/*: "Add voice message" :*/
fileprivate let kPositionTitle:[Character] = ["A","d","d"," ","v","o","i","c","e"," ","m","e"]
fileprivate let kOfTitle:String = "ssagsubmit"

/*: "Record a voice for 3-10s" :*/
fileprivate let kPiLabelStr:String = "Recobeauty shadow"
fileprivate let k_contentTitle:String = "oicvalid"
fileprivate let k_blockPath:String = "direction frame equal3-10s"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SingleToolDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/13.
//

//: import UIKit
import UIKit

//: enum RecordSoundStatus: Int {
enum SizeSocialStationInterval: Int {
    //: case Record = 100
    case Record = 100
    //: case Listen
    case Listen
    //: case Reset
    case Reset
    //: case Finish
    case Finish
}

//: enum RecordState: Int {
enum AgendumSignedCount: Int {
    //: case ReadyToRecord = 0
    case ReadyToRecord = 0 /// 准备录音
    //: case Recording
    case Recording /// 录音中
    //: case RecordComplete
    case RecordComplete /// 录音完成
    //: case RecordWaitReply
    case RecordWaitReply /// 录音审核中
    //: case RecordPassed
    case RecordPassed /// 录音审核通过
}

//: typealias AudioFileUpload = (_ info: Dictionary<String, Any>) -> Void
typealias AudioFileUpload = (_ info: [String: Any]) -> Void

//: class TalkingGreetRecordAudioView: UIView {
class SingleToolDelegate: UIView {
    //: var state: RecordState? = .ReadyToRecord
    var state: AgendumSignedCount? = .ReadyToRecord
    //: var didEnterBack = false
    var didEnterBack = false
    //: var tempTime = 0
    var tempTime = 0 /// 录音时长
    //: var filePath = ""
    var filePath = ""
    //: var audioFileUpload: AudioFileUpload?
    var audioFileUpload: AudioFileUpload?
    //: var popView: TalkingPopView?
    var popView: DataPopView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.clickFromBar()
        //: self.setupSubViewsConstraint()
        self.responseService()
        //: self.bindInteraction()
        self.brookName()
        //: NotificationCenter.default.addObserver(self, selector: #selector(appDidEnterBack), name: UIApplication.didEnterBackgroundNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(trunkBeanAsset), name: UIApplication.didEnterBackgroundNotification, object: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kManagerName.map{inFeature(age: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // 懒加载初始化

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var soundButton: UIButton = {
    lazy var soundButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "btn_recording"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kUserEffectPath) + kIconMediumIfFormat.replacingOccurrences(of: "inside", with: "o") + String(k_particleUrl))), for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "btn_recording"), for: .highlighted)
        btn.setImage(UIImage.submitGift(name: (String(kUserEffectPath) + kIconMediumIfFormat.replacingOccurrences(of: "inside", with: "o") + String(k_particleUrl))), for: .highlighted)
        //: btn.setImage(UIImage.submitGift(name: "btn_marching"), for: .selected)
        btn.setImage(UIImage.submitGift(name: (String(kLineFilterId.prefix(5)) + "arching")), for: .selected)
        //: btn.tag = RecordSoundStatus.Record.rawValue
        btn.tag = SizeSocialStationInterval.Record.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(addTo(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var listenButton: UIButton = {
    lazy var listenButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "btn_upload"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(k_taskId.suffix(6)) + "load")), for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "btn_audition"), for: .selected)
        btn.setImage(UIImage.submitGift(name: (String(k_shareTitle) + kMovePath.replacingOccurrences(of: "top", with: "n"))), for: .selected)
        //: btn.tag = RecordSoundStatus.Listen.rawValue
        btn.tag = SizeSocialStationInterval.Listen.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(addTo(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var listenLabel: UILabel = {
    lazy var listenLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.fontChange(type: .Regular, fontSize: 15)
        lb.font = UIFont.fontChange(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .childMenu()
        //: lb.text = "Click to listen".localized
        lb.text = (String(kTargetStr.prefix(4)) + "k to " + kClickText.replacingOccurrences(of: "manager", with: "n")).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var soundLabel: UILabel = {
    lazy var soundLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.fontChange(type: .Regular, fontSize: 17)
        lb.font = UIFont.fontChange(type: .Regular, fontSize: 17)
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .childMenu()
        //: lb.text = "Click to start recording".localized
        lb.text = (String(k_officialViewName.suffix(4)) + "k to s" + String(kWindowMsg.suffix(6)) + kSexTapValue.replacingOccurrences(of: "stall", with: "i")).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var timeLabel: UILabel = {
    lazy var timeLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.fontChange(type: .Medium, fontSize: 20)
        lb.font = UIFont.fontChange(type: .Medium, fontSize: 20)
        //: lb.textColor = .colorStatuteNameApp()
        lb.textColor = .colorStatuteNameApp()
        //: lb.text = "00:00"
        lb.text = (String(k_appBlockEqualText))
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var resetButton: UIButton = {
    lazy var resetButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "brn_cycle"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (kUserData.replacingOccurrences(of: "layer", with: "r") + String(k_listYouImportFormat.suffix(7)))), for: .normal)
        //: btn.tag = RecordSoundStatus.Reset.rawValue
        btn.tag = SizeSocialStationInterval.Reset.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(addTo(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var resetLabel: UILabel = {
    lazy var resetLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.fontChange(type: .Regular, fontSize: 15)
        lb.font = UIFont.fontChange(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .childMenu()
        //: lb.text = "Come back".localized
        lb.text = (String(kFromLabelText.prefix(3)) + String(kInfoMessage)).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var finishButton: UIButton = {
    lazy var finishButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "btn_submit"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kModelBarFormat.prefix(5)) + k_observerValue.lowercased())), for: .normal)
        //: btn.tag = RecordSoundStatus.Finish.rawValue
        btn.tag = SizeSocialStationInterval.Finish.rawValue
        //: btn.addTarget(self, action: #selector(soundButtonAction(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(addTo(sender:)), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishLabel: UILabel = {
    lazy var finishLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.fontChange(type: .Regular, fontSize: 15)
        lb.font = UIFont.fontChange(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .childMenu()
        //: lb.text = "Submit".localized
        lb.text = (String(k_coverId.suffix(6))).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var listenPlayer: SVGAPlayer = {
    lazy var listenPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var leftRecordPlayer: SVGAPlayer = {
    lazy var leftRecordPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var rightRecordPlayer: SVGAPlayer = {
    lazy var rightRecordPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: return player
        return player
        //: }()
    }()

    //: lazy var audioTool: TalkingAudioTool? = {
    lazy var audioTool: PopAtReactiveCompatible? = {
        //: let audioT = TalkingAudioTool.shared
        let audioT = PopAtReactiveCompatible.shared
        //: audioT.delegate = self
        audioT.delegate = self
        //: return audioT
        return audioT
        //: }()
    }()
}

//: extension TalkingGreetRecordAudioView {
extension SingleToolDelegate {
    //: func showUIViaState() {
    func largeness() {
        //: switch self.state {
        switch self.state {
        //: case .ReadyToRecord:
        case .ReadyToRecord:
            //: self.listenButton.isHidden = true
            self.listenButton.isHidden = true
            //: self.listenLabel.isHidden = true
            self.listenLabel.isHidden = true
            //: self.resetButton.isHidden = true
            self.resetButton.isHidden = true
            //: self.resetLabel.isHidden = true
            self.resetLabel.isHidden = true
            //: self.finishButton.isHidden = true
            self.finishButton.isHidden = true
            //: self.finishLabel.isHidden = true
            self.finishLabel.isHidden = true
            //: self.soundButton.isHidden = false
            self.soundButton.isHidden = false
            //: self.soundLabel.isHidden = false
            self.soundLabel.isHidden = false

        //: break
        //: case .Recording:
        case .Recording:
            //: break
            break
        //: case .RecordComplete:
        case .RecordComplete:
            //: self.soundButton.isHidden = true
            self.soundButton.isHidden = true
            //: self.soundLabel.isHidden = true
            self.soundLabel.isHidden = true
            //: self.resetButton.isHidden = false
            self.resetButton.isHidden = false
            //: self.resetLabel.isHidden = false
            self.resetLabel.isHidden = false
            //: self.finishButton.isHidden = false
            self.finishButton.isHidden = false
            //: self.finishLabel.isHidden = false
            self.finishLabel.isHidden = false
            //: self.listenButton.isHidden = false
            self.listenButton.isHidden = false
            //: self.listenLabel.isHidden = false
            self.listenLabel.isHidden = false
        //: break
        //: case .RecordWaitReply, .RecordPassed:
        case .RecordWaitReply, .RecordPassed:
            //: self.listenButton.isHidden = false
            self.listenButton.isHidden = false
            //: self.listenLabel.isHidden = false
            self.listenLabel.isHidden = false
            //: self.resetButton.isHidden = false
            self.resetButton.isHidden = false
            //: self.resetLabel.isHidden = false
            self.resetLabel.isHidden = false
            //: self.finishButton.isHidden = true
            self.finishButton.isHidden = true
            //: self.finishLabel.isHidden = true
            self.finishLabel.isHidden = true
            //: self.soundButton.isHidden = true
            self.soundButton.isHidden = true
            //: self.soundLabel.isHidden = true
            self.soundLabel.isHidden = true
        //: break
        //: default: break
        default: break
        }
    }

    //: func releaseSoundView() {
    func common() {
        //: self.audioTool?.delegate = nil
        self.audioTool?.delegate = nil
        //: self.audioTool?.stopRecord()
        self.audioTool?.closeRecord()
        //: stopPlay()
        stallList()
        //: self.audioTool?.destroy()
        self.audioTool?.independent()
        //: self.audioTool = nil
        self.audioTool = nil
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: func record() {
    func frontAdd() {
        //: leftRecordSVGAParser()
        leftRenderParser()
        //: rightRecordSVGAParser()
        microscopical()
        //: self.audioTool?.BeginRecord()
        self.audioTool?.teamGetMovingRecord()
        //: stopPlay()
        stallList()
        //: self.soundLabel.text = "Click to finish recording".localized
        self.soundLabel.text = (String(k_bottomPath.prefix(5)) + " to " + k_toImageFormat.replacingOccurrences(of: "pin", with: "s") + "h reco" + kVideoId.replacingOccurrences(of: "view", with: "ng")).localized
        //: self.state = .Recording
        self.state = .Recording
    }

    //: func stopRecord() {
    func highProfile() {
        //: self.soundButton.isSelected = false
        self.soundButton.isSelected = false
        //: self.leftRecordPlayer.stopAnimation()
        self.leftRecordPlayer.stopAnimation()
        //: self.rightRecordPlayer.stopAnimation()
        self.rightRecordPlayer.stopAnimation()
        //: self.audioTool?.stopRecord()
        self.audioTool?.closeRecord()

        //: if self.tempTime >= 3 {
        if self.tempTime >= 3 {
            //: self.state = .RecordComplete
            self.state = .RecordComplete
            //: showUIViaState()
            largeness()
            //: self.listenLabel.text = "Click to listen".localized
            self.listenLabel.text = (String(kTargetStr.prefix(4)) + "k to " + kClickText.replacingOccurrences(of: "manager", with: "n")).localized
            //: }else {
        } else {
            //: self.soundLabel.text = "Click to start recording".localized
            self.soundLabel.text = (String(k_officialViewName.suffix(4)) + "k to s" + String(kWindowMsg.suffix(6)) + kSexTapValue.replacingOccurrences(of: "stall", with: "i")).localized
            //: self.timeLabel.text = "00:00"
            self.timeLabel.text = (String(k_appBlockEqualText))
            //: self.state = .ReadyToRecord
            self.state = .ReadyToRecord
            //: self.func__showStatusBarErrorMsg(showMsg: "Under time".localized)
            self.arcInfo(showMsg: (String(k_formatPath)).localized)
        }
    }

    //: func play() {
    func storageMedium() {
        //: if filePath.count>1 {
        if filePath.count > 1 {
            //: self.audioTool?.play()
            self.audioTool?.rangeWindow()
            //: self.listenLabel.text = "Click to pause".localized
            self.listenLabel.text = (String(k_centerValue) + String(k_dayText)).localized
            //: listenSVGAParser()
            impression()
            //: }else {
        } else {
            //: tryToPlayRemoteAudio()
            distant()
        }
    }

    //: func stopPlay() {
    func stallList() {
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.audioTool?.stopPlay()
        self.audioTool?.languageUnit()
        //: var text = "Click to play".localized
        var text = (String(k_colorMsg) + String(k_managerPath)).localized
        //: if self.state == .RecordComplete {
        if self.state == .RecordComplete {
            //: text = "Click to listen".localized
            text = (String(kTargetStr.prefix(4)) + "k to " + kClickText.replacingOccurrences(of: "manager", with: "n")).localized
        }
        //: self.listenLabel.text = text
        self.listenLabel.text = text
    }

    //: func reset() {
    func flat() {
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.listenButton.isSelected = false
        self.listenButton.isSelected = false
        //: self.audioTool?.stopPlay()
        self.audioTool?.languageUnit()
        //: self.state = .ReadyToRecord
        self.state = .ReadyToRecord
        //: self.soundLabel.text = "Click to start recording".localized
        self.soundLabel.text = (String(k_officialViewName.suffix(4)) + "k to s" + String(kWindowMsg.suffix(6)) + kSexTapValue.replacingOccurrences(of: "stall", with: "i")).localized
        //: self.timeLabel.text = "00:00"
        self.timeLabel.text = (String(k_appBlockEqualText))

        //: showUIViaState()
        largeness()
    }

    //: func finish() {
    func medicinalDrugShow() {
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.listenButton.isSelected = false
        self.listenButton.isSelected = false
        //: self.listenPlayer.stopAnimation()
        self.listenPlayer.stopAnimation()
        //: self.audioTool?.stopPlay()
        self.audioTool?.languageUnit()
        //: self.listenLabel.text = "Click to listen".localized
        self.listenLabel.text = (String(kTargetStr.prefix(4)) + "k to " + kClickText.replacingOccurrences(of: "manager", with: "n")).localized
        //: if self.audioFileUpload != nil {
        if self.audioFileUpload != nil {
            //: let dict = ["filePath": self.filePath, "time": (self.tempTime).description]
            let dict = [String(bytes: k_firstNoseId.map{psychologicalFeatureHead(begin: $0)}, encoding: .utf8)!: self.filePath, String(bytes: k_managerTitle.map{productText(touch: $0)}, encoding: .utf8)!: (self.tempTime).description]
            //: self.audioFileUpload!(dict)
            self.audioFileUpload!(dict)
        }
    }

    //: func tryToPlayRemoteAudio() {
    func distant() {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            arcInfo(showMsg: appViewPingValue)
            //: self.listenButton.isSelected = false
            self.listenButton.isSelected = false
            //: return
            return
        }
        //: self.listenLabel.text = "Click to pause".localized
        self.listenLabel.text = (String(k_centerValue) + String(k_dayText)).localized
        //: listenSVGAParser()
        impression()
    }

    //: @objc func soundButtonAction(sender: UIButton) {
    @objc func addTo(sender: UIButton) {
        //: switch (sender.tag) {
        switch sender.tag {
        //: case RecordSoundStatus.Record.rawValue:
        case SizeSocialStationInterval.Record.rawValue:

            //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
            ToolThen.cellTact(true) { isOpen in
                //: guard isOpen == true else {
                guard isOpen == true else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                    self.arcInfo(showMsg: main_intimateName)
                    //: return
                    return
                }
                //: sender.isSelected = !sender.isSelected
                sender.isSelected = !sender.isSelected
                //: if (sender.isSelected) {
                if sender.isSelected {
                    //: guard !TalkingSocketManager.shared.isSpace else {
                    guard !ListSocketManager.shared.isSpace else {
                        //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                        self.arcInfo(showMsg: kTopReplaceHeightData)
                        //: sender.isSelected = false
                        sender.isSelected = false
                        //: return
                        return
                    }
                    //: self.record()
                    self.frontAdd()
                    //: }else {
                } else {
                    //: self.stopRecord()
                    self.highProfile()
                }
            }
            //: break

        //: case RecordSoundStatus.Listen.rawValue:
        case SizeSocialStationInterval.Listen.rawValue:
            //: sender.isSelected = !sender.isSelected
            sender.isSelected = !sender.isSelected
            //: if sender.isSelected {
            if sender.isSelected {
                //: self.play()
                self.storageMedium()
                //: }else {
            } else {
                //: self.stopPlay()
                self.stallList()
            }
                //: break

        //: case RecordSoundStatus.Reset.rawValue:
        case SizeSocialStationInterval.Reset.rawValue:
            //: reset()
            flat()
                //: break

        //: case RecordSoundStatus.Finish.rawValue:
        case SizeSocialStationInterval.Finish.rawValue:
            //: finish()
            medicinalDrugShow()
        //: break
        //: default:
        default:
            //: break
            break
        }
    }

    //: @objc func closeButtonAction() {
    @objc func viewTick() {
        //: stopPlay()
        stallList()
        //: dismiss()
        nameResultDismiss()
    }

    //: @objc func appDidEnterBack() {
    @objc func trunkBeanAsset() {
        //: if self.state != .Recording {
        if self.state != .Recording {
            //: return
            return
        }
        //: self.func__showStatusBarErrorMsg(showMsg: "Recording cancelled")
        self.arcInfo(showMsg: (String(kMostColorPath) + String(k_regularId)))
        //: self.didEnterBack = true
        self.didEnterBack = true
        //: self.soundButton.isSelected = false
        self.soundButton.isSelected = false
        //: self.leftRecordPlayer.stopAnimation()
        self.leftRecordPlayer.stopAnimation()
        //: self.rightRecordPlayer.stopAnimation()
        self.rightRecordPlayer.stopAnimation()
        //: self.audioTool?.stopRecord()
        self.audioTool?.closeRecord()

        //: self.soundLabel.text = "Click to start recording".localized
        self.soundLabel.text = (String(k_officialViewName.suffix(4)) + "k to s" + String(kWindowMsg.suffix(6)) + kSexTapValue.replacingOccurrences(of: "stall", with: "i")).localized
        //: self.timeLabel.text = "00:00"
        self.timeLabel.text = (String(k_appBlockEqualText))
        //: self.state = .ReadyToRecord
        self.state = .ReadyToRecord
        //: showUIViaState()
        largeness()
    }

    //: func show() {
    func musterOut() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = DataPopView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.smart(view: self)
        //: popView?.showInView(view: UserTextMacroDefine.getWindow())
        popView?.academePosition(view: UserTextMacroDefine.clearstoryNo())
    }

    //: func dismiss() {
    func nameResultDismiss() {
        //: releaseSoundView()
        common()
        //: popView?.dismissView()
        popView?.upView()
        //: popView = nil
        popView = nil
    }

    /// 试听动效
    //: func listenSVGAParser() {
    func impression() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Greet_Corrugated_Yellow)
            let url = VideoEffectTool.default.conType(type: .Greet_Corrugated_Yellow)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.listenPlayer.videoItem = videoItem
                self.listenPlayer.videoItem = videoItem
                //: self.listenPlayer.startAnimation()
                self.listenPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(k_pathButtonCopyName.prefix(6)) + String(k_colorId)))
        }
    }

    /// 录音动效
    //: func leftRecordSVGAParser() {
    func leftRenderParser() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Yellow)
            let url = VideoEffectTool.default.conType(type: .Chat_Record_Yellow)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.leftRecordPlayer.videoItem = videoItem
                self.leftRecordPlayer.videoItem = videoItem
                //: self.leftRecordPlayer.startAnimation()
                self.leftRecordPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(k_pathButtonCopyName.prefix(6)) + String(k_colorId)))
        }
    }

    ///
    //: func rightRecordSVGAParser() {
    func microscopical() {
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Yellow)
            let url = VideoEffectTool.default.conType(type: .Chat_Record_Yellow)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.rightRecordPlayer.videoItem = videoItem
                self.rightRecordPlayer.videoItem = videoItem
                //: self.rightRecordPlayer.startAnimation()
                self.rightRecordPlayer.startAnimation()
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(k_pathButtonCopyName.prefix(6)) + String(k_colorId)))
        }
    }
}

//: extension TalkingGreetRecordAudioView: TalkingAudioToolDelegate {
extension SingleToolDelegate: PitchDoingThen {
    /// 录音时间
    //: func func__recordTime(currentTime: Double) {
    func pull(currentTime: Double) {
        //: if currentTime > 10 {
        if currentTime > 10 {
            //: stopRecord()
            highProfile()
        }
        //: self.tempTime = Int(round(currentTime)) % 60
        self.tempTime = Int(round(currentTime)) % 60
        //: let currentTimeLabel = String.init(format: "%02d:%02d", Int(round(currentTime))/60, Int(round(currentTime))%60)
        let currentTimeLabel = String(format: "%02d:%02d", Int(round(currentTime)) / 60, Int(round(currentTime)) % 60)
        //: if self.tempTime > 10 {
        if self.tempTime > 10 {
            //: return
            return
        }
        //: self.timeLabel.text = currentTimeLabel
        self.timeLabel.text = currentTimeLabel
    }

    /// 播放时间
    //: func func__playTime(currentTime: Double) {
    func actual(currentTime: Double) {
        //: let currentTimeLabel = String.init(format: "%02d:%02d", Int(round(currentTime))/60, Int(round(currentTime))%60)
        let currentTimeLabel = String(format: "%02d:%02d", Int(round(currentTime)) / 60, Int(round(currentTime)) % 60)
        //: self.timeLabel.text = currentTimeLabel
        self.timeLabel.text = currentTimeLabel
    }

    /// 录音完毕的回调
    //: func func__recordFinishWithFile(filePath: String) {
    func thanPath(filePath: String) {
        //: if self.didEnterBack {
        if self.didEnterBack {
            //: self.didEnterBack = false
            self.didEnterBack = false
            //: return
            return
        }
        //: self.filePath = filePath
        self.filePath = filePath
        //: stopRecord()
        highProfile()
    }

    /// 播放完毕的回调
    //: func playerStatusChange(status: AudioPlayerStatus) {
    func listStatus(status: EquationViewSubscriptType) {
        //: self.timeLabel.text = ""
        self.timeLabel.text = ""
        //: if status == .PlayerFinish {
        if status == .PlayerFinish {
            //: self.audioTool?.finishPlay()
            self.audioTool?.zoneEqual()
            //: self.listenButton.isSelected = false
            self.listenButton.isSelected = false
            //: self.listenPlayer.stopAnimation()
            self.listenPlayer.stopAnimation()
            //: self.listenLabel.text = self.state == .RecordComplete ? "Click to listen".localized : "Click to play".localized
            self.listenLabel.text = self.state == .RecordComplete ? (String(kTargetStr.prefix(4)) + "k to " + kClickText.replacingOccurrences(of: "manager", with: "n")).localized : (String(k_colorMsg) + String(k_managerPath)).localized
            //: }else if status == .PlayerInterruption {
        } else if status == .PlayerInterruption {
            //: if self.filePath.count > 1 {
            if self.filePath.count > 1 {
                //: self.listenButton.isSelected = false
                self.listenButton.isSelected = false
                //: self.listenPlayer.stopAnimation()
                self.listenPlayer.stopAnimation()
                //: self.listenLabel.text = self.state == .RecordComplete ? "Click to listen".localized : "Click to play".localized
                self.listenLabel.text = self.state == .RecordComplete ? (String(kTargetStr.prefix(4)) + "k to " + kClickText.replacingOccurrences(of: "manager", with: "n")).localized : (String(k_colorMsg) + String(k_managerPath)).localized
            }
        }
    }
}

//: extension TalkingGreetRecordAudioView {
extension SingleToolDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func clickFromBar() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(soundButton)
        contentView.addSubview(soundButton)
        //: contentView.addSubview(listenButton)
        contentView.addSubview(listenButton)
        //: contentView.addSubview(soundLabel)
        contentView.addSubview(soundLabel)
        //: contentView.addSubview(listenLabel)
        contentView.addSubview(listenLabel)
        //: contentView.addSubview(timeLabel)
        contentView.addSubview(timeLabel)
        //: contentView.addSubview(resetButton)
        contentView.addSubview(resetButton)
        //: contentView.addSubview(resetLabel)
        contentView.addSubview(resetLabel)
        //: contentView.addSubview(finishButton)
        contentView.addSubview(finishButton)
        //: contentView.addSubview(finishLabel)
        contentView.addSubview(finishLabel)
        //: contentView.addSubview(listenPlayer)
        contentView.addSubview(listenPlayer)
        //: contentView.addSubview(leftRecordPlayer)
        contentView.addSubview(leftRecordPlayer)
        //: contentView.addSubview(rightRecordPlayer)
        contentView.addSubview(rightRecordPlayer)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func responseService() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 275), height: actualWidth(w: 313)))
            make.size.equalTo(CGSize(width: actualWidth(w: 275), height: actualWidth(w: 313)))
        }
        //: let closeBtn = UIButton.init()
        let closeBtn = UIButton()
        //: closeBtn.setImage(UIImage.submitGift(name: "btn_delete"), for: .normal)
        closeBtn.setImage(UIImage.submitGift(name: (String(kHourPageForPath) + kFromRawValue.replacingOccurrences(of: "time", with: "e"))), for: .normal)
        //: closeBtn.addTarget(self, action: #selector(closeButtonAction), for: .touchUpInside)
        closeBtn.addTarget(self, action: #selector(viewTick), for: .touchUpInside)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(11)
            make.top.equalTo(11)
            //: make.trailing.equalTo(-11)
            make.trailing.equalTo(-11)
            //: make.size.equalTo(CGSize.init(width: 18, height: 18))
            make.size.equalTo(CGSize(width: 18, height: 18))
        }

        //: let titleLb = UILabel.init()
        let titleLb = UILabel()
        //: titleLb.font = UIFont.fontChange(type: .Semibold, fontSize: 20)
        titleLb.font = UIFont.fontChange(type: .Semibold, fontSize: 20)
        //: titleLb.textColor = .colorStatuteNameApp()
        titleLb.textColor = .colorStatuteNameApp()
        //: titleLb.text = "Add voice message".localized
        titleLb.text = (String(kPositionTitle) + kOfTitle.replacingOccurrences(of: "submit", with: "e")).localized
        //: contentView.addSubview(titleLb)
        contentView.addSubview(titleLb)
        //: titleLb.snp.makeConstraints { make in
        titleLb.snp.makeConstraints { make in
            //: make.top.equalTo(30)
            make.top.equalTo(30)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: let explainLb = UILabel.init()
        let explainLb = UILabel()
        //: explainLb.font = UIFont.fontChange(type: .Regular, fontSize: 17)
        explainLb.font = UIFont.fontChange(type: .Regular, fontSize: 17)
        //: explainLb.textColor = .appValueDetailColor()
        explainLb.textColor = .childMenu()
        //: explainLb.text = "Record a voice for 3-10s".localized
        explainLb.text = (String(kPiLabelStr.prefix(4)) + "rd a v" + k_contentTitle.replacingOccurrences(of: "valid", with: "e") + " for " + String(k_blockPath.suffix(5))).localized
        //: contentView.addSubview(explainLb)
        contentView.addSubview(explainLb)
        //: explainLb.snp.makeConstraints { make in
        explainLb.snp.makeConstraints { make in
            //: make.top.equalTo(titleLb.snp.bottom).offset(9)
            make.top.equalTo(titleLb.snp.bottom).offset(9)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: soundButton.snp.makeConstraints { make in
        soundButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 66))
            make.bottom.equalTo(-actualWidth(w: 66))
            //: make.width.height.equalTo(actualWidth(w: 87))
            make.width.height.equalTo(actualWidth(w: 87))
        }
        //: listenButton.snp.makeConstraints { make in
        listenButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 66))
            make.bottom.equalTo(-actualWidth(w: 66))
            //: make.width.height.equalTo(actualWidth(w: 87))
            make.width.height.equalTo(actualWidth(w: 87))
        }
        //: soundLabel.snp.makeConstraints { make in
        soundLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 24))
            make.bottom.equalTo(-actualWidth(w: 24))
        }
        //: listenLabel.snp.makeConstraints { make in
        listenLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(-actualWidth(w: 24))
            make.bottom.equalTo(-actualWidth(w: 24))
        }
        //: timeLabel.snp.makeConstraints { make in
        timeLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(explainLb.snp.bottom).offset(36)
            make.top.equalTo(explainLb.snp.bottom).offset(36)
        }
        //: resetButton.snp.makeConstraints { make in
        resetButton.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.width.height.equalTo(actualWidth(w: 49))
            make.width.height.equalTo(actualWidth(w: 49))
            //: make.trailing.equalTo(soundButton.snp.leading).offset(-27)
            make.trailing.equalTo(soundButton.snp.leading).offset(-27)
        }
        //: resetLabel.snp.makeConstraints { make in
        resetLabel.snp.makeConstraints { make in
            //: make.centerX.equalTo(resetButton)
            make.centerX.equalTo(resetButton)
            //: make.centerY.equalTo(soundLabel)
            make.centerY.equalTo(soundLabel)
        }
        //: finishButton.snp.makeConstraints { make in
        finishButton.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.width.height.equalTo(actualWidth(w: 49))
            make.width.height.equalTo(actualWidth(w: 49))
            //: make.leading.equalTo(soundButton.snp.trailing).offset(27)
            make.leading.equalTo(soundButton.snp.trailing).offset(27)
        }
        //: finishLabel.snp.makeConstraints { make in
        finishLabel.snp.makeConstraints { make in
            //: make.centerX.equalTo(finishButton)
            make.centerX.equalTo(finishButton)
            //: make.centerY.equalTo(soundLabel)
            make.centerY.equalTo(soundLabel)
        }
        //: listenPlayer.snp.makeConstraints { make in
        listenPlayer.snp.makeConstraints { make in
            //: make.center.equalTo(soundButton)
            make.center.equalTo(soundButton)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 123), height: actualWidth(w: 123)))
            make.size.equalTo(CGSize(width: actualWidth(w: 123), height: actualWidth(w: 123)))
        }
        //: leftRecordPlayer.snp.makeConstraints { make in
        leftRecordPlayer.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.trailing.equalTo(soundButton.snp.leading).offset(-12)
            make.trailing.equalTo(soundButton.snp.leading).offset(-12)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 66), height: actualWidth(w: 26)))
            make.size.equalTo(CGSize(width: actualWidth(w: 66), height: actualWidth(w: 26)))
        }
        //: rightRecordPlayer.snp.makeConstraints { make in
        rightRecordPlayer.snp.makeConstraints { make in
            //: make.centerY.equalTo(soundButton)
            make.centerY.equalTo(soundButton)
            //: make.leading.equalTo(soundButton.snp.trailing).offset(12)
            make.leading.equalTo(soundButton.snp.trailing).offset(12)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 66), height: actualWidth(w: 26)))
            make.size.equalTo(CGSize(width: actualWidth(w: 66), height: actualWidth(w: 26)))
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func brookName() {
        //: showUIViaState()
        largeness()
    }
}
