
//: Declare String Begin

/*: "uid" :*/
fileprivate let k_centerMessage:String = "userd"

/*: "floatingScreen" :*/
fileprivate let k_countUrl:String = "FLOA"
fileprivate let kMessageId:String = "CREEN"

/*: "MF:LiveChatMsg" :*/
fileprivate let k_userStr:String = "text make data labMF:Liv"
fileprivate let kSeatFormat:String = "eChavar red video line model"

/*: "MF:LiveChatMentionMsg" :*/
fileprivate let k_titleValue:String = "price submit model birthMF:Liv"
fileprivate let k_styleDataKey:String = "main table infotionMsg"

/*: "MF:LiveChatGiftMsg" :*/
fileprivate let k_valueGenderCapacityData:String = "MF:Lifalse layer"
fileprivate let k_keyName:String = "value tableatGif"

/*: "LiveGift_ :*/
fileprivate let k_cornerAppValue:[Character] = ["L","i","v","e","G","i","f","t","_"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ControllerViewDelegate.swift
//  AbroadTalking
//
//  Created by young on 2023/6/19.
//

//: import UIKit
import UIKit

//: class TalkingLiveBeautifyViewController: TalkingBaseViewController {
class ControllerViewDelegate: StartThen {
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: setupSubviews()
        liveIn()
        //: setupSubViewsConstraint()
        cornerCell()
        //: initNotifacation()
        systemDown()
        //: TalkingDanmuManager.shared().delegate = self
        WithReactiveCompatible.appearShould().delegate = self
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: initCachEffectData()
        now()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    // 视频渲染视图
    //: lazy var renderView: UIView = {
    lazy var renderView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var bottomView: TalkingLiveRoomBottomView = {
    private lazy var bottomView: StackStartReactiveCompatible = {
        //: let view = TalkingLiveRoomBottomView(frame: .zero)
        let view = StackStartReactiveCompatible(frame: .zero)
        //: view.delegate = self
        view.delegate = self
        //: return view
        return view
        //: }()
    }()

    //: private lazy var commInputView: TalkingLiveRoomInputView = {
    private lazy var commInputView: WillRangeVanguardInputView = {
        //: let text = TalkingLiveRoomInputView.init()
        let text = WillRangeVanguardInputView()
        //: text.delegate = self
        text.delegate = self
        //: text.isHidden = true
        text.isHidden = true
        //: return text
        return text
        //: }()
    }()

    //: private lazy var danmuView: TalkingDanmuMsgListTableView = {
    private lazy var danmuView: DisplayModelTableView = {
        //: let view = TalkingDanmuMsgListTableView.init()
        let view = DisplayModelTableView()
        //: return view
        return view
        //: }()
    }()

    //: private lazy var giftEffectView: TalkingPrivateChatAnimatView = {
    private lazy var giftEffectView: SizeAnimatView = {
        //: let effectView = TalkingPrivateChatAnimatView.init()
        let effectView = SizeAnimatView()
        //: effectView.contentMode = .scaleAspectFill
        effectView.contentMode = .scaleAspectFill
        //: return effectView
        return effectView
        //: }()
    }()

    //: private lazy var giftTrackView: TalkingGiftTrackView = {
    private lazy var giftTrackView: SizeTouchTrackView = {
        //: let trackView = TalkingGiftTrackView.init()
        let trackView = SizeTouchTrackView()
        //: trackView.isUserInteractionEnabled = false
        trackView.isUserInteractionEnabled = false
        //: return trackView
        return trackView
        //: }()
    }()

    //: lazy var topView: TalkingLiveRoomTopView = {
    lazy var topView: JohnThen = {
        //: let view = TalkingLiveRoomTopView()
        let view = JohnThen()
        //: view.weakVC = self
        view.weakVC = self
        //: view.rightBtnBlock = { [weak self] in
        view.rightBtnBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.commInputView.inputTextView.resignFirstResponder()
            self.commInputView.inputTextView.resignFirstResponder()
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var floatScreenView: TalkingFloatScreenView = {
    private lazy var floatScreenView: AddScreenView = { // 飘屏
        //: let v = TalkingFloatScreenView()
        let v = AddScreenView()
        //: v.isHidden = (DistanceAppManager.share.appStatus == AppSkinStatus.special.rawValue)
        v.isHidden = (DistanceAppManager.share.appStatus == NameQuickLookable.special.rawValue)
        //: return v
        return v
        //: }()
    }()
}

// 通知
//: extension TalkingLiveBeautifyViewController {
extension ControllerViewDelegate {
    //: func initNotifacation() {
    func systemDown() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(danmuMoveTop),
                                               selector: #selector(towardTime),
                                               //: name: LIVE_HALF_VIEW_SHOW,
                                               name: k_netBottomData,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(danmuMoveBottom),
                                               selector: #selector(context),
                                               //: name: LIVE_HALF_VIEW_DISMISS,
                                               name: notiTopData,
                                               //: object: nil)
                                               object: nil)

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(blockUserExitRoom(notification:)),
                                               selector: #selector(terminalNotification(notification:)),
                                               //: name: LIVE_BLOCK_USER_NOTIFICATION,
                                               name: kMessageValue,
                                               //: object: nil)
                                               object: nil)
        // 飘屏
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(showFloatScreen(notification:)),
                                               selector: #selector(withBeauty(notification:)),
                                               //: name: LIVE_RECIVE_FLOATSCREEN_NOTIFICATION,
                                               name: constBottomData,
                                               //: object: nil)
                                               object: nil)
    }

    //: @objc func danmuMoveTop() {
    @objc func towardTime() {
        //: danmuView.snp.updateConstraints { make in
        danmuView.snp.updateConstraints { make in
            //: make.bottom.equalTo(bottomView.snp.top).offset(-(ScreenHeight-HalfViewTopMargin-bottomView.height-kDeviceSafeBottomHeight))
            make.bottom.equalTo(bottomView.snp.top).offset(-(user_recordMarginValue - user_intervalData - bottomView.height - appButtonData))
        }
    }

    //: @objc func danmuMoveBottom() {
    @objc func context() {
        //: var ishave = 0
        var ishave = 0
        //: for vc in self.children {
        for vc in self.children {
            //: if vc.isKind(of: TalkingPrivateChatController.self) || vc.isKind(of: TalkingChatListViewController.self) {
            if vc.isKind(of: DistantViewController.self) || vc.isKind(of: ParadigmCoverDataSource.self) {
                //: ishave += 1
                ishave += 1
            }
        }
        //: if ishave == 0 {
        if ishave == 0 {
            //: danmuView.snp.updateConstraints { make in
            danmuView.snp.updateConstraints { make in
                //: make.bottom.equalTo(bottomView.snp.top)
                make.bottom.equalTo(bottomView.snp.top)
            }
        }
    }

    /// 拉黑用户踢出房间
    //: @objc func blockUserExitRoom(notification: NSNotification) -> Void {
    @objc func terminalNotification(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: let uid = userinfo["uid"] as? String
        let uid = userinfo[(k_centerMessage.replacingOccurrences(of: "user", with: "ui"))] as? String

        //: if String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid) == DistanceAppManager.share.loginUserMode.userID {
        if String(ValueThen.kindShared().liveRoomModel.streamerInfo.uid) == DistanceAppManager.share.loginUserMode.userID {
            //: V2TIMManager.sharedInstance().muteGroupMember(TalkingLiveManager.shared().liveRoomModel.chatGroupId, member: uid, muteTime: 1) {
            V2TIMManager.sharedInstance().muteGroupMember(ValueThen.kindShared().liveRoomModel.chatGroupId, member: uid, muteTime: 1) {
                //: } fail: { code, decstr in
            } fail: { _, _ in
            }
        }
    }

    /// 展示飘屏内容
    //: @objc private func showFloatScreen(notification: NSNotification) {
    @objc private func withBeauty(notification: NSNotification) {
        //: let userinfo = notification.userInfo as! [String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: let dict = userinfo["floatingScreen"]
        let dict = userinfo[(k_countUrl.lowercased() + "tingS" + kMessageId.lowercased())]
        //: if let model = TalkingFloatingScreenModel.deserialize(from: dict as? Dictionary) {
        if let model = ToTransformable.deserialize(from: dict as? Dictionary) {
            //: self.floatScreenView.didReceive(model)
            self.floatScreenView.choose(model)
        }
    }
}

// MARK: - Request

//: extension TalkingLiveBeautifyViewController {
extension ControllerViewDelegate {
    /// 停止直播
    //: private func req_stopLive() {
    private func conk() {
        //: TalkingLiveManager.req_liveStop(type: 1) { succeed, result, errorModel in
        ValueThen.mentalPictureStart(type: 1) { succeed, _, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            // 关播成功
            //: TalkingLiveManager.shared().live_releaseAllResource()
            ValueThen.kindShared().feeDoing()
        }
    }
}

// MARK: - 底部按钮代理

//: extension TalkingLiveBeautifyViewController: TalkingLiveRoomBottomViewDelegate {
extension ControllerViewDelegate: PlayerObjectProtocol {
    //: func func__commentBtnClick() {
    func mightHaveBeen() {
        /// 拉起弹幕评论
        //: commInputView.updatePlaceholder()
        commInputView.atMember()
    }
}

// MARK: - CancelPopThen

//: extension TalkingLiveBeautifyViewController: TalkingDanmuManagerDelegate {
extension ControllerViewDelegate: CancelPopThen {
    //: func func__giftRecvNewModel(Msg: TalkingLiveRoomDanmuModel) {
    func hadith(Msg: MakeDanmuModel) {
        //: addGiftEffectModelArr(Msg: Msg)
        studActionModelBlock(Msg: Msg)
    }

    //: func func__DanmuRecvNewModel(Msg: TalkingLiveRoomDanmuModel) {
    func errorProcess(Msg: MakeDanmuModel) {
        //: danmuView.addNewMsg(msgModel: Msg)
        danmuView.makeModel(msgModel: Msg)
        // 展示未读消息提醒标识(文本、@、礼物)
        //: if Msg.MsgExtension == "MF:LiveChatMsg" ||
        if Msg.MsgExtension == (String(k_userStr.suffix(6)) + String(kSeatFormat.prefix(4)) + "tMsg") ||
            //: Msg.MsgExtension == "MF:LiveChatMentionMsg" ||
            Msg.MsgExtension == (String(k_titleValue.suffix(6)) + "eChatMen" + String(k_styleDataKey.suffix(7))) ||
            //: Msg.MsgExtension == "MF:LiveChatGiftMsg" {
            Msg.MsgExtension == (String(k_valueGenderCapacityData.prefix(5)) + "veCh" + String(k_keyName.suffix(5)) + "tMsg")
        {
            //: TalkingLiveManager.shared().updateUnredMessageCount()
            ValueThen.kindShared().reloadCollection()
        }
    }

    //: func func__actionUserNewModel(pushUid: String?) {
    func serviceReport(pushUid: String?) {
        //: commInputView.inputTextView.resignFirstResponder()
        commInputView.inputTextView.resignFirstResponder()
        //: let view = TalkingLiveUserCardView.init(frame: self.view.frame, uid: pushUid ?? "")
        let view = PublishRemoteCardView(frame: self.view.frame, uid: pushUid ?? "")
        //: view.delegate = self
        view.delegate = self
        //: view.show()
        view.setOut()
    }

    //: func func__longTouchUserNewModel(nickName: String, atUid: String?) {
    func dowery(nickName: String, atUid: String?) {
        //: commInputView.callUserText(toUid: atUid ?? "", nickName: nickName)
        commInputView.flag(toUid: atUid ?? "", nickName: nickName)
    }

    //: func func__userLogin() {}
    func getGoing() {}

    //: func func__userLogout() {}
    func viewTitle() {}
}

// MARK: - LiveViewDelegate 资料卡

//: extension TalkingLiveBeautifyViewController: TalkingLiveUserCardViewDelegate {
extension ControllerViewDelegate: LiveViewDelegate {
    //: func func__atUserClick(uid: String, nickname: String) {
    func nameHalogenNickname(uid: String, nickname: String) {
        //: commInputView.callUserText(toUid: uid, nickName: nickname)
        commInputView.flag(toUid: uid, nickName: nickname)
    }
}

// MARK: - 礼物动效

//: extension TalkingLiveBeautifyViewController {
extension ControllerViewDelegate {
    /// 加载之前动画
    //: func initCachEffectData() {
    func now() {
        //: let toUid = "LiveGift_\(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid)"
        let toUid = (String(k_cornerAppValue)) + "\(ValueThen.kindShared().liveRoomModel.streamerInfo.uid)"
        //: giftEffectView.initCachAnimatData(tagetID: toUid)
        giftEffectView.exhibit(tagetID: toUid)
    }

    /// 收到礼物消息展示
    //: func addGiftEffectModelArr(Msg: TalkingLiveRoomDanmuModel) {
    func studActionModelBlock(Msg: MakeDanmuModel) {
        //: if giftTrackView.giftSendItem.count == 0 {
        if giftTrackView.giftSendItem.count == 0 {
            //: let arrM = NSMutableArray.init()
            let arrM = NSMutableArray()
            //: for model in TalkingChatGiftManager.share.getSendingItems() {
            for model in AppNameGiftManager.share.detailItems() {
                //: arrM.add(model)
                arrM.add(model)
            }
            //: giftTrackView.giftSendItem = arrM as! [TalkingGiftNumArrModel]
            giftTrackView.giftSendItem = arrM as! [PublishHandyJSON]
        }
        //: let giftModel = Msg.gift
        let giftModel = Msg.gift
        //: if giftModel != nil {
        if giftModel != nil {
            //: giftTrackView.func__didReceiveGiftMsgModel(model: giftModel!)
            giftTrackView.imageModel(model: giftModel!)
            //: giftEffectView.addGiftAnimatModelArr(modelArr: [giftModel!])
            giftEffectView.keyArr(modelArr: [giftModel!])
        }
    }
}

/// 屏幕点击事件
//: extension TalkingLiveBeautifyViewController {
extension ControllerViewDelegate {
    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_ touches: Set<UITouch>, with _: UIEvent?) {
        //: let touch = touches.first!
        let touch = touches.first!
        //: var point = touch.location(in: self.view)
        var point = touch.location(in: self.view)
        //: point = commInputView.layer.convert(point, from: self.view.layer)
        point = commInputView.layer.convert(point, from: self.view.layer)
        //: if !commInputView.layer.contains(point) {
        if !commInputView.layer.contains(point) {
            //: commInputView.inputTextView.resignFirstResponder()
            commInputView.inputTextView.resignFirstResponder()
        }
    }
}

// MARK: - 发表弹幕代理

//: extension TalkingLiveBeautifyViewController: TalkingLiveRoomInputViewDelegate {
extension ControllerViewDelegate: FileReactiveCompatible {
    //: @objc func dismissClick() {
    @objc func underside() {
        //: commInputView.inputTextView.text = ""
        commInputView.inputTextView.text = ""
        //: commInputView.resignkeyBoard()
        commInputView.quit()
    }

    //: func func__sendTextMsg(msgStr: String, atUid: String?) {
    func ironed(msgStr: String, atUid: String?) {
        //: sendToTextMsg(msgStr: msgStr, toUid: atUid)
        theUp(msgStr: msgStr, toUid: atUid)
    }

    //: func heightToBottomChanged(heightToBottom: CGFloat) {
    func modeAddName(heightToBottom: CGFloat) {
        /// 半屏页打开时，不改变弹幕位置
        //: for vc in self.children {
        for vc in self.children {
            //: if vc.isKind(of: TalkingPrivateChatController.self) || vc.isKind(of: TalkingChatListViewController.self) {
            if vc.isKind(of: DistantViewController.self) || vc.isKind(of: ParadigmCoverDataSource.self) {
                //: return
                return
            }
        }

        //: commInputView.snp.updateConstraints { make in
        commInputView.snp.updateConstraints { make in
            //: make.bottom.equalTo(self.view).offset(-heightToBottom)
            make.bottom.equalTo(self.view).offset(-heightToBottom)
        }
        //: danmuView.snp.updateConstraints { make in
        danmuView.snp.updateConstraints { make in
            //: let height = heightToBottom == 0 ? 0 : -(heightToBottom-bottomView.height+commInputView.height-kDeviceSafeBottomHeight)
            let height = heightToBottom == 0 ? 0 : -(heightToBottom - bottomView.height + commInputView.height - appButtonData)
            //: make.bottom.equalTo(bottomView.snp.top).offset(height)
            make.bottom.equalTo(bottomView.snp.top).offset(height)
        }
    }

    //: func inputViewHeightChanged(height: CGFloat) {
    func tallness(height: CGFloat) {
        //: commInputView.snp.updateConstraints { make in
        commInputView.snp.updateConstraints { make in
            //: make.height.equalTo(height)
            make.height.equalTo(height)
        }

        //: self.view.needsUpdateConstraints()
        self.view.needsUpdateConstraints()
        //: self.view.updateConstraintsIfNeeded()
        self.view.updateConstraintsIfNeeded()
        //: UIView.animate(withDuration: 0.3, animations: {
        UIView.animate(withDuration: 0.3, animations: {
            //: self.view.layoutIfNeeded()
            self.view.layoutIfNeeded()
            //: })
        })
    }

    /// 发送文本消息
    //: func sendToTextMsg(msgStr: String, toUid: String?) {
    func theUp(msgStr: String, toUid: String?) {
        //: TalkingDanmuManager.uploadToTextMsg(groupId: TalkingLiveManager.shared().liveRoomModel.chatGroupId, message: msgStr, toUid: toUid) { succeed, result, errorModel in
        WithReactiveCompatible.disable(groupId: ValueThen.kindShared().liveRoomModel.chatGroupId, message: msgStr, toUid: toUid) { succeed, _, _ in
            //: if succeed {
            if succeed {}
        }
    }
}

// MARK: - Event

//: extension TalkingLiveBeautifyViewController {
extension ControllerViewDelegate {
    /// 开播成功，刷新直播间
    //: func refreshLiveRoomView() {
    func encroachUpon() {
        //: topView.refreshTopView(TalkingLiveManager.shared().liveRoomModel)
        topView.auditoryImageView(ValueThen.kindShared().liveRoomModel)
        //: bottomView.refreshBottomView(TalkingLiveManager.shared().liveRoomModel)
        bottomView.addView(ValueThen.kindShared().liveRoomModel)
    }

    /// 将当前视图从栈中移除
    //: func popCurrentViewController(animated: Bool = true) {
    func clinic(animated: Bool = true) {
        //: self.topView.stopTimer()
        self.topView.cellEvent()
        //: guard let currentVC = currentViewController() else { return }
        guard let currentVC = selectStart() else { return }
        //: guard currentVC.presentingViewController == nil else {
        guard currentVC.presentingViewController == nil else {
            // 如果直播视图上面有present, 先dismiss
            //: currentVC.dismiss(animated: false) {
            currentVC.dismiss(animated: false) {
                //: self.popCurrentViewController()
                self.clinic()
            }
            //: return
            return
        }

        //: if currentVC.navigationController?.topViewController == self {
        if currentVC.navigationController?.topViewController == self {
            //: self.navigationController?.popViewController(animated: animated)
            self.navigationController?.popViewController(animated: animated)
            //: } else {
        } else {
            //: if var vcArr = currentVC.navigationController?.viewControllers {
            if var vcArr = currentVC.navigationController?.viewControllers {
                //: if let index = vcArr.firstIndex(of: self) {
                if let index = vcArr.firstIndex(of: self) {
                    //: vcArr.remove(at: index)
                    vcArr.remove(at: index)
                    //: currentVC.navigationController?.setViewControllers(vcArr, animated: true)
                    currentVC.navigationController?.setViewControllers(vcArr, animated: true)
                }
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveBeautifyViewController {
extension ControllerViewDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func liveIn() {
        //: view.addSubview(renderView)
        view.addSubview(renderView)
        //: view.addSubview(bottomView)
        view.addSubview(bottomView)
        //: view.addSubview(danmuView)
        view.addSubview(danmuView)
        //: view.addSubview(commInputView)
        view.addSubview(commInputView)
        //: view.addSubview(topView)
        view.addSubview(topView)
        //: view.addSubview(floatScreenView)
        view.addSubview(floatScreenView)
        //: view.addSubview(giftTrackView)
        view.addSubview(giftTrackView)
        //: view.addSubview(giftEffectView)
        view.addSubview(giftEffectView)
        //: view.addSubview(topView.svgaView)
        view.addSubview(topView.svgaView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func cornerCell() {
        //: renderView.snp.makeConstraints { make in
        renderView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: commInputView.snp.makeConstraints { make in
        commInputView.snp.makeConstraints { make in
            //: make.bottom.equalTo(self.view)
            make.bottom.equalTo(self.view)
            //: make.leading.trailing.equalTo(0)
            make.leading.trailing.equalTo(0)
            //: make.height.equalTo(actualWidth(w: 55))
            make.height.equalTo(actualWidth(w: 55))
        }
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-(kDeviceSafeBottomHeight + 10))
            make.bottom.equalToSuperview().offset(-(appButtonData + 10))
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(actualWidth(w: 50))
            make.height.equalTo(actualWidth(w: 50))
        }
        //: danmuView.snp.makeConstraints { make in
        danmuView.snp.makeConstraints { make in
            //: make.bottom.equalTo(bottomView.snp.top)
            make.bottom.equalTo(bottomView.snp.top)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.height.equalTo(MsgTableViewHeight)
            make.height.equalTo(dataNeedBackHeightName)
            //: make.width.equalTo(MsgTableViewWidth)
            make.width.equalTo(dataScreenName)
        }
        //: floatScreenView.snp.makeConstraints { make in
        floatScreenView.snp.makeConstraints { make in
            //: make.top.equalTo(topView.snp.bottom).offset(-20)
            make.top.equalTo(topView.snp.bottom).offset(-20)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(90)
            make.height.equalTo(90)
        }
        //: giftEffectView.snp.makeConstraints { make in
        giftEffectView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: giftTrackView.snp.makeConstraints { make in
        giftTrackView.snp.makeConstraints { make in
            //: make.leading.equalTo(self.view)
            make.leading.equalTo(self.view)
            //: make.height.equalTo(180)
            make.height.equalTo(180)
            //: make.bottom.equalTo(bottomView.snp.top).offset(-MsgTableViewHeight)
            make.bottom.equalTo(bottomView.snp.top).offset(-dataNeedBackHeightName)
        }
    }
}
