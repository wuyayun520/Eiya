
//: Declare String Begin

/*: "bg_shouye_misanguang_default" :*/
fileprivate let k_linkData:String = "data layer space equal pathbg_sho"
fileprivate let k_dataName:String = "genable"
fileprivate let k_managerStr:[Character] = ["a","n","g","_","d","e","f","a","u","l","t"]

/*: "#777777" :*/
fileprivate let k_scaleCancelMessage:String = "#viewviewview"

/*: "#333333" :*/
fileprivate let kEqualId:[Character] = ["#","3","3","3","3","3","3"]

/*: "Party" :*/
fileprivate let k_pushMsg:[Character] = ["P","a","r","t","y"]

/*: "Popular" :*/
fileprivate let kShareTextData:[Character] = ["P","o","p","u","l","a","r"]

/*: "Nearby" :*/
fileprivate let kUserName:String = "Nearbywith array else after view"

/*: "New" :*/
fileprivate let kInfoTitleName:String = "Newmodel import pop"

/*: "btn_popular_search_nor" :*/
fileprivate let k_makeMessage:[Character] = ["b","t","n","_","p","o","p","u","l","a","r","_","s","e","a","r","c","h","_","n","o"]
fileprivate let kValueStr:String = "to"

/*: "icon_live_nor" :*/
fileprivate let kReceiveText:[Character] = ["i","c","o"]
fileprivate let k_blockViewName:String = "case to remove self viewn_live"

/*: "btn_popular_ranking_nor" :*/
fileprivate let kToData:String = "btn_polab user result"
fileprivate let kRequestPath:[Character] = ["p","u","l","a","r","_","r","a","n","k","i","n","g","_","n","o","r"]

/*: "Congratulation on your chance to join the Star Plan !" :*/
fileprivate let k_styleText:[UInt8] = [0x50,0x7c,0x7b,0x74,0x7f,0x6e,0x81,0x82,0x79,0x6e,0x81,0x76,0x7c,0x7b,0x2d,0x7c,0x7b,0x2d,0x86,0x7c,0x82,0x7f,0x2d,0x70,0x75,0x6e,0x7b,0x70,0x72,0x2d,0x81,0x7c,0x2d,0x77,0x7c,0x76,0x7b,0x2d,0x81,0x75,0x72,0x2d,0x60,0x81,0x6e,0x7f,0x2d,0x5d,0x79,0x6e,0x7b,0x2d,0x2e]

fileprivate func publiclyLocal(shared num: UInt8) -> UInt8 {
    let value = Int(num) + 243
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "No, thanks" :*/
fileprivate let kVideoId:String = "No, section index self make search"

/*: "Find out more" :*/
fileprivate let k_shareInputTitle:[Character] = ["F","i","n","d"," ","o","u","t"," ","m","o","r","e"]

/*: "clickStarProjectpop-upsCancel" :*/
fileprivate let k_increaseTitle:String = "else timeclickS"
fileprivate let kNextTitle:String = "rojenormal"
fileprivate let k_jumpToVideoText:[Character] = ["p","o","p","-","u","p","s","C","a","n","c","e","l"]

/*: "clickStarProjectpop-upsFindoutmore" :*/
fileprivate let k_popUrl:[UInt8] = [0x65,0x72,0x6f,0x6d,0x74,0x75,0x6f,0x64,0x6e,0x69,0x46,0x73,0x70,0x75,0x2d,0x70,0x6f,0x70,0x74,0x63,0x65,0x6a,0x6f,0x72,0x50,0x72,0x61,0x74,0x53,0x6b,0x63,0x69,0x6c,0x63]

/*: "Allow %@ to send you notifications?" :*/
fileprivate let k_valueStr:[UInt8] = [0xbd,0x90,0x90,0x93,0x8b,0xdc,0xd9,0xbc,0xdc,0x88,0x93,0xdc,0x8f,0x99,0x92,0x98,0xdc,0x85,0x93,0x89,0xdc,0x92,0x93,0x88,0x95,0x9a,0x95,0x9f,0x9d,0x88,0x95,0x93,0x92,0x8f,0xc3]

/*: "Cancel" :*/
fileprivate let k_lengthFormat:[Character] = ["C","a","n","c","e","l"]

/*: "Settings" :*/
fileprivate let k_modelValue:String = "Settingslog self false"

/*: _ :*/
fileprivate let k_clearTitle:[Character] = ["_"]

/*: "male" :*/
fileprivate let k_mStr:[UInt8] = [0x5a,0x4e,0x59,0x52]

fileprivate func miniGift(top num: UInt8) -> UInt8 {
    let value = Int(num) - 237
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "female" :*/
fileprivate let kPopValue:String = "femacouncil"
fileprivate let kHiddenAssetName:String = "window"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CoverThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import JXPagingView
import JXPagingView
//: import JXSegmentedView
import JXSegmentedView
//: import UIKit
import UIKit

//: class TalkingSocialViewController: TalkingBaseViewController {
class CoverThen: StartThen {
    //: private let segmentedDataSource = JXSegmentedTitleDataSource()
    private let segmentedDataSource = JXSegmentedTitleDataSource()
    //: private var  isNearbyShow = false
    private var isNearbyShow = false
    //: var  seleteIndex = 1
    var seleteIndex = 1
    //: private var liveTipsTimer: Timer?
    private var liveTipsTimer: Timer? /// 头像动画timer

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: GiftFloatViewManager.shared.activeWhenShow()
        AdministratorThen.shared.viewPoint()
    }

    //: override func viewDidDisappear(_ animated: Bool) {
    override func viewDidDisappear(_ animated: Bool) {
        //: super.viewDidDisappear(animated)
        super.viewDidDisappear(animated)
        //: GiftFloatViewManager.shared.stopWhenDismiss()
        AdministratorThen.shared.collectionTo()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.setupSubviews()
        self.setupSubviews()
        //: self.setupSubViewsConstraint()
        self.voiceCell()
        //: self.addNotification()
        self.rovingNotification()
        //: self.func__checkStarPlanNeedShow()
        self.betweenTop()
        //: self.func__turnOnSystemNotification()
        self.strong()
        //: self.pushIsClubVideo()
        self.statusVideo()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: stop_liveTipsTimer()
        caseTimer()
    }

    // MARK: - Lazy load

    //: private lazy var bottomImgView: UIImageView = {
    private lazy var bottomImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.submitGift(name: "bg_shouye_misanguang_default"))
        let imgV = UIImageView(image: UIImage.submitGift(name: (String(k_linkData.suffix(6)) + "uye_misan" + k_dataName.replacingOccurrences(of: "enable", with: "u") + String(k_managerStr))))
        //: imgV.isUserInteractionEnabled = false
        imgV.isUserInteractionEnabled = false
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var categoryView: JXSegmentedView = {
    private lazy var categoryView: JXSegmentedView = {
        //: let segmentedView = JXSegmentedView.init(frame: CGRect.init(x: 0, y: StatusBarHeight, width: ScreenWidth, height: NavigationBarHeight))
        let segmentedView = JXSegmentedView(frame: CGRect(x: 0, y: main_netValue, width: constFormalContent, height: showBottomDailyValue))
        //: segmentedDataSource.itemSpacing = 18
        segmentedDataSource.itemSpacing = 18
        //: segmentedDataSource.titles = titleArray
        segmentedDataSource.titles = titleArray
        //: segmentedDataSource.isTitleMaskEnabled = false
        segmentedDataSource.isTitleMaskEnabled = false
        //: segmentedDataSource.isItemSpacingAverageEnabled = false
        segmentedDataSource.isItemSpacingAverageEnabled = false
        //: segmentedDataSource.isSelectedAnimable = false
        segmentedDataSource.isSelectedAnimable = false
        //: segmentedDataSource.titleNormalColor = UIColor.init(hex: "#777777")!
        segmentedDataSource.titleNormalColor = UIColor(hex: (k_scaleCancelMessage.replacingOccurrences(of: "view", with: "77")))!
        //: segmentedDataSource.titleSelectedColor = UIColor.init(hex: "#333333")!
        segmentedDataSource.titleSelectedColor = UIColor(hex: (String(kEqualId)))!
        //: segmentedDataSource.titleNormalFont = .fontChange(type: .Medium, fontSize: 16)
        segmentedDataSource.titleNormalFont = .fontChange(type: .Medium, fontSize: 16)
        //: segmentedDataSource.titleSelectedFont = .fontChange(type: .Medium, fontSize: 18)
        segmentedDataSource.titleSelectedFont = .fontChange(type: .Medium, fontSize: 18)
//        segmentedDataSource.itemWidthIncrement = 0
        //: let indicator = JXSegmentedIndicatorLineView()
        let indicator = JXSegmentedIndicatorLineView()
        //: indicator.indicatorWidth = 12
        indicator.indicatorWidth = 12
        //: indicator.indicatorHeight = 4
        indicator.indicatorHeight = 4
        //: indicator.verticalOffset = 4
        indicator.verticalOffset = 4
        //: indicator.lineStyle = .normal
        indicator.lineStyle = .normal
        //: indicator.indicatorColor = UIColor.init(hex: "#333333")!
        indicator.indicatorColor = UIColor(hex: (String(kEqualId)))!
        //: segmentedView.dataSource = segmentedDataSource
        segmentedView.dataSource = segmentedDataSource
        //: segmentedView.indicators = [indicator]
        segmentedView.indicators = [indicator]
        //: segmentedView.delegate = self
        segmentedView.delegate = self
        //: segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        //: segmentedView.defaultSelectedIndex = 1
        segmentedView.defaultSelectedIndex = 1
//        segmentedView.backgroundColor = .clear
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeLanguageManager.shared.direction == .rightToLeft {
            //: segmentedView.transform = CGAffineTransform(scaleX: -1, y: 1)
            segmentedView.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: return segmentedView
        return segmentedView
        //: }()
    }()

    //: private lazy var pagerView: JXPagingListRefreshView = {
    private lazy var pagerView: JXPagingListRefreshView = {
        let view = JXPagingListRefreshView.init(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        //: view.frame = CGRect.init(x: 0, y: StatusBarHeight, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight-StatusBarHeight)
        view.frame = CGRect(x: 0, y: main_netValue, width: constFormalContent, height: user_recordMarginValue - dataImageItemValue - main_netValue)
//        view.pinSectionHeaderVerticalOffset = 20
        //: view.defaultSelectedIndex = 1
        view.defaultSelectedIndex = 1
        //: view.mainTableView.backgroundColor = .clear
        view.mainTableView.backgroundColor = .clear
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeLanguageManager.shared.direction == .rightToLeft {
            //: view.transform = CGAffineTransform(scaleX: -1, y: 1)
            view.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var titleArray: [String] = {
    private lazy var titleArray: [String] = {
        //: var array = [String]()
        var array = [String]()

        //: array.append("Party".localized)
        array.append((String(k_pushMsg)).localized)
        //: array.append("Popular".localized)
        array.append((String(kShareTextData)).localized)
        //: array.append("Nearby".localized)
        array.append((String(kUserName.prefix(6))).localized)
        //: array.append("New".localized)
        array.append((String(kInfoTitleName.prefix(3))).localized)
        //: return array
        return array
        //: }()
    }()

    //: lazy var dataVC: [UIViewController] = {
    lazy var dataVC: [UIViewController] = {
        //: var array = [UIViewController]()
        var array = [UIViewController]()
        //: for i in titleArray {
        for i in titleArray {
            //: if i == "Party".localized {
            if i == (String(k_pushMsg)).localized {
                //: let partyVC = PartyListViewController.init()
                let partyVC = GopViewControllerDataSource()
                //: array.append(partyVC)
                array.append(partyVC)
                //: }else{
            } else {
                //: let popularVC = SocialPopularViewController.init()
                let popularVC = UnseeableReactiveCompatible()
                //: if i == "Popular".localized {
                if i == (String(kShareTextData)).localized {
                    //: popularVC.tabType = .hot
                    popularVC.tabType = .hot
                    //: } else if i == "Nearby".localized {
                } else if i == (String(kUserName.prefix(6))).localized {
                    //: popularVC.tabType = .nearby
                    popularVC.tabType = .nearby
                    //: } else if i == "New".localized {
                } else if i == (String(kInfoTitleName.prefix(3))).localized {
                    //: popularVC.tabType = .new
                    popularVC.tabType = .new
                }
                //: array.append(popularVC)
                array.append(popularVC)
            }
        }
        //: return array
        return array
        //: }()
    }()

    //: private lazy var searchBtn: UIButton = {
    private lazy var searchBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "btn_popular_search_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(k_makeMessage) + kValueStr.replacingOccurrences(of: "to", with: "r"))), for: .normal)
        //: btn.addTarget(self, action: #selector(searchButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(examine), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var liveBtn: UIButton = {
    private lazy var liveBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "icon_live_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kReceiveText) + String(k_blockViewName.suffix(6)) + "_nor")), for: .normal)
        //: btn.addTarget(self, action: #selector(liveBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(halogenEqual), for: .touchUpInside)
        //: btn.isHidden = !(DistanceAppManager.share.appStatus == AppSkinStatus.special.rawValue && DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue)
        btn.isHidden = !(DistanceAppManager.share.appStatus == NameQuickLookable.special.rawValue && DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rankBtn: UIButton = {
    private lazy var rankBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "btn_popular_ranking_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kToData.prefix(6)) + String(kRequestPath))), for: .normal)
        //: btn.addTarget(self, action: #selector(rankButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(lineClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - 开播提醒弹窗定时器

//: extension TalkingSocialViewController {
extension CoverThen {
    /// 跳转随机匹配
    //: private func pushIsClubVideo() {
    private func statusVideo() {
        //: if DistanceAppManager.share.loginUserMode.jumpType == 1 && DistanceAppManager.share.loginUserMode.sex == Gender.male.rawValue && DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
        if DistanceAppManager.share.loginUserMode.jumpType == 1, DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.male.rawValue, DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue {
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
                //: AddReactiveCompatible.share.func__pushToRandomVideoVC(isBeginRand: false)
                AddReactiveCompatible.share.sampleWith(isBeginRand: false)
            }
        }
    }

    /// 排行榜按钮点击事件
    //: @objc private func rankButtonClick() {
    @objc private func lineClick() {
        //: let rankVC = SocialRankTabVC()
        let rankVC = CustomDataSource()
        //: self.navigationController?.pushViewController(rankVC, animated: true)
        self.navigationController?.pushViewController(rankVC, animated: true)
        //: uploadRecord.uploadRecordEvent(eventID: ClickRankIngButton)
        kSoundName.messUp(eventID: showAppData)
    }

    /// "mf/index/getConfig"请求成功后创建定时器
    //: @objc func setliveTipsTimer() {
    @objc func timer() {
        //: if DistanceAppManager.share.appUserConfigMode.liveDialogInterval > 0 &&
        if DistanceAppManager.share.appUserConfigMode.liveDialogInterval > 0,
           //: DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue &&
           DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue,
           //: DistanceAppManager.share.appStatus != AppSkinStatus.special.rawValue {
           DistanceAppManager.share.appStatus != NameQuickLookable.special.rawValue
        {
            //: initLiveTipsTimer()
            liveDown()
            //: liveTipsTimer?.fireDate = Date.init(timeIntervalSinceNow: TimeInterval(DistanceAppManager.share.appUserConfigMode.liveDialogInterval))
            liveTipsTimer?.fireDate = Date(timeIntervalSinceNow: TimeInterval(DistanceAppManager.share.appUserConfigMode.liveDialogInterval))
        }
    }

    /// 展示开闭提醒弹窗
    //: @objc func setLiveTipsPopView() {
    @objc func currentView() {
        // 模态出来的webView不展示直播提醒弹窗
        //: if let currentVC = self.currentViewController() {
        if let currentVC = self.selectStart() {
            //: if currentVC.isKind(of: TalkingWebViewController.self) &&
            if currentVC.isKind(of: PerspectiveViewController.self),
               //: (currentVC as! TalkingWebViewController).isModal == true {
               (currentVC as! PerspectiveViewController).isModal == true
            {
                //: return
                return
            }
        }

        //: if DistanceAppManager.share.appUserConfigMode.enableLive &&
        if DistanceAppManager.share.appUserConfigMode.enableLive,
           //: !TalkingLiveManager.shared().isLive &&
           !ValueThen.kindShared().isLive,
           //: !TalkingSocketManager.shared.isSpace &&
           !ListSocketManager.shared.isSpace,
           //: !TalkingSocketManager.shared.isCalling {
           !ListSocketManager.shared.isCalling
        {
            //: TalkingPopupWindowManager.shared.startLivePopUpWindow()
            FrameReactiveCompatible.shared.messageJumpEnable()
        }
    }

    /// 初始化定时器
    //: func initLiveTipsTimer() {
    func liveDown() {
        //: let timeInterval = TimeInterval(DistanceAppManager.share.appUserConfigMode.liveDialogInterval)
        let timeInterval = TimeInterval(DistanceAppManager.share.appUserConfigMode.liveDialogInterval)
        //: liveTipsTimer = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(setLiveTipsPopView), userInfo: nil, repeats: true)
        liveTipsTimer = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(currentView), userInfo: nil, repeats: true)
        //: RunLoop.current.add(liveTipsTimer!, forMode: RunLoop.Mode.common)
        RunLoop.current.add(liveTipsTimer!, forMode: RunLoop.Mode.common)
    }

    /// 停止定时器
    //: @objc func stop_liveTipsTimer() {
    @objc func caseTimer() {
        //: if self.liveTipsTimer != nil {
        if self.liveTipsTimer != nil {
            //: self.liveTipsTimer?.invalidate()
            self.liveTipsTimer?.invalidate()
            //: self.liveTipsTimer?.fire()
            self.liveTipsTimer?.fire()
            //: self.liveTipsTimer = nil
            self.liveTipsTimer = nil
        }
    }

    /// 开启直播按钮点击事件
    //: @objc func liveBtnClick() {
    @objc func halogenEqual() {
        //: NotificationCenter.default.post(name: LIVE_NEED_OPEN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: user_clickViewHeightValue, object: nil)
    }
}

// MARK: - Public Event

//: extension TalkingSocialViewController {
extension CoverThen {
    /// 检测巨星计划弹窗是否需要弹出
    //: private func func__checkStarPlanNeedShow() {
    private func betweenTop() {
        //: guard DistanceAppManager.share.showWindow == true else { return }
        guard DistanceAppManager.share.showWindow == true else { return }
        //: DistanceAppManager.share.showWindow = false
        DistanceAppManager.share.showWindow = false

        // 加入巨星计划弹窗
        //: TalkingAlertShow.alert(title: nil,
        FrameHiddenReactiveCompatible.theory(title: nil,
                                //: message: "Congratulation on your chance to join the Star Plan !",
                                message: String(bytes: k_styleText.map{publiclyLocal(shared: $0)}, encoding: .utf8)!,
                                //: leftBtnTitle: "No, thanks",
                                leftBtnTitle: (String(kVideoId.prefix(4)) + "thanks"),
                                //: rightBtnTitle: "Find out more") {
                                rightBtnTitle: (String(k_shareInputTitle)))
        {
            //: TalkingAlertShow.hideAlert()
            FrameHiddenReactiveCompatible.middleText()
            // 统计点击首页巨星邀请弹窗中“no,thanks”的次数
            //: TalkingAdjustManager.share.addEvent(key: "clickStarProjectpop-upsCancel")
            ListReactiveCompatible.share.holder(key: (String(k_increaseTitle.suffix(6)) + "tarP" + kNextTitle.replacingOccurrences(of: "normal", with: "ct") + String(k_jumpToVideoText)))

            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            FrameHiddenReactiveCompatible.middleText()
            // 跳转巨星计划页
            //: AddReactiveCompatible.share.func__pushToWebVC(webViewType: .StarPlanIndex)
            AddReactiveCompatible.share.overCapacity(webViewType: .StarPlanIndex)

            // 统计点击首页巨星邀请弹窗中“Find out more”的次数
            //: TalkingAdjustManager.share.addEvent(key: "clickStarProjectpop-upsFindoutmore")
            ListReactiveCompatible.share.holder(key: String(bytes: k_popUrl.reversed(), encoding: .utf8)!)
        }
    }

    /// 检查系统通知是否开启
    //: private func func__turnOnSystemNotification() {
    private func strong() {
        // 有随机视频，不弹出开启推送弹窗
        //: if DistanceAppManager.share.loginUserMode.jumpType == 1 &&
        if DistanceAppManager.share.loginUserMode.jumpType == 1,
           //: DistanceAppManager.share.loginUserMode.sex == Gender.male.rawValue &&
           DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.male.rawValue,
           //: DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
           DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue
        {
            //: return
            return
        }

        //: let isShow = Defaults.bool(forKey: TalkingHomeTabTurnOnNotificationsKey)
        let isShow = show_blockText.bool(forKey: mainItemData)
        //: guard isShow == false else { return }
        guard isShow == false else { return }

        //: TalkingPermissionTool.checkPushNotification { isEnable in
        ToolThen.bulgeOutInput { isEnable in
            //: guard isEnable == false else { return }
            guard isEnable == false else { return }
            //: DispatchQueue.main.sync {
            DispatchQueue.main.sync {
                //: Defaults.set(true, forKey: TalkingHomeTabTurnOnNotificationsKey)
                show_blockText.set(true, forKey: mainItemData)
                //: TalkingAlertShow.alert(title: nil,
                FrameHiddenReactiveCompatible.theory(title: nil,
                                        //: message: "Allow %@ to send you notifications?".localizedArguments(AppName),
                                        message: String(bytes: k_valueStr.map{$0^252}, encoding: .utf8)!.edgeDelay(kAddData),
                                        //: leftBtnTitle: "Cancel".localized,
                                        leftBtnTitle: (String(k_lengthFormat)).localized,
                                        //: rightBtnTitle: "Settings".localized) {
                                        rightBtnTitle: (String(k_modelValue.prefix(8))).localized)
                {
                    //: TalkingAlertShow.hideAlert()
                    FrameHiddenReactiveCompatible.middleText()
                    //: return
                    //: } rightBlock: {
                } rightBlock: {
                    //: if let settingsUrl = URL(string: UIApplication.openSettingsURLString) {
                    if let settingsUrl = URL(string: UIApplication.openSettingsURLString) {
                        //: UIApplication.shared.open(settingsUrl)
                        UIApplication.shared.open(settingsUrl)
                    }
                }
            }
        }
    }

    /// 搜索按钮点击事件
    //: @objc private func searchButtonClick() {
    @objc private func examine() {
        //: let searchVC = TalkingSearchTabViewController()
        let searchVC = ObjectViewDelegate()
        //: self.navigationController?.pushViewController(searchVC, animated: true)
        self.navigationController?.pushViewController(searchVC, animated: true)
        //: uploadRecord.uploadRecordEvent(eventID: ClickSearchButton)
        kSoundName.messUp(eventID: kAvailableTitle)
    }

    /// 切换到party
    //: func switchParty() {
    func turnTheTables() {
        //: categoryView.defaultSelectedIndex = 0
        categoryView.defaultSelectedIndex = 0
        //: categoryView.reloadData()
        categoryView.reloadData()
        //: pagerView.defaultSelectedIndex = 0
        pagerView.defaultSelectedIndex = 0
        pagerView.reloadData()
        
    }
}

// MARK: - NotificationCenter

//: extension TalkingSocialViewController {
extension CoverThen {
    /// 添加通知
    //: private func addNotification() {
    private func rovingNotification() {
        // 礼物首页飘屏
        //: GiftFloatViewManager.shared.addNotifications()
        AdministratorThen.shared.sizeNotifications()

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(setliveTipsTimer),
                                               selector: #selector(timer),
                                               //: name: UPDATE_INDEX_GETCONFIG_NOTIFICATION,
                                               name: dataShowContent,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(stop_liveTipsTimer),
                                               selector: #selector(caseTimer),
                                               //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                               name: notiButtonData,
                                               //: object: nil)
                                               object: nil)
    }
}

// MARK: - JXPagerViewDelegate

//: extension TalkingSocialViewController: JXSegmentedViewDelegate {
extension CoverThen: JXSegmentedViewDelegate {
    // 点击item或滑动时【点击标题和滑动视图都会调用】
    func segmentedView(_ segmentedView: JXSegmentedView, didSelectedItemAt index: Int) {
        //: if seleteIndex == index {
        if seleteIndex == index {
            //: return
            return
        }
        //: seleteIndex = index
        seleteIndex = index
        //: if index == 0 {
        if index == 0 {
            //: uploadRecord.uploadRecordEvent(eventID:"\(click_HomePartyTab)_\(DistanceAppManager.share.loginUserMode.sex == Gender.male.rawValue ? "male":"female")")
            kSoundName.messUp(eventID: "\(mainRequestStatusVoiceName)_\(DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.male.rawValue ? String(bytes: k_mStr.map{miniGift(top: $0)}, encoding: .utf8)! : (kPopValue.replacingOccurrences(of: "council", with: "l") + kHiddenAssetName.replacingOccurrences(of: "window", with: "e")))")
            //: }else if index == 1 {
        } else if index == 1 {
            //: let popularVC = dataVC[index] as? SocialPopularViewController
            let popularVC = dataVC[index] as? UnseeableReactiveCompatible
            //: popularVC?.showSettingsAlertView()
            popularVC?.viewUser() // 展示定位设置弹窗
            //: uploadRecord.uploadRecordEvent(eventID: DisplayNearbyListNoP)
            kSoundName.messUp(eventID: const_statusBeautyTitle)
            //: } else if index == 2 {
        } else if index == 2 {
            //: uploadRecord.uploadRecordEvent(eventID: DisplayNewListNoP)
            kSoundName.messUp(eventID: const_listNoText)
        }
    }

    // 添加该方法是为了防止首次进入应用，直接点击nearby无法初始化页面的情况 【该方法只会在点击标题时调用】
    func segmentedView(_ segmentedView: JXSegmentedView, didClickSelectedItemAt index: Int) {
        // 初始点击item时，创建vc

        //: if index == 1 && !isNearbyShow {
        if index == 1 && !isNearbyShow {
            //: isNearbyShow = true
            isNearbyShow = true
        }

        //: pagerView.listContainerView.defaultSelectedIndex = index
        pagerView.listContainerView.defaultSelectedIndex = index
        pagerView.listContainerView.reloadData()
    }

    func segmentedView(_ segmentedView: JXSegmentedView, didScrollSelectedItemAt index: Int) {}
}

// MARK: - JXPagerViewDelegate

//: extension TalkingSocialViewController: JXPagingViewDelegate {
extension CoverThen: JXPagingViewDelegate {
    func pagingView(_ pagingView: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
        //: var type = index
        var type = index
        //: if type < 0 { type = 0 }
        if type < 0 { type = 0 }
        //: if index == 1 {
        if index == 1 {
            //: isNearbyShow = true
            isNearbyShow = true
        }

        //: let popularVC = dataVC[type]
        let popularVC = dataVC[type]
        //: return popularVC as! any JXPagingViewListViewDelegate as JXPagingViewListViewDelegate
        return popularVC as! any JXPagingViewListViewDelegate as JXPagingViewListViewDelegate
    }

    func tableHeaderViewHeight(in pagingView: JXPagingView) -> Int {
    
        //: return 0
        return 0
    }

    func tableHeaderView(in pagingView: JXPagingView) -> UIView {
    
        //: return UIView()
        return UIView()
    }

    func heightForPinSectionHeader(in pagingView: JXPagingView) -> Int {
    
        //: return Int(categoryView.frame.height)
        return Int(categoryView.frame.height)
    }

    func viewForPinSectionHeader(in pagingView: JXPagingView) -> UIView {
    
        //: return categoryView
        return categoryView
    }

    func numberOfLists(in pagingView: JXPagingView) -> Int {
    
        //: return titleArray.count
        return titleArray.count
    }
}

// MARK: - Layout

//: extension TalkingSocialViewController {
extension CoverThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func setupSubviews() {
        // 导航底部渐变背景
        //: self.view.addSubview(pagerView)
        self.view.addSubview(pagerView)
        //: categoryView.addSubview(searchBtn)
        categoryView.addSubview(searchBtn)
        //: categoryView.addSubview(rankBtn)
        categoryView.addSubview(rankBtn)
        //: self.view.addSubview(bottomImgView)
        self.view.addSubview(bottomImgView)
        //: self.view.addSubview(liveBtn)
        self.view.addSubview(liveBtn)
        //: self.view.bringSubviewToFront(liveBtn)
        self.view.bringSubviewToFront(liveBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func voiceCell() {
        //: searchBtn.snp.makeConstraints { make in
        searchBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-9)
            make.trailing.equalTo(-9)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }
        //: rankBtn.snp.makeConstraints { make in
        rankBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(searchBtn.snp.leading).offset(-10)
            make.trailing.equalTo(searchBtn.snp.leading).offset(-10)
            //: make.size.equalTo(30)
            make.size.equalTo(30)
        }

        //: bottomImgView.snp.makeConstraints { make in
        bottomImgView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(145+StatusBarHeight)
            make.height.equalTo(145 + main_netValue)
        }
        //: liveBtn.snp.makeConstraints { make in
        liveBtn.snp.makeConstraints { make in
            //: make.bottom.width.equalTo(-122)
            make.bottom.width.equalTo(-122)
            //: make.trailing.equalTo(-25)
            make.trailing.equalTo(-25)
            //: make.size.equalTo(56)
            make.size.equalTo(56)
        }
    }
}
