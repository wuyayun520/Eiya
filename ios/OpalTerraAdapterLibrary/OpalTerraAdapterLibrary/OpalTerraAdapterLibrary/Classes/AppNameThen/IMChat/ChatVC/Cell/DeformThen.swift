
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kScreenText:[UInt8] = [0x79,0x7e,0x79,0x64,0x38,0x73,0x7f,0x74,0x75,0x62,0x2a,0x39,0x30,0x78,0x71,0x63,0x30,0x7e,0x7f,0x64,0x30,0x72,0x75,0x75,0x7e,0x30,0x79,0x7d,0x60,0x7c,0x75,0x7d,0x75,0x7e,0x64,0x75,0x74]

private func lawnTool(list num: UInt8) -> UInt8 {
    return num ^ 16
}

/*: "extra" :*/
fileprivate let k_userId:String = "extburn"

/*: "msgInfo" :*/
fileprivate let kObjectFormat:[Character] = ["m","s","g","I","n","f","o"]

/*: "icon_talk_left_voive_3" :*/
fileprivate let kAreaText:[Character] = ["i","c","o","n","_","t","a","l"]
fileprivate let k_sizeTitle:String = "k_lefself file return voice bottom"

/*: "icon_talk_right_voive_3" :*/
fileprivate let kEnterData:[Character] = ["i","c","o","n","_","t","a","l","k","_"]
fileprivate let kSendFormat:String = "hair"
fileprivate let kNameId:[Character] = ["i","g","h","t","_","v","o","i","v","e","_","3"]

/*: "%ld″" :*/
fileprivate let k_rowTextPath:[Character] = ["%","l","d","″"]

/*: "audioLength" :*/
fileprivate let k_byMsg:[Character] = ["a","u","d","i","o","L","e","n","g"]
fileprivate let k_topTitle:String = "thide"

/*: "isPlayingStatus" :*/
fileprivate let kSegmentPath:[Character] = ["i","s","P","l","a","y","i","n","g","S"]
fileprivate let kViewDataUrl:String = "tregularus"

/*: "activityShowStatus" :*/
fileprivate let k_managerStr:String = "actactualit"
fileprivate let kLastUrl:[Character] = ["y","S","h","o","w","S"]
fileprivate let k_cellUpKey:String = "viewaviewus"

/*: "0″" :*/
fileprivate let kPathName:String = "0″"

/*: "FF506D" :*/
fileprivate let kShootLengthUrl:String = "FF50back"
fileprivate let k_fillContent:[Character] = ["D"]

/*: "icon_talk_left_voive_1" :*/
fileprivate let k_cellPath:[Character] = ["i","c","o","n","_","t","a","l","k","_","l"]
fileprivate let k_mInfoText:String = "top model context bar contenteft_vo"

/*: "icon_talk_left_voive_2" :*/
fileprivate let kCurrentMakeMessage:String = "if fill color mode leticon_talk"
fileprivate let k_hiddenFormat:String = "_lself now"
fileprivate let kNumberValue:String = "eft_frame effect block at normal"

/*: "icon_talk_right_voive_1" :*/
fileprivate let k_cellServerId:String = "to true returnicon_ta"
fileprivate let k_backgroundUrl:[Character] = ["l","k","_","r","i","g","h","t","_","v","o","i","v","e","_","1"]

/*: "icon_talk_right_voive_2" :*/
fileprivate let k_interestUrl:String = "iclistn"
fileprivate let kValueName:[Character] = ["r","i","g","h","t","_","v","o"]
fileprivate let k_yearText:String = "ive_2view if name make height"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DeformThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/28.
//

//: import UIKit
import UIKit

//: class TalkingChatAudioMsgCell: TalkingChatBaseMsgCell {
class DeformThen: ObjectStreamMsgCell {
    //: var audioData: TitleCellData?
    var audioData: TitleCellData?

    //: fileprivate lazy var disposeBag = DisposeBag()
    fileprivate lazy var disposeBag = DisposeBag()

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        //: self.bubbleImgView.isHidden = false
        self.bubbleImgView.isHidden = false
        //: designCellView()
        infoTitle()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kScreenText.map{lawnTool(list: $0)}, encoding: .utf8)!)
    }

    //: override func fill(with data: TCommonCellData) {
    override func afterMid(with data: DisappearReactiveCompatible) {
        //: super.fill(with: data)
        super.afterMid(with: data)
        //: audioData = data as? TitleCellData
        audioData = data as? TitleCellData
        //: guard let newData = audioData else { return }
        guard let newData = audioData else { return }
        //: if let extra = String(data: newData.innerMessage.customElem.data, encoding: .utf8) {
        if let extra = String(data: newData.innerMessage.customElem.data, encoding: .utf8) {
            //: let extraDic = JSON(parseJSON: extra)
            let extraDic = JSON(parseJSON: extra)
            //: let conentDic = extraDic["extra"]
            let conentDic = extraDic[(k_userId.replacingOccurrences(of: "burn", with: "ra"))]
            //: let msgInfo = conentDic["msgInfo"]
            let msgInfo = conentDic[(String(kObjectFormat))]
            //: let voiceModel = newData.voiceModel
            let voiceModel = newData.voiceModel

            //: let isVoiceStyle = DistrictManagerReactiveCompatible.checkVoiceJsonMsg(msginfo: msgInfo.dictionaryValue)
            let isVoiceStyle = DistrictManagerReactiveCompatible.quote(msginfo: msgInfo.dictionaryValue)

            //: if newData.direction == .MsgDirectionIncoming {
            if newData.direction == .MsgDirectionIncoming {
                //: self.lenLB.textColor = UIColor.colorStatuteNameApp()
                self.lenLB.textColor = UIColor.colorStatuteNameApp()
                //: self.voiceImageV.image = UIImage.submitGift(name: "icon_talk_left_voive_3")
                self.voiceImageV.image = UIImage.submitGift(name: (String(kAreaText) + String(k_sizeTitle.prefix(5)) + "t_voive_3"))
                //: self.voiceImageV.animationImages = leftVoiceAnimImagToCoverColor()
                self.voiceImageV.animationImages = leftHandRecordEvent()
                //: } else {
            } else {
                //: self.lenLB.textColor = .white
                self.lenLB.textColor = .white
                //: self.voiceImageV.image = UIImage.submitGift(name: "icon_talk_right_voive_3")
                self.voiceImageV.image = UIImage.submitGift(name: (String(kEnterData) + kSendFormat.replacingOccurrences(of: "hair", with: "r") + String(kNameId)))
                //: self.voiceImageV.animationImages = rightVoiceAnimImagToCoverColor()
                self.voiceImageV.animationImages = showColor()
            }
            //: if isVoiceStyle {
            if isVoiceStyle {
                //: self.lenLB.text = String.init(format: "%ld″", msgInfo["audioLength"].intValue)
                self.lenLB.text = String(format: "%ld″", msgInfo[(String(k_byMsg) + k_topTitle.replacingOccurrences(of: "hide", with: "h"))].intValue)
                //: newData.voiceModel.audioLength = msgInfo["audioLength"].intValue
                newData.voiceModel.audioLength = msgInfo[(String(k_byMsg) + k_topTitle.replacingOccurrences(of: "hide", with: "h"))].intValue

                //: voiceModel.rx.observeWeakly(Int.self, "isPlayingStatus").subscribe(onNext: { [weak self] (value) in
                voiceModel.rx.observeWeakly(Int.self, (String(kSegmentPath) + kViewDataUrl.replacingOccurrences(of: "regular", with: "at"))).subscribe(onNext: { [weak self] value in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: DispatchQueue.main.async {
                    DispatchQueue.main.async {
                        //: if value == 1 {
                        if value == 1 {
                            //: self.voiceShowView.stopAnimating()
                            self.voiceShowView.stopAnimating()
                            //: self.voiceImageV.startAnimating()
                            self.voiceImageV.startAnimating()
                            //: self.voiceTrackPoint.isHidden = true
                            self.voiceTrackPoint.isHidden = true
                            //: } else {
                        } else {
                            //: self.voiceImageV.stopAnimating()
                            self.voiceImageV.stopAnimating()
                        }
                    }
                    //: }).disposed(by: disposeBag)
                }).disposed(by: disposeBag)

                //: voiceModel.rx.observeWeakly(Int.self, "activityShowStatus").subscribe(onNext: { [weak self] (value) in
                voiceModel.rx.observeWeakly(Int.self, (k_managerStr.replacingOccurrences(of: "actual", with: "iv") + String(kLastUrl) + k_cellUpKey.replacingOccurrences(of: "view", with: "t"))).subscribe(onNext: { [weak self] value in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: DispatchQueue.main.async {
                    DispatchQueue.main.async {
                        //: if value == 1 {
                        if value == 1 {
                            //: self.voiceTrackPoint.isHidden = true
                            self.voiceTrackPoint.isHidden = true
                            //: self.voiceShowView.startAnimating()
                            self.voiceShowView.startAnimating()
                            //: } else {
                        } else {
                            //: self.voiceShowView.stopAnimating()
                            self.voiceShowView.stopAnimating()
                        }
                    }
                    //: }).disposed(by: disposeBag)
                }).disposed(by: disposeBag)

                //: } else {
            } else {
                //: newData.voiceModel.audioLength = -1
                newData.voiceModel.audioLength = -1
                //: self.voiceShowView.stopAnimating()
                self.voiceShowView.stopAnimating()
                //: self.voiceTrackPoint.isHidden = true
                self.voiceTrackPoint.isHidden = true
            }

            //: self.voiceImageV.isHidden = !isVoiceStyle
            self.voiceImageV.isHidden = !isVoiceStyle
        }
    }

    // MARK: - Lazy load

    //: lazy var voiceBackView: UIView = {
    lazy var voiceBackView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: return view
        return view
        //: }()
    }()

    // 时长
    //: lazy var lenLB: UILabel = {
    lazy var lenLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.textColor = UIColor.colorStatuteNameApp()
        label.textColor = UIColor.colorStatuteNameApp()
        //: label.font = UIFont.pingfangRugularFont(fontSize: 17)
        label.font = UIFont.targetFor(fontSize: 17)
        //: label.text = "0″"
        label.text = "0″"
        //: return label
        return label
        //: }()
    }()

    // 声波动画
    //: lazy var voiceImageV: UIImageView = {
    lazy var voiceImageV: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.isUserInteractionEnabled = true
        imag.isUserInteractionEnabled = true
        //: imag.animationDuration = 1
        imag.animationDuration = 1
        //: return imag
        return imag
        //: }()
    }()

    // 未读红点
    //: lazy var voiceTrackPoint: UIImageView = {
    lazy var voiceTrackPoint: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.backgroundColor = UIColor.init(hex: "FF506D")
        imag.backgroundColor = UIColor(hex: (kShootLengthUrl.replacingOccurrences(of: "back", with: "6") + String(k_fillContent)))
        //: imag.isHidden = true
        imag.isHidden = true
        //: imag.layer.cornerRadius = 9/2
        imag.layer.cornerRadius = 9 / 2
        //: imag.layer.masksToBounds = true
        imag.layer.masksToBounds = true
        //: return imag
        return imag
        //: }()
    }()

    // 转圈
    //: lazy var voiceShowView: UIActivityIndicatorView = {
    lazy var voiceShowView: UIActivityIndicatorView = {
        //: let view = UIActivityIndicatorView.init()
        let view = UIActivityIndicatorView()
        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: view.style = .medium
            view.style = .medium
            //: }else {
        } else {
            //: view.style = .gray
            view.style = .gray
        }
        //: view.hidesWhenStopped = true
        view.hidesWhenStopped = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatAudioMsgCell {
extension DeformThen {
    //: func leftVoiceAnimImagToCoverColor() -> [UIImage] {
    func leftHandRecordEvent() -> [UIImage] {
        //: return [UIImage.submitGift(name: "icon_talk_left_voive_1"), UIImage.submitGift(name: "icon_talk_left_voive_2"), UIImage.submitGift(name: "icon_talk_left_voive_3")]
        return [UIImage.submitGift(name: (String(k_cellPath) + String(k_mInfoText.suffix(6)) + "ive_1")), UIImage.submitGift(name: (String(kCurrentMakeMessage.suffix(9)) + String(k_hiddenFormat.prefix(2)) + String(kNumberValue.prefix(4)) + "voive_2")), UIImage.submitGift(name: (String(kAreaText) + String(k_sizeTitle.prefix(5)) + "t_voive_3"))]
    }

    //: func rightVoiceAnimImagToCoverColor() -> [UIImage] {
    func showColor() -> [UIImage] {
        //: return [UIImage.submitGift(name: "icon_talk_right_voive_1"), UIImage.submitGift(name: "icon_talk_right_voive_2"), UIImage.submitGift(name: "icon_talk_right_voive_3")]
        return [UIImage.submitGift(name: (String(k_cellServerId.suffix(7)) + String(k_backgroundUrl))), UIImage.submitGift(name: (k_interestUrl.replacingOccurrences(of: "list", with: "o") + "_talk_" + String(kValueName) + String(k_yearText.prefix(5)))), UIImage.submitGift(name: (String(kEnterData) + kSendFormat.replacingOccurrences(of: "hair", with: "r") + String(kNameId)))]
    }
}

// MARK: - UI

//: extension TalkingChatAudioMsgCell {
extension DeformThen {
    //: func designCellView() {
    func infoTitle() {
        //: self.container.addSubview(voiceBackView)
        self.container.addSubview(voiceBackView)
        //: voiceBackView.addSubview(lenLB)
        voiceBackView.addSubview(lenLB)
        // 语音模块
        //: voiceBackView.addSubview(voiceImageV)
        voiceBackView.addSubview(voiceImageV)
        //: voiceBackView.addSubview(voiceTrackPoint)
        voiceBackView.addSubview(voiceTrackPoint)
        //: voiceBackView.addSubview(voiceShowView)
        voiceBackView.addSubview(voiceShowView)
        //: voiceBackView.gestureRecognizers?.forEach(voiceBackView.removeGestureRecognizer(_:))
        voiceBackView.gestureRecognizers?.forEach(voiceBackView.removeGestureRecognizer(_:))
    }

    //: override public func updateConstraints() {
    override public func updateConstraints() {
        //: super.updateConstraints()
        super.updateConstraints()
        //: guard let newData = self.audioData else { return }
        guard let newData = self.audioData else { return }
        //: let voiceModel = newData.voiceModel
        let voiceModel = newData.voiceModel
        //: let audioWidth = Double(voiceModel.audioLength) * 2.4 + 90
        let audioWidth = Double(voiceModel.audioLength) * 2.4 + 90

        //: voiceBackView.snp.remakeConstraints { (make) in
        voiceBackView.snp.remakeConstraints { make in
            //: make.leading.top.height.equalToSuperview()
            make.leading.top.height.equalToSuperview()
            //: make.width.equalTo(audioWidth)
            make.width.equalTo(audioWidth)
        }

        //: if newData.direction == .MsgDirectionIncoming {
        if newData.direction == .MsgDirectionIncoming {
            //: voiceImageV.snp.remakeConstraints { (make) in
            voiceImageV.snp.remakeConstraints { make in
                //: make.leading.equalTo(16)
                make.leading.equalTo(16)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.equalTo(13)
                make.width.equalTo(13)
                //: make.height.equalTo(19)
                make.height.equalTo(19)
            }

            //: voiceTrackPoint.snp.remakeConstraints { (make) in
            voiceTrackPoint.snp.remakeConstraints { make in
                //: make.leading.equalTo(voiceBackView.snp.trailing).offset(10)
                make.leading.equalTo(voiceBackView.snp.trailing).offset(10)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.height.equalTo(9)
                make.width.height.equalTo(9)
            }

            //: voiceShowView.snp.remakeConstraints { (make) in
            voiceShowView.snp.remakeConstraints { make in
                //: make.leading.equalTo(voiceBackView.snp.trailing).offset(10)
                make.leading.equalTo(voiceBackView.snp.trailing).offset(10)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.height.equalTo(15)
                make.width.height.equalTo(15)
            }

            //: lenLB.snp.remakeConstraints { (make) in
            lenLB.snp.remakeConstraints { make in
                //: make.leading.equalTo(voiceImageV.snp.trailing).offset(12)
                make.leading.equalTo(voiceImageV.snp.trailing).offset(12)
                //: make.top.height.equalToSuperview()
                make.top.height.equalToSuperview()
                //: make.width.equalTo(30)
                make.width.equalTo(30)
            }

            //: voiceTrackPoint.isHidden = newData.voiceModel.db_voiceCacheWrap.db_isRead == "1"
            voiceTrackPoint.isHidden = newData.voiceModel.db_voiceCacheWrap.db_isRead == "1"
            //: if newData.voiceModel.activityShowStatus != 1 {
            if newData.voiceModel.activityShowStatus != 1 {
                //: voiceShowView.stopAnimating()
                voiceShowView.stopAnimating()
            }

            //: } else {
        } else {
            //: voiceImageV.snp.remakeConstraints { (make) in
            voiceImageV.snp.remakeConstraints { make in
                //: make.trailing.equalTo(-16)
                make.trailing.equalTo(-16)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.equalTo(13)
                make.width.equalTo(13)
                //: make.height.equalTo(19)
                make.height.equalTo(19)
            }

            //: lenLB.textAlignment = LanguageManager.shared.direction == .rightToLeft ? .left:.right
            lenLB.textAlignment = MakeLanguageManager.shared.direction == .rightToLeft ? .left : .right
            //: lenLB.snp.remakeConstraints { (make) in
            lenLB.snp.remakeConstraints { make in
                //: make.trailing.equalTo(voiceImageV.snp.leading).offset(-12)
                make.trailing.equalTo(voiceImageV.snp.leading).offset(-12)
                //: make.top.height.equalToSuperview()
                make.top.height.equalToSuperview()
                //: make.width.equalTo(30)
                make.width.equalTo(30)
            }

            //: voiceShowView.snp.remakeConstraints { (make) in
            voiceShowView.snp.remakeConstraints { make in
                //: make.trailing.equalTo(voiceBackView.snp.leading).offset(-30)
                make.trailing.equalTo(voiceBackView.snp.leading).offset(-30)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.height.equalTo(15)
                make.width.height.equalTo(15)
            }

            //: if newData.voiceModel.activityShowStatus != 1 {
            if newData.voiceModel.activityShowStatus != 1 {
                //: voiceShowView.stopAnimating()
                voiceShowView.stopAnimating()
            }
            //: voiceTrackPoint.isHidden = true
            voiceTrackPoint.isHidden = true
        }
    }
}
