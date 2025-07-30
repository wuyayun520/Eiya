
//: Declare String Begin

/*: "#201E50" :*/
fileprivate let k_indexColorTitle:String = "layer make#201E50"

/*: "#1F1624" :*/
fileprivate let kArrayStr:[Character] = ["#","1","F","1","6","2","4"]

/*: "quick_video_topview" :*/
fileprivate let kReplyTitle:[Character] = ["q","u","i","c","k","_","v","i","d","e","o"]
fileprivate let k_skinTopMessage:String = "error"
fileprivate let kIndexIconFormat:String = "topgiftiew"

/*: "nav_back_black_nor" :*/
fileprivate let k_labRowStr:[Character] = ["n","a","v","_","b","a","c","k"]
fileprivate let k_currentUrl:String = "self model top_bla"

/*: "Random Video" :*/
fileprivate let kIndexValue:String = "match itemRandom "
fileprivate let k_valueUrl:[Character] = ["V","i","d","e","o"]

/*: "quick_video_explain" :*/
fileprivate let k_viewCellMsg:String = "quiend"
fileprivate let k_infoStr:String = "_exptouch tool view"

/*: "get json error" :*/
fileprivate let kMakeSharedKey:[Character] = ["g","e","t"," ","j","s","o","n"," ","e","r","r","o","r"]

/*: "Searching for perfect matches. please be patient." :*/
fileprivate let k_viewMsg:[UInt8] = [0x7b,0x8d,0x89,0x9a,0x8b,0x90,0x91,0x96,0x8f,0x48,0x8e,0x97,0x9a,0x48,0x98,0x8d,0x9a,0x8e,0x8d,0x8b,0x9c,0x48,0x95,0x89,0x9c,0x8b,0x90,0x8d,0x9b,0x56,0x48,0x98,0x94,0x8d,0x89,0x9b,0x8d,0x48,0x8a,0x8d,0x48,0x98,0x89,0x9c,0x91,0x8d,0x96,0x9c,0x56]

fileprivate func dropOff(table num: UInt8) -> UInt8 {
    let value = Int(num) - 40
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Matching..." :*/
fileprivate let kDataId:String = "guard viewMatch"

/*: "matchId" :*/
fileprivate let k_equalValue:String = "open right pathmatchId"

/*: "Random Video helps locating your matches online quickly. Random Videos are priced at 40 gold coins per minute and are paid for by the party calling the video." :*/
fileprivate let kTitleImageUrl:[UInt8] = [0x80,0x8f,0x9c,0x92,0x9d,0x9b,0x4e,0x84,0x97,0x92,0x93,0x9d,0x4e,0x96,0x93,0x9a,0x9e,0xa1,0x4e,0x9a,0x9d,0x91,0x8f,0xa2,0x97,0x9c,0x95,0x4e,0xa7,0x9d,0xa3,0xa0,0x4e,0x9b,0x8f,0xa2,0x91,0x96,0x93,0xa1,0x4e,0x9d,0x9c,0x9a,0x97,0x9c,0x93,0x4e,0x9f,0xa3,0x97,0x91,0x99,0x9a,0xa7,0x5c,0x4e,0x80,0x8f,0x9c,0x92,0x9d,0x9b,0x4e,0x84,0x97,0x92,0x93,0x9d,0xa1,0x4e,0x8f,0xa0,0x93,0x4e,0x9e,0xa0,0x97,0x91,0x93,0x92,0x4e,0x8f,0xa2,0x4e,0x62,0x5e,0x4e,0x95,0x9d,0x9a,0x92,0x4e,0x91,0x9d,0x97,0x9c,0xa1,0x4e,0x9e,0x93,0xa0,0x4e,0x9b,0x97,0x9c,0xa3,0xa2,0x93,0x4e,0x8f,0x9c,0x92,0x4e,0x8f,0xa0,0x93,0x4e,0x9e,0x8f,0x97,0x92,0x4e,0x94,0x9d,0xa0,0x4e,0x90,0xa7,0x4e,0xa2,0x96,0x93,0x4e,0x9e,0x8f,0xa0,0xa2,0xa7,0x4e,0x91,0x8f,0x9a,0x9a,0x97,0x9c,0x95,0x4e,0xa2,0x96,0x93,0x4e,0xa4,0x97,0x92,0x93,0x9d,0x5c]

fileprivate func startingBlock(icon num: UInt8) -> UInt8 {
    let value = Int(num) + 210
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "OK" :*/
fileprivate let kImageName:String = "Omake"

/*: "onVideoMatch" :*/
fileprivate let kDrawKeyGiftMessage:String = "onVidself gift key"

/*: "retryAfter" :*/
fileprivate let k_motivationData:[Character] = ["r","e","t"]
fileprivate let kStyleData:String = "ryAfteritem app status"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SetupObjectProtocol.swift
//  AbroadTalking
//
//  Created by young on 2022/11/4.
//

//: import UIKit
import UIKit

//: class TalkingQuickVideoMatchViewController: TalkingBaseViewController {
class SetupObjectProtocol: StartThen {
    //: private var headTimer: Timer?
    private var headTimer: Timer? // 头像展示定时器
    //: private var retryAfterTimer: Timer?
    private var retryAfterTimer: Timer? // 匹配失败重试定时器
    //: private var matchId: Int = 0
    private var matchId: Int = 0 // 速配批次Id

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: req_videoMatchHeadPics()
        matchPicsHeadTv()
        //: startVideoMatch()
        keyStream()
    }

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
        //: stopVideoMatch()
        sizeMatch()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true

        //: setupSubviews()
        statisticalTable()
        //: setupSubViewsConstraint()
        mediety()
    }

    //: deinit {
    deinit {
        //: stopVideoMatch()
        sizeMatch()
    }

    // MARK: - Lazy Load

    //: private lazy var bgImgView: UIImageView = {
    private lazy var bgImgView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.image = UIImage.imageGradientTopToBottonColor(colors: [UIColor.init(hex: "#201E50")!.cgColor, UIColor.init(hex: "#1F1624")!.cgColor], size: CGSize(width: ScreenWidth, height: ScreenHeight))
        view.image = UIImage.argument(colors: [UIColor(hex: (String(k_indexColorTitle.suffix(7))))!.cgColor, UIColor(hex: (String(kArrayStr)))!.cgColor], size: CGSize(width: constFormalContent, height: user_recordMarginValue))
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true

        //: let topView = UIImageView.init()
        let topView = UIImageView()
        //: topView.image = UIImage.submitGift(name: "quick_video_topview")
        topView.image = UIImage.submitGift(name: (String(kReplyTitle) + k_skinTopMessage.replacingOccurrences(of: "error", with: "_") + kIndexIconFormat.replacingOccurrences(of: "gift", with: "v")))
        //: topView.isUserInteractionEnabled = true
        topView.isUserInteractionEnabled = true
        //: view.addSubview(topView)
        view.addSubview(topView)
        //: topView.snp.makeConstraints { make in
        topView.snp.makeConstraints { make in
            //: make.leading.top.equalTo(0)
            make.leading.top.equalTo(0)
            //: make.width.height.equalTo(actualWidth(w: 218))
            make.width.height.equalTo(actualWidth(w: 218))
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var navView: UIView = {
    private lazy var navView: UIView = {
        //: let nav = UIView()
        let nav = UIView()
        //: nav.backgroundColor = .clear
        nav.backgroundColor = .clear
        // 返回
        //: let backBtn = UIButton(type: .custom)
        let backBtn = UIButton(type: .custom)
        //: let backBImg = UIImage.submitGift(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let backBImg = UIImage.submitGift(name: (String(k_labRowStr) + String(k_currentUrl.suffix(4)) + "ck_nor")).withRenderingMode(.alwaysTemplate)
        //: backBtn.setImage(backBImg, for: .normal)
        backBtn.setImage(backBImg, for: .normal)
        //: backBtn.tintColor = .white
        backBtn.tintColor = .white
        //: backBtn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(theBackAction), for: .touchUpInside)
        //: nav.addSubview(backBtn)
        nav.addSubview(backBtn)
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(NavigationBarHeight)
            make.height.equalTo(showBottomDailyValue)
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(main_netValue)
        }
        // 标题
        //: let titleLab = UILabel()
        let titleLab = UILabel()
        //: titleLab.font = UIFont.pingfangMediumFont(fontSize: 17)
        titleLab.font = UIFont.tapShared(fontSize: 17)
        //: titleLab.textColor = .white
        titleLab.textColor = .white
        //: titleLab.textAlignment = .center
        titleLab.textAlignment = .center
        //: titleLab.text = "Random Video".localized
        titleLab.text = (String(kIndexValue.suffix(7)) + String(k_valueUrl)).localized
        //: nav.addSubview(titleLab)
        nav.addSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        // 提示（审核模式隐藏）
        //: if DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
        if DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue {
            //: let matchTipsBtn = UIButton(type: .custom)
            let matchTipsBtn = UIButton(type: .custom)
            //: let matchTipsImg = UIImage.submitGift(name: "quick_video_explain").withRenderingMode(.alwaysTemplate)
            let matchTipsImg = UIImage.submitGift(name: (k_viewCellMsg.replacingOccurrences(of: "end", with: "c") + "k_video" + String(k_infoStr.prefix(4)) + "lain")).withRenderingMode(.alwaysTemplate)
            //: matchTipsBtn.setImage(matchTipsImg, for: .normal)
            matchTipsBtn.setImage(matchTipsImg, for: .normal)
            //: matchTipsBtn.tintColor = .white
            matchTipsBtn.tintColor = .white
            //: matchTipsBtn.addTarget(self, action: #selector(matchTipsButtonClick), for: .touchUpInside)
            matchTipsBtn.addTarget(self, action: #selector(sizeEqual), for: .touchUpInside)
            //: nav.addSubview(matchTipsBtn)
            nav.addSubview(matchTipsBtn)
            //: matchTipsBtn.snp.makeConstraints { make in
            matchTipsBtn.snp.makeConstraints { make in
                //: make.trailing.equalTo(0)
                make.trailing.equalTo(0)
                //: make.centerY.equalTo(backBtn)
                make.centerY.equalTo(backBtn)
                //: make.size.equalTo(CGSize(width: 45, height: NavigationBarHeight))
                make.size.equalTo(CGSize(width: 45, height: showBottomDailyValue))
            }
        }

        //: return nav
        return nav
        //: }()
    }()

    //: lazy var svgaPlayer: SVGAPlayer = {
    lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill

        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Quick_Video_BG)
        let url = VideoEffectTool.default.conType(type: .Quick_Video_BG)
        //: do {
        do {
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
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(kMakeSharedKey)))
        }

        //: return player
        return player
        //: }()
    }()

    //: private lazy var tipsLab: UILabel = {
    private lazy var tipsLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 15)
        lab.font = UIFont.targetFor(fontSize: 15)
        //: lab.textColor = UIColor.init(white: 1, alpha: 0.7)
        lab.textColor = UIColor(white: 1, alpha: 0.7)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Searching for perfect matches. please be patient.".localized
        lab.text = String(bytes: k_viewMsg.map{dropOff(table: $0)}, encoding: .utf8)!.localized
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var matchingLab: UILabel = {
    private lazy var matchingLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 18)
        lab.font = UIFont.tapShared(fontSize: 18)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Matching...".localized
        lab.text = (String(kDataId.suffix(5)) + "ing...").localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var headImgView: UIImageView = {
    private lazy var headImgView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.layer.cornerRadius = actualWidth(w: 90)/2
        img.layer.cornerRadius = actualWidth(w: 90) / 2
        //: img.image = UIImage.placeHolderImage(sex: Gender.female.rawValue)
        img.image = UIImage.delay(sex: ManagerQuickLookable.female.rawValue)
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var dataArr: [String] = {
    private lazy var dataArr: [String] = //: return Array<String>()
        .init()
    //: }()

    //: private lazy var resultDataArr: [TalkingMatchResultModel] = {
    private lazy var resultDataArr: [ValueModelType] = //: return Array<ValueModelType>()
        .init()
    //: }()
}

// MARK: - Request & 数据处理

//: extension TalkingQuickVideoMatchViewController {
extension SetupObjectProtocol {
    /// 速配头像列表（男）
    //: private func req_videoMatchHeadPics() {
    private func matchPicsHeadTv() {
        //: TalkingQuickVideoManager.req_videoMatchHeadPics { [weak self] succeed, result, errorModel in
        ValuePublishVideoManager.actuarialTable { [weak self] succeed, result, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard succeed == true else { return }
            guard succeed == true else { return }

            //: self.dataArr.removeAll()
            self.dataArr.removeAll()
            //: self.dataArr = result as! [String]
            self.dataArr = result as! [String]

            //: var index = 0
            var index = 0
            //: self.headTimer = Timer.scheduledTimer(withTimeInterval: 5, block: { timer in
            self.headTimer = Timer.scheduledTimer(withTimeInterval: 5, block: { _ in
                // 实现无限循环
                //: if index >= self.dataArr.count { index = 0 }
                if index >= self.dataArr.count { index = 0 }
                // 网络加载图片，实现高斯模糊效果
                //: self.headImgView.setUrlImage(urlStr: self.dataArr[index]) { isSucceed in
                self.headImgView.setUrlImage(urlStr: self.dataArr[index]) { _ in
                    //: guard let image = self.headImgView.image else { return }
                    guard let image = self.headImgView.image else { return }
                    //: self.headImgView.image = UIImage.blur(theImage: image, blurValue: 17)
                    self.headImgView.image = UIImage.withOf(theImage: image, blurValue: 17)
                }
                //: index += 1
                index += 1
                //: }, repeats: true)
            }, repeats: true)
            //: self.headTimer?.fire()
            self.headTimer?.fire()
        }
    }

    /// 开始视频速配（男）
    //: private func req_videoMatchToMatch() {
    private func methodBind() {
        //: TalkingQuickVideoManager.req_videoMatchToMatch(matchId: self.matchId) { succeed, result, errorModel in
        ValuePublishVideoManager.viewSufficient(matchId: self.matchId) { succeed, result, _ in
            //: guard succeed == true else { return }
            guard succeed == true else { return }

            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: self.matchId = json["matchId"].intValue
            self.matchId = json[(String(k_equalValue.suffix(7)))].intValue
        }
    }
}

// MARK: - Event

//: extension TalkingQuickVideoMatchViewController {
extension SetupObjectProtocol {
    /// 停止视频速配
    //: private func stopVideoMatch() {
    private func sizeMatch() {
        // 销毁定时器
        //: if self.headTimer != nil {
        if self.headTimer != nil {
            //: self.headTimer?.invalidate()
            self.headTimer?.invalidate()
            //: self.headTimer = nil
            self.headTimer = nil
        }

        //: if self.retryAfterTimer != nil {
        if self.retryAfterTimer != nil {
            //: self.retryAfterTimer?.invalidate()
            self.retryAfterTimer?.invalidate()
            //: self.retryAfterTimer = nil
            self.retryAfterTimer = nil
        }

        //: TalkingSocketManager.shared.videoMatchDelegate = nil
        ListSocketManager.shared.videoMatchDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        ListSocketManager.shared.errorDelegate = nil
    }

    /// 开始视频速配
    //: private func startVideoMatch() {
    private func keyStream() {
        //: TalkingSocketManager.shared.videoMatchDelegate = self
        ListSocketManager.shared.videoMatchDelegate = self
        //: TalkingSocketManager.shared.errorDelegate = self
        ListSocketManager.shared.errorDelegate = self
        //: req_videoMatchToMatch()
        methodBind()
    }

    /// 返回按钮
    //: @objc private func clickBackButtonAction() {
    @objc private func theBackAction() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    /// 打开视频速配说明
    //: @objc private func matchTipsButtonClick() {
    @objc private func sizeEqual() {
        //: let message = "Random Video helps locating your matches online quickly. Random Videos are priced at 40 gold coins per minute and are paid for by the party calling the video.".localized
        let message = String(bytes: kTitleImageUrl.map{startingBlock(icon: $0)}, encoding: .utf8)!.localized
        //: TalkingAlertShow.alert(title: nil, message: message, rightBtnTitle: "OK".localized)
        FrameHiddenReactiveCompatible.theory(title: nil, message: message, rightBtnTitle: "OK".localized)
    }
}

// MARK: - TalkingSocketManagerDelegate

//: extension TalkingQuickVideoMatchViewController: SocketManagerVideoMatchDelegate {
extension SetupObjectProtocol: JibeMatchDelegate {
    /// 视频速配成功
    //: func socket_match_onVideoMatch(data: [String: Any]) {
    func interval(data: [String: Any]) {
        // 停止速配，跳转速配结果界面
        //: stopVideoMatch()
        sizeMatch()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            //: guard let topVC = self.navigationController?.topViewController else { return }
            guard let topVC = self.navigationController?.topViewController else { return }
            //: guard !topVC.isKind(of: TalkingMatchResultViewController.self) else { return }
            guard !topVC.isKind(of: LanguageErrorDelegate.self) else { return }
            //: guard let model = TalkingMatchResultModel.deserialize(from: data) else { return }
            guard let model = ValueModelType.deserialize(from: data) else { return }

            // v1.0.6 订阅用户 当前视频速配成功的次数大于等于2，则在其匹配中页面额外展示回放按钮
            //: if DistanceAppManager.share.loginUserMode.loungePlus == true || DistanceAppManager.share.loginUserMode.videoPlayback == true {
            if DistanceAppManager.share.loginUserMode.loungePlus == true || DistanceAppManager.share.loginUserMode.videoPlayback == true {
                //: if self.resultDataArr.count >= 2 {
                if self.resultDataArr.count >= 2 {
                    //: self.resultDataArr.removeFirst()
                    self.resultDataArr.removeFirst()
                }
                //: self.resultDataArr.append(model)
                self.resultDataArr.append(model)

                //: } else {
            } else { // 非订阅用户只展示一条
                //: self.resultDataArr.removeAll()
                self.resultDataArr.removeAll()
                //: self.resultDataArr.append(model)
                self.resultDataArr.append(model)
            }

            //: let vc = TalkingMatchResultViewController()
            let vc = LanguageErrorDelegate()
            //: vc.showLastArr = self.resultDataArr
            vc.showLastArr = self.resultDataArr
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

    //: func socket_match_onRequestCall(data: [String: Any]) {}
    func ingot(data _: [String: Any]) {}
}

// MARK: - PerformanceErrorDelegate

//: extension TalkingQuickVideoMatchViewController: TalkingSocketManagerErrorDelegate {
extension SetupObjectProtocol: PerformanceErrorDelegate {
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func socket(errorNo: Int, cmd: String, msg _: String, data: [String: Any]) {
        //: if cmd == "onVideoMatch" && errorNo == 449 { // 匹配池用完，延时重试
        if cmd == (String(kDrawKeyGiftMessage.prefix(5)) + "eoMatch") && errorNo == 449 { // 匹配池用完，延时重试
            //: let json = JSON(data)
            let json = JSON(data)
            //: retryAfterTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(json["retryAfter"].intValue), block: { [weak self] timer in
            retryAfterTimer = Timer.scheduledTimer(withTimeInterval: TimeInterval(json[(String(k_motivationData) + String(kStyleData.prefix(7)))].intValue), block: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }

                //: self.matchId = json["matchId"].intValue
                self.matchId = json[(String(k_equalValue.suffix(7)))].intValue
                //: self.startVideoMatch()
                self.keyStream()
                //: }, repeats: false)
            }, repeats: false)
        }
    }
}

// MARK: - Layout

//: extension TalkingQuickVideoMatchViewController {
extension SetupObjectProtocol {
    /// 添加视图
    //: private func setupSubviews() {
    private func statisticalTable() {
        //: self.view.addSubview(bgImgView)
        self.view.addSubview(bgImgView)
        //: self.view.addSubview(navView)
        self.view.addSubview(navView)
        //: self.view.addSubview(svgaPlayer)
        self.view.addSubview(svgaPlayer)
        //: self.view.addSubview(tipsLab)
        self.view.addSubview(tipsLab)
        //: self.view.addSubview(matchingLab)
        self.view.addSubview(matchingLab)
        //: self.view.addSubview(headImgView)
        self.view.addSubview(headImgView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func mediety() {
        //: bgImgView.snp.makeConstraints { make in
        bgImgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: navView.snp.makeConstraints { make in
        navView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(StatusBarNavigationBarHeight)
            make.height.equalTo(appTurnName)
        }
        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 50))
            make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 50))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: ScreenWidth, height: ScreenWidth))
            make.size.equalTo(CGSize(width: constFormalContent, height: constFormalContent))
        }
        //: tipsLab.snp.makeConstraints { make in
        tipsLab.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.bottom.equalToSuperview().offset(-88-kDeviceSafeBottomHeight)
            make.bottom.equalToSuperview().offset(-88 - appButtonData)
        }
        //: matchingLab.snp.makeConstraints { make in
        matchingLab.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.bottom.equalTo(tipsLab.snp.top).offset(-20)
            make.bottom.equalTo(tipsLab.snp.top).offset(-20)
        }
        //: headImgView.snp.makeConstraints { make in
        headImgView.snp.makeConstraints { make in
            //: make.center.equalTo(svgaPlayer)
            make.center.equalTo(svgaPlayer)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 90), height: actualWidth(w: 90)))
            make.size.equalTo(CGSize(width: actualWidth(w: 90), height: actualWidth(w: 90)))
        }
    }
}
