
//: Declare String Begin

/*: "rYMsgType" :*/
fileprivate let k_cropFormat:String = "style make style equal viewrYMsg"
fileprivate let k_noText:[Character] = ["T","y","p","e"]

/*: "GJ:CallCustom" :*/
fileprivate let k_norUrl:[Character] = ["G","J",":","C","a","l","l","C","u","s","t"]
fileprivate let k_sectionUrl:[Character] = ["o","m"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NotificationReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/5/29.
//

//: import UIKit
import UIKit

//: class TalkingMessageNotificationManager: NSObject {
class NotificationReactiveCompatible: NSObject {
    //: private var showView: TalkingMessageNotificationView?
    private var showView: CipherThen? // 当前View
    //: private var preView: TalkingMessageNotificationView?
    private var preView: CipherThen? // 旧的View
    //: private var canShowNext = true
    private var canShowNext = true // 是否可展示下一个视图
    //: private let lock = DispatchSemaphore(value: 1)
    private let lock = DispatchSemaphore(value: 1) // 信号锁

    // singleton
    //: static var shared = TalkingMessageNotificationManager()
    static var shared = NotificationReactiveCompatible()
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(clearData),
                                               selector: #selector(backgroundAdd),
                                               //: name: DID_LOGIN_OUT_SUCCESS_NOTIFICATION,
                                               name: notiButtonData,
                                               //: object: nil)
                                               object: nil)
    }

    /// 清除数据
    //: @objc func clearData() {
    @objc func backgroundAdd() {
        //: if self.preView != nil {
        if self.preView != nil {
            //: self.preView?.dismiss()
            self.preView?.dismissLink()
        }
        //: if self.showView != nil {
        if self.showView != nil {
            //: self.showView?.dismiss()
            self.showView?.dismissLink()
        }
        //: self.msgIdDict.removeAll()
        self.msgIdDict.removeAll()
        //: self.msgArr.removeAll()
        self.msgArr.removeAll()
        // 延迟还原状态，防止并发
        //: DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            //: self.canShowNext = true
            self.canShowNext = true
        }
    }

    // MARK: - Lazy Load

    // 存储当前数组中的消息ID，避免遍历
    //: private lazy var msgIdDict: [String: Bool] = {
    private lazy var msgIdDict: [String: Bool] = //: return [String: Bool]()
        .init()
    //: }()

    // 需要展示的消息
    //: private lazy var msgArr: [TalkingConversationModel] = {
    private lazy var msgArr: [ViewConversationModel] = //: return [ViewConversationModel]()
        .init()
    //: }()
}

// MARK: - 展示消息通知

//: extension TalkingMessageNotificationManager {
extension NotificationReactiveCompatible {
    /// 处理接收到的TX消息，展示消息通知
    /// - Parameters:
    ///   - msg: V2TIMMessage
    ///   - dataDict: 消息字典
    //: func onRecvNewMessage(msg: V2TIMMessage, dataDict: [String: Any]) {
    func share(msg: V2TIMMessage, dataDict: [String: Any]) {
        //: guard DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue else { return }
        guard DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue else { return }
        // 1. 过滤不需要处理的消息（只在指定画面展示）
        //: guard self.msgIdDict[msg.sender] != true else { return }
        guard self.msgIdDict[msg.sender] != true else { return }
        //: guard videoCheckDisplayable() == true || homeCheckDisplayable() == true else { return }
        guard sortMoment() == true || resume() == true else { return }
        //: guard msg.userID != UserTextMacroDefine.getCustomerServiceID() && msg.userID != UserTextMacroDefine.getXiaoMiID() else {
        guard msg.userID != UserTextMacroDefine.lengthId(), msg.userID != UserTextMacroDefine.publicationRequest() else {
            //: return
            return
        }
        //: let contenType = TUISocialChatManager.messageCellType(dataDict)
        let contenType = IsoclinalThen.stack(dataDict)
        // 提示消息
        //: if contenType == .TXMessageContentType_tips { return }
        if contenType == .TXMessageContentType_tips { return }
        // 匹配消息
        //: if contenType == .TXMessageContentType_local { return }
        if contenType == .TXMessageContentType_local { return }
        // 礼物消息
        //: if contenType == .TXMessageContentType_gift { return }
        if contenType == .TXMessageContentType_gift { return }
        // 音视频通话消息
        //: if contenType == .TXMessageContentType_text && dataDict["rYMsgType"] as? String == "GJ:CallCustom" {
        if contenType == .TXMessageContentType_text, dataDict[(String(k_cropFormat.suffix(5)) + String(k_noText))] as? String == (String(k_norUrl) + String(k_sectionUrl)) {
            //: return
            return
        }

        // 2. V2TIMMessage => ViewConversationModel
        //: let model = TalkingConversationModel()
        let model = ViewConversationModel()
        //: model.sender = msg.sender
        model.sender = msg.sender
        //: model.userID = msg.userID
        model.userID = msg.userID
        //: model.targetId = model.userID
        model.targetId = model.userID
        //: model.draftText = ""
        model.draftText = ""
        //: model.chatType = .private
        model.chatType = .private

        //: if let userInfo: HumankindThen = DBUserInfoManager.cache_getCachedUserInfo(targetId: model.targetId) {
        if let userInfo: HumankindThen = AppNameThen.imageBar(targetId: model.targetId) {
            //: model.gj_userInfo = userInfo
            model.gj_userInfo = userInfo
        }
        //: model.listShowMessage = msg
        model.listShowMessage = msg

        // 3. 数据加入队列，展示视图
        //: lock.wait()
        lock.wait()
        //: self.msgIdDict[model.sender] = true
        self.msgIdDict[model.sender] = true
        //: self.msgArr.append(model)
        self.msgArr.append(model)
        //: showNextNotificationView()
        withEvent()
        //: lock.signal()
        lock.signal()
    }

    /// 展示弹窗消息
    //: private func showNextNotificationView() {
    private func withEvent() {
        //: guard self.msgArr.count > 0 else { return }
        guard self.msgArr.count > 0 else { return }
        //: guard self.canShowNext == true else { return }
        guard self.canShowNext == true else { return }
        //: guard videoCheckDisplayable() == true || homeCheckDisplayable() == true else { return }
        guard sortMoment() == true || resume() == true else { return }
        // 从队列中取出数据
        //: let firstModel = self.msgArr.first
        let firstModel = self.msgArr.first
        //: self.msgArr.removeFirst()
        self.msgArr.removeFirst()

        //: if self.showView != nil {
        if self.showView != nil { // 当前有视图在展示，延时隐藏
            //: self.preView = self.showView
            self.preView = self.showView
            //: DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                //: self.preView?.dismiss()
                self.preView?.dismissLink()
            }
            //: self.showView = nil
            self.showView = nil
        }

        // 展示新视图
        //: self.canShowNext = false
        self.canShowNext = false
        //: let notifView = TalkingMessageNotificationView(frame: .zero)
        let notifView = CipherThen(frame: .zero)
        //: notifView.show(firstModel)
        notifView.who(firstModel)
        //: self.showView = notifView
        self.showView = notifView
        // 开始移除视图，删除Id限制
        //: notifView.startDismissBlock = { [weak self] model in
        notifView.startDismissBlock = { [weak self] model in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.lock.wait()
            self.lock.wait()
            //: self.msgIdDict.removeValue(forKey: model.sender)
            self.msgIdDict.removeValue(forKey: model.sender)
            //: self.lock.signal()
            self.lock.signal()
        }
        // 完成移除视图，清空引用
        //: notifView.finishDismissBlock = { [weak self] view in
        notifView.finishDismissBlock = { [weak self] view in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if view == self.preView {
            if view == self.preView {
                //: self.preView = nil
                self.preView = nil
                //: } else if view == self.showView {
            } else if view == self.showView {
                //: self.showView = nil
                self.showView = nil
            }
        }

        /// 1s之后查看是否有新视图展示
        //: DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            //: self.canShowNext = true
            self.canShowNext = true
            //: self.showNextNotificationView()
            self.withEvent()
        }
    }

    /// 检测音视频页是否可展示
    //: private func videoCheckDisplayable() -> Bool {
    private func sortMoment() -> Bool {
        //: guard let currentVC = currentViewController() else { return false }
        guard let currentVC = selectStart() else { return false }
        //: if currentVC.isKind(of: TalkingVideoChatViewController.self) ||
        if currentVC.isKind(of: KeyDataViewController.self) ||
            //: currentVC.isKind(of: TalkingVoiceChatViewController.self) {
            currentVC.isKind(of: MakeViewController.self)
        {
            //: return true
            return true
        }
        //: return false
        return false
    }

    /// 检测一级页面是否可展示
    //: private func homeCheckDisplayable() -> Bool {
    private func resume() -> Bool {
        //: guard let currentVC = currentViewController() else { return false }
        guard let currentVC = selectStart() else { return false }
        //: if currentVC.isKind(of: TalkingSocialViewController.self) ||
        if currentVC.isKind(of: CoverThen.self) ||
            //: currentVC.isKind(of: SocialPopularViewController.self) ||
            currentVC.isKind(of: UnseeableReactiveCompatible.self) ||
            //: currentVC.isKind(of: TalkingMomentViewController.self) ||
            currentVC.isKind(of: EndNavigationDelegate.self) ||
            //: currentVC.isKind(of: TalkingLiveExplainViewController.self) ||
            currentVC.isKind(of: PitchViewController.self) ||
            //: currentVC.isKind(of: TalkingMeViewController.self) {
            currentVC.isKind(of: ListViewDelegate.self)
        {
            //: if DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue {
            if DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue {
                //: return true
                return true
            }
        }
        //: return false
        return false
    }
}
