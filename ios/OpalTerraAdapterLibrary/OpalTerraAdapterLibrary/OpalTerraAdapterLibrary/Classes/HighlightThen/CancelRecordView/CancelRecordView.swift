
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_playerKey:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "Move here to cancel" :*/
fileprivate let k_mediumName:String = "Move hskin mini effect"
fileprivate let k_logTitle:String = "label viewto cancel"

/*: "btn_talk_voice_recording_nor" :*/
fileprivate let kManagerContent:[Character] = ["b","t","n","_","t","a","l","k"]
fileprivate let k_reText:[Character] = ["_","v","o","i","c","e","_","r","e","c","o"]
fileprivate let kUserKey:[Character] = ["r","d","i","n","g","_","n","o","r"]

/*: "Release to cancel" :*/
fileprivate let k_beautyData:String = "Retransform target block self input"
fileprivate let k_sizeKey:String = "lemodel"
fileprivate let k_pageTitle:String = "ancstream"

/*: "#FF506D" :*/
fileprivate let k_makeValue:[Character] = ["#","F","F","5","0","6","D"]

/*: "btn_talk_voice_recording_warn_nor" :*/
fileprivate let k_valueUrl:[UInt8] = [0x55,0x43,0x59,0x68,0x43,0x56,0x5b,0x5c,0x68,0x41,0x58,0x5e,0x54,0x52,0x68,0x45,0x52,0x54,0x58,0x45,0x53,0x5e,0x59,0x50,0x68,0x40,0x56,0x45,0x59,0x68,0x59,0x58,0x45]

/*: "The upper limit is reached" :*/
fileprivate let kGiftUrl:[Character] = ["T","h","e"," ","u","p","p","e","r"," ","l"]
fileprivate let kSendTitle:[Character] = ["i","m","i","t"," ","i","s"," ","r","e","a","c","h","e","d"]

/*: "30″" :*/
fileprivate let kPlayerData:[Character] = ["3","0","″"]

/*: "Under time" :*/
fileprivate let kRefreshStr:[Character] = ["U","n","d","e","r"," ","t","i","m","e"]

/*: "Talk too short" :*/
fileprivate let k_sendKey:String = "Talk tobackground else of selection else"
fileprivate let kBackMessage:String = "intimate"
fileprivate let k_earnUrl:String = "gender time kit short"

/*: "0″" :*/
fileprivate let kMakeId:[Character] = ["0","″"]

/*: "get json error" :*/
fileprivate let kTextImageKey:String = "get jin user false view"
fileprivate let k_conPath:String = "canor"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CancelRecordView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/6.
//

//: import UIKit
import UIKit

//: enum RecordStatus: Int {
enum ProtrudePropertyProtocol: Int {
    //: case todefault = 0
    case todefault = 0 // 未开始
    //: case recording
    case recording // 正在录制
    //: case tooShoot
    case tooShoot // 录音时长过短
    //: case tooLong
    case tooLong // 录音时长过长
    //: case cancel
    case cancel // 录音取消
}

//: class TalkingChatRecordView: UIView {
class CancelRecordView: UIView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: customUI()
        total()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_playerKey.reversed(), encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()

        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
            //: make.height.equalTo(252+kDeviceSafeBottomHeight)
            make.height.equalTo(252 + appButtonData)
        }

        //: topTipLabel.snp.makeConstraints { make in
        topTipLabel.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.top.equalToSuperview().offset(21)
            make.top.equalToSuperview().offset(21)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: durationLabel.snp.makeConstraints { make in
        durationLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(topTipLabel.snp.bottom).offset(18)
            make.top.equalTo(topTipLabel.snp.bottom).offset(18)
            //: make.height.equalTo(27)
            make.height.equalTo(27)
            //: make.width.equalTo(66)
            make.width.equalTo(66)
        }

        //: leftPlayer.snp.makeConstraints { make in
        leftPlayer.snp.makeConstraints { make in
            //: make.trailing.equalTo(durationLabel.snp.leading).offset(-30)
            make.trailing.equalTo(durationLabel.snp.leading).offset(-30)
            //: make.top.equalTo(topTipLabel.snp.bottom).offset(15)
            make.top.equalTo(topTipLabel.snp.bottom).offset(15)
            //: make.height.equalTo(27)
            make.height.equalTo(27)
            //: make.width.equalTo(66)
            make.width.equalTo(66)
        }

        //: rightPlayer.snp.makeConstraints { make in
        rightPlayer.snp.makeConstraints { make in
            //: make.leading.equalTo(durationLabel.snp.trailing).offset(30)
            make.leading.equalTo(durationLabel.snp.trailing).offset(30)
            //: make.top.equalTo(topTipLabel.snp.bottom).offset(15)
            make.top.equalTo(topTipLabel.snp.bottom).offset(15)
            //: make.height.equalTo(27)
            make.height.equalTo(27)
            //: make.width.equalTo(66)
            make.width.equalTo(66)
        }
        //: micImageView.snp.makeConstraints { make in
        micImageView.snp.makeConstraints { make in
            //: make.centerX.equalTo(contentView)
            make.centerX.equalTo(contentView)
            //: make.top.equalTo(durationLabel.snp.bottom).offset(32)
            make.top.equalTo(durationLabel.snp.bottom).offset(32)
            //: make.width.height.equalTo(99)
            make.width.height.equalTo(99)
        }

        //: microphonePlayer.snp.makeConstraints { make in
        microphonePlayer.snp.makeConstraints { make in
            //: make.center.equalTo(micImageView)
            make.center.equalTo(micImageView)
            //: make.width.height.equalTo(150)
            make.width.height.equalTo(150)
        }
        //: microphoneRedPlayer.snp.makeConstraints { make in
        microphoneRedPlayer.snp.makeConstraints { make in
            //: make.center.equalTo(micImageView)
            make.center.equalTo(micImageView)
            //: make.width.height.equalTo(150)
            make.width.height.equalTo(150)
        }

        //: leftRedPlayer.snp.makeConstraints { make in
        leftRedPlayer.snp.makeConstraints { make in
            //: make.edges.equalTo(leftPlayer)
            make.edges.equalTo(leftPlayer)
        }
        //: rightRedPlayer.snp.makeConstraints { make in
        rightRedPlayer.snp.makeConstraints { make in
            //: make.edges.equalTo(rightPlayer)
            make.edges.equalTo(rightPlayer)
        }
    }

    //: public func customUI () {
    public func total() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topTipLabel)
        contentView.addSubview(topTipLabel)
        //: contentView.addSubview(durationLabel)
        contentView.addSubview(durationLabel)
        //: contentView.addSubview(leftPlayer)
        contentView.addSubview(leftPlayer)
        //: contentView.addSubview(rightPlayer)
        contentView.addSubview(rightPlayer)
        //: contentView.addSubview(micImageView)
        contentView.addSubview(micImageView)
        //: contentView.addSubview(microphonePlayer)
        contentView.addSubview(microphonePlayer)
        //: contentView.addSubview(microphoneRedPlayer)
        contentView.addSubview(microphoneRedPlayer)
        //: contentView.addSubview(leftRedPlayer)
        contentView.addSubview(leftRedPlayer)
        //: contentView.addSubview(rightRedPlayer)
        contentView.addSubview(rightRedPlayer)
    }

    //: public func setRecordStatus (status: RecordStatus) {
    public func input(status: ProtrudePropertyProtocol) {
        //: leftRedPlayer.isHidden = status.rawValue <= 1
        leftRedPlayer.isHidden = status.rawValue <= 1
        //: rightRedPlayer.isHidden = status.rawValue <= 1
        rightRedPlayer.isHidden = status.rawValue <= 1
        //: microphoneRedPlayer.isHidden = status.rawValue <= 1
        microphoneRedPlayer.isHidden = status.rawValue <= 1
        //: microphonePlayer.isHidden = status.rawValue > 1
        microphonePlayer.isHidden = status.rawValue > 1

        //: switch status {
        switch status {
        //: case .recording:
        case .recording:
            //: topTipLabel.text = "Move here to cancel".localized
            topTipLabel.text = (String(k_mediumName.prefix(6)) + "ere " + String(k_logTitle.suffix(9))).localized
            //: durationLabel.textColor = UIColor.colorStatuteNameApp()
            durationLabel.textColor = UIColor.colorStatuteNameApp()
            //: micImageView.image = UIImage.submitGift(name: "btn_talk_voice_recording_nor")
            micImageView.image = UIImage.submitGift(name: (String(kManagerContent) + String(k_reText) + String(kUserKey)))
        //: break
        //: case .cancel:
        case .cancel:
            //: topTipLabel.text = "Release to cancel".localized
            topTipLabel.text = (String(k_beautyData.prefix(2)) + k_sizeKey.replacingOccurrences(of: "model", with: "as") + "e to c" + k_pageTitle.replacingOccurrences(of: "stream", with: "el")).localized
            //: durationLabel.textColor = UIColor.init(hex: "#FF506D")
            durationLabel.textColor = UIColor(hex: (String(k_makeValue)))
            //: micImageView.image = UIImage.submitGift(name: "btn_talk_voice_recording_warn_nor")
            micImageView.image = UIImage.submitGift(name: String(bytes: k_valueUrl.map{$0^55}, encoding: .utf8)!)
            //: break

        //: case .tooLong:
        case .tooLong:
            //: topTipLabel.text = "The upper limit is reached".localized
            topTipLabel.text = (String(kGiftUrl) + String(kSendTitle)).localized
            //: durationLabel.text = "30″"
            durationLabel.text = "30″"
            //: durationLabel.textColor = UIColor.init(hex: "#FF506D")
            durationLabel.textColor = UIColor(hex: (String(k_makeValue)))
            //: micImageView.image = UIImage.submitGift(name: "btn_talk_voice_recording_warn_nor")
            micImageView.image = UIImage.submitGift(name: String(bytes: k_valueUrl.map{$0^55}, encoding: .utf8)!)
            //: break

        //: case .tooShoot:
        case .tooShoot:
            //: func__showStatusBarErrorMsg(showMsg: "Under time".localized)
            arcInfo(showMsg: (String(kRefreshStr)).localized)
            //: topTipLabel.text = "Talk too short".localized
            topTipLabel.text = (String(k_sendKey.prefix(7)) + kBackMessage.replacingOccurrences(of: "intimate", with: "o") + String(k_earnUrl.suffix(6))).localized
            //: durationLabel.text = "30″"
            durationLabel.text = "30″"
            //: durationLabel.textColor = UIColor.init(hex: "#FF506D")
            durationLabel.textColor = UIColor(hex: (String(k_makeValue)))
            //: micImageView.image = UIImage.submitGift(name: "btn_talk_voice_recording_warn_nor")
            micImageView.image = UIImage.submitGift(name: String(bytes: k_valueUrl.map{$0^55}, encoding: .utf8)!)
            //: break

        //: default:
        default:
            //: topTipLabel.text = "Move here to cancel".localized
            topTipLabel.text = (String(k_mediumName.prefix(6)) + "ere " + String(k_logTitle.suffix(9))).localized
            //: durationLabel.text = "0″"
            durationLabel.text = "0″"
            //: durationLabel.textColor = UIColor.colorStatuteNameApp()
            durationLabel.textColor = UIColor.colorStatuteNameApp()
            //: micImageView.image = UIImage.submitGift(name: "btn_talk_voice_recording_nor")
            micImageView.image = UIImage.submitGift(name: (String(kManagerContent) + String(k_reText) + String(kUserKey)))
            //: break
        }
    }

    //: public func showView () {
    public func map() {
        //: durationLabel.text = "0″"
        durationLabel.text = "0″"
        //: durationLabel.textColor = UIColor.colorStatuteNameApp()
        durationLabel.textColor = UIColor.colorStatuteNameApp()
    }

    //: public func hidenView () {
    public func rubricCreate() {
        //: self.removeFromSuperview()
        self.removeFromSuperview()
    }

    //: public func startAnimation () {
    public func tableAnimation() {
        //: setRecordStatus(status: .todefault)
        input(status: .todefault)
    }

    //: public func setPlayer (player: SVGAPlayer, status: RecordStatus) {
    public func dartPlayer(player: SVGAPlayer, status: ProtrudePropertyProtocol) {
        //: do {
        do {
            //: var url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Yellow)
            var url = VideoEffectTool.default.conType(type: .Chat_Record_Yellow)
            //: if  status.rawValue > 1 {
            if status.rawValue > 1 {
                //: url = SVGAEffectTool.default.getZipEffectPath(type: .Chat_Record_Red)
                url = VideoEffectTool.default.conType(type: .Chat_Record_Red)
            }
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(kTextImageKey.prefix(5)) + "son e" + k_conPath.replacingOccurrences(of: "can", with: "rr")))
        }
    }

    //: public func setMicrophonePlayer (player: SVGAPlayer, status: RecordStatus) {
    public func addStatus(player: SVGAPlayer, status: ProtrudePropertyProtocol) {
        //: do {
        do {
            //: var url = SVGAEffectTool.default.getZipEffectPath(type: .Greet_Corrugated_Yellow)
            var url = VideoEffectTool.default.conType(type: .Greet_Corrugated_Yellow)
            //: if  status.rawValue > 1 {
            if status.rawValue > 1 {
                //: url = SVGAEffectTool.default.getZipEffectPath(type: .Greet_Corrugated_Red)
                url = VideoEffectTool.default.conType(type: .Greet_Corrugated_Red)
            }
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(kTextImageKey.prefix(5)) + "son e" + k_conPath.replacingOccurrences(of: "can", with: "rr")))
        }
    }

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let content = UIView.init()
        let content = UIView()
        //: content.backgroundColor = UIColor.init(red: 234/255.0, green: 234/255.0, blue: 234/255.0, alpha: 1.0)
        content.backgroundColor = UIColor(red: 234 / 255.0, green: 234 / 255.0, blue: 234 / 255.0, alpha: 1.0)
        //: return content
        return content
        //: }()
    }()

    //: lazy var topTipLabel: UILabel = {
    lazy var topTipLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        lb.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        //: lb.textColor = UIColor.appValueDetailColor()
        lb.textColor = UIColor.childMenu()
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.text = "Move here to cancel".localized
        lb.text = (String(k_mediumName.prefix(6)) + "ere " + String(k_logTitle.suffix(9))).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var leftPlayer: SVGAPlayer = {
    lazy var leftPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setPlayer(player: player, status: .todefault)
        dartPlayer(player: player, status: .todefault)
        //: return player
        return player
        //: }()
    }()

    //: lazy var durationLabel: UILabel = {
    lazy var durationLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.fontChange(type: .Medium, fontSize: 18)
        lb.font = UIFont.fontChange(type: .Medium, fontSize: 18)
        //: lb.textColor = UIColor.colorStatuteNameApp()
        lb.textColor = UIColor.colorStatuteNameApp()
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.text = "0″"
        lb.text = "0″"
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var rightPlayer: SVGAPlayer = {
    lazy var rightPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setPlayer(player: player, status: .todefault)
        dartPlayer(player: player, status: .todefault)
        //: return player
        return player
        //: }()
    }()

    //: lazy var microphonePlayer: SVGAPlayer = {
    lazy var microphonePlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setMicrophonePlayer(player: player, status: .todefault)
        addStatus(player: player, status: .todefault)
        //: return player
        return player
        //: }()
    }()

    //: lazy var microphoneRedPlayer: SVGAPlayer = {
    lazy var microphoneRedPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setMicrophonePlayer(player: player, status: .tooLong)
        addStatus(player: player, status: .tooLong)
        //: return player
        return player
        //: }()
    }()

    //: lazy var micImageView: UIImageView = {
    lazy var micImageView: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.image = UIImage.submitGift(name: "btn_talk_voice_recording_nor")
        img.image = UIImage.submitGift(name: (String(kManagerContent) + String(k_reText) + String(kUserKey)))
        //: return img
        return img
        //: }()
    }()

    //: lazy var leftRedPlayer: SVGAPlayer = {
    lazy var leftRedPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setPlayer(player: player, status: .tooLong)
        dartPlayer(player: player, status: .tooLong)
        //: return player
        return player
        //: }()
    }()

    //: lazy var rightRedPlayer: SVGAPlayer = {
    lazy var rightRedPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleToFill
        player.contentMode = .scaleToFill
        //: setPlayer(player: player, status: .tooLong)
        dartPlayer(player: player, status: .tooLong)
        //: return player
        return player
        //: }()
    }()
}
