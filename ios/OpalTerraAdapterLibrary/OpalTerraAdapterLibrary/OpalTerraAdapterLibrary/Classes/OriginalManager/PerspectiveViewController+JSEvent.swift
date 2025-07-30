
//: Declare String Begin

/*: "WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION" :*/
fileprivate let k_backTitle:[UInt8] = [0x1c,0xa,0x7,0x1b,0xe,0xa,0x1c,0x24,0x19,0xd,0xe,0x17,0x9,0x24,0x17,0xa,0xb,0x17,0xa,0x18,0xd,0x8,0x14,0xe,0x13,0x24,0x13,0x14,0x19,0xe,0xb,0xe,0x8,0x6,0x19,0xe,0x14,0x13]

fileprivate func cookieLabel(action num: UInt8) -> UInt8 {
    let value = Int(num) - 197
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "goodsId" :*/
fileprivate let k_soccerStr:String = "start pic self supergoodsId"

/*: "source" :*/
fileprivate let kAllText:[Character] = ["s","o","u","r","c","e"]

/*: "type" :*/
fileprivate let k_currentDataMessage:String = "infope"

/*: "title" :*/
fileprivate let kBackgroundName:String = "tcountle"

/*: "url" :*/
fileprivate let k_busyItemKey:[Character] = ["u","r","l"]

/*: "money" :*/
fileprivate let k_equalViewToName:[Character] = ["m","o","n","e","y"]

/*: "Other" :*/
fileprivate let k_blackMsg:String = "change if type height showOther"

/*: "scene" :*/
fileprivate let kLiveData:[Character] = ["s","c","e","n","e"]

/*: "show" :*/
fileprivate let kTabKey:[Character] = ["s","h","o","w"]

/*: "target" :*/
fileprivate let k_instanceStr:String = "tartopt"

/*: "eventName" :*/
fileprivate let kUserStr:String = "statute"
fileprivate let kTempMessage:[Character] = ["v","e","n","t","N","a","m","e"]

/*: "jsonString" :*/
fileprivate let k_willValue:[Character] = ["j","s","o","n","S","t","r","i","n","g"]

/*: "coin" :*/
fileprivate let kLastUrl:String = "cstatuten"

/*: "uid" :*/
fileprivate let kBlockName:String = "UID"

/*: "未实现的js事件： :*/
fileprivate let k_succeedMessage:[Character] = ["未","实","\u{73b0}","的","j","s","事","件","："]

/*: "PurchaseClick" :*/
fileprivate let k_frameUrl:[Character] = ["P","u","r","c","h","a","s","e"]
fileprivate let kWhenId:String = "Clickif hidden video"

/*: "Retry After or Go to " :*/
fileprivate let kEqualRequestModelMessage:[Character] = ["R","e","t","r","y"," ","A","f","t","e","r"," ","o","r"," ","G","o"," ","t","o"," "]

/*: "Feedback" :*/
fileprivate let kViewName:[Character] = ["F","e","e","d","b","a","c","k"]

/*: " to contact us" :*/
fileprivate let kPicDataRowUrl:[Character] = [" ","t","o"," ","c","o","n","t","a","c","t"," ","u","s"]

/*: "Apple" :*/
fileprivate let kDisappearAddMessage:String = "attention start normalApple"

/*: " apple支付充值失败： :*/
fileprivate let kViewFormat:String = " applequal face model"
fileprivate let kManagerStatusId:String = "值user："

/*: "payResultCallback();" :*/
fileprivate let kDeletePath:[Character] = ["p","a","y","R","e","s","u","l","t","C","a","l","l","b","a","c","k","(",")",";"]

/*: "USD" :*/
fileprivate let k_pathKey:[Character] = ["U","S","D"]

/*: "amount" :*/
fileprivate let kEditAppPath:[UInt8] = [0x7a,0x76,0x74,0x6e,0x75,0x6f]

/*: "getSystemNotificationtStatus(true)" :*/
fileprivate let k_voiceValue:[UInt8] = [0x37,0x35,0x24,0x3,0x29,0x23,0x24,0x35,0x3d,0x1e,0x3f,0x24,0x39,0x36,0x39,0x33,0x31,0x24,0x39,0x3f,0x3e,0x24,0x3,0x24,0x31,0x24,0x25,0x23,0x78,0x24,0x22,0x25,0x35,0x79]

/*: "getSystemNotificationtStatus(false)" :*/
fileprivate let kSaveValue:[UInt8] = [0x80,0x82,0x93,0xb4,0x9e,0x94,0x93,0x82,0x8a,0xa9,0x88,0x93,0x8e,0x81,0x8e,0x84,0x86,0x93,0x8e,0x88,0x89,0x93,0xb4,0x93,0x86,0x93,0x92,0x94,0xcf,0x81,0x86,0x8b,0x94,0x82,0xce]

private func replyTo(hidden num: UInt8) -> UInt8 {
    return num ^ 231
}

/*: "mfBean" :*/
fileprivate let kVideoContent:[UInt8] = [0x7d,0x76,0x52,0x75,0x71,0x7e]

fileprivate func colorGesture(input num: UInt8) -> UInt8 {
    let value = Int(num) + 240
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "%.2f" :*/
fileprivate let k_nameMessage:[Character] = ["%",".","2","f"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PerspectiveViewController+JSEvent.swift
//  AbroadTalking
//
//  Created by young on 2022/9/6.
//

//: import UIKit
import UIKit
//: import WebKit
import WebKit

// 通知三方H5刷新金币
//: public let WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION = NSNotification.Name(rawValue: "WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION")
public let appViewTitle = NSNotification.Name(rawValue: String(bytes: k_backTitle.map{cookieLabel(action: $0)}, encoding: .utf8)!)

//: extension TalkingWebViewController {
extension PerspectiveViewController {
    /// 处理JS事件
    /// - Parameters:
    ///   - message: 消息
    //: func HandleScriptMessage(_ message: WKScriptMessage) {
    func relate(_ message: WKScriptMessage) {
        //: let type = WebMethodType(rawValue: message.name)
        let type = SizeTransformable(rawValue: message.name)
        //: let json = JSON(message.body)
        let json = JSON(message.body)
        //: switch type {
        switch type {
        //: case .MethodType_Exit:
        case .MethodType_Exit:
            //: self.func__closeAction(sender: nil)
            self.appressed(sender: nil)

        //: case .MethodType_needLogin:
        case .MethodType_needLogin:
            //: needLogin()
            managerShould()

        //: case .MethodType_apPay:
        case .MethodType_apPay:
            //: applePay(productId: json["goodsId"].stringValue, source: json["source"].intValue, payType: .Pay)
            totalro(productId: json[(String(k_soccerStr.suffix(7)))].stringValue, source: json[(String(kAllText))].intValue, payType: .Pay)

        //: case .MethodType_apPay_subscribe:
        case .MethodType_apPay_subscribe:
            //: if json["type"].stringValue == "6" {
            if json[(k_currentDataMessage.replacingOccurrences(of: "info", with: "ty"))].stringValue == "6" {
                //: isVideoCallRechargeHalfPage = true
                isVideoCallRechargeHalfPage = true
                //: RECHARGE_CLICK_EVENT = subscribtionRecordButton
                main_tabName = app_recordText
                //: } else if json["type"].stringValue == "7" { // 点击订阅弹窗的订阅按钮
            } else if json[(k_currentDataMessage.replacingOccurrences(of: "info", with: "ty"))].stringValue == "7" { // 点击订阅弹窗的订阅按钮
                //: RECHARGE_CLICK_EVENT = subscribtionRecordButton
                main_tabName = app_recordText
            }
            //: applePay_subscribe(type: json["type"].stringValue, productId: json["goodsId"].stringValue, payType: .Subscribe)
            listType(type: json[(k_currentDataMessage.replacingOccurrences(of: "info", with: "ty"))].stringValue, productId: json[(String(k_soccerStr.suffix(7)))].stringValue, payType: .Subscribe)

        //: case .MethodType_changeMenuButton:
        case .MethodType_changeMenuButton:
            //: changeRightMenuButton(title: json["title"].stringValue, url: json["url"].stringValue)
            mentionUrl(title: json[(kBackgroundName.replacingOccurrences(of: "count", with: "it"))].stringValue, url: json[(String(k_busyItemKey))].stringValue)

        //: case .MethodType_refreshCoin:
        case .MethodType_refreshCoin:
            //: refreshCoin(price: Double(json["money"].stringValue) ?? 0, payMode: "Other", scene: json["scene"].stringValue)
            incident(price: Double(json[(String(k_equalViewToName))].stringValue) ?? 0, payMode: (String(k_blackMsg.suffix(5))), scene: json[(String(kLiveData))].stringValue)

        //: case .MethodType_appearsOnGiftBroadcast:
        case .MethodType_appearsOnGiftBroadcast:
            //: appearsOnGiftBroadcast(show: json["show"].boolValue)
            exampleEqual(show: json[(String(kTabKey))].boolValue)

        //: case.MethodType_ToUrl:
        case .MethodType_ToUrl:
            //: openTourl(url: json.rawString() ?? "")
            viewShared(url: json.rawString() ?? "")

        //: case .MethodType_customerService:
        case .MethodType_customerService:
            //: AddReactiveCompatible.share.func__pushToPriveteChatVC(chatID: UserTextMacroDefine.getCustomerServiceID())
            AddReactiveCompatible.share.tincture(chatID: UserTextMacroDefine.lengthId())

        //: case.setRightMenuButton:
        case .setRightMenuButton:
            //: break
            break

        //: case .MethodType_taskCenter:
        case .MethodType_taskCenter:
            //: let target = json["target"].intValue
            let target = json[(k_instanceStr.replacingOccurrences(of: "top", with: "ge"))].intValue
            //: self.reloadInputViews()
            self.reloadInputViews()
            //: switch target {
            switch target {
            //: case 1:
            case 1: /// 签到领金币页
                //: AddReactiveCompatible.share.func__pushToSubscribePageWebVC()
                AddReactiveCompatible.share.belowWith()

            //: case 2:
            case 2: /// 个人信息编辑页面
                //: let vc = TalkingEditProfilesVC.init()
                let vc = FatalProfilesVc()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)

            //: case 3:
            case 3: /// 真人认证页面
                //: verifyBtnClick()
                anyCountClick()
            //: case 4:
            case 4: /// 发布动态页面
                //: tabberSelete(type: TabBarItemType.Moment.rawValue)
                typeEnablece(type: NameWidthMagnitude.Moment.rawValue)
                /// 防止动态首页广播还没创建
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    //: NotificationCenter.default.post(name: FREEBTN_UPLOAD_POST_NOTIFICATION,
                    NotificationCenter.default.post(name: main_bottomName,
                                                    //: object: nil,
                                                    object: nil,
                                                    //: userInfo: nil)
                                                    userInfo: nil)
                }
            //: case 5:
            case 5: /// 我的页面
                //: tabberSelete(type: TabBarItemType.Account.rawValue)
                typeEnablece(type: NameWidthMagnitude.Account.rawValue)
            //: case 6:
            case 6: /// 首页
                //: tabberSelete(type: TabBarItemType.Social.rawValue)
                typeEnablece(type: NameWidthMagnitude.Social.rawValue)
            //: case 7:
            case 7: /// 消息列表页
                //: tabberSelete(type: TabBarItemType.Message.rawValue)
                typeEnablece(type: NameWidthMagnitude.Message.rawValue)
            //: case 8:
            case 8: /// Greet setting页
                //: let vc = TalkingAutoGreetSettingVC()
                let vc = StackThen()
                //: navigationController?.pushViewController(vc, animated: true)
                navigationController?.pushViewController(vc, animated: true)
            //: case 9:
            case 9: /// 动态列表页
                //: tabberSelete(type: TabBarItemType.Moment.rawValue)
                typeEnablece(type: NameWidthMagnitude.Moment.rawValue)
            //: default:
            default:
                //: break
                break
            }
        //: case .MethodType_systemNotification:
        case .MethodType_systemNotification:
            //: let type = json["type"].intValue
            let type = json[(k_currentDataMessage.replacingOccurrences(of: "info", with: "ty"))].intValue
            //: changeNotifaStatus(type: type)
            pressedFile(type: type)

        //: case .MethodType_refreshPoint:
        case .MethodType_refreshPoint:
            //: refreshPoint()
            isochronal()

        //: case .MethodType_onEvent:
        case .MethodType_onEvent:
            //: reportEvent(eventName: json["eventName"].stringValue, jsonStr: json["jsonString"].stringValue)
            happeningJsonEventReportName(eventName: json[(kUserStr.replacingOccurrences(of: "statute", with: "e") + String(kTempMessage))].stringValue, jsonStr: json[(String(k_willValue))].stringValue)

        //: case .MethodType_refreshCoinAll:
        case .MethodType_refreshCoinAll:
            //: req_refreshCoinAll(coin: json["coin"].stringValue)
            crucifySave(coin: json[(kLastUrl.replacingOccurrences(of: "statute", with: "oi"))].stringValue)

        //: case .MethodType_refreshPackage:
        case .MethodType_refreshPackage:
            //: req_refreshPackage()
            phonePackage()

        //: case .MethodType_vibrate:
        case .MethodType_vibrate:
            //: phoneVibrate()
            resolve()

        //: case .MethodType_goFreeVideo:
        case .MethodType_goFreeVideo:
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
            ModelThen.applicationCompletion { _, _, _ in
                //: if DistanceAppManager.share.loginUserMode.jumpType == 1 {
                if DistanceAppManager.share.loginUserMode.jumpType == 1 {
                    //: self.func__closeAction(sender: nil)
                    self.appressed(sender: nil)
                    //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                        //: AddReactiveCompatible.share.func__pushToRandomVideoVC(isBeginRand: false)
                        AddReactiveCompatible.share.sampleWith(isBeginRand: false)
                    }
                }
            }

        //: case .MethodType_goMessageDetail:
        case .MethodType_goMessageDetail:
            //: AddReactiveCompatible.share.func__pushToPriveteChatVC(chatID: json["uid"].stringValue)
            AddReactiveCompatible.share.tincture(chatID: json[(kBlockName.lowercased())].stringValue)

        //: case .MethodType_goPersonInfo:
        case .MethodType_goPersonInfo:
            //: AddReactiveCompatible.share.func__pushToUserDetailVC(uid: json["uid"].stringValue)
            AddReactiveCompatible.share.afterTo(uid: json[(kBlockName.lowercased())].stringValue)

        //: case .MethodType_showRechargeDialog:
        case .MethodType_showRechargeDialog:
            //: AddReactiveCompatible.share.func__pushToHalfWebVC(webViewType: .RechargeHalfPage)
            AddReactiveCompatible.share.halfDismiss(webViewType: .RechargeHalfPage)

        //: case .OpenRetainPopup:
        case .OpenRetainPopup:
            //: self.func__closeAction(sender: nil)
            self.appressed(sender: nil)
        //: case .openBrowserWithUrl:
        case .openBrowserWithUrl:
            //: openToOutUrl(url: json.rawString() ?? "")
            practicalApplication(url: json.rawString() ?? "")
        //: case .none:
        case .none:
            //: printLog(message: "未实现的js事件：\(message.name)")
            printLog(message: (String(k_succeedMessage)) + "\(message.name)")
        }
    }

    // MARK: - Event

    /// 苹果订阅
    /// - Parameters:
    ///   - type: 订阅入口；1：首页banner，2：全屏充值页，3：半屏充值页，4：领取金币弹窗
    ///   - productId: 商品Id
    ///   - payType: 支付类型
    //: private func applePay_subscribe(type: String, productId: String, payType: ApplePayType) {
    private func listType(type _: String, productId: String, payType: EndType) {
        //: applePay(productId: productId, payType: payType)
        totalro(productId: productId, payType: payType)
    }

    /// 苹果支付/订阅
    /// - Parameters:
    ///   - productId: productId: 商品Id
    ///   - source: 充值来源
    //: private func applePay(productId: String, source: Int = -1, payType: ApplePayType) {
    private func totalro(productId: String, source: Int = -1, payType: EndType) {
        //: if DistanceAppManager.share.loginUid.isEmptyString {
        if DistanceAppManager.share.loginUid.isEmptyString {
            //: return
            return
        }
        //: FirebaseAnalyticsManager.share.logEvent(name: "PurchaseClick")
        DecisionMakerAnalyticsManager.share.upTimeParameters(name: (String(k_frameUrl) + String(kWhenId.prefix(5))))

        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: var index = isVideoCallRechargeHalfPage ? 1: 0
        var index = isVideoCallRechargeHalfPage ? 1 : 0
        //: if source != -1 {
        if source != -1 {
            //: index = source
            index = source
        }
        //: AppleIAPManager.shared.iap_startPurchase(productId: productId, payType: payType, source: index) { status, reportMoney, payType in
        InformationThen.shared.roundLeaf(productId: productId, payType: payType, source: index) { status, reportMoney, payType in
            //: EndProgressHUD.popEnable()
            EndProgressHUD.popEnable()
            //: DispatchQueue.main.async { [self] in
            DispatchQueue.main.async { [self] in
                //: switch status {
                switch status {
                //: case .verityFail:
                case .verityFail:
                    //: ProgressHUD.toast( "Retry After or Go to \"Feedback\" to contact us".localized)
                    EndProgressHUD.terraceToast((String(kEqualRequestModelMessage)) + "\"" + (String(kViewName)) + "\"" + (String(kPicDataRowUrl)).localized)
                //: case .veritySucceed:
                case .veritySucceed:
                    //: appleIAPVeritySucceed(price: reportMoney, payType: payType)
                    nature(price: reportMoney, payType: payType)
                //: case .renewSucceed:
                case .renewSucceed:
                    //: let scene = (payType == .Subscribe) ? "1":"2"
                    let scene = (payType == .Subscribe) ? "1" : "2"
                    //: refreshCoin(price: reportMoney, payMode: "Apple", scene: scene)
                    incident(price: reportMoney, payMode: (String(kDisappearAddMessage.suffix(5))), scene: scene)
                //: default:
                default:
                    //: printLog(message: " apple支付充值失败：\(status.rawValue)")
                    printLog(message: (String(kViewFormat.prefix(6)) + "e支付充" + kManagerStatusId.replacingOccurrences(of: "user", with: "失败")) + "\(status.rawValue)")
                }
            }
        }
    }

    /// 设置导航右侧按钮
    /// - Parameters:
    ///   - title: 标题
    ///   - url: 地址
    //: private func changeRightMenuButton(title: String, url: String) {
    private func mentionUrl(title: String, url: String) {
        //: let rightBtn = TalkingButton()
        let rightBtn = ResumeControl()
        //: rightBtn.titleLabel?.font = .systemFont(ofSize: 14)
        rightBtn.titleLabel?.font = .systemFont(ofSize: 14)
        //: rightBtn.setTitle(title, for: .normal)
        rightBtn.setTitle(title, for: .normal)
        //: rightBtn.setTitleColor(.RGBA(51, 51, 51, 1), for: .normal)
        rightBtn.setTitleColor(.behindVoice(51, 51, 51, 1), for: .normal)
        //: rightBtn.addTarget(self, action: #selector(rightButtonClick), for: .touchUpInside)
        rightBtn.addTarget(self, action: #selector(blockSnap), for: .touchUpInside)
        //: rightBtn.sizeToFit()
        rightBtn.sizeToFit()
        //: rightBtn.userInfo = ["url": url]
        rightBtn.userInfo = [(String(k_busyItemKey)): url]
        //: self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightBtn)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightBtn)
    }

    //: @objc func rightButtonClick(button: TalkingButton) {
    @objc func blockSnap(button: ResumeControl) {
        //: guard let urlString = button.userInfo?["url"] as? String else {
        guard let urlString = button.userInfo?[(String(k_busyItemKey))] as? String else {
            //: return
            return
        }

        //: self.urlStr = urlString
        self.urlStr = urlString
        //: func__startRequest()
        videoRequest()
    }

    /// 退出登录
    //: private func needLogin() {
    private func managerShould() {
        //: guard Int(DistanceAppManager.share.loginUid) ?? 0 > 0 else {
        guard Int(DistanceAppManager.share.loginUid) ?? 0 > 0 else {
            //: self.webView.reload()
            self.webView.reload()
            //: return
            return
        }

        //: NotificationCenter.default.post(name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
        NotificationCenter.default.post(name: notiButtonData,
                                        //: object: nil,
                                        object: nil,
                                        //: userInfo: nil)
                                        userInfo: nil)
    }

    /// 苹果 支付/订阅 成功验证通过
    /// - Parameters:
    ///   - price: 充值金额
    ///   - payType: 支付类型
    //: func appleIAPVeritySucceed(price: Double, payType: ApplePayType) {
    func nature(price: Double, payType: EndType) {
        //: self.webView.evaluateJavaScript("payResultCallback();") { data, error in
        self.webView.evaluateJavaScript((String(kDeletePath))) { _, _ in
        }
        //: let scene = (payType == .Subscribe) ? "1":"2"
        let scene = (payType == .Subscribe) ? "1" : "2"
        //: refreshCoin(price: price, payMode: "Apple", scene: scene)
        incident(price: price, payMode: (String(kDisappearAddMessage.suffix(5))), scene: scene)
    }

    /// 支付/订阅 成功刷新个人信息【Apple/Other】
    /// - Parameters:
    ///   - price: 充值金额
    ///   - payMode: 类型
    ///   - scene: 1：订阅，2：内购
    //: private func refreshCoin(price: Double, payMode: String, scene: String) {
    private func incident(price: Double, payMode: String, scene: String) {
        //: NotificationCenter.default.post(name: UPDATE_USER_GETMYINFO_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: app_errorValue, object: nil)
        //: NotificationCenter.default.post(name: UPDATE_USER_GETINFOCOLUMN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: notiRecordName, object: nil)
        //: NotificationCenter.default.post(name: REFRESH_INDEX_GETCONFIG_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: showPlayData, object: nil)
        //: NotificationCenter.default.post(name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: main_infoSessionName, object: nil)
        // 成功埋点
        //: if scene == "1" {
        if scene == "1" {
            //: TalkingAdjustManager.share.addSubscribeEvent(price: price, currency: "USD")
            ListReactiveCompatible.share.earlyOff(price: price, currency: (String(k_pathKey)))
            //: } else {
        } else {
            //: TalkingAdjustManager.share.addPurchasedEvent(price: price, currency: "USD")
            ListReactiveCompatible.share.weltanschauungCurrency(price: price, currency: (String(k_pathKey)))
        }
        //: FirebaseAnalyticsManager.share.trackPurchase(payType: payMode, price: price, currency: "USD")
        DecisionMakerAnalyticsManager.share.scanSource(payType: payMode, price: price, currency: (String(k_pathKey)))

        // 半屏充值成功埋点
        //: if RECHARGE_CLICK_EVENT.count > 0 {
        if main_tabName.count > 0 {
            //: uploadRecord.uploadRecordEvent(eventID: RECHARGE_CLICK_EVENT, parameterStr: ["amount": price])
            kSoundName.releaseStr(eventID: main_tabName, parameterStr: [String(bytes: kEditAppPath.map{$0^27}, encoding: .utf8)!: price])
        }

        // 支付成功发送通知，调用三方js事件
        //: NotificationCenter.default.post(name: WEBVIEW_THIRD_REFRESHCOIN_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: appViewTitle, object: nil)
    }

    /// 广播设置
    /// - Parameter show: 是否上广播
    //: private func appearsOnGiftBroadcast(show: Bool) {
    private func exampleEqual(show _: Bool) {}

    //: private func verifyBtnClick() {
    private func anyCountClick() {
        //: if DistanceAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue {
        if DistanceAppManager.share.loginUserMode.isTPAuth == BreakValueConvertible.isSuccessed.rawValue {
            //: return
            return
                //: } else if DistanceAppManager.share.loginUserMode.isTPAuth == TPUserAuth.unknown.rawValue {
        } else if DistanceAppManager.share.loginUserMode.isTPAuth == BreakValueConvertible.unknown.rawValue {
            //: AddReactiveCompatible.share.func__pushUserVerifyController(toast: nil)
            AddReactiveCompatible.share.decisionToast(toast: nil)
            //: } else if DistanceAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if DistanceAppManager.share.loginUserMode.isTPAuth == BreakValueConvertible.isOnGoing.rawValue {
            //: let vc = TalkingFinalVerificationVC()
            let vc = StreamViewController()
            //: AddReactiveCompatible.share.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
            AddReactiveCompatible.share.pageBy()?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: AddReactiveCompatible.share.func__pushUserVerifyController(toast: nil)
            AddReactiveCompatible.share.decisionToast(toast: nil)
        }
    }

    /// 底部tabbar切换
    //: private func tabberSelete(type: Int) {
    private func typeEnablece(type: Int) {
        //: guard type < self.tabBarController?.viewControllers?.count ?? 0 else { return }
        guard type < self.tabBarController?.viewControllers?.count ?? 0 else { return }
        //: let vc = self.tabBarController?.viewControllers?[type]
        let vc = self.tabBarController?.viewControllers?[type]
        //: self.tabBarController?.tabBar.isHidden = false
        self.tabBarController?.tabBar.isHidden = false
        //: self.tabBarController?.selectedIndex = type
        self.tabBarController?.selectedIndex = type
        //: self.tabBarController?.selectedViewController = vc
        self.tabBarController?.selectedViewController = vc
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    /// 获取系统通知状态
    //: private func changeNotifaStatus(type: Int) {
    private func pressedFile(type: Int) {
        //: if type == 0 {
        if type == 0 {
            //: if let url = URL(string: UIApplication.openSettingsURLString), UIApplication.shared.canOpenURL(url) {
            if let url = URL(string: UIApplication.openSettingsURLString), UIApplication.shared.canOpenURL(url) {
                //: if #available(iOS 10.0, *) {
                if #available(iOS 10.0, *) {
                    //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    //: } else {
                } else {
                    //: if UIApplication.shared.canOpenURL(url) {
                    if UIApplication.shared.canOpenURL(url) {
                        //: UIApplication.shared.openURL(url)
                        UIApplication.shared.openURL(url)
                    }
                }
            }
            //: } else if type == 1 {
        } else if type == 1 {
            //: AppManagerRequest.func__requestUserConfig { succeed, result, errorModel in }
            ModelThen.faq { _, _, _ in }
            //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in }
            ModelThen.applicationCompletion { _, _, _ in }
            //: TalkingPermissionTool.checkPushNotification { isShow in
            ToolThen.bulgeOutInput { isShow in
                //: DispatchQueue.main.sync {
                DispatchQueue.main.sync {
                    //: let str = isShow ? "getSystemNotificationtStatus(true)" : "getSystemNotificationtStatus(false)"
                    let str = isShow ? String(bytes: k_voiceValue.map{$0^80}, encoding: .utf8)! : String(bytes: kSaveValue.map{replyTo(hidden: $0)}, encoding: .utf8)!
                    //: self.webView.evaluateJavaScript(str) { data, error in
                    self.webView.evaluateJavaScript(str) { _, _ in
                    }
                }
            }
        }
    }

    //: private func refreshPoint() {
    private func isochronal() {
        //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
        ModelThen.applicationCompletion { _, _, _ in
            //: if TalkingLiveManager.shared().isLive {
            if ValueThen.kindShared().isLive {
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": 0.0])
                NotificationCenter.default.post(name: app_userText, object: nil, userInfo: [String(bytes: kVideoContent.map{colorGesture(input: $0)}, encoding: .utf8)!: 0.0])
            }
        }
    }

    /// 刷新金币
    /// - Parameter coin: 传' ', 刷新接口；传其他，进行相加（含负数））
    //: private func req_refreshCoinAll(coin: String) {
    private func crucifySave(coin: String) {
        //: let value: Double = Double(coin) ?? 0
        let value = Double(coin) ?? 0
        //: if value == 0 {
        if value == 0 { // 刷新接口
            //: AppManagerRequest.func__getInfoColumn { succeed, result, errorModel in
            ModelThen.upButton { _, _, _ in
            }
            //: } else {
        } else { // 加减
            //: let newCoin = Double(DistanceAppManager.share.loginUserMode.mf_coin)! + value
            let newCoin = Double(DistanceAppManager.share.loginUserMode.mf_coin)! + value
            //: DistanceAppManager.share.loginUserMode.mf_coin = String(format: "%.2f", newCoin)
            DistanceAppManager.share.loginUserMode.mf_coin = String(format: "%.2f", newCoin)
        }
    }

    /// 刷新礼物背包
    //: private func req_refreshPackage() {
    private func phonePackage() {
        //: NotificationCenter.default.post(name: GIFT_REFRESHPACKAGE_NOTIFICATION, object: nil)
        NotificationCenter.default.post(name: app_micContent, object: nil)
    }

    /// 事件上报
    /// - Parameters:
    ///   - eventName: 事件名称
    ///   - jsonStr: 事件参数
    //: private func reportEvent(eventName: String, jsonStr: String) {
    private func happeningJsonEventReportName(eventName: String, jsonStr: String) {
        //: uploadRecord.uploadRecordEvent(eventID: eventName, toUid: "", jsonStr: jsonStr)
        kSoundName.messUp(eventID: eventName, toUid: "", jsonStr: jsonStr)
    }

    /// 手机震动
    //: private func phoneVibrate() {
    private func resolve() {
        //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }
}
