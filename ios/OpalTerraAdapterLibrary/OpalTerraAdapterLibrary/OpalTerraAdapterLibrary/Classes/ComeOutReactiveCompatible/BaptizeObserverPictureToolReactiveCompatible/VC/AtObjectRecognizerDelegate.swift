
//: Declare String Begin

/*: "#33005B" :*/
fileprivate let k_marginValue:String = "#33005Bself if view video"

/*: "get json error" :*/
fileprivate let kSizeTitle:String = "get m catch height lab"
fileprivate let k_equalId:String = "fieldofield"

/*: "btn_live_mini_nor" :*/
fileprivate let kModelTitle:[Character] = ["b","t","n","_","l","i","v","e","_","m","i","n","i"]
fileprivate let kHeadMessage:[Character] = ["_","n","o","r"]

/*: "icon_views_number" :*/
fileprivate let k_fileKey:String = "mode make shared frame coloricon_vie"
fileprivate let kEqualAddTitle:String = "the viewws_n"
fileprivate let kImageBlockMessage:[Character] = ["u","m","b","e","r"]

/*: "Random Video" :*/
fileprivate let k_playerText:[Character] = ["R","a","n","d","o","m"," ","V","i","d","e","o"]

/*: "Accept Video Match Call" :*/
fileprivate let kWithTitle:String = "Accelocation request equal bottom top"
fileprivate let kArcPath:String = "self lengtheo M"
fileprivate let kIndexStr:String = " Callsection not collection handle"

/*: "%@ chatting" :*/
fileprivate let k_fatalKey:String = "size let send%@ cha"
fileprivate let kValueTitle:[Character] = ["t","t","i","n","g"]

/*: "chattingNum" :*/
fileprivate let k_colorId:String = "cmake"
fileprivate let kImageClickMsg:String = "aappappin"

/*: "type" :*/
fileprivate let kRecordPath:[UInt8] = [0x65,0x70,0x79,0x74]

/*: "randomVideo" :*/
fileprivate let kFormalTableMessage:String = "ransize"
fileprivate let k_intimatePath:String = "like"

/*: "-1" :*/
fileprivate let kStartValue:String = "-1"

/*: "value" :*/
fileprivate let kFormatTitle:String = "vdownue"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AtObjectRecognizerDelegate.swift
//  OpalTerraAdapterLibrary
//
//  Created by DouXiu on 2024/8/16.
//

//: import UIKit
import UIKit

//: class TalkingFemaleStaticRandomVideoVC: TalkingBaseViewController {
class AtObjectRecognizerDelegate: StartThen {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: hideNavi = true
        hideNavi = true
        //: setupSubviews()
        balloon()
        //: setupSubViewsConstraint()
        duringManager()
        //: req_videoMatchCheck()
        makeQuery()
    }

    // MARK: - Lazy Load

    //: private lazy var renderView: UIView = {
    private lazy var renderView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#33005B")
        v.backgroundColor = UIColor(hex: (String(k_marginValue.prefix(7))))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Female_Randomvideo_Bg)
        let url = VideoEffectTool.default.conType(type: .Female_Randomvideo_Bg)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                // 刷新放在此处目的：是为了进入页面时，保证加载完svga资源再刷新
                //: self.refreshUI()
                self.toRow()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(kSizeTitle.prefix(4)) + "json er" + k_equalId.replacingOccurrences(of: "field", with: "r")))
        }
        //: return player
        return player
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "btn_live_mini_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kModelTitle) + String(kHeadMessage))), for: .normal)
        //: btn.addTarget(self, action: #selector(closeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(subAdd), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chattingNumBtn: TalkingButton = {
    private lazy var chattingNumBtn: ResumeControl = {
        //: let btn = TalkingButton()
        let btn = ResumeControl()
        //: btn.setImage(UIImage.submitGift(name: "icon_views_number"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(k_fileKey.suffix(8)) + String(kEqualAddTitle.suffix(4)) + String(kImageBlockMessage))), for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "icon_views_number"), for: .disabled)
        btn.setImage(UIImage.submitGift(name: (String(k_fileKey.suffix(8)) + String(kEqualAddTitle.suffix(4)) + String(kImageBlockMessage))), for: .disabled)
        //: btn.spaceBetweenTitleAndImage = 5
        btn.spaceBetweenTitleAndImage = 5
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Regular, fontSize: 15)
        btn.titleLabel?.font = UIFont.fontChange(type: .Regular, fontSize: 15)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var bottomView: UIView = {
    private lazy var bottomView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white.withAlphaComponent(0.15)
        v.backgroundColor = .white.withAlphaComponent(0.15)
        //: v.layer.cornerRadius = 8
        v.layer.cornerRadius = 8
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: let lab1 = UILabel()
        let lab1 = UILabel()
        //: lab1.text = "Random Video".localized
        lab1.text = (String(k_playerText)).localized
        //: lab1.textColor = .white
        lab1.textColor = .white
        //: lab1.font = UIFont.pingfangMediumFont(fontSize: 20)
        lab1.font = UIFont.tapShared(fontSize: 20)
        //: v.addSubview(lab1)
        v.addSubview(lab1)
        //: lab1.snp.makeConstraints { make in
        lab1.snp.makeConstraints { make in
            //: make.top.equalTo(17)
            make.top.equalTo(17)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
        }
        //: let lab2 = UILabel()
        let lab2 = UILabel()
        //: lab2.text = "Accept Video Match Call".localized
        lab2.text = (String(kWithTitle.prefix(4)) + "pt Vid" + String(kArcPath.suffix(4)) + "atch" + String(kIndexStr.prefix(5))).localized
        //: lab2.textColor = .white
        lab2.textColor = .white
        //: lab2.numberOfLines = 0
        lab2.numberOfLines = 0
        //: lab2.font = UIFont.pingfangRugularFont(fontSize: 15)
        lab2.font = UIFont.targetFor(fontSize: 15)
        //: v.addSubview(lab2)
        v.addSubview(lab2)
        //: lab2.snp.makeConstraints { make in
        lab2.snp.makeConstraints { make in
            //: make.top.equalTo(lab1.snp.bottom).offset(12)
            make.top.equalTo(lab1.snp.bottom).offset(12)
            //: make.leading.equalTo(lab1)
            make.leading.equalTo(lab1)
            //: make.trailing.equalTo(-90)
            make.trailing.equalTo(-90)
            //: make.bottom.equalTo(-17)
            make.bottom.equalTo(-17)
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var switchBtn: UISwitch = {
    private lazy var switchBtn: UISwitch = {
        //: let swit = UISwitch()
        let swit = UISwitch()
        //: swit.isOn = false
        swit.isOn = false
        //: swit.onTintColor = UIColor.appThemeColor()
        swit.onTintColor = UIColor.increase()
        //: swit.thumbTintColor = .white
        swit.thumbTintColor = .white
        //: swit.addTarget(self, action: #selector(switchDidChange), for: .valueChanged)
        swit.addTarget(self, action: #selector(changeByReversal), for: .valueChanged)
        //: return swit
        return swit
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingFemaleStaticRandomVideoVC {
extension AtObjectRecognizerDelegate {
    /// 获取匹配人数
    //: private func req_videoMatchCheck() {
    private func makeQuery() {
        //: TalkingQuickVideoManager.req_videoMatchCheck { succeed, result, _ in
        ValuePublishVideoManager.thirdSub { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: self.chattingNumBtn.setTitle("%@ chatting".localizedArguments(json["chattingNum"].intValue), for: .normal)
            self.chattingNumBtn.setTitle((String(k_fatalKey.suffix(6)) + String(kValueTitle)).edgeDelay(json[(k_colorId.replacingOccurrences(of: "make", with: "h") + kImageClickMsg.replacingOccurrences(of: "app", with: "t") + "gNum")].intValue), for: .normal)
        }
    }

    /// 随机视频开关请求
    //: private func req_SettingChange() {
    private func cardCenter() {
        //: var params = ["type": "randomVideo"]
        var params = [String(bytes: kRecordPath.reversed(), encoding: .utf8)!: (kFormalTableMessage.replacingOccurrences(of: "size", with: "d") + "omVide" + k_intimatePath.replacingOccurrences(of: "like", with: "o"))]
        //: let value = switchBtn.isOn ? "1" : "-1"
        let value = switchBtn.isOn ? "1" : "-1"
        //: params["value"] = value
        params[(kFormatTitle.replacingOccurrences(of: "down", with: "al"))] = value
        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: TalkingMeRequestTool.req_SettingChange(params: params) { succeed, _, _ in
        FileListRequestTool.paramsEffect(params: params) { succeed, _, _ in
            //: EndProgressHUD.popEnable()
            EndProgressHUD.popEnable()
            //: self.switchBtn.isEnabled = true
            self.switchBtn.isEnabled = true
            //: guard succeed else {
            guard succeed else {
                //: self.switchBtn.isOn = !self.switchBtn.isOn
                self.switchBtn.isOn = !self.switchBtn.isOn
                //: return
                return
            }
            //: DistanceAppManager.share.appUserConfigMode.randomVideo = value
            DistanceAppManager.share.appUserConfigMode.randomVideo = value
            //: self.refreshUI()
            self.toRow()
        }
    }
}

// MARK: - Event

//: extension TalkingFemaleStaticRandomVideoVC {
extension AtObjectRecognizerDelegate {
    /// 关闭页面按钮事件
    //: @objc private func closeButtonClick() {
    @objc private func subAdd() {
        //: getNavigationController()?.popViewController(animated: false)
        put()?.popViewController(animated: false)
    }

    /// 随机视频开关事件
    //: @objc private func switchDidChange() {
    @objc private func changeByReversal() {
        //: switchBtn.isEnabled = false
        switchBtn.isEnabled = false
        //: req_SettingChange()
        cardCenter()
    }
}

// MARK: - Layout

//: extension TalkingFemaleStaticRandomVideoVC {
extension AtObjectRecognizerDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func balloon() {
        //: view.addSubview(renderView)
        view.addSubview(renderView)
        //: view.addSubview(svgaPlayer)
        view.addSubview(svgaPlayer)
        //: view.addSubview(closeBtn)
        view.addSubview(closeBtn)
        //: view.addSubview(chattingNumBtn)
        view.addSubview(chattingNumBtn)
        //: view.addSubview(bottomView)
        view.addSubview(bottomView)
        //: bottomView.addSubview(switchBtn)
        bottomView.addSubview(switchBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func duringManager() {
        //: renderView.snp.makeConstraints { make in
        renderView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 435))
            make.width.height.equalTo(actualWidth(w: 435))
        }
        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight + 6)
            make.top.equalTo(main_netValue + 6)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.width.height.equalTo(actualWidth(w: 32))
            make.width.height.equalTo(actualWidth(w: 32))
        }
        //: chattingNumBtn.snp.makeConstraints { make in
        chattingNumBtn.snp.makeConstraints { make in
            //: make.top.equalTo(svgaPlayer.snp.bottom).offset(-35)
            make.top.equalTo(svgaPlayer.snp.bottom).offset(-35)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.top.equalTo(chattingNumBtn.snp.bottom).offset(37)
            make.top.equalTo(chattingNumBtn.snp.bottom).offset(37)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
        }
        //: switchBtn.snp.makeConstraints { make in
        switchBtn.snp.makeConstraints { make in
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

    /// 刷新UI
    //: private func refreshUI() {
    private func toRow() {
        //: if DistanceAppManager.share.appUserConfigMode.randomVideo == "1" {
        if DistanceAppManager.share.appUserConfigMode.randomVideo == "1" {
            //: svgaPlayer.startAnimation()
            svgaPlayer.startAnimation()
            //: } else {
        } else {
            //: svgaPlayer.pauseAnimation()
            svgaPlayer.pauseAnimation()
        }
        //: switchBtn.isOn = (DistanceAppManager.share.appUserConfigMode.randomVideo == "1")
        switchBtn.isOn = (DistanceAppManager.share.appUserConfigMode.randomVideo == "1")
    }
}
