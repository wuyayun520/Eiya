
//: Declare String Begin

/*: "#201E50" :*/
fileprivate let k_cardData:[Character] = ["#","2","0","1","E","5","0"]

/*: "#1F1624" :*/
fileprivate let k_viewMsg:String = "beauty"
fileprivate let k_succeedMakeStr:[Character] = ["1","F","1","6","2","4"]

/*: "quick_video_topview" :*/
fileprivate let k_objectPlayData:String = "quick_model color view"
fileprivate let kImageUrl:String = "o_toshow return text"
fileprivate let k_tapModelLeftStr:String = "pvaddw"

/*: "btn_back_white" :*/
fileprivate let kValueResultUrl:[Character] = ["b","t","n","_","b","a","c","k","_","w","h"]
fileprivate let kFromContent:String = "iapp"

/*: "Random Video" :*/
fileprivate let kSuiteTabTitle:[Character] = ["R","a","n","d","o","m"," ","V","i","d","e","o"]

/*: "icon_rank_coin" :*/
fileprivate let kBottomUrl:String = "ICON"
fileprivate let k_styleName:[Character] = ["k","_","c","o","i","n"]

/*: "btn_quick_back_nor" :*/
fileprivate let k_addFormat:String = "btn_quframe in view true"
fileprivate let kActionName:String = "ck_normake content effect"

/*: "icon_video_skip" :*/
fileprivate let kMakeId:[Character] = ["i","c","o","n","_","v","i","d","e","o","_","s"]
fileprivate let kAppBlockKey:[Character] = ["k","i","p"]

/*: "#9610FF" :*/
fileprivate let k_addressUrl:String = "theory equal to constraint broadcast#9610FF"

/*: "#8566FF" :*/
fileprivate let k_arcMessage:[Character] = ["#","8","5","6","6","F","F"]

/*: "icon_coin_match_line" :*/
fileprivate let kRawValue:String = "icotemp"
fileprivate let kAtDayId:[Character] = ["c","h","_","l","i","n","e"]

/*: "matchId" :*/
fileprivate let kErrorPathGestureStr:[UInt8] = [0x13,0x1f,0xa,0x1d,0x16,0x37,0x1a]

private func positionWhite(center num: UInt8) -> UInt8 {
    return num ^ 126
}

/*: "source" :*/
fileprivate let k_textKey:[UInt8] = [0x40,0x5c,0x46,0x41,0x50,0x56]

private func pointOfDeparture(frame num: UInt8) -> UInt8 {
    return num ^ 51
}

/*: "type" :*/
fileprivate let kUserFormat:[UInt8] = [0x16,0x1b,0x12,0x7]

private func messageView(key num: UInt8) -> UInt8 {
    return num ^ 98
}

/*: "uid" :*/
fileprivate let k_cellLastCornerName:String = "atd"

/*: "fromFreeCall" :*/
fileprivate let kColorKey:[Character] = ["f","r","o","m"]
fileprivate let kSoundMsg:String = "FreeCallcontent path self make"

/*: "cmd" :*/
fileprivate let k_backMessage:[UInt8] = [0xf5,0xff,0xf6]

fileprivate func viewVisual(section num: UInt8) -> UInt8 {
    let value = Int(num) + 110
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "requestCall" :*/
fileprivate let kMoreName:String = "rmakeu"
fileprivate let kTimeMessage:[Character] = ["l","l"]

/*: "data" :*/
fileprivate let k_dataCornerMsg:[UInt8] = [0x61,0x74,0x61,0x64]

/*: "onRequestCall" :*/
fileprivate let k_cellText:[Character] = ["o","n","R","e","q","u","e","s","t","C","a","l","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LanguageErrorDelegate.swift
//  AbroadTalking
//
//  Created by young on 2022/11/7.
//

//: import UIKit
import UIKit

//: class TalkingMatchResultViewController: TalkingBaseViewController {
class LanguageErrorDelegate: StartThen {
    //: private var currentModel = TalkingMatchResultModel()
    private var currentModel = ValueModelType() // 当前展示的model

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        // 每次打开更新金额
        //: refreshCoin()
        halfEagle()
    }

    //: override func viewWillDisappear(_ animated: Bool) {
    override func viewWillDisappear(_ animated: Bool) {
        //: super.viewWillDisappear(animated)
        super.viewWillDisappear(animated)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true

        //: setupSubviews()
        constraintSubviews()
        //: setupSubViewsConstraint()
        successCancel()
        //: refreshUI()
        enterEnable()

        /// 添加刷新余额的通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(refreshCoin),
                                               selector: #selector(halfEagle),
                                               //: name: UPDATE_USER_GETINFOCOLUMN_NOTIFICATION,
                                               name: notiRecordName,
                                               //: object: nil)
                                               object: nil)
    }

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.videoMatchDelegate = nil
        ListSocketManager.shared.videoMatchDelegate = nil
        //: TalkingSocketManager.shared.errorDelegate = nil
        ListSocketManager.shared.errorDelegate = nil
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var backView: UIImageView = {
    private lazy var backView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.image = UIImage.imageGradientTopToBottonColor(colors: [UIColor.init(hex: "#201E50")!.cgColor, UIColor.init(hex: "#1F1624")!.cgColor], size: CGSize(width: ScreenWidth, height: ScreenHeight))
        view.image = UIImage.argument(colors: [UIColor(hex: (String(k_cardData)))!.cgColor, UIColor(hex: (k_viewMsg.replacingOccurrences(of: "beauty", with: "#") + String(k_succeedMakeStr)))!.cgColor], size: CGSize(width: constFormalContent, height: user_recordMarginValue))
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true

        //: let topView = UIImageView.init()
        let topView = UIImageView()
        //: topView.image = UIImage.submitGift(name: "quick_video_topview")
        topView.image = UIImage.submitGift(name: (String(k_objectPlayData.prefix(6)) + "vide" + String(kImageUrl.prefix(4)) + k_tapModelLeftStr.replacingOccurrences(of: "add", with: "ie")))
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
        //: backBtn.setImage(UIImage.submitGift(name: "btn_back_white"), for: .normal)
        backBtn.setImage(UIImage.submitGift(name: (String(kValueResultUrl) + kFromContent.replacingOccurrences(of: "app", with: "te"))), for: .normal)
        //: backBtn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        backBtn.addTarget(self, action: #selector(elementObserver), for: .touchUpInside)
        //: nav.addSubview(backBtn)
        nav.addSubview(backBtn)
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.width.equalTo(20)
            make.width.equalTo(20)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
            //: make.top.equalTo(StatusBarHeight+12)
            make.top.equalTo(main_netValue + 12)
        }
        // 标题
        //: let titleLab = UILabel()
        let titleLab = UILabel()
        //: titleLab.font = UIFont.pingfangMediumFont(fontSize: 17)
        titleLab.font = UIFont.tapShared(fontSize: 17)
        //: titleLab.textColor = UIColor.white
        titleLab.textColor = UIColor.white
        //: titleLab.textAlignment = .center
        titleLab.textAlignment = .center
        //: titleLab.text = "Random Video".localized
        titleLab.text = (String(kSuiteTabTitle)).localized
        //: nav.addSubview(titleLab)
        nav.addSubview(titleLab)
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        // 余额
        //: let coinBtn = TalkingButton()
        let coinBtn = ResumeControl()
        //: coinBtn.tag = 1001
        coinBtn.tag = 1001
        //: coinBtn.setImage(UIImage.submitGift(name: "icon_rank_coin"), for: .normal)
        coinBtn.setImage(UIImage.submitGift(name: (kBottomUrl.lowercased() + "_ran" + String(k_styleName))), for: .normal)
        //: coinBtn.setImage(UIImage.submitGift(name: "icon_rank_coin"), for: .disabled)
        coinBtn.setImage(UIImage.submitGift(name: (kBottomUrl.lowercased() + "_ran" + String(k_styleName))), for: .disabled)
        //: coinBtn.isEnabled = false
        coinBtn.isEnabled = false
        //: coinBtn.setTitleColor(UIColor.colorStatuteNameApp(), for: .normal)
        coinBtn.setTitleColor(UIColor.colorStatuteNameApp(), for: .normal)
        //: coinBtn.setTitle("\(DistanceAppManager.share.loginUserMode.mf_coin)", for: .normal)
        coinBtn.setTitle("\(DistanceAppManager.share.loginUserMode.mf_coin)", for: .normal)
        //: coinBtn.titleLabel?.font = UIFont.fontChange(type: .Semibold, fontSize: 15)
        coinBtn.titleLabel?.font = UIFont.fontChange(type: .Semibold, fontSize: 15)
        //: coinBtn.backgroundColor = UIColor.white
        coinBtn.backgroundColor = UIColor.white
        //: coinBtn.layer.cornerRadius = 12
        coinBtn.layer.cornerRadius = 12
        //: coinBtn.imageAlignment = .left
        coinBtn.imageAlignment = .left
//        coinBtn.spaceBetweenTitleAndImage = 3
        //: nav.addSubview(coinBtn)
        nav.addSubview(coinBtn)
        //: coinBtn.snp.makeConstraints { make in
        coinBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-19)
            make.trailing.equalTo(-19)
            //: make.centerY.equalTo(backBtn)
            make.centerY.equalTo(backBtn)
            //: make.height.equalTo(24)
            make.height.equalTo(24)
        }

        //: return nav
        return nav
        //: }()
    }()

    //: private lazy var picturesView: TalkingMatchResultPicturesView = {
    private lazy var picturesView: CompoundReactiveCompatible = {
        //: let v = TalkingMatchResultPicturesView(frame: .zero)
        let v = CompoundReactiveCompatible(frame: .zero)
        //: v.matchBackBlock = { [weak self] in
        v.matchBackBlock = { [weak self] in
            //: guard let self = self else {
            guard let self = self else {
                //: return
                return
            }
            //: self.clickBackButtonAction()
            self.elementObserver()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var showLastBtn: UIButton = {
    private lazy var showLastBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.submitGift(name: "btn_quick_back_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.submitGift(name: (String(k_addFormat.prefix(6)) + "ick_ba" + String(kActionName.prefix(6)))), for: .normal)
        //: btn.addTarget(self, action: #selector(showLastButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(videoClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var skipBtn: UIButton = {
    private lazy var skipBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "icon_video_skip"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kMakeId) + String(kAppBlockKey))), for: .normal)
        //: btn.addTarget(self, action: #selector(clickBackButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(elementObserver), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var callBtn: UIButton = {
    private lazy var callBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(callButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(snapFasteningText), for: .touchUpInside)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: [UIColor.init(hex: "#9610FF")!.cgColor, UIColor.init(hex: "#8566FF")!.cgColor], size: CGSize(width: 140, height: 69)), for: .normal)
        btn.setBackgroundImage(UIImage.makeEqual(colors: [UIColor(hex: (String(k_addressUrl.suffix(7))))!.cgColor, UIColor(hex: (String(k_arcMessage)))!.cgColor], size: CGSize(width: 140, height: 69)), for: .normal)
        //: btn.layer.cornerRadius = 69/2
        btn.layer.cornerRadius = 69 / 2
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.titleLabel?.numberOfLines = 2
        btn.titleLabel?.numberOfLines = 2

        //: return btn
        return btn
        //: }()
    }()

    //: lazy var showLastArr: [TalkingMatchResultModel] = {
    lazy var showLastArr: [ValueModelType] = //: return Array<ValueModelType>()
        .init()
    //: }()

    //: lazy var dzView: UIImageView = {
    lazy var dzView: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.image = UIImage.submitGift(name: "icon_coin_match_line")
        view.image = UIImage.submitGift(name: (kRawValue.replacingOccurrences(of: "temp", with: "n") + "_coin_mat" + String(kAtDayId)))
        //: view.isHidden = true
        view.isHidden = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMatchResultViewController {
extension LanguageErrorDelegate {
    /// 返回按钮
    //: @objc private func clickBackButtonAction() {
    @objc private func elementObserver() {
        //: if self.presentedViewController != nil {
        if self.presentedViewController != nil { // 可能有重置弹窗未消除的情况，许手动消除
            //: self.presentedViewController?.dismiss(animated: true)
            self.presentedViewController?.dismiss(animated: true)
        }
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    /// 拨打视频通话socket
    //: @objc private func callButtonClick() {
    @objc private func snapFasteningText() {
        //: var data: [String: Any] = ["matchId": self.currentModel.matchId,
        var data: [String: Any] = [String(bytes: kErrorPathGestureStr.map{positionWhite(center: $0)}, encoding: .utf8)!: self.currentModel.matchId,
                                   //: "source": self.currentModel.source,
                                   String(bytes: k_textKey.map{pointOfDeparture(frame: $0)}, encoding: .utf8)!: self.currentModel.source,
                                   //: "type": self.currentModel.type,
                                   String(bytes: kUserFormat.map{messageView(key: $0)}, encoding: .utf8)!: self.currentModel.type,
                                   //: "uid": self.currentModel.uid]
                                   (k_cellLastCornerName.replacingOccurrences(of: "at", with: "ui")): self.currentModel.uid]
        //: if DistanceAppManager.share.loginUserMode.freeCallTimes > 0 && DistanceAppManager.share.loginUserMode.sex == Gender.male.rawValue {
        if DistanceAppManager.share.loginUserMode.freeCallTimes > 0, DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (String(kColorKey) + String(kSoundMsg.prefix(8))))
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = [String(bytes: k_backMessage.map{viewVisual(section: $0)}, encoding: .utf8)!: (kMoreName.replacingOccurrences(of: "make", with: "eq") + "estCa" + String(kTimeMessage)), String(bytes: k_dataCornerMsg.reversed(), encoding: .utf8)!: data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        ListSocketManager.shared.pathTab(info: info)
        //: TalkingSocketManager.shared.videoMatchDelegate = self
        ListSocketManager.shared.videoMatchDelegate = self
        //: TalkingSocketManager.shared.errorDelegate = self
        ListSocketManager.shared.errorDelegate = self
    }

    /// 通知刷新余额
    //: @objc private func refreshCoin() {
    @objc private func halfEagle() {
        //: AppManagerRequest.func__getInfoColumn { succeed, result, errorModel in
        ModelThen.upButton { succeed, _, _ in
            //: guard succeed == true else { return }
            guard succeed == true else { return }

            //: let coinBtn = self.navView.viewWithTag(1001) as! TalkingButton
            let coinBtn = self.navView.viewWithTag(1001) as! ResumeControl
            //: coinBtn.setTitle(DistanceAppManager.share.loginUserMode.mf_coin, for: .normal)
            coinBtn.setTitle(DistanceAppManager.share.loginUserMode.mf_coin, for: .normal)
        }
    }

    /// 展示上一个视频速配结果
    //: @objc private func showLastButtonClick() {
    @objc private func videoClick() {
        //: showLastArr.removeLast()
        showLastArr.removeLast()
        //: refreshUI()
        enterEnable()
    }
}

// MARK: - SocketManagerMatchResultDelegate

//: extension TalkingMatchResultViewController: SocketManagerVideoMatchDelegate {
extension LanguageErrorDelegate: JibeMatchDelegate {
    //: func socket_match_onVideoMatch(data: [String: Any]) {}
    func interval(data _: [String: Any]) {}

    /// 匹配成功，可以拨打通话（此处跳转特殊处理）
    //: func socket_match_onRequestCall(data: [String: Any]) {
    func ingot(data: [String: Any]) {
        //: var arrM = self.navigationController!.viewControllers
        var arrM = self.navigationController!.viewControllers
        //: for (index, vc) in self.navigationController!.viewControllers.enumerated() {
        for (index, vc) in self.navigationController!.viewControllers.enumerated() {
            //: if vc.isKind(of: TalkingMatchResultViewController.self) {
            if vc.isKind(of: LanguageErrorDelegate.self) {
                //: arrM.remove(at: index)
                arrM.remove(at: index)
                //: break
                break
            }
        }
        //: var newData = data
        var newData = data
        //: newData["uid"] = self.currentModel.uid
        newData[(k_cellLastCornerName.replacingOccurrences(of: "at", with: "ui"))] = self.currentModel.uid
        //: let vc = TalkingVideoChatViewController()
        let vc = KeyDataViewController()
        //: vc.chatModel = TalkingVideoChatModel.getVideoModel(info: newData, situation: .Start)
        vc.chatModel = ViewChatModel.reportCard(info: newData, situation: .Start)

        //: vc.hidesBottomBarWhenPushed = true
        vc.hidesBottomBarWhenPushed = true
        //: arrM.append(vc)
        arrM.append(vc)
        //: self.navigationController?.setViewControllers(arrM, animated: true)
        self.navigationController?.setViewControllers(arrM, animated: true)
    }
}

// MARK: - PerformanceErrorDelegate

//: extension TalkingMatchResultViewController: TalkingSocketManagerErrorDelegate {
extension LanguageErrorDelegate: PerformanceErrorDelegate {
    /// socket收到失败消息
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func socket(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(k_cellText)) {
            //: self.func__showStatusBarErrorMsg(showMsg: msg)
            self.arcInfo(showMsg: msg)
            //: if errorNo == VideoChatErrorCode.CallEnd.rawValue {
            if errorNo == AppListSubscriptType.CallEnd.rawValue {
                //: clickBackButtonAction()
                elementObserver()
                //: } else if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            } else if errorNo == AppListSubscriptType.MoneyLack.rawValue {
                //: guard DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue else { return }
                //: AddReactiveCompatible.share.func__jumpToWebRecharge(sufficient: false)
                AddReactiveCompatible.share.viewParams(sufficient: false)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingMatchResultViewController {
extension LanguageErrorDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func constraintSubviews() {
        //: self.view.addSubview(backView)
        self.view.addSubview(backView)
        //: backView.addSubview(navView)
        backView.addSubview(navView)
        //: backView.addSubview(picturesView)
        backView.addSubview(picturesView)
        //: backView.addSubview(showLastBtn)
        backView.addSubview(showLastBtn)
        //: backView.addSubview(skipBtn)
        backView.addSubview(skipBtn)
        //: backView.addSubview(callBtn)
        backView.addSubview(callBtn)
        //: callBtn.addSubview(dzView)
        callBtn.addSubview(dzView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func successCancel() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
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
        //: callBtn.snp.makeConstraints { make in
        callBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-(kDeviceSafeBottomHeight+36))
            make.bottom.equalTo(-(appButtonData + 36))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(69)
            make.height.equalTo(69)
            //: make.width.equalTo(140)
            make.width.equalTo(140)
        }

        //: picturesView.snp.makeConstraints { make in
        picturesView.snp.makeConstraints { make in
            //: make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 17))
            make.top.equalTo(navView.snp.bottom).offset(actualWidth(w: 17))
            //: make.leading.equalTo(18)
            make.leading.equalTo(18)
            //: make.trailing.equalTo(-22)
            make.trailing.equalTo(-22)
            //: make.bottom.equalTo(callBtn.snp.top).offset(-32)
            make.bottom.equalTo(callBtn.snp.top).offset(-32)
        }
        //: showLastBtn.snp.makeConstraints { make in
        showLastBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(callBtn.snp.leading).offset(-20)
            make.trailing.equalTo(callBtn.snp.leading).offset(-20)
            //: make.centerY.equalTo(callBtn)
            make.centerY.equalTo(callBtn)
            //: make.size.equalTo(CGSize(width: 50, height: 50))
            make.size.equalTo(CGSize(width: 50, height: 50))
        }

        //: dzView.snp.makeConstraints { make in
        dzView.snp.makeConstraints { make in
            //: make.leading.equalTo(146)
            make.leading.equalTo(146)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.height.equalTo(8)
            make.height.equalTo(8)
            //: make.width.equalTo(42)
            make.width.equalTo(42)
        }
        //: skipBtn.snp.makeConstraints { make in
        skipBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(callBtn.snp.trailing).offset(21)
            make.leading.equalTo(callBtn.snp.trailing).offset(21)
            //: make.centerY.equalTo(callBtn)
            make.centerY.equalTo(callBtn)
            //: make.size.equalTo(50)
            make.size.equalTo(50)
        }
    }

    /// 刷新UI
    //: private func refreshUI() {
    private func enterEnable() {
        //: if showLastArr.count > 0 {
        if showLastArr.count > 0 { // 最后一个是最新数据
            //: currentModel = showLastArr.last!
            currentModel = showLastArr.last!
        }
        //: setPriceBtn()
        gestureBtn()
        //: picturesView.updatePicturesView(model: currentModel)
        picturesView.closeArray(model: currentModel)
        //: picturesView.matchPlayVideoBlock = { [weak self] (videoUrl) in
        picturesView.matchPlayVideoBlock = { [weak self] videoUrl in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: let vc = TalkingMomentVideoVC.init(videoPath: videoUrl)
            let vc = PublishRecognizerDelegate(videoPath: videoUrl)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.selectStart()?.navigationController?.pushViewController(vc, animated: true)
        }

        //: showLastBtn.isHidden = (showLastArr.count >= 2) ? false:true
        showLastBtn.isHidden = (showLastArr.count >= 2) ? false : true

        // 审核模式隐藏金币
        //: if DistanceAppManager.share.appStatus != AppSkinStatus.normal.rawValue {
        if DistanceAppManager.share.appStatus != NameQuickLookable.normal.rawValue {
            //: let coinBtn = self.navView.viewWithTag(1001) as! TalkingButton
            let coinBtn = self.navView.viewWithTag(1001) as! ResumeControl
            //: coinBtn.isHidden = true
            coinBtn.isHidden = true
            //: setPriceBtn()
            gestureBtn()
        }
    }

    //: func setPriceBtn() {
    func gestureBtn() {
        //: let attrString = String.setPriceStr(fee: currentModel.fee, originalFee: currentModel.originalFee, freeCallTimes: DistanceAppManager.share.loginUserMode.freeCallTimes)
        let attrString = String.fromUser(fee: currentModel.fee, originalFee: currentModel.originalFee, freeCallTimes: DistanceAppManager.share.loginUserMode.freeCallTimes)
        //: callBtn.isHidden = false
        callBtn.isHidden = false
        //: callBtn.setAttributedTitle(attrString, for: .normal)
        callBtn.setAttributedTitle(attrString, for: .normal)
    }
}
