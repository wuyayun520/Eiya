
//: Declare String Begin

/*: "New friends" :*/
fileprivate let k_playerUrl:String = "New frifile object succeed"
fileprivate let kToStr:String = "etaps"

/*: "icon_yidu_pre" :*/
fileprivate let kArrayPath:[Character] = ["i","c","o","n","_","y","i","d","u","_"]
fileprivate let kMakeMessage:String = "pfille"

/*: "You've got no message yet." :*/
fileprivate let kLabMessage:String = "You\'v"
fileprivate let k_atIndexKey:String = " no memodel model"
fileprivate let k_sectionTitle:String = "e yet.app false string layer lab"

/*: "icon_kong_kong_default" :*/
fileprivate let kColorFinishFormat:[Character] = ["i","c","o","n","_","k","o","n","g","_","k","o","n","g","_","d","e","f","a","u"]
fileprivate let kAppPostTitle:[Character] = ["l","t"]

/*: "Cancel" :*/
fileprivate let kEnableMsg:String = "Cancelinfo create"

/*: "OK" :*/
fileprivate let kLogMsg:String = "Oselect"

/*: "uid" :*/
fileprivate let k_headDateKey:[UInt8] = [0x48,0x3c,0x37]

fileprivate func viewFor(index num: UInt8) -> UInt8 {
    let value = Int(num) - 211
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Do you want to mark all messages as read?" :*/
fileprivate let k_enterMsg:[UInt8] = [0x7d,0x56,0x19,0x40,0x56,0x4c,0x19,0x4e,0x58,0x57,0x4d,0x19,0x4d,0x56,0x19,0x54,0x58,0x4b,0x52,0x19,0x58,0x55,0x55,0x19,0x54,0x5c,0x4a,0x4a,0x58,0x5e,0x5c,0x4a,0x19,0x58,0x4a,0x19,0x4b,0x5c,0x58,0x5d,0x6]

private func makeBorder(info num: UInt8) -> UInt8 {
    return num ^ 57
}

/*: "MoreMessages一键已读失败：code: :*/
fileprivate let kItemMessage:String = "make true view positionMoreMe"
fileprivate let kToolModelUrl:String = "es一键\u{5df2}读失"
fileprivate let k_aspectIndexId:String = "败\u{ff1a}code:"

/*: , desc: :*/
fileprivate let kChangeText:[Character] = [","," ","d","e","s","c",":"]

/*: "btn_message_report_nor" :*/
fileprivate let kTranslateData:[Character] = ["b","t","n","_","m","e","s","s","a"]
fileprivate let k_arcFormat:String = "if for array stringge_repo"
fileprivate let k_serviceValue:[Character] = ["r","t","_","n","o","r"]

/*: "#FF935D" :*/
fileprivate let kValuePath:String = "background return error normal#FF935D"

/*: "btn_message_block_nor" :*/
fileprivate let k_toData:String = "target age path listbtn_"
fileprivate let kBlockName:String = "type equal actionage_bloc"
fileprivate let k_tempValue:[Character] = ["k","_","n","o","r"]

/*: "#C179F9" :*/
fileprivate let k_areaMessage:String = "#C179page var"
fileprivate let kHeadValue:String = "Fall"

/*: "btn_message_delete_nor" :*/
fileprivate let kLabEqualFormat:[Character] = ["b","t","n","_","m","e","s","s","a","g","e","_","d","e","l","e","t","e","_","n","o","r"]

/*: "#FF506D" :*/
fileprivate let k_topKey:String = "#FF506video true view app make"
fileprivate let k_viewValue:[Character] = ["D"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PullViewController.swift
//  AbroadTalking
//
//  Created by young on 2023/9/27.
//

//: import UIKit
import UIKit

//: class TalkingMoreMessagesListViewController: TalkingBaseViewController {
class PullViewController: StartThen {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "New friends".localized
        self.title = (String(k_playerUrl.prefix(7)) + kToStr.replacingOccurrences(of: "tap", with: "nd")).localized
        //: let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 24, height: 24))
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 24, height: 24))
        //: btn.setImage(UIImage.submitGift(name: "icon_yidu_pre"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kArrayPath) + kMakeMessage.replacingOccurrences(of: "fill", with: "r"))), for: .normal)
        //: btn.addTarget(self, action: #selector(clearBadgeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(naturalEvent), for: .touchUpInside)
        //: let item = UIBarButtonItem(customView: btn)
        let item = UIBarButtonItem(customView: btn)
        //: self.navigationItem.rightBarButtonItem = item
        self.navigationItem.rightBarButtonItem = item

        //: ResumeV2Listener.shared.func__addDelegate(self)
        ResumeV2Listener.shared.recordDelegate(self)
        //: func__installNotificationObservers()
        ordinationMake()
        //: createUI()
        equalUi()
        //: self.manager.req_moreMsgInitData()
        self.manager.anTableData()
        //: refreshTableView()
        viewApp()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy load

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let tableView = UITableView.init(frame: .zero, style: .grouped)
        let tableView = UITableView(frame: .zero, style: .grouped)
        //: tableView.delegate = self
        tableView.delegate = self
        //: tableView.dataSource = self
        tableView.dataSource = self
        //: tableView.backgroundColor = .clear
        tableView.backgroundColor = .clear
        //: tableView.separatorStyle = .none
        tableView.separatorStyle = .none
        //: tableView.register(TalkingChatListTableCell.self, forCellReuseIdentifier: TalkingChatListTableCell.className())
        tableView.register(ChatViewCell.self, forCellReuseIdentifier: ChatViewCell.className())
        //: return tableView
        return tableView
        //: }()
    }()

    //: private lazy var emptyView: EmptyView = {
    private lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = RemoteEmptyStyle()
        //: style.TipsTitle = "You've got no message yet.".localized
        style.TipsTitle = (kLabMessage + "e got" + String(k_atIndexKey.prefix(6)) + "ssag" + String(k_sectionTitle.prefix(6))).localized
        //: style.TipsIcon = "icon_kong_kong_default"
        style.TipsIcon = (String(kColorFinishFormat) + String(kAppPostTitle))
        //: let emptyView = EmptyView.init(frame: .zero, style: style)
        let emptyView = EmptyView(frame: .zero, style: style)
        //: emptyView.isHidden = true
        emptyView.isHidden = true
        //: return emptyView
        return emptyView
        //: }()
    }()

    //: private lazy var manager: TalkingChatListManager = {
    private lazy var manager: CartListManager = //: return CartListManager()
        .init()
    //: }()
}

// MARK: - 刷新

//: extension TalkingMoreMessagesListViewController {
extension PullViewController {
    /// 刷新表格
    //: func refreshTableView() {
    func viewApp() {
        //: guard self.manager.moreMsgArr.count != 0 else {
        guard self.manager.moreMsgArr.count != 0 else {
            //: self.tableView.isHidden = true
            self.tableView.isHidden = true
            //: self.emptyView.isHidden = false
            self.emptyView.isHidden = false
            //: self.reloadData()
            self.allData()
            //: return
            return
        }

        //: self.tableView.isHidden = false
        self.tableView.isHidden = false
        //: self.emptyView.isHidden = true
        self.emptyView.isHidden = true
        //: self.reloadData()
        self.allData()
    }

    /// 刷新
    //: func reloadData() {
    func allData() {
        //: self.tableView.reloadData()
        self.tableView.reloadData()
    }
}

// MARK: - Event

//: extension TalkingMoreMessagesListViewController {
extension PullViewController {
    // 删除会话cell
    //: func deleteChatListCell(conversationModel: TalkingConversationModel) {
    func withStartModel(conversationModel: ViewConversationModel) {
        //: if !ResumeV2Listener.shared.func__checkCanOperateList() { return }
        if !ResumeV2Listener.shared.demonstrate() { return }

        //: AbTalkingPrivateChatAnimatTool.shared.removeConversionAnimat(targetID: conversationModel.targetId)
        ViewMakeReactiveCompatible.shared.nameMagnitude(targetID: conversationModel.targetId)
        //: ResumeV2Listener.shared.func__removeConversation(targetId: conversationModel.targetId, dataType: .moreList)
        ResumeV2Listener.shared.equalType(targetId: conversationModel.targetId, dataType: .moreList)
        //: self.manager.req_removeConversationModel(conversationModel: conversationModel)
        self.manager.sharedEqual(conversationModel: conversationModel)
        //: self.tableView.reloadData()
        self.tableView.reloadData()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.25) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.25) {
            // 刷新表格，更新红点
            //: self.refreshTableView()
            self.viewApp()
        }
    }

    // 拉黑会话
    //: func blockChatListCell(conversationModel: TalkingConversationModel) {
    func resignUp(conversationModel: ViewConversationModel) {
        // 拉黑/解除拉黑
        //: TalkingAlertShow.alert(title: nil,
        FrameHiddenReactiveCompatible.theory(title: nil,
                                //: message: kMessage_blocking,
                                message: user_barQuantityervalTitle,
                                //: leftBtnTitle: "Cancel".localized,
                                leftBtnTitle: (String(kEnableMsg.prefix(6))).localized,
                                //: rightBtnTitle: "OK".localized) {
                                rightBtnTitle: "OK".localized)
        {
            //: TalkingAlertShow.hideAlert()
            FrameHiddenReactiveCompatible.middleText()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            FrameHiddenReactiveCompatible.middleText()

            //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: conversationModel.userID, isBlack: true) { succeed, result, errorModel in
            FrameThen.cagey(uid: conversationModel.userID, isBlack: true) { succeed, _, _ in
                //: guard succeed == true else {
                guard succeed == true else {
                    //: return
                    return
                }
                // 拉黑成功，从列表中移除
                //: self.deleteChatListCell(conversationModel: conversationModel)
                self.withStartModel(conversationModel: conversationModel)
                //: NotificationCenter.default.post(name: LIVE_BLOCK_USER_NOTIFICATION,
                NotificationCenter.default.post(name: kMessageValue,
                                                //: object: nil,
                                                object: nil,
                                                //: userInfo: ["uid": conversationModel.userID])
                                                userInfo: [String(bytes: k_headDateKey.map{viewFor(index: $0)}, encoding: .utf8)!: conversationModel.userID])
            }
        }
    }

    // 举报会话
    //: func reportChatListCell(conversationModel: TalkingConversationModel) {
    func nameTagModel(conversationModel: ViewConversationModel) {
        //: let reportView = TalkingReportAlertView.init(frame: UIScreen.main.bounds, type: .reportUserType, rId: conversationModel.targetId)
        let reportView = InformDataSource(frame: UIScreen.main.bounds, type: .reportUserType, rId: conversationModel.targetId)
        //: reportView.showReportViewIn(view: nil)
        reportView.magnitudeeraction(view: nil)
    }

    /// 清除红点角标
    //: @objc private func clearBadgeButtonClick() {
    @objc private func naturalEvent() {
        //: let config = ShowAlertConfig()
        let config = VideoAlertConfig()
        //: config.alignment = .center
        config.alignment = .center

        //: TalkingAlertShow.customAlert(message: "Do you want to mark all messages as read?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
        FrameHiddenReactiveCompatible.systemToConfig(message: String(bytes: k_enterMsg.map{makeBorder(info: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(kEnableMsg.prefix(6))).localized, rightBtnTitle: "OK".localized, leftBlock: {
            //: TalkingAlertShow.hideAlert()
            FrameHiddenReactiveCompatible.middleText()

            //: }, rightBlock: {
        }, rightBlock: {
            //: guard self.manager.req_moreMsgGetUnredConversationCount() > 0 else { return }
            guard self.manager.moreToEarnedRun() > 0 else { return }
            //: self.manager.moreMsgArr.forEach { model in
            self.manager.moreMsgArr.forEach { model in
                //: guard model.unreadCount > 0 else { return }
                guard model.unreadCount > 0 else { return }
                //: V2TIMManager.sharedInstance().markC2CMessage(asRead: model.userID) {
                V2TIMManager.sharedInstance().markC2CMessage(asRead: model.userID) {
                    //: } fail: { code, desc in
                } fail: { code, desc in
                    //: UploadLogTool.writeLog(msg: "MoreMessages一键已读失败：code:\(code), desc:\(String(describing: desc))")
                    UploadDisplayThen.makeSelected(msg: (String(kItemMessage.suffix(6)) + "ssag" + kToolModelUrl + k_aspectIndexId) + "\(code)" + (String(kChangeText)) + "\(String(describing: desc))")
                }
            }

            //: }, config: config)
        }, config: config)
    }
}

// MARK: - 通知

//: extension TalkingMoreMessagesListViewController {
extension PullViewController {
    //: func func__installNotificationObservers() {
    func ordinationMake() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__getUserInfoDataFinish(notification:)),
                                               selector: #selector(onRelease(notification:)),
                                               //: name: USER_INFO_MSG_LIST_NOTIFICATION,
                                               name: app_messageTopData,
                                               //: object: nil)
                                               object: nil)

        // 更新消息列表用户在线状态
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__updateUserOnlineStatus(notif:)),
                                               selector: #selector(system(notif:)),
                                               //: name: MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION,
                                               name: main_screenData,
                                               //: object: nil)
                                               object: nil)
    }

    //: @objc func func__getUserInfoDataFinish(notification: NSNotification) {
    @objc func onRelease(notification: NSNotification) {
        //: let dic = notification.object as? Dictionary<String, Any>
        let dic = notification.object as? [String: Any]
        //: for userID in dic!.keys {
        for userID in dic!.keys {
            //: let aInfoWrap: HumankindThen = dic![userID] as! HumankindThen
            let aInfoWrap: HumankindThen = dic![userID] as! HumankindThen
            //: let aModel: TalkingConversationModel? = ResumeV2Listener.shared.func__getCacheConversationModel(targetId: userID)
            let aModel: ViewConversationModel? = ResumeV2Listener.shared.keyBottomLab(targetId: userID)
            //: if aModel != nil && aModel!.gj_userInfo != aInfoWrap {
            if aModel != nil, aModel!.gj_userInfo != aInfoWrap {
                //: aModel!.gj_userInfo = aInfoWrap
                aModel!.gj_userInfo = aInfoWrap
            }
        }
        //: setHaveLocalInmate()
        keyColor()

        //: self.reloadData()
        self.allData()
    }

    /// 音视频新通话新建立的会话，本地缓存有时，更新会话标识
    //: func setHaveLocalInmate() {
    func keyColor() {
        //: let intimate: Dictionary<String, Any> = UserDefaults.standard.object(forKey: isConversationIntimateCacheKey) as? Dictionary<String, Any> ?? Dictionary.init()
        let intimate: [String: Any] = UserDefaults.standard.object(forKey: appNoName) as? [String: Any] ?? Dictionary()
        //: for userID in intimate.keys {
        for userID in intimate.keys {
            //: let aModel: TalkingConversationModel? = ResumeV2Listener.shared.func__getCacheConversationModel(targetId: userID)
            let aModel: ViewConversationModel? = ResumeV2Listener.shared.keyBottomLab(targetId: userID)
            //: if aModel != nil {
            if aModel != nil {
                //: aModel!.gj_userInfo?.isHaveSession = true
                aModel!.gj_userInfo?.isHaveSession = true
            }
        }
        //: UserDefaults.standard.set(Dictionary<String, Any>.init(), forKey: isConversationIntimateCacheKey)
        UserDefaults.standard.set(Dictionary<String, Any>.init(), forKey: appNoName)
    }

    /// 更新消息列表用户在线状态
    //: @objc private func func__updateUserOnlineStatus(notif: Notification) {
    @objc private func system(notif: Notification) {
        //: guard let userInfo = notif.userInfo else { return }
        guard let userInfo = notif.userInfo else { return }
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: if self.manager.update_userOnlineStatus(userInfo: userInfo as! [String: Any]) == true {
            if self.manager.upInfo(userInfo: userInfo as! [String: Any]) == true {
                //: self.tableView.reloadData()
                self.tableView.reloadData()
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingMoreMessagesListViewController: UITableViewDelegate, UITableViewDataSource {
extension PullViewController: UITableViewDelegate, UITableViewDataSource {
    /// - UITableViewDataSource
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.manager.moreMsgArr.count
        return self.manager.moreMsgArr.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingChatListTableCell.className(), for: indexPath) as! TalkingChatListTableCell
        let cell = tableView.dequeueReusableCell(withIdentifier: ChatViewCell.className(), for: indexPath) as! ChatViewCell
        //: var model = self.manager.req_moreMsgConversationModel(indexPath: indexPath)
        var model = self.manager.someResponse(indexPath: indexPath)
        //: model = self.manager.getUserInfoFromCache(model: model)
        model = self.manager.loadFor(model: model)
        //: if !(model?.gj_userInfo?.tpAuth ?? false) {
        if !(model?.gj_userInfo?.tpAuth ?? false) {
            //: model?.gj_userInfo?.tpAuth = model?.ismoreAPAuto ?? false
            model?.gj_userInfo?.tpAuth = model?.ismoreAPAuto ?? false
        }
        //: cell.refreshCell(model: model)
        cell.ptolemaicSystemModel(model: model)

        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
    func tableView(_: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        //: guard let model = self.manager.req_moreMsgConversationModel(indexPath: indexPath) else {
        guard let model = self.manager.someResponse(indexPath: indexPath) else {
            //: return false
            return false
        }
        //: guard model.chatType == .private else { return false }
        guard model.chatType == .private else { return false }

        //: return true
        return true
    }

    //: @available(iOS 11.0, *)
    @available(iOS 11.0, *)
    //: func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    func tableView(_: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        //: guard let model = self.manager.req_moreMsgConversationModel(indexPath: indexPath) else { return nil }
        guard let model = self.manager.someResponse(indexPath: indexPath) else { return nil }

        // 举报
        //: let reportBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let reportBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.reportChatListCell(conversationModel: model)
            self.nameTagModel(conversationModel: model)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let reportBtnTrashcan = UIImage.submitGift(name: "btn_message_report_nor").cgImage {
        if let reportBtnTrashcan = UIImage.submitGift(name: (String(kTranslateData) + String(k_arcFormat.suffix(7)) + String(k_serviceValue))).cgImage {
            //: reportBtn.image = ImageWithoutRender(cgImage: reportBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            reportBtn.image = FlauntThen(cgImage: reportBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: reportBtn.backgroundColor = UIColor(hex: "#FF935D")
        reportBtn.backgroundColor = UIColor(hex: (String(kValuePath.suffix(7))))

        // 拉黑
        //: let blockBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let blockBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.blockChatListCell(conversationModel: model)
            self.resignUp(conversationModel: model)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let blockBtnTrashcan = UIImage.submitGift(name: "btn_message_block_nor").cgImage {
        if let blockBtnTrashcan = UIImage.submitGift(name: (String(k_toData.suffix(4)) + "mess" + String(kBlockName.suffix(8)) + String(k_tempValue))).cgImage {
            //: blockBtn.image = ImageWithoutRender(cgImage: blockBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            blockBtn.image = FlauntThen(cgImage: blockBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: blockBtn.backgroundColor = UIColor(hex: "#C179F9")
        blockBtn.backgroundColor = UIColor(hex: (String(k_areaMessage.prefix(5)) + kHeadValue.replacingOccurrences(of: "all", with: "9")))

        // 删除
        //: let deleteBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let deleteBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in
            //: self.deleteChatListCell(conversationModel: model)
            self.withStartModel(conversationModel: model)
            //: completionHandler(false)
            completionHandler(false)
        }
        //: if let deleteBtnTrashcan = UIImage.submitGift(name: "btn_message_delete_nor").cgImage {
        if let deleteBtnTrashcan = UIImage.submitGift(name: (String(kLabEqualFormat))).cgImage {
            //: deleteBtn.image = ImageWithoutRender(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            deleteBtn.image = FlauntThen(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: deleteBtn.backgroundColor = UIColor(hex: "#FF506D")
        deleteBtn.backgroundColor = UIColor(hex: (String(k_topKey.prefix(6)) + String(k_viewValue)))

        //: let actions = [deleteBtn, blockBtn, reportBtn]
        let actions = [deleteBtn, blockBtn, reportBtn]
        //: let config = UISwipeActionsConfiguration(actions: actions)
        let config = UISwipeActionsConfiguration(actions: actions)
        //: config.performsFirstActionWithFullSwipe = false
        config.performsFirstActionWithFullSwipe = false
        //: return config
        return config
    }

    /// - UITableViewDelegate
    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 76.0
        return 76.0
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: return UIView()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForFooterInSection _: Int) -> UIView? {
        //: return UIView()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: guard let model = self.manager.req_moreMsgConversationModel(indexPath: indexPath) else {
        guard let model = self.manager.someResponse(indexPath: indexPath) else {
            //: return
            return
        }
        // 入口埋点
        //: uploadRecord.uploadRecordEvent(eventID: ClickUserChatNoP, toUid: model.targetId)
        kSoundName.messUp(eventID: dataButtonName, toUid: model.targetId)
        //: AddReactiveCompatible.share.func__pushToPriveteChatVC(chatID: model.targetId) { vc in
        AddReactiveCompatible.share.tincture(chatID: model.targetId) { vc in
            //: if model.gj_userInfo != nil {
            if model.gj_userInfo != nil {
                //: vc.isHaveSession = model.gj_userInfo!.isHaveSession
                vc.isHaveSession = model.gj_userInfo!.isHaveSession
            }
        }
    }
}

// MARK: - TalkingTXIMDelegate

//: extension TalkingMoreMessagesListViewController: IMManagerDelegate {
extension PullViewController: AlongManagerDelegate {
    //: func onRefreshConversationList(data: [TalkingConversationModel]) {
    func placePair(data _: [ViewConversationModel]) {
        //: self.manager.req_moreMsgInitData()
        self.manager.anTableData()
        //: refreshTableView()
        viewApp()
    }
}

// MARK: - Layout

//: extension TalkingMoreMessagesListViewController {
extension PullViewController {
    /// UI
    //: private func createUI() {
    private func equalUi() {
        //: view.addSubview(tableView)
        view.addSubview(tableView)
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: emptyView.snp.makeConstraints { make in
        emptyView.snp.makeConstraints { make in
            //: make.edges.equalTo(tableView)
            make.edges.equalTo(tableView)
        }
        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: self?.reloadData()
            self?.allData()
        }
    }
}
