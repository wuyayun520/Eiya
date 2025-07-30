
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_basicKey:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_me_video" :*/
fileprivate let kSignId:String = "index color back make selficon_m"

/*: "Receive video calls" :*/
fileprivate let kControlEqualMsg:String = "Recelet view add"
fileprivate let kMaterialStr:String = "vidvalue"

/*: "icon_me_voice" :*/
fileprivate let kMediumStr:String = "icinfon"
fileprivate let k_panPath:[Character] = ["_","m","e","_","v","o","i","c","e"]

/*: "Receive voice calls" :*/
fileprivate let k_withTitle:String = "Receivview tip view make bean"
fileprivate let kEmptyStr:String = "voice"
fileprivate let kThirdTitle:String = "hidden push pop with voice"

/*: "icon_me_randomvideo" :*/
fileprivate let k_stopName:String = "effect cur background data buttonicon_m"
fileprivate let kLineTitle:[Character] = ["e","_","r","a"]
fileprivate let k_cellShowValue:[Character] = ["n","d","o","m","v","i","d","e","o"]

/*: "Random Video" :*/
fileprivate let k_modeData:[Character] = ["R","a","n","d","o"]
fileprivate let k_sharedName:String = "m Videoself core"

/*: "-1" :*/
fileprivate let kBackMessage:[Character] = ["-","1"]

/*: "value" :*/
fileprivate let kVoiceContent:String = "valminie"

/*: "type" :*/
fileprivate let kChangeId:String = "TYPE"

/*: "videoAuth" :*/
fileprivate let kTopStr:String = "succeed make center ofvideoAuth"

/*: "voiceAuth" :*/
fileprivate let k_menuStr:[Character] = ["v","o","i","c","e"]
fileprivate let kTableCurPath:[Character] = ["A","u","t","h"]

/*: "randomVideo" :*/
fileprivate let kEraseId:String = "racolorom"
fileprivate let kBlockData:String = "Videoname error bottom view type"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SceneViewCell.swift
//  AbroadTalking
//
//  Created by DouXiu on 2024/5/24.
//

//: import UIKit
import UIKit

//: enum SettingReceiveVideoType {
enum FirstVideoType {
    //: case video
    case video
    //: case voice
    case voice
    //: case randomVideo
    case randomVideo
}

//: class TalkingSettingReceiveVideoCell: UITableViewCell {
class SceneViewCell: UITableViewCell {
    //: private var currType: SettingReceiveVideoType = .video
    private var currType: FirstVideoType = .video
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_basicKey.reversed(), encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: titleBLB.snp.makeConstraints { make in
        titleBLB.snp.makeConstraints { make in
            //: make.leading.equalTo(icon.snp.trailing).offset(7)
            make.leading.equalTo(icon.snp.trailing).offset(7)
            //: make.centerY.equalTo(icon)
            make.centerY.equalTo(icon)
        }

        //: switchView.snp.makeConstraints { make in
        switchView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.width.equalTo(51)
            make.width.equalTo(51)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }
    }

    // MARK: - Lazy load

    //: private lazy var backView: UIView = {
    private lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: contentView.addSubview(view)
        contentView.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: backView.addSubview(img)
        backView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var titleBLB: UILabel = {
    private lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        lb.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        //: lb.textColor = UIColor.colorStatuteNameApp()
        lb.textColor = UIColor.colorStatuteNameApp()
        //: backView.addSubview(lb)
        backView.addSubview(lb)
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var switchView: UISwitch = {
    private lazy var switchView: UISwitch = {
        //: let swit = UISwitch.init()
        let swit = UISwitch()
        //: swit.isOn = false
        swit.isOn = false
        //: swit.onTintColor = UIColor.appThemeColor()
        swit.onTintColor = UIColor.increase()
        //: swit.thumbTintColor = .white
        swit.thumbTintColor = .white
        //: swit.addTarget(self, action: #selector(switchDidChange), for: .valueChanged)
        swit.addTarget(self, action: #selector(methodSystem), for: .valueChanged)
        //: backView.addSubview(swit)
        backView.addSubview(swit)
        //: return swit
        return swit
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingSettingReceiveVideoCell {
extension SceneViewCell {
    /// 刷新cell
    //: func refreshCell(type: SettingReceiveVideoType) {
    func graduatedTable(type: FirstVideoType) {
        //: self.currType = type
        self.currType = type
        //: switch type {
        switch type {
        //: case .video:
        case .video:
            //: icon.image = UIImage.submitGift(name: "icon_me_video")
            icon.image = UIImage.submitGift(name: (String(kSignId.suffix(6)) + "e_video"))
            //: titleBLB.text = "Receive video calls".localized
            titleBLB.text = (String(kControlEqualMsg.prefix(4)) + "ive " + kMaterialStr.replacingOccurrences(of: "value", with: "e") + "o calls").localized
            //: switchView.isOn = (DistanceAppManager.share.loginUserMode.videoAuth == "1")
            switchView.isOn = (DistanceAppManager.share.loginUserMode.videoAuth == "1")

        //: case .voice:
        case .voice:
            //: icon.image = UIImage.submitGift(name: "icon_me_voice")
            icon.image = UIImage.submitGift(name: (kMediumStr.replacingOccurrences(of: "info", with: "o") + String(k_panPath)))
            //: titleBLB.text = "Receive voice calls".localized
            titleBLB.text = (String(k_withTitle.prefix(6)) + kEmptyStr.replacingOccurrences(of: "voice", with: "e") + String(kThirdTitle.suffix(6)) + " calls").localized
            //: switchView.isOn = (DistanceAppManager.share.loginUserMode.voiceAuth == "1")
            switchView.isOn = (DistanceAppManager.share.loginUserMode.voiceAuth == "1")

        //: case .randomVideo:
        case .randomVideo:
            //: icon.image = UIImage.submitGift(name: "icon_me_randomvideo")
            icon.image = UIImage.submitGift(name: (String(k_stopName.suffix(6)) + String(kLineTitle) + String(k_cellShowValue)))
            //: titleBLB.text = "Random Video".localized
            titleBLB.text = (String(k_modeData) + String(k_sharedName.prefix(7))).localized
            //: switchView.isOn = (DistanceAppManager.share.appUserConfigMode.randomVideo == "1")
            switchView.isOn = (DistanceAppManager.share.appUserConfigMode.randomVideo == "1")
        }
    }

    /// 按钮开关
    //: @objc func switchDidChange() {
    @objc func methodSystem() {
        //: self.switchView.isEnabled = false
        self.switchView.isEnabled = false
        //: var params = [String: Any]()
        var params = [String: Any]()
        //: let value = self.switchView.isOn ? "1":"-1"
        let value = self.switchView.isOn ? "1" : "-1"
        //: params["value"] = value
        params[(kVoiceContent.replacingOccurrences(of: "mini", with: "u"))] = value
        //: switch currType {
        switch currType {
        //: case .video:
        case .video:
            //: params["type"] = "videoAuth"
            params[(kChangeId.lowercased())] = (String(kTopStr.suffix(9)))
        //: case .voice:
        case .voice:
            //: params["type"] = "voiceAuth"
            params[(kChangeId.lowercased())] = (String(k_menuStr) + String(kTableCurPath))
        //: case .randomVideo:
        case .randomVideo:
            //: params["type"] = "randomVideo"
            params[(kChangeId.lowercased())] = (kEraseId.replacingOccurrences(of: "color", with: "nd") + String(kBlockData.prefix(5)))
        }
        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: TalkingMeRequestTool.req_SettingChange(params: params) { succeed, result, errorModel in
        FileListRequestTool.paramsEffect(params: params) { succeed, _, _ in
            //: EndProgressHUD.popEnable()
            EndProgressHUD.popEnable()
            //: self.switchView.isEnabled = true
            self.switchView.isEnabled = true
            //: guard succeed else {
            guard succeed else {
                //: self.switchView.isOn = !self.switchView.isOn
                self.switchView.isOn = !self.switchView.isOn
                //: return
                return
            }
            //: switch self.currType {
            switch self.currType {
            //: case .video:
            case .video:
                //: DistanceAppManager.share.loginUserMode.videoAuth = value
                DistanceAppManager.share.loginUserMode.videoAuth = value
            //: case .voice:
            case .voice:
                //: DistanceAppManager.share.loginUserMode.voiceAuth = value
                DistanceAppManager.share.loginUserMode.voiceAuth = value
            //: case .randomVideo:
            case .randomVideo:
                //: DistanceAppManager.share.appUserConfigMode.randomVideo = value
                DistanceAppManager.share.appUserConfigMode.randomVideo = value
            }
            // 上报女性用户busy状态
            //: (TalkingApplication.shared as! TalkingApplication).femaleBusyStatusReport()
            (TouchMakeReactiveCompatible.shared as! TouchMakeReactiveCompatible).equalReport()
        }
    }
}
