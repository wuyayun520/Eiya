
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_unknownText:[UInt8] = [0x47,0x4c,0x47,0x52,0x6,0x41,0x4d,0x42,0x43,0x50,0x18,0x7,0xfe,0x46,0x3f,0x51,0xfe,0x4c,0x4d,0x52,0xfe,0x40,0x43,0x43,0x4c,0xfe,0x47,0x4b,0x4e,0x4a,0x43,0x4b,0x43,0x4c,0x52,0x43,0x42]

fileprivate func colorPic(min num: UInt8) -> UInt8 {
    let value = Int(num) + 34
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "#EEEEEE" :*/
fileprivate let kRecordFormat:[Character] = ["#","E","E","E","E","E","E"]

/*: "tabBar" :*/
fileprivate let k_equalName:String = "tabBastring tap app label model"
fileprivate let kPushUrl:[Character] = ["r"]

/*: "home" :*/
fileprivate let kBagActualValue:String = "homgift"

/*: "user" :*/
fileprivate let kTextMsg:String = "uscolor"

/*: "icon" :*/
fileprivate let k_titleFormat:String = "icocount"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LimitViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingTabBarViewController: UITabBarController, UITabBarControllerDelegate {
class LimitViewController: UITabBarController, UITabBarControllerDelegate {
    //: var tabBarVCType: TarBarControllerViewType?
    var tabBarVCType: BreakUpViewType?
    //: var tabBarView = TalkingTabBar()
    var tabBarView = ModelTabBar()

    //: init(tabBarType: TarBarControllerViewType) {
    init(tabBarType: BreakUpViewType) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.delegate = self
        self.delegate = self
        //: self.tabBarVCType = tabBarType
        self.tabBarVCType = tabBarType
        //: if tabBarType == .Taking {
        if tabBarType == .Taking {
            //: setupTabBar()
            cycle()
            //: ProgressHUD.show()
            EndProgressHUD.listHide()
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
            ModelThen.applicationCompletion { succeed, _, _ in
                //: EndProgressHUD.popEnable()
                EndProgressHUD.popEnable()
                //: ResumeV2Listener.shared.func__addDelegate(self)
                ResumeV2Listener.shared.recordDelegate(self)
                //: let tarItemTypes = self.tabBarConentTypes()
                let tarItemTypes = self.contentView()
                //: self.tabBarView.setupItemsWithArr(itemTypes: tarItemTypes as! Array<TabBarItemType>)
                self.tabBarView.license(itemTypes: tarItemTypes as! [NameWidthMagnitude])
                //: self.func__setupControllersWith(itemTypes: tarItemTypes)
                self.rangeButtonGift(itemTypes: tarItemTypes)
                //: if DistanceAppManager.share.loginUserMode.sex == Gender.male.rawValue && DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
                if DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.male.rawValue && DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue {
                    //: self.selectTabbar(type: 0)
                    self.giftKey(type: 0)
                }
                //: self.func__configViewDidLoad()
                self.roundVoice()

                //: if succeed && DistanceAppManager.share.loginUserMode.remindBindEmail == true {
                if succeed && DistanceAppManager.share.loginUserMode.remindBindEmail == true { // 需要绑定邮箱
                    //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        //: AddReactiveCompatible.share.func__pushToLockUserEmailVC(isShowBack: false)
                        AddReactiveCompatible.share.makeColorView(isShowBack: false)
                    }
                }
            }
            //: } else {
        } else {
            //: func__setupControllersWith(itemTypes: self.tabBarConentTypes())
            rangeButtonGift(itemTypes: self.contentView())
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_unknownText.map{colorPic(min: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        /// H5刷新index/getConfig配置信息接口
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__getLoginUserConfig),
                                               selector: #selector(systemConfig),
                                               //: name: REFRESH_INDEX_GETCONFIG_NOTIFICATION,
                                               name: showPlayData,
                                               //: object: nil)
                                               object: nil)

        /// 直播状态变更通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchLiveTabBarImage),
                                               selector: #selector(lozenge),
                                               //: name: LIVE_STATUS_CHANGE_NOTIFICATION,
                                               name: userInsertDomainTitle,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(openLive),
                                               selector: #selector(endThen),
                                               //: name: LIVE_NEED_OPEN_NOTIFICATION,
                                               name: user_clickViewHeightValue,
                                               //: object: nil)
                                               object: nil)

        /// 语聊房状态变更通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchLiveTabBarImage),
                                               selector: #selector(lozenge),
                                               //: name: PARTY_STATUS_CHANGE_NOTIFICATION,
                                               name: data_contentName,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(switchTabbarHomeParty),
                                               selector: #selector(heatBarrier),
                                               //: name: SWITCH_TABBAR_HOME_PARTY_NOTIFICATION,
                                               name: show_clickMaxValue,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func viewDidLayoutSubviews() {
    override func viewDidLayoutSubviews() {
        //: super.viewDidLayoutSubviews()
        super.viewDidLayoutSubviews()
        //: tabBar.frame = CGRect(origin: CGPoint(x: 0, y: ScreenHeight-TabBarViewHeight), size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        tabBar.frame = CGRect(origin: CGPoint(x: 0, y: user_recordMarginValue - dataImageItemValue), size: CGSize(width: constFormalContent, height: dataImageItemValue))
    }

    /// 初始化tabbar
    //: func setupTabBar() {
    func cycle() {
        //: tabBarView.frame = CGRect(origin: CGPoint(x: 0, y: ScreenHeight-TabBarViewHeight), size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        tabBarView.frame = CGRect(origin: CGPoint(x: 0, y: user_recordMarginValue - dataImageItemValue), size: CGSize(width: constFormalContent, height: dataImageItemValue))
        //: tabBarView.backgroundColor = .white
        tabBarView.backgroundColor = .white
        //: let backgroundImage = UIImage.imageFillColor(color: .white, size: CGSize(width: ScreenWidth, height: TabBarViewHeight))
        let backgroundImage = UIImage.activeOf(color: .white, size: CGSize(width: constFormalContent, height: dataImageItemValue))
        //: tabBarView.backgroundImage = backgroundImage
        tabBarView.backgroundImage = backgroundImage

        //: let shadowImage = UIImage.imageFillColor(color: UIColor(hex: "#EEEEEE")!, size: CGSize(width: ScreenWidth, height: 0.5))
        let shadowImage = UIImage.activeOf(color: UIColor(hex: (String(kRecordFormat)))!, size: CGSize(width: constFormalContent, height: 0.5))
        //: tabBarView.shadowImage = shadowImage
        tabBarView.shadowImage = shadowImage

        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: let tabBarAppearance = UITabBarAppearance()
            let tabBarAppearance = UITabBarAppearance()
            //: tabBarAppearance.backgroundColor = .white
            tabBarAppearance.backgroundColor = .white
            //: tabBarAppearance.backgroundEffect = nil
            tabBarAppearance.backgroundEffect = nil
            //: tabBarAppearance.shadowColor = UIColor.separatorLineColor()
            tabBarAppearance.shadowColor = UIColor.part()
            //: tabBarView.standardAppearance = tabBarAppearance
            tabBarView.standardAppearance = tabBarAppearance
        }
        //: setValue(tabBarView, forKey: "tabBar")
        setValue(tabBarView, forKey: (String(k_equalName.prefix(5)) + String(kPushUrl)))
    }

    //: func tabBarConentTypes() -> NSArray {
    func contentView() -> NSArray {
        //: if tabBarVCType == TarBarControllerViewType.Login {
        if tabBarVCType == BreakUpViewType.Login {
            //: return [TabBarItemType.Login]
            return [NameWidthMagnitude.Login]
            //: } else {
        } else {
            //: if DistanceAppManager.share.appStatus == AppSkinStatus.special.rawValue {
            if DistanceAppManager.share.appStatus == NameQuickLookable.special.rawValue {
                //: return [TabBarItemType.Social,
                return [NameWidthMagnitude.Social,
                        //: TabBarItemType.Moment,
                        NameWidthMagnitude.Moment,
                        //: TabBarItemType.Message,
                        NameWidthMagnitude.Message,
                        //: TabBarItemType.Account]
                        NameWidthMagnitude.Account]
                //: } else {
            } else {
                //: if DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue {
                if DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue { // 女性
                    //: return [TabBarItemType.Social,
                    return [NameWidthMagnitude.Social,
                            //: TabBarItemType.Moment,
                            NameWidthMagnitude.Moment,
                            //: TabBarItemType.Live,
                            NameWidthMagnitude.Live,
                            //: TabBarItemType.Message,
                            NameWidthMagnitude.Message,
                            //: TabBarItemType.Account]
                            NameWidthMagnitude.Account]
                    //: } else {
                } else { // 男性
                    //: return [TabBarItemType.Social,
                    return [NameWidthMagnitude.Social,
                            //: TabBarItemType.Moment,
                            NameWidthMagnitude.Moment,
                            //: TabBarItemType.Randow,
                            NameWidthMagnitude.Randow,
                            //: TabBarItemType.Message,
                            NameWidthMagnitude.Message,
                            //: TabBarItemType.Account]
                            NameWidthMagnitude.Account]
                }
            }
        }
    }

    //: func func__setupControllersWith(itemTypes: NSArray) {
    func rangeButtonGift(itemTypes: NSArray) {
        //: let tmp = NSMutableArray()
        let tmp = NSMutableArray()
        //: for itemType in itemTypes {
        for itemType in itemTypes {
            //: let VC = rootViewControllerFor(itemType: itemType as! TabBarItemType)
            let VC = gestureAcross(itemType: itemType as! NameWidthMagnitude)
            //: let navVC = TalkingNavigationController(rootViewController: VC)
            let navVC = MissiveThen(rootViewController: VC)
            //: navVC.tabBarType = (itemType as! TabBarItemType)
            navVC.tabBarType = (itemType as! NameWidthMagnitude)
            //: tmp.add(navVC)
            tmp.add(navVC)
        }
        //: setViewControllers(tmp as? [UIViewController], animated: true)
        setViewControllers(tmp as? [UIViewController], animated: true)
    }

    //: func rootViewControllerFor(itemType: TabBarItemType) -> UIViewController {
    func gestureAcross(itemType: NameWidthMagnitude) -> UIViewController {
        //: let ret: UIViewController
        let ret: UIViewController
        //: switch itemType {
        switch itemType {
        //: case .Social:
        case .Social:
            //: ret = TalkingSocialViewController()
            ret = CoverThen()

        //: case .Moment:
        case .Moment:
            //: ret = TalkingMomentViewController()
            ret = EndNavigationDelegate()

        //: case .FreeMoment:
        case .FreeMoment:
            //: ret = UIViewController()
            ret = UIViewController()
            /// 使用view，会导致VC的viewDidLoad调用，避免别的控制器没显示时，就调用viewDidLoad
            /// 虚拟的VC根据tag，正常的VC可以根据class判断

        //: case .Live:
        case .Live:
            //: ret = UIViewController()
            ret = UIViewController()

        //: case .Message:
        case .Message:
            //: ret = TalkingMessageViewController()
            ret = SeerViewController()

        //: case .Account:
        case .Account:
            //: ret = TalkingMeViewController()
            ret = ListViewDelegate()

        //: case .Login:
        case .Login:
            //: ret = TalkingLoginMainViewController()
            ret = CoverTitleRecognizerDelegate()
            //: ret.hidesBottomBarWhenPushed = true
            ret.hidesBottomBarWhenPushed = true

        //: case .Randow:
        case .Randow:
            //: ret = TalkingMaleStaticRandomVideoVC()
            ret = LimitWithRecognizerDelegate()

        //: case .meet:
        case .meet:
            //: ret = UIViewController()
            ret = UIViewController()
        }

        //: ret.view.tag = itemType.rawValue
        ret.view.tag = itemType.rawValue
        //: return ret
        return ret
    }

    //: override var selectedViewController: UIViewController? {
    override var selectedViewController: UIViewController? {
        //: willSet {
        willSet {
            //: let nav = newValue as! TalkingNavigationController
            let nav = newValue as! MissiveThen
            //: tabBarView.setSelectedTabItem(itemType: nav.tabBarType!)
            tabBarView.itemType(itemType: nav.tabBarType!)
        }
    }
}

// MARK: - Event

//: extension TalkingTabBarViewController {
extension LimitViewController {
    /// 切换到tab-party
    //: @objc func switchTabbarHomeParty() {
    @objc func heatBarrier() {
        //: getNavigationController()?.popToRootViewController(animated: false)
        put()?.popToRootViewController(animated: false)
        //: selectTabbar(type: 0)
        giftKey(type: 0)
        //: if let vc = currentViewController(), vc is TalkingSocialViewController {
        if let vc = selectStart(), vc is CoverThen {
            //: (vc as! TalkingSocialViewController).switchParty()
            (vc as! CoverThen).turnTheTables()
        }
    }

    /// tabbar直播按钮点击事件
    //: @objc private func liveButtonClick() {
    @objc private func capture() {
        //: guard TalkingVoiceRoomManager.shared().isParty == false else {
        guard CoverManager.byRest().isParty == false else { // 语聊房
            //: if String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == DistanceAppManager.share.loginUid {
            if String(CoverManager.byRest().partyModel.streamerInfo.uid) == DistanceAppManager.share.loginUid {
                //: TalkingVoiceRoomManager.shared().voiceRoom_goback()
                CoverManager.byRest().ofColorGoback()
                //: } else {
            } else {
                //: func__showStatusBarErrorMsg(showMsg: kMessage_party_limit)
                arcInfo(showMsg: mainCountervalNameData)
            }
            //: return
            return
        }
        //: guard TalkingLiveManager.shared().isLive == false else {
        guard ValueThen.kindShared().isLive == false else { // 直播间
            //: func__showStatusBarErrorMsg(showMsg: kMessage_live_limit)
            arcInfo(showMsg: main_changeText)
            //: return
            return
        }
        //: let tabView = TalkingTabLiveView()
        let tabView = ItemThen()
        //: tabView.show()
        tabView.addedTo()
    }

    //: func func__configViewDidLoad() {
    func roundVoice() {
        //: TalkingAPNSManager.share.func__listenAPNSInit()
        MakePublishReactiveCompatible.share.addToInit()
        //: AppManagerRequest.func__reportDeviceID()
        ModelThen.gray()
        //: func__getLoginUserConfig(true)
        systemConfig(true)
    }

    //: func selectTabbar(type: Int) {
    func giftKey(type: Int) {
        //: guard type < viewControllers?.count ?? 0 else { return }
        guard type < viewControllers?.count ?? 0 else { return }
        //: let vc = viewControllers?[type]
        let vc = viewControllers?[type]
        //: selectedIndex = type
        selectedIndex = type
        //: selectedViewController = vc
        selectedViewController = vc
    }

    /// 切换直播tabBar图标
    //: @objc private func switchLiveTabBarImage() {
    @objc private func lozenge() {
        //: tabBarView.switchLiveTabBarImage()
        tabBarView.asMove()
    }

    /// 唤起直播功能
    //: @objc private func openLive() {
    @objc private func endThen() {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard ToolThen.pushSizePress() == false else { return }

        // 展示说明页（如果展示过，则直接开播）
        //: let isShow = Defaults.bool(forKey: TalkingLiveTabExplainIsShow)
        let isShow = show_blockText.bool(forKey: userEventName)
        //: guard isShow != true else {
        guard isShow != true else {
            //: TalkingLiveManager.shared().checkLiveAuthAndTurnOn()
            ValueThen.kindShared().phoneHandler()
            //: return
            return
        }
        //: Defaults.set(true, forKey: TalkingLiveTabExplainIsShow)
        show_blockText.set(true, forKey: userEventName)
        //: let explainView = TalkingLiveExplainViewController()
        let explainView = PitchViewController()
        //: explainView.modalPresentationStyle = .fullScreen
        explainView.modalPresentationStyle = .fullScreen
        //: present(explainView, animated: true)
        present(explainView, animated: true)
    }

    /// 切换RandowtabBar图标
    //: @objc private func switchRandowTabBarImage(isHidde: Bool) {
    @objc private func contentData(isHidde: Bool) {
        //: tabBarView.switchRandowTabBarImage(isHidde: isHidde)
        tabBarView.loadMake(isHidde: isHidde)
    }

    /// 连接socket
    //: private func linkWebCocket() {
    private func twilight() {
        // 连接socket【放在这里是为了保证app/getConfig调用成功拿到ws信息】
        //: TalkingSocketManager.shared.updateWebSocket()
        ListSocketManager.shared.stateAction()
    }

    /// 切换tab时判断是否需要展示直播开播提醒弹窗
    /// - Returns: 是否展示结果
    //: @discardableResult
    @discardableResult
    //: private func needShowLiveAlertView(type: TabBarItemType = .Social) -> Bool {
    private func nameBlock(type: NameWidthMagnitude = .Social) -> Bool {
        //: guard DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue else { return false }
        guard DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue else { return false }
        //: guard DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue else { return false }
        guard DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue else { return false }
        //: guard DistanceAppManager.share.appUserConfigMode.userCountryType == 1 else { return false }
        guard DistanceAppManager.share.appUserConfigMode.userCountryType == 1 else { return false }
        //: guard DistanceAppManager.share.appUserConfigMode.popLiveTabArr.count > 0 else { return false }
        guard DistanceAppManager.share.appUserConfigMode.popLiveTabArr.count > 0 else { return false }
        //: guard !TalkingVoiceRoomManager.shared().isParty,
        guard !CoverManager.byRest().isParty,
              //: !TalkingLiveManager.shared().isLive,
              !ValueThen.kindShared().isLive,
              //: !TalkingSocketManager.shared.isSpace,
              !ListSocketManager.shared.isSpace,
              //: !TalkingSocketManager.shared.isCalling else { return false }
              !ListSocketManager.shared.isCalling else { return false }
        //: let arr = DistanceAppManager.share.appUserConfigMode.popLiveTabArr
        let arr = DistanceAppManager.share.appUserConfigMode.popLiveTabArr
        //: let shouldShowPopup = (arr.contains("1") && type == .Social) ||
        let shouldShowPopup = (arr.contains("1") && type == .Social) ||
            //: (arr.contains("2") && type == .Moment) ||
            (arr.contains("2") && type == .Moment) ||
            //: (arr.contains("3") && type == .Message)
            (arr.contains("3") && type == .Message)
        //: if shouldShowPopup {
        if shouldShowPopup {
            //: TalkingPopupWindowManager.shared.startLivePopUpWindow()
            FrameReactiveCompatible.shared.messageJumpEnable()
            //: return true
            return true
        }

        //: return false
        return false
    }
}

// MARK: - 通知事件

//: extension TalkingTabBarViewController {
extension LimitViewController {
    /// 更新index/getConfig接口
    /// - Parameter showLiveToast: 是否展示live提示（只有创建Tab时展示）
    //: @objc func func__getLoginUserConfig(_ showLiveToast: Bool = false) {
    @objc func systemConfig(_ showLiveToast: Bool = false) {
        //: AppManagerRequest.func__requestUserConfig { succeed, _, _ in
        ModelThen.faq { succeed, _, _ in
            //: if showLiveToast {
            if showLiveToast {
                // 连接socket
                //: self.linkWebCocket()
                self.twilight()
                //: if DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
                if DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue {
                    //: self.tabBarView.showFemaleLiveTurnOnToast()
                    self.tabBarView.toast()
                    //: self.needShowLiveAlertView()
                    self.nameBlock()
                    //: self.func__selectClubTabbar()
                    self.appellation()
                }
                //: if succeed {
                if succeed {
                    //: self.func__reqPopUpWindow()
                    self.windowGlass()
                }
            }
        }
    }

    //: func func__selectClubTabbar() {
    func appellation() {
        //: if DistanceAppManager.share.loginUserMode.jumpType == 1 {
        if DistanceAppManager.share.loginUserMode.jumpType == 1 {
            //: return
            return
        }
        //: switchRandowTabBarImage(isHidde: true)
        contentData(isHidde: true)
        //: if DistanceAppManager.share.loginUserMode.sex == Gender.male.rawValue, DistanceAppManager.share.appUserConfigMode.homeTab == "home" {
        if DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.male.rawValue, DistanceAppManager.share.appUserConfigMode.homeTab == (kBagActualValue.replacingOccurrences(of: "gift", with: "e")) {
            //: let type = 2
            let type = 2
            //: selectTabbar(type: type)
            giftKey(type: type)
            //: switchRandowTabBarImage(isHidde: false)
            contentData(isHidde: false)
        }
    }

    /// 弹窗
    //: func func__reqPopUpWindow() {
    func windowGlass() {
        //: guard DistanceAppManager.share.loginUserMode.updateInfo == true else {
        guard DistanceAppManager.share.loginUserMode.updateInfo == true else {
            //: return
            return
        }
        //: let manager = TalkingPopupWindowManager.shared
        let manager = FrameReactiveCompatible.shared
        //: manager.setHomePopUpWindow()
        manager.formatWindow()

        //: if DistanceAppManager.share.loginUserMode.jumpType == 2, DistanceAppManager.share.loginUserMode.sex == Gender.male.rawValue {
        if DistanceAppManager.share.loginUserMode.jumpType == 2, DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.male.rawValue {
            /// 主动拨打视频弹窗
            //: TalkingVideoInitivCallManager.shared.setObserver()
            AddModeReactiveCompatible.shared.complexion()
        }
    }
}

// MARK: - UITabBarControllerDelegate

//: extension TalkingTabBarViewController {
extension LimitViewController {
    //: func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
    func tabBarController(_: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        //: if DistanceAppManager.share.appStatus == AppSkinStatus.special.rawValue {
        if DistanceAppManager.share.appStatus == NameQuickLookable.special.rawValue {
            //: return true
            return true
        }
        //: if let vc = viewController.children.first, let tabbarType = TabBarItemType(rawValue: vc.view.tag) {
        if let vc = viewController.children.first, let tabbarType = NameWidthMagnitude(rawValue: vc.view.tag) {
            // 点击直播虚拟按钮，不切换tabbar
            //: if tabbarType == .Live {
            if tabbarType == .Live {
                //: liveButtonClick()
                capture()
                //: return false
                return false
            }
            //: switchRandowTabBarImage(isHidde: tabbarType != .Randow)
            contentData(isHidde: tabbarType != .Randow)
            // 展示直播开播提醒弹窗，不切换tabbar
            //: if needShowLiveAlertView(type: tabbarType) {
            if nameBlock(type: tabbarType) {
                //: return false
                return false
            }
        }

        //: return true
        return true
    }

    //: func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        //: if tabBarView.isHidden {
        if tabBarView.isHidden {
            //: tabBarView.isHidden = false
            tabBarView.isHidden = false
        }

        //: if DistanceAppManager.share.appStatus == AppSkinStatus.special.rawValue {
        if DistanceAppManager.share.appStatus == NameQuickLookable.special.rawValue {
            //: return
            return
        }

        //: uploadTabSelete()
        giftStop()

        // 消息列表切换到Intimate时，再次切回要默认选中all
        //: if tabBarView.currentTabType == TabBarItemType.Message.rawValue {
        if tabBarView.currentTabType == NameWidthMagnitude.Message.rawValue {
            //: let vc = viewController.children.first as? TalkingMessageViewController
            let vc = viewController.children.first as? SeerViewController
            //: if vc?.isNoChangeTop == false {
            if vc?.isNoChangeTop == false {
                //: vc?.isNoChangeTop = true
                vc?.isNoChangeTop = true
                //: vc?.setIsTopAll()
                vc?.cellCardMy()
            }
            //: } else {
        } else {
            //: if let vcArrs = tabBarController.viewControllers {
            if let vcArrs = tabBarController.viewControllers {
                //: for vc in vcArrs {
                for vc in vcArrs {
                    //: if let firstVc = vc.children.first {
                    if let firstVc = vc.children.first {
                        //: if firstVc.isKind(of: TalkingMessageViewController.self) {
                        if firstVc.isKind(of: SeerViewController.self) {
                            //: (firstVc as! TalkingMessageViewController).isNoChangeTop = false
                            (firstVc as! SeerViewController).isNoChangeTop = false
                            //: break
                            break
                        }
                    }
                }
            }
        }
    }

    //: func uploadTabSelete() {
    func giftStop() {
        //: switch tabBarView.currentTabType {
        switch tabBarView.currentTabType {
        //: case TabBarItemType.Social.rawValue:
        case NameWidthMagnitude.Social.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickHomeTabButton)
            kSoundName.messUp(eventID: appChangeName)
        //: case TabBarItemType.Randow.rawValue: break
        case NameWidthMagnitude.Randow.rawValue: break
//            uploadRecord.uploadRecordEvent(eventID: ClickMatchTabButton)
        //: case TabBarItemType.Moment.rawValue:
        case NameWidthMagnitude.Moment.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMomentTabButton)
            kSoundName.messUp(eventID: constLevelUseHeightName)
        //: case TabBarItemType.Message.rawValue:
        case NameWidthMagnitude.Message.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMassagesTabButton)
            kSoundName.messUp(eventID: show_keyContent)
        //: case TabBarItemType.Account.rawValue:
        case NameWidthMagnitude.Account.rawValue:
            //: uploadRecord.uploadRecordEvent(eventID: ClickMeTabButton)
            kSoundName.messUp(eventID: dataSenseText)
        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - AlongManagerDelegate

//: extension TalkingTabBarViewController: IMManagerDelegate {
extension LimitViewController: AlongManagerDelegate {
    //: func onUnreadMsgCountChanged(count: Int) {
    func appDoing(count _: Int) {
        //: refreshUnreadIMMessageCount()
        militaryInstallation()
    }

    //: func onRecvNewMessage(msg: V2TIMMessage) {
    func attention(msg: V2TIMMessage) {
        //: let extra = String(data: msg.customElem.data, encoding: .utf8)
        let extra = String(data: msg.customElem.data, encoding: .utf8)
        //: let json = JSON(parseJSON: extra!)
        let json = JSON(parseJSON: extra!)
        //: let userInfo = json["user"]
        let userInfo = json[(kTextMsg.replacingOccurrences(of: "color", with: "er"))]
        //: let headUrlStr = userInfo["icon"].stringValue
        let headUrlStr = userInfo[(k_titleFormat.replacingOccurrences(of: "count", with: "n"))].stringValue
        //: if headUrlStr.isEmptyString {
        if headUrlStr.isEmptyString {
            //: return
            return
        }

        //: tabBarView.showNewMessageUser(headPic: headUrlStr)
        tabBarView.between(headPic: headUrlStr)
    }

    //: func refreshUnreadIMMessageCount() {
    func militaryInstallation() {
        //: if ResumeV2Listener.shared.isConnection {
        if ResumeV2Listener.shared.isConnection {
            //: let unreadMsgCount = DistanceAppManager.share.unreadMessageNum
            let unreadMsgCount = DistanceAppManager.share.unreadMessageNum
            //: tabBarView.refreshBadgeLayoutWith(unread: unreadMsgCount, barType: .Message)
            tabBarView.priceState(unread: unreadMsgCount, barType: .Message)
        }
    }
}
