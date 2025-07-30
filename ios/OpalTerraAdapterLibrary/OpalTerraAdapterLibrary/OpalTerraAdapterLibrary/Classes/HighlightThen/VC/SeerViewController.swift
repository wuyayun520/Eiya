
//: Declare String Begin

/*: "bg_message_top" :*/
fileprivate let kFatalUrl:[Character] = ["b","g","_","m","e"]
fileprivate let k_addMessage:String = "button"
fileprivate let k_hiddenCurrentFormat:String = "right colorage_top"

/*: "777777" :*/
fileprivate let k_videoSizeStr:String = "777777"

/*: "Messages" :*/
fileprivate let kCookieKey:String = "Messagesitem super cloud"

/*: "Who like me" :*/
fileprivate let kBottomInfoMsg:[Character] = ["W","h"]
fileprivate let k_selectedMsg:String = "path self equal drop locationo like me"

/*: "Call" :*/
fileprivate let kBeMessage:String = "Calluser state self model"

/*: "#FF2348" :*/
fileprivate let k_userMessage:[Character] = ["#","F"]
fileprivate let k_backKey:String = "F234group"

/*: "Current network unavailable" :*/
fileprivate let kTextMagnitudeToolKey:String = "Curresex size"
fileprivate let k_constraintUrl:String = "werrorrk"
fileprivate let k_firstFormat:[Character] = ["a","b","l","e"]

/*: "icon_yidu_pre" :*/
fileprivate let k_showUrl:[Character] = ["i","c","o","n","_","y","i","d","u","_"]
fileprivate let k_contentTableSubmitPath:String = "counte"

/*: "99+" :*/
fileprivate let kUserListMsg:[Character] = ["9","9","+"]

/*: "transform.rotation" :*/
fileprivate let k_buttonContent:String = "trasound"
fileprivate let k_addName:String = "ogestureagesture"
fileprivate let k_rawStr:[Character] = ["i","o","n"]

/*: "transform.scale" :*/
fileprivate let k_clearKindName:String = "countan"
fileprivate let kToBottomUrl:String = "infole"

/*: "zoom&shake" :*/
fileprivate let kQuantityMessage:String = "zoom&list true action bean hidden"

/*: "yyyy-MM-dd" :*/
fileprivate let kActionText:[Character] = ["y","y","y","y","-","M","M","-"]
fileprivate let k_normalId:String = "content"

/*: "Allow %@ to send you notifications?" :*/
fileprivate let k_toKey:[UInt8] = [0x21,0xc,0xc,0xf,0x17,0x40,0x45,0x20,0x40,0x14,0xf,0x40,0x13,0x5,0xe,0x4,0x40,0x19,0xf,0x15,0x40,0xe,0xf,0x14,0x9,0x6,0x9,0x3,0x1,0x14,0x9,0xf,0xe,0x13,0x5f]

private func outOfSight(gift num: UInt8) -> UInt8 {
    return num ^ 96
}

/*: "Cancel" :*/
fileprivate let kLayerValue:[Character] = ["C","a","n","c","e","l"]

/*: "Settings" :*/
fileprivate let kPlatFormat:String = "Settingslet head"

/*: "badNumber" :*/
fileprivate let kEqualText:String = "badNuself type list sex make"

/*: "isConnection" :*/
fileprivate let kManagerTextId:String = "value error playerisConn"
fileprivate let kSumId:String = "playertion"

/*: "networkStatus" :*/
fileprivate let k_viewId:String = "submittwo"

/*: "unreadMessageNum" :*/
fileprivate let kForceMsg:String = "unleadingea"
fileprivate let kStatusFormat:String = "sageNimage direction"
fileprivate let kAttentionMsg:String = "cameram"

/*: "Do you want to mark all messages as read?" :*/
fileprivate let k_dailyBlockUrl:[UInt8] = [0x5f,0x8a,0x3b,0x94,0x8a,0x90,0x3b,0x92,0x7c,0x89,0x8f,0x3b,0x8f,0x8a,0x3b,0x88,0x7c,0x8d,0x86,0x3b,0x7c,0x87,0x87,0x3b,0x88,0x80,0x8e,0x8e,0x7c,0x82,0x80,0x8e,0x3b,0x7c,0x8e,0x3b,0x8d,0x80,0x7c,0x7f,0x5a]

fileprivate func viewTo(close num: UInt8) -> UInt8 {
    let value = Int(num) - 27
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "OK" :*/
fileprivate let k_currentPath:String = "modeK"

/*: "消息列表一键已读失败：code: :*/
fileprivate let k_centerValue:[Character] = ["消","息","\u{5217}","表","一","键","已","读","失","败","\u{ff1a}","c"]
fileprivate let kRequestValue:String = "ode:height cell else"

/*: , desc: :*/
fileprivate let k_equalMessage:String = "let kit normal manager, desc:"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SeerViewController.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

//: class TalkingMessageViewController: TalkingBaseViewController {
class SeerViewController: StartThen {
    //: var isNoChangeTop = false
    var isNoChangeTop = false
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var seleteIndex = 0
    private var seleteIndex = 0

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: setIsShowCleanAmimat()
        temp()
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: createUI()
        proposal()
        //: bindInteraction()
        instancePull()
        //: func__turnOnSystemNotification()
        buildDoingNotificationSystemDivert()
    }

    // MARK: - Lazy load

    // 背景
    //: private lazy var colorImageView: UIImageView = {
    private lazy var colorImageView: UIImageView = {
        //: let colorV = UIImageView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 100+StatusBarNavigationBarHeight))
        let colorV = UIImageView(frame: CGRect(x: 0, y: 0, width: constFormalContent, height: 100 + appTurnName))
        //: colorV.image = UIImage.submitGift(name: "bg_message_top")
        colorV.image = UIImage.submitGift(name: (String(kFatalUrl) + k_addMessage.replacingOccurrences(of: "button", with: "ss") + String(k_hiddenCurrentFormat.suffix(7))))
        //: return colorV
        return colorV
        //: }()
    }()

    //: private lazy var noticeView: TalkingNoticeTipView = {
    private lazy var noticeView: ObjectView = {
        //: let V = TalkingNoticeTipView()
        let V = ObjectView()
        //: V.isHidden = true
        V.isHidden = true
        //: return V
        return V
        //: }()
    }()

    //: private lazy var slideVC: QYSlideNavigationViewController = {
    private lazy var slideVC: FileViewController = {
        //: let vc = QYSlideNavigationViewController()
        let vc = FileViewController()
        //: vc.topDistance = 0
        vc.topDistance = 0
        //: vc.controllerItems = controllerItems
        vc.controllerItems = controllerItems
        //: vc.titleItems = titleItems
        vc.titleItems = titleItems
        //: vc.rightSpace = 60
        vc.rightSpace = 60
        //: vc.titleViewBackgroundColor = .clear
        vc.titleViewBackgroundColor = .clear
        //: vc.titleFont = .fontChange(type: .Medium, fontSize: 16)
        vc.titleFont = .fontChange(type: .Medium, fontSize: 16)
        //: vc.selectTitleFont = .fontChange(type: .Medium, fontSize: 18)
        vc.selectTitleFont = .fontChange(type: .Medium, fontSize: 18)
        //: vc.normalColor = UIColor(hex: "777777")!
        vc.normalColor = UIColor(hex: (k_videoSizeStr.capitalized))!
        //: vc.selectedColor = UIColor.colorStatuteNameApp()
        vc.selectedColor = UIColor.colorStatuteNameApp()
        //: vc.hasBttomTabBar = true
        vc.hasBttomTabBar = true
        //: vc.delegate = self
        vc.delegate = self
        //: vc.scrollEnabled = false
        vc.scrollEnabled = false
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var controllerItems: [TalkingBaseViewController] = {
    private lazy var controllerItems: [StartThen] = {
        //: var arr = [self.chatListVC, TalkingWhoLikeViewController()]
        var arr = [self.chatListVC, NameRecognizerDelegate()]
        //: if DistanceAppManager.share.loginUserMode.callTabSwitch == 1 {
        if DistanceAppManager.share.loginUserMode.callTabSwitch == 1 {
            //: arr.insert(TalkingVideoCallVC(), at: arr.count-1)
            arr.insert(SingleViewController(), at: arr.count - 1)
        }
        //: return arr
        return arr

        //: }()
    }()

    //: private lazy var chatListVC: TalkingChatListViewController = {
    private lazy var chatListVC: ParadigmCoverDataSource = {
        //: let vc = TalkingChatListViewController()
        let vc = ParadigmCoverDataSource()
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var titleItems: [String] = {
    private lazy var titleItems: [String] = {
        //: var arr = ["Messages".localized, "Who like me".localized]
        var arr = [(String(kCookieKey.prefix(8))).localized, (String(kBottomInfoMsg) + String(k_selectedMsg.suffix(9))).localized]
        //: if DistanceAppManager.share.loginUserMode.callTabSwitch == 1 {
        if DistanceAppManager.share.loginUserMode.callTabSwitch == 1 {
            //: arr.insert("Call".localized, at: arr.count-1)
            arr.insert((String(kBeMessage.prefix(4))).localized, at: arr.count - 1)
        }
        //: return arr
        return arr
        //: }()
    }()

    // 断网提醒
    //: private lazy var netTipLabel: UILabel = {
    private lazy var netTipLabel: UILabel = {
        //: let tipView = UILabel.init(frame: CGRect(x: 0, y: StatusBarNavigationBarHeight, width: ScreenWidth, height: 30))
        let tipView = UILabel(frame: CGRect(x: 0, y: appTurnName, width: constFormalContent, height: 30))
        //: tipView.font = UIFont.pingfangRugularFont(fontSize: 14)
        tipView.font = UIFont.targetFor(fontSize: 14)
        //: tipView.textColor = .white
        tipView.textColor = .white
        //: tipView.backgroundColor = UIColor.init(hex: "#FF2348")?.withAlphaComponent(0.8)
        tipView.backgroundColor = UIColor(hex: (String(k_userMessage) + k_backKey.replacingOccurrences(of: "group", with: "8")))?.withAlphaComponent(0.8)
        //: tipView.textAlignment = .center
        tipView.textAlignment = .center
        //: tipView.text = "Current network unavailable".localized
        tipView.text = (String(kTextMagnitudeToolKey.prefix(5)) + "nt net" + k_constraintUrl.replacingOccurrences(of: "error", with: "o") + " unavail" + String(k_firstFormat)).localized
        //: tipView.isHidden = true
        tipView.isHidden = true
        //: return tipView
        return tipView
        //: }()
    }()

    // message红点角标
    //: private lazy var msgNumLabel: BadgeLab = {
    private lazy var msgNumLabel: SinglePitchThen = {
        //: let numbLabel = BadgeLab()
        let numbLabel = SinglePitchThen()
        //: numbLabel.isHidden = true
        numbLabel.isHidden = true
        //: return numbLabel
        return numbLabel
        //: }()
    }()

    // whoLikeMe红点角标
    //: private lazy var badgLB: BadgeLab = {
    private lazy var badgLB: SinglePitchThen = {
        //: let numbLabel = BadgeLab()
        let numbLabel = SinglePitchThen()
        //: numbLabel.isHidden = true
        numbLabel.isHidden = true
        //: return numbLabel
        return numbLabel
        //: }()
    }()

    // 一键清除
    //: private lazy var cleanBtn: UIButton = {
    private lazy var cleanBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.setImage(UIImage.submitGift(name: "icon_yidu_pre"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(k_showUrl) + k_contentTableSubmitPath.replacingOccurrences(of: "count", with: "pr"))), for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "icon_yidu_pre"), for: .highlighted)
        btn.setImage(UIImage.submitGift(name: (String(k_showUrl) + k_contentTableSubmitPath.replacingOccurrences(of: "count", with: "pr"))), for: .highlighted)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - ModeGlideNavigationDelegate

//: extension TalkingMessageViewController: QYSlideNavigationDelegate {
extension SeerViewController: ModeGlideNavigationDelegate {
    //: func selectedViewController(_ viewController: UIViewController, index: Int) {
    func page(_ viewController: UIViewController, index: Int) {
        //: self.seleteIndex = Int(index)
        self.seleteIndex = Int(index)
        //: if viewController.isKind(of: TalkingChatListViewController.self) {
        if viewController.isKind(of: ParadigmCoverDataSource.self) {
            //: self.cleanBtn.isHidden = false
            self.cleanBtn.isHidden = false
            //: setIsShowCleanAmimat()
            temp()

            //: } else if viewController.isKind(of: TalkingWhoLikeViewController.self) {
        } else if viewController.isKind(of: NameRecognizerDelegate.self) {
            //: self.cleanBtn.isHidden = true
            self.cleanBtn.isHidden = true
            //: uploadRecord.uploadRecordEvent(eventID: ClickWLikeMeTabNoP)
            kSoundName.messUp(eventID: constErrorData)
        }
    }
}

// MARK: - Event

//: extension TalkingMessageViewController {
extension SeerViewController {
    //: func setIsTopAll() {
    func cellCardMy() {
        /// 默认选中all
        //: if seleteIndex == 0 {
        if seleteIndex == 0 {
            //: let vc = slideVC.controllerItems.first as? TalkingChatListViewController
            let vc = slideVC.controllerItems.first as? ParadigmCoverDataSource
            //: vc?.resetToTopItemView()
            vc?.equalImage()
            // 刷新在线状态
            //: vc?.refreshOnlineStatus(isFirst: true)
            vc?.namePlay(isFirst: true)
        }
    }

    /// 无网络提示
    //: func func__checkNetTipState() {
    func train() {
        //: if DistanceAppManager.share.networkStatus != .Unavailable && ResumeV2Listener.shared.isConnection {
        if DistanceAppManager.share.networkStatus != .Unavailable, ResumeV2Listener.shared.isConnection {
            //: netTipLabel.isHidden = true
            netTipLabel.isHidden = true
            //: } else {
        } else {
            //: netTipLabel.isHidden = false
            netTipLabel.isHidden = false
        }
    }

    /// message红点
    //: func func__messagebadgLBState(num: Int) {
    func valueNum(num: Int) {
        //: if num > 0 {
        if num > 0 {
            //: msgNumLabel.isHidden = false
            msgNumLabel.isHidden = false
            //: if num > 99 {
            if num > 99 {
                //: msgNumLabel.text = "99+"
                msgNumLabel.text = "99+"
                //: } else {
            } else {
                //: msgNumLabel.text = String(num)
                msgNumLabel.text = String(num)
            }
            //: } else {
        } else {
            //: msgNumLabel.isHidden = true
            msgNumLabel.isHidden = true
        }
    }

    /// 一键清除动画
    //: func setIsShowCleanAmimat() {
    func temp() {
        //: let unreadMsgCount = DistanceAppManager.share.unreadMessageNum
        let unreadMsgCount = DistanceAppManager.share.unreadMessageNum
        //: let isClean: Bool = UserDefaults.standard.object(forKey: isShowCleanAnimatCacheKey) as? Bool ?? false
        let isClean: Bool = UserDefaults.standard.object(forKey: show_failureDeviceContent) as? Bool ?? false
        //: if unreadMsgCount >= 10 && !isClean {
        if unreadMsgCount >= 10, !isClean {
            //: self.cleanBtnBtnAnimat()
            self.messageAnimat()
        }
    }

    //: func cleanBtnBtnAnimat() {
    func messageAnimat() {
        //: let degreesToRadians = 180.0 * .pi
        let degreesToRadians = 180.0 * .pi
        //: let angle1 = 0 / degreesToRadians
        let angle1 = 0 / degreesToRadians
        //: let angle2 = 100 / degreesToRadians
        let angle2 = 100 / degreesToRadians
        //: let angle3 = -100 / degreesToRadians
        let angle3 = -100 / degreesToRadians
        //: let angle4 = 100 / degreesToRadians
        let angle4 = 100 / degreesToRadians
        //: let angle5 = -100 / degreesToRadians
        let angle5 = -100 / degreesToRadians
        //: let angle6 = 0 / degreesToRadians
        let angle6 = 0 / degreesToRadians

        //: let du1: NSNumber = 0
        let du1: NSNumber = 0
        //: let du2: NSNumber = 0.13
        let du2: NSNumber = 0.13
        //: let du3: NSNumber = 0.3
        let du3: NSNumber = 0.3
        //: let du4: NSNumber = 0.47
        let du4: NSNumber = 0.47
        //: let du5: NSNumber = 0.8
        let du5: NSNumber = 0.8
        //: let du6: NSNumber = 1.0
        let du6: NSNumber = 1.0

        // 旋转
        //: let roate = CAKeyframeAnimation.init(keyPath: "transform.rotation")
        let roate = CAKeyframeAnimation(keyPath: (k_buttonContent.replacingOccurrences(of: "sound", with: "ns") + "form.r" + k_addName.replacingOccurrences(of: "gesture", with: "t") + String(k_rawStr)))
        //: roate.values = [(angle1), (angle2), (angle3), (angle4), (angle5), (angle6)]
        roate.values = [angle1, angle2, angle3, angle4, angle5, angle6]
        //: roate.keyTimes = [(du1), (du2), (du3), (du4), (du5), (du6)]
        roate.keyTimes = [du1, du2, du3, du4, du5, du6]

        // 缩放
        //: let zoom = CAKeyframeAnimation.init(keyPath: "transform.scale")
        let zoom = CAKeyframeAnimation(keyPath: (k_clearKindName.replacingOccurrences(of: "count", with: "tr") + "sform.sc" + kToBottomUrl.replacingOccurrences(of: "info", with: "a")))
        //: zoom.values = [(1.0), (1.2), (1.0)]
        zoom.values = [1.0, 1.2, 1.0]
        //: zoom.keyTimes = [(0), (0.5), (1.0)]
        zoom.keyTimes = [0, 0.5, 1.0]

        //
        //: let groupAnnimation = CAAnimationGroup.init()
        let groupAnnimation = CAAnimationGroup()
        //: groupAnnimation.autoreverses = false
        groupAnnimation.autoreverses = false
        //: groupAnnimation.animations = [roate, zoom]
        groupAnnimation.animations = [roate, zoom]
        //: groupAnnimation.duration = 1.0
        groupAnnimation.duration = 1.0
        //: groupAnnimation.repeatCount = 2
        groupAnnimation.repeatCount = 2
        //: groupAnnimation.isRemovedOnCompletion = false
        groupAnnimation.isRemovedOnCompletion = false
        //: groupAnnimation.fillMode = .forwards
        groupAnnimation.fillMode = .forwards
        //: cleanBtn.layer.add(groupAnnimation, forKey: "zoom&shake")
        cleanBtn.layer.add(groupAnnimation, forKey: (String(kQuantityMessage.prefix(5)) + "shake"))
    }

    /// 检查系统通知是否开启
    //: private func func__turnOnSystemNotification() {
    private func buildDoingNotificationSystemDivert() {
        //: TalkingPermissionTool.checkPushNotification { isEnable in
        ToolThen.bulgeOutInput { isEnable in

            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: if isEnable {
                if isEnable {
                    //: self.noticeView.isHidden = true
                    self.noticeView.isHidden = true
                    //: self.func__hideNotificationTipView(hide: true)
                    self.tipNotificationCoverViewHideFunc(hide: true)
                    //: }else{
                } else {
                    /// 页面顶部提示
                    //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
                    let today = NSDate.nameDateDayOfTheMonthAppearanceTimeGet(date: Date(), dateFormat: (String(kActionText) + k_normalId.replacingOccurrences(of: "content", with: "dd")))
                    //: if let closeDateStr = Defaults.string(forKey: TalkingMessageTabCloseNotificationsKey), today == closeDateStr {
                    if let closeDateStr = show_blockText.string(forKey: noti_seatData), today == closeDateStr {
                        //: self.func__hideNotificationTipView(hide: true)
                        self.tipNotificationCoverViewHideFunc(hide: true)
                        //: }else{
                    } else {
                        //: self.func__hideNotificationTipView(hide: false)
                        self.tipNotificationCoverViewHideFunc(hide: false)
                    }
                    /// 弹框逻辑
                    //: let isShow = Defaults.bool(forKey: TalkingMessageTabTurnOnNotificationsKey)
                    let isShow = show_blockText.bool(forKey: noti_managerValue)
                    //: if !isShow {
                    if !isShow {
                        //: Defaults.set(true, forKey: TalkingMessageTabTurnOnNotificationsKey)
                        show_blockText.set(true, forKey: noti_managerValue)
                        //: TalkingAlertShow.alert(title: nil,
                        FrameHiddenReactiveCompatible.theory(title: nil,
                                                //: message: "Allow %@ to send you notifications?".localizedArguments(AppName),
                                                message: String(bytes: k_toKey.map{outOfSight(gift: $0)}, encoding: .utf8)!.edgeDelay(kAddData),
                                                //: leftBtnTitle: "Cancel".localized,
                                                leftBtnTitle: (String(kLayerValue)).localized,
                                                //: rightBtnTitle: "Settings".localized) {
                                                rightBtnTitle: (String(kPlatFormat.prefix(8))).localized)
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
        }
    }

    //: private func func__hideNotificationTipView(hide: Bool) {
    private func tipNotificationCoverViewHideFunc(hide: Bool) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if hide{
            if hide {
                //: self.noticeView.isHidden = true
                self.noticeView.isHidden = true
                //: self.slideVC.view.snp.updateConstraints { make in
                self.slideVC.view.snp.updateConstraints { make in
                    //: make.top.equalToSuperview().offset(StatusBarHeight)
                    make.top.equalToSuperview().offset(main_netValue)
                }
                //: self.slideVC.viewHeight = ScreenHeight - StatusBarHeight - TabBarViewHeight
                self.slideVC.viewHeight = user_recordMarginValue - main_netValue - dataImageItemValue
                //: }else{
            } else {
                //: self.noticeView.isHidden = false
                self.noticeView.isHidden = false
                //: self.slideVC.view.snp.updateConstraints { make in
                self.slideVC.view.snp.updateConstraints { make in
                    //: make.top.equalToSuperview().offset(StatusBarHeight + self.noticeView.viewHeight)
                    make.top.equalToSuperview().offset(main_netValue + self.noticeView.viewHeight)
                }
                //: self.slideVC.viewHeight = ScreenHeight - self.noticeView.bottom - TabBarViewHeight
                self.slideVC.viewHeight = user_recordMarginValue - self.noticeView.bottom - dataImageItemValue
            }
        }
    }
}

// MARK: - 通知

//: extension TalkingMessageViewController {
extension SeerViewController {
    /// who like me 红点通知
    //: @objc func showbadgNumberNotif(notification: NSNotification) {
    @objc func fileAllocationTableIndex(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: let badNumber: Int  = userinfo["badNumber"] as! Int
        let badNumber: Int = userinfo[(String(kEqualText.prefix(5)) + "mber")] as! Int
        //: badgLB.isHidden = false
        badgLB.isHidden = false
        //: if badNumber > 99 {
        if badNumber > 99 {
            //: badgLB.text = "99+"
            badgLB.text = "99+"
            //: } else if badNumber<=0 {
        } else if badNumber <= 0 {
            //: badgLB.isHidden = true
            badgLB.isHidden = true
            //: badgLB.text = "0"
            badgLB.text = "0"
            //: } else {
        } else {
            //: badgLB.text = String(badNumber)
            badgLB.text = String(badNumber)
        }
    }
}

// MARK: - Layout

//: extension TalkingMessageViewController {
extension SeerViewController {
    /// UI
    //: private func createUI() {
    private func proposal() {
        //: view.backgroundColor = .white
        view.backgroundColor = .white

        //: view.addSubview(colorImageView)
        view.addSubview(colorImageView)
        //: view.addSubview(noticeView)
        view.addSubview(noticeView)
        //: self.addChild(slideVC)
        self.addChild(slideVC)

        //: self.view.addSubview(slideVC.view)
        self.view.addSubview(slideVC.view)
        //: slideVC.view.backgroundColor = UIColor.clear
        slideVC.view.backgroundColor = UIColor.clear
        //: slideVC.view.snp.makeConstraints { make in
        slideVC.view.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(StatusBarHeight)
            make.top.equalToSuperview().offset(main_netValue)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
        }

        //: for btn in slideVC.allBtn {
        for btn in slideVC.allBtn {
            //: let curenbrn: UIButton = btn
            let curenbrn: UIButton = btn
            //: if curenbrn.titleLabel!.text == "Who like me".localized {
            if curenbrn.titleLabel!.text == (String(kBottomInfoMsg) + String(k_selectedMsg.suffix(9))).localized {
                //: (curenbrn as AnyObject).addSubview(badgLB)
                (curenbrn as AnyObject).addSubview(badgLB)
                //: badgLB.snp.makeConstraints { make in
                badgLB.snp.makeConstraints { make in
                    //: make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    //: make.top.equalTo(curenbrn).offset(7)
                    make.top.equalTo(curenbrn).offset(7)
                    //: make.height.equalTo(16)
                    make.height.equalTo(16)
                    //: make.width.greaterThanOrEqualTo(16)
                    make.width.greaterThanOrEqualTo(16)
                }
                //: badgLB.isHidden = true
                badgLB.isHidden = true
                //: } else if (curenbrn.titleLabel!.text == "Messages".localized) {
            } else if curenbrn.titleLabel!.text == (String(kCookieKey.prefix(8))).localized {
                //: (curenbrn as AnyObject).addSubview(msgNumLabel)
                (curenbrn as AnyObject).addSubview(msgNumLabel)
                //: msgNumLabel.snp.makeConstraints { make in
                msgNumLabel.snp.makeConstraints { make in
                    //: make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    make.leading.equalTo(curenbrn.titleLabel!.snp.trailing).offset(-5)
                    //: make.top.equalTo(curenbrn).offset(7)
                    make.top.equalTo(curenbrn).offset(7)
                    //: make.height.equalTo(16)
                    make.height.equalTo(16)
                    //: make.width.greaterThanOrEqualTo(16)
                    make.width.greaterThanOrEqualTo(16)
                }
            }
        }

        //: view.addSubview(cleanBtn)
        view.addSubview(cleanBtn)
        //: cleanBtn.snp.makeConstraints { make in
        cleanBtn.snp.makeConstraints { make in
            //: make.top.equalTo(slideVC.view.snp.top)
            make.top.equalTo(slideVC.view.snp.top)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.size.equalTo(CGSize(width: 44, height: 44))
            make.size.equalTo(CGSize(width: 44, height: 44))
        }

        //: view.addSubview(netTipLabel)
        view.addSubview(netTipLabel)
        //: netTipLabel.snp.makeConstraints { make in
        netTipLabel.snp.makeConstraints { make in
            //: make.top.equalTo(slideVC.view.snp.top).offset(44)
            make.top.equalTo(slideVC.view.snp.top).offset(44)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(30)
            make.height.equalTo(30)
        }
    }

    /// 绑定事件
    //: private func bindInteraction() {
    private func instancePull() {
        //: ResumeV2Listener.shared.rx
        ResumeV2Listener.shared.rx
            //: .observeWeakly(Bool.self, "isConnection")
            .observeWeakly(Bool.self, (String(kManagerTextId.suffix(6)) + kSumId.replacingOccurrences(of: "player", with: "ec")))
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__checkNetTipState()
                self.train()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: DistanceAppManager.share.rx.observeWeakly(Int.self, "networkStatus")
        DistanceAppManager.share.rx.observeWeakly(Int.self, (k_viewId.replacingOccurrences(of: "submit", with: "ne") + "rkStatus"))
            //: .subscribe(onNext: { [weak self]  (value) in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__checkNetTipState()
                self.train()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        // 展示全部红点
        //: DistanceAppManager.share.rx.observeWeakly(Int.self, "unreadMessageNum")
        DistanceAppManager.share.rx.observeWeakly(Int.self, (kForceMsg.replacingOccurrences(of: "leading", with: "r") + "dMes" + String(kStatusFormat.prefix(5)) + kAttentionMsg.replacingOccurrences(of: "camera", with: "u")))
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] value in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: let valueInt = value ?? 0
                let valueInt = value ?? 0
                //: self.func__messagebadgLBState(num: valueInt)
                self.valueNum(num: valueInt)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: cleanBtn.rx.controlEvent(.touchUpInside)
        cleanBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: {
            .subscribe(onNext: {
                //: let config = ShowAlertConfig()
                let config = VideoAlertConfig()
                //: config.alignment = .center
                config.alignment = .center

                //: TalkingAlertShow.customAlert(message: "Do you want to mark all messages as read?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
                FrameHiddenReactiveCompatible.systemToConfig(message: String(bytes: k_dailyBlockUrl.map{viewTo(close: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(kLayerValue)).localized, rightBtnTitle: "OK".localized, leftBlock: {
                    //: TalkingAlertShow.hideAlert()
                    FrameHiddenReactiveCompatible.middleText()

                    //: }, rightBlock: {
                }, rightBlock: {
                    //: V2TIMManager.sharedInstance().markAllMessage {
                    V2TIMManager.sharedInstance().markAllMessage {
                        //: UserDefaults.standard.set(true, forKey: isShowCleanAnimatCacheKey)
                        UserDefaults.standard.set(true, forKey: show_failureDeviceContent)
                        //: } fail: { code, desc in
                    } fail: { code, desc in
                        //: UploadLogTool.writeLog(msg: "消息列表一键已读失败：code:\(code), desc:\(String(describing: desc))")
                        UploadDisplayThen.makeSelected(msg: (String(k_centerValue) + String(kRequestValue.prefix(4))) + "\(code)" + (String(k_equalMessage.suffix(7))) + "\(String(describing: desc))")
                    }
                    //: }, config: config)
                }, config: config)

                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        // who like me 红点通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(showbadgNumberNotif(notification:)),
                                               selector: #selector(fileAllocationTableIndex(notification:)),
                                               //: name: WHOLIKEME_BADGENUMBER_NOTIF,
                                               name: notiVideoValue,
                                               //: object: nil)
                                               object: nil)

        //: noticeView.closeBtnBlock = { [weak self] ()  -> Void in
        noticeView.closeBtnBlock = { [weak self] () in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: let today = NSDate.getTimeString(date: Date(), dateFormat: "yyyy-MM-dd")
            let today = NSDate.nameDateDayOfTheMonthAppearanceTimeGet(date: Date(), dateFormat: (String(kActionText) + k_normalId.replacingOccurrences(of: "content", with: "dd")))
            //: Defaults.set(today, forKey: TalkingMessageTabCloseNotificationsKey)
            show_blockText.set(today, forKey: noti_seatData)
            //: self.func__hideNotificationTipView(hide: true)
            self.tipNotificationCoverViewHideFunc(hide: true)
        }

        //: NotificationCenter.default.rx.notification( UIApplication.willEnterForegroundNotification)
        NotificationCenter.default.rx.notification(UIApplication.willEnterForegroundNotification)
            //: .subscribe(onNext: { [weak self] (notification) in
            .subscribe(onNext: { [weak self] _ in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.func__turnOnSystemNotification()
                self.buildDoingNotificationSystemDivert()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}
