
//: Declare String Begin

/*: "bg_party" :*/
fileprivate let kRouteName:String = "push"
fileprivate let kBackName:String = "user con gift datag_party"

/*: "You have been muted" :*/
fileprivate let kModelTitle:String = "You view var nor deep sample"
fileprivate let k_equalDateMsg:String = "no on voice segment list been"
fileprivate let kTouchUrl:[Character] = [" ","m","u","t","e","d"]

/*: "PartyGift_ :*/
fileprivate let k_managerPath:[Character] = ["P","a","r","t","y"]
fileprivate let kValueMsg:String = "make view height resultGift_"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PanoramicViewController.swift
//  Adjust
//
//  Created by DouXiu on 2024/9/13.
//

//: import CallKit.CXCallObserver
import CallKit.CXCallObserver
//: import UIKit
import UIKit

// 通话监听(必须为全局属性，否则无法接听)
//: let partyCallHelper = CXCallObserver()
let appNetName = CXCallObserver()
//: class TalkingVoiceRoomViewController: TalkingBaseViewController {
class PanoramicViewController: StartThen {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: hideNavi = true
        hideNavi = true
        //: TalkingDanmuManager.shared().delegate = self
        WithReactiveCompatible.appearShould().delegate = self
        //: setupSubviews()
        infoDown()
        //: setupSubViewsConstraint()
        noneDetail()
        //: addNotifications()
        tabularMatter()
        //: refreshVoiceRoomView()
        afterView()
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: initCachEffectData()
        viewData()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    /// 容器
    //: private lazy var containerView: UIView = {
    private lazy var containerView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: return view
        return view
        //: }()
    }()

    /// 背景
    //: private lazy var bgView: UIImageView = {
    private lazy var bgView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.submitGift(name: "bg_party")
        img.image = UIImage.submitGift(name: (kRouteName.replacingOccurrences(of: "push", with: "b") + String(kBackName.suffix(7))))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: return img
        return img
        //: }()
    }()

    /// 输入框
    //: private lazy var commInputView: TalkingLiveRoomInputView = {
    private lazy var commInputView: WillRangeVanguardInputView = {
        //: let text = TalkingLiveRoomInputView()
        let text = WillRangeVanguardInputView()
        //: text.delegate = self
        text.delegate = self
        //: text.isHidden = true
        text.isHidden = true
        //: return text
        return text
        //: }()
    }()

    /// 弹幕
    //: private lazy var danmuView: TalkingDanmuMsgListTableView = {
    private lazy var danmuView: DisplayModelTableView = {
        //: let view = TalkingDanmuMsgListTableView()
        let view = DisplayModelTableView()
        //: return view
        return view
        //: }()
    }()

    /// 礼物背景动效
    //: private lazy var giftEffectView: TalkingPrivateChatAnimatView = {
    private lazy var giftEffectView: SizeAnimatView = {
        //: let effectView = TalkingPrivateChatAnimatView()
        let effectView = SizeAnimatView()
        //: effectView.contentMode = .scaleAspectFill
        effectView.contentMode = .scaleAspectFill
        //: return effectView
        return effectView
        //: }()
    }()

    /// 礼物轨道动效
    //: private lazy var giftTrackView: TalkingGiftTrackView = {
    private lazy var giftTrackView: SizeTouchTrackView = {
        //: let trackView = TalkingGiftTrackView()
        let trackView = SizeTouchTrackView()
        //: trackView.isUserInteractionEnabled = false
        trackView.isUserInteractionEnabled = false
        //: return trackView
        return trackView
        //: }()
    }()

    /// 底部视图
    //: lazy var bottomView: TalkingVoiceRoomBottomView = {
    lazy var bottomView: SmartReactiveCompatible = {
        //: let view = TalkingVoiceRoomBottomView()
        let view = SmartReactiveCompatible()
        //: view.delegate = self
        view.delegate = self
        //: return view
        return view
        //: }()
    }()

    /// 麦位视图
    //: lazy var mikePositionView: TalkingVoiceRoomMikePositionView = {
    lazy var mikePositionView: AddItemView = {
        //: let view = TalkingVoiceRoomMikePositionView()
        let view = AddItemView()
        //: view.showUserCardBlock = { [weak self] uid in
        view.showUserCardBlock = { [weak self] uid in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func_showUserCardView(pushUid: uid.stringValue)
            self.showUid(pushUid: uid.stringValue)
        }
        //: return view
        return view
        //: }()
    }()

    /// 渐变层
    //: private lazy var gradientLayer: CAGradientLayer = {
    private lazy var gradientLayer: CAGradientLayer = {
        //: let layer = CAGradientLayer()
        let layer = CAGradientLayer()
        //: layer.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: StatusBarHeight+actualWidth(w: 85))
        layer.frame = CGRect(x: 0, y: 0, width: constFormalContent, height: main_netValue + actualWidth(w: 85))
        //: layer.startPoint = CGPoint(x: 0.5, y: 0)
        layer.startPoint = CGPoint(x: 0.5, y: 0)
        //: layer.endPoint = CGPoint(x: 0.5, y: 1)
        layer.endPoint = CGPoint(x: 0.5, y: 1)
        //: layer.colors = [UIColor.black.cgColor, UIColor.clear.cgColor]
        layer.colors = [UIColor.black.cgColor, UIColor.clear.cgColor]
        //: layer.locations = [0, 1]
        layer.locations = [0, 1]
        //: return layer
        return layer
        //: }()
    }()

    /// 顶部视图
    //: private lazy var topView: TalkingVoiceRoomTopView = {
    private lazy var topView: FileTopView = {
        //: let view = TalkingVoiceRoomTopView()
        let view = FileTopView()
        //: view.showUserCardBlock = { [weak self] uid in
        view.showUserCardBlock = { [weak self] uid in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func_showUserCardView(pushUid: uid.stringValue)
            self.showUid(pushUid: uid.stringValue)
        }
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomViewController {
extension PanoramicViewController {
    /// 刷新视图
    //: func refreshVoiceRoomView() {
    func afterView() {
        //: topView.refreshVoiceRoomTopView()
        topView.viewCurrent()
    }

    /// 释放当前vc所有资源，并退出
    //: func releaseAllResourceAndPop() {
    func groupEnablePan() {
        //: topView.destroyTimer()
        topView.straddle()
        //: danmuView.stopTimer()
        danmuView.rein()
        //: TalkingDanmuManager.qiutGroupDanmu(groupId: TalkingVoiceRoomManager.shared().partyModel.chatGroupId)
        WithReactiveCompatible.via(groupId: CoverManager.byRest().partyModel.chatGroupId)
        //: TalkingDanmuManager.danmu_releaseAllResource()
        WithReactiveCompatible.viewResource()
        //: popCurrentViewController()
        controllerAnimated()
    }

    /// 将当前视图从栈中移除（控制器还在，如最小化操作）
    //: func popCurrentViewController(animated: Bool = true) {
    func controllerAnimated(animated: Bool = true) {
        //: guard let currentVC = currentViewController() else { return }
        guard let currentVC = selectStart() else { return }
        //: guard currentVC.presentingViewController == nil else {
        guard currentVC.presentingViewController == nil else {
            // 如果视图上面有present, 先dismiss
            //: currentVC.dismiss(animated: false) {
            currentVC.dismiss(animated: false) {
                //: self.popCurrentViewController()
                self.controllerAnimated()
            }
            //: return
            return
        }

        //: if currentVC.navigationController?.topViewController == self {
        if currentVC.navigationController?.topViewController == self {
            //: navigationController?.popViewController(animated: animated)
            navigationController?.popViewController(animated: animated)
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

    /// 触摸事件
    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_ touches: Set<UITouch>, with _: UIEvent?) {
        //: let touch = touches.first!
        let touch = touches.first!
        //: var point = touch.location(in: view)
        var point = touch.location(in: view)
        //: point = commInputView.layer.convert(point, from: view.layer)
        point = commInputView.layer.convert(point, from: view.layer)
        //: if !commInputView.layer.contains(point) {
        if !commInputView.layer.contains(point) {
            //: commInputView.inputTextView.resignFirstResponder()
            commInputView.inputTextView.resignFirstResponder()
        }
    }
}

// MARK: - 通知事件

//: extension TalkingVoiceRoomViewController {
extension PanoramicViewController {
    /// 弹幕上移
    //: @objc private func danmuMoveTop() {
    @objc private func circleTop() {
        //: updateViewConstraints(offset: ScreenHeight-HalfViewTopMargin-10)
        upward(offset: user_recordMarginValue - user_intervalData - 10)
    }

    /// 弹幕下移
    //: @objc private func danmuMoveBottom() {
    @objc private func targetWith() {
        //: updateViewConstraints(offset: 0)
        upward(offset: 0)
    }

    /// 退出语聊房通知事件
    //: @objc private func quitVoiceRoom() {
    @objc private func way() {
        //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
        CoverManager.byRest().voiceOverShared()
    }
}

// MARK: - CXCallObserverDelegate【通话监听】

//: extension TalkingVoiceRoomViewController: CXCallObserverDelegate {
extension PanoramicViewController: CXCallObserverDelegate {
    //: func callObserver(_ callObserver: CXCallObserver, callChanged call: CXCall) {
    func callObserver(_: CXCallObserver, callChanged call: CXCall) {
        //: if call.hasConnected == true {
        if call.hasConnected == true { // 通话中
            //: guard TalkingVoiceRoomManager.shared().isParty else { return }
            guard CoverManager.byRest().isParty else { return }
            //: TalkingVoiceRoomManager.shared().voiceRoom_releaseAllResource()
            CoverManager.byRest().voiceOverShared()
        }
    }
}

// MARK: - : CancelPopThen【弹幕代理】

//: extension TalkingVoiceRoomViewController: TalkingDanmuManagerDelegate {
extension PanoramicViewController: CancelPopThen {
    //: func func__DanmuRecvNewModel(Msg: TalkingLiveRoomDanmuModel) {
    func errorProcess(Msg: MakeDanmuModel) {
        //: danmuView.addNewMsg(msgModel: Msg)
        danmuView.makeModel(msgModel: Msg)
    }

    //: func func__giftRecvNewModel(Msg: TalkingLiveRoomDanmuModel) {
    func hadith(Msg: MakeDanmuModel) {
        //: addGiftEffectModelArr(Msg: Msg)
        fillPath(Msg: Msg)
    }

    //: func func__actionUserNewModel(pushUid: String?) {
    func serviceReport(pushUid: String?) {
        //: commInputView.inputTextView.resignFirstResponder()
        commInputView.inputTextView.resignFirstResponder()
        //: func_showUserCardView(pushUid: pushUid)
        showUid(pushUid: pushUid)
    }

    //: func func__longTouchUserNewModel(nickName: String, atUid: String?) {
    func dowery(nickName: String, atUid: String?) {
        //: commInputView.callUserText(toUid: atUid ?? "", nickName: nickName)
        commInputView.flag(toUid: atUid ?? "", nickName: nickName)
    }

    //: func func__userLogin() {
    func getGoing() {
        // 实时更新在线人数
        //: topView.onlineNumAdd()
        topView.supplementAdd()
    }

    //: func func__userLogout() {
    func viewTitle() {
        // 实时更新在线人数
        //: topView.onlineNumReduce()
        topView.buttonBy()
    }
}

// MARK: - FileReactiveCompatible【输入框发送弹幕代理】

//: extension TalkingVoiceRoomViewController: TalkingLiveRoomInputViewDelegate {
extension PanoramicViewController: FileReactiveCompatible {
    //: func func__sendTextMsg(msgStr: String, atUid: String?) {
    func ironed(msgStr: String, atUid: String?) {
        //: TalkingDanmuManager.voiceRoomSendTextMsg(groupId: TalkingVoiceRoomManager.shared().partyModel.chatGroupId, message: msgStr, toUid: atUid)
        WithReactiveCompatible.measurementRender(groupId: CoverManager.byRest().partyModel.chatGroupId, message: msgStr, toUid: atUid)
    }

    //: func heightToBottomChanged(heightToBottom: CGFloat) {
    func modeAddName(heightToBottom: CGFloat) {
        //: for vc in children {
        for vc in children {
            //: if vc.isKind(of: TalkingPrivateChatController.self) || vc.isKind(of: TalkingChatListViewController.self) {
            if vc.isKind(of: DistantViewController.self) || vc.isKind(of: ParadigmCoverDataSource.self) {
                //: return
                return
            }
        }
        //: updateViewConstraints(offset: heightToBottom)
        upward(offset: heightToBottom)
    }

    //: func inputViewHeightChanged(height: CGFloat) {
    func tallness(height: CGFloat) {
        //: commInputView.snp.updateConstraints { make in
        commInputView.snp.updateConstraints { make in
            //: make.height.equalTo(height)
            make.height.equalTo(height)
        }

        //: view.needsUpdateConstraints()
        view.needsUpdateConstraints()
        //: view.updateConstraintsIfNeeded()
        view.updateConstraintsIfNeeded()
        //: UIView.animate(withDuration: 0.25, animations: {
        UIView.animate(withDuration: 0.25, animations: {
            //: self.view.layoutIfNeeded()
            self.view.layoutIfNeeded()
            //: })
        })
    }
}

// MARK: - StartViewDelegate【底部评论按钮代理】

//: extension TalkingVoiceRoomViewController: TalkingVoiceRoomBottomViewDelegate {
extension PanoramicViewController: StartViewDelegate {
    //: func bottom_commentBtnClick() {
    func noticeReTo() {
        // 拉起弹幕评论
        //: if Int(Date().timeIntervalSince1970) < TalkingVoiceRoomManager.shared().partyModel.muteExpireAt {
        if Int(Date().timeIntervalSince1970) < CoverManager.byRest().partyModel.muteExpireAt {
            //: func__showStatusBarErrorMsg(showMsg: "You have been muted".localized)
            arcInfo(showMsg: (String(kModelTitle.prefix(4)) + "have" + String(k_equalDateMsg.suffix(5)) + String(kTouchUrl)).localized)
            //: return
            return
        }
        //: commInputView.updatePlaceholder()
        commInputView.atMember()
    }
}

// MARK: - MakeObjectProtocol【个人资料卡代理】

//: extension TalkingVoiceRoomViewController: TalkingVoiceRoomCardViewDelegate {
extension PanoramicViewController: MakeObjectProtocol {
    //: func func__giftUserClick(uid: String) {
    func signaling(uid: String) {
        //: bottomView.func__sendGift(selectedUid: uid)
        bottomView.quickRange(selectedUid: uid)
    }

    //: func func__muteUserMickClick(uid: String, mikeStatus: Int, position: Int) {
    func itemTouch(uid: String, mikeStatus: Int, position: Int) {
        //: TalkingVoiceRoomManager.shared().voiceRoom_reqAdminChangeMike(uid: uid.intValue, type: mikeStatus == 2 ? 5 : 4, position: position)
        CoverManager.byRest().drawRein(uid: uid.intValue, type: mikeStatus == 2 ? 5 : 4, position: position)
    }

    //: func func_showUserCardView(pushUid: String?) {
    func showUid(pushUid: String?) {
        //: if let uidStr = pushUid, !uidStr.isEmptyString {
        if let uidStr = pushUid, !uidStr.isEmptyString {
            //: let view = TalkingVoiceRoomCardView(frame: self.view.frame, uid: uidStr)
            let view = WithStreamThen(frame: self.view.frame, uid: uidStr)
            //: view.delegate = self
            view.delegate = self
            //: view.show()
            view.placeWith()
        }
    }

    //: func func__atUserClick(uid: String, nickname: String) {
    func high(uid: String, nickname: String) {
        //: func__longTouchUserNewModel(nickName: nickname, atUid: uid)
        dowery(nickName: nickname, atUid: uid)
    }

    //: func func__followUserSucess(uid: String) {
    func videoGroupUid(uid _: String) {
        //: TalkingVoiceRoomManager.shared().partyModel.streamerInfo.isAttention = true
        CoverManager.byRest().partyModel.streamerInfo.isAttention = true
        //: topView.refreshFollow(isAttention: true)
        topView.shareQueryed(isAttention: true)
    }
}

// MARK: - 礼物动效

//: extension TalkingVoiceRoomViewController {
extension PanoramicViewController {
    /// 加载之前动画
    //: func initCachEffectData() {
    func viewData() {
        //: let toUid = "PartyGift_\(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid)"
        let toUid = (String(k_managerPath) + String(kValueMsg.suffix(5))) + "\(CoverManager.byRest().partyModel.streamerInfo.uid)"
        //: giftEffectView.initCachAnimatData(tagetID: toUid)
        giftEffectView.exhibit(tagetID: toUid)
    }

    /// 收到礼物消息展示
    //: func addGiftEffectModelArr(Msg: TalkingLiveRoomDanmuModel) {
    func fillPath(Msg: MakeDanmuModel) {
        //: if giftTrackView.giftSendItem.count == 0 {
        if giftTrackView.giftSendItem.count == 0 {
            //: let arrM = NSMutableArray()
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

// MARK: - Layout

//: extension TalkingVoiceRoomViewController {
extension PanoramicViewController {
    /// 更新视图偏移量
    //: func updateViewConstraints(offset: CGFloat) {
    func upward(offset: CGFloat) {
        //: UIView.animate(withDuration: 0.25) {
        UIView.animate(withDuration: 0.25) {
            //: self.commInputView.snp.updateConstraints { make in
            self.commInputView.snp.updateConstraints { make in
                //: make.bottom.equalTo(self.view).offset(-offset)
                make.bottom.equalTo(self.view).offset(-offset)
            }
            //: let y = offset > 0 ? -offset : 0
            let y = offset > 0 ? -offset : 0
            //: self.containerView.transform = CGAffineTransform(translationX: 0, y: y)
            self.containerView.transform = CGAffineTransform(translationX: 0, y: y)
            //: self.topView.transform = CGAffineTransform(translationX: 0, y: y)
            self.topView.transform = CGAffineTransform(translationX: 0, y: y)
            //: self.view.layoutIfNeeded()
            self.view.layoutIfNeeded()
        }
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func infoDown() {
        //: view.addSubview(containerView)
        view.addSubview(containerView)
        //: containerView.addSubview(bgView)
        containerView.addSubview(bgView)
        //: containerView.addSubview(mikePositionView)
        containerView.addSubview(mikePositionView)
        //: containerView.addSubview(danmuView)
        containerView.addSubview(danmuView)
        //: containerView.addSubview(giftTrackView)
        containerView.addSubview(giftTrackView)
        //: containerView.addSubview(giftEffectView)
        containerView.addSubview(giftEffectView)
        //: view.layer.addSublayer(gradientLayer)
        view.layer.addSublayer(gradientLayer)
        //: view.addSubview(topView)
        view.addSubview(topView)
        //: view.addSubview(bottomView)
        view.addSubview(bottomView)
        //: view.addSubview(commInputView)
        view.addSubview(commInputView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func noneDetail() {
        //: containerView.snp.makeConstraints { make in
        containerView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: bgView.snp.makeConstraints { make in
        bgView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: mikePositionView.snp.makeConstraints { make in
        mikePositionView.snp.makeConstraints { make in
            //: make.top.equalTo(topView.snp.bottom).offset(30)
            make.top.equalTo(topView.snp.bottom).offset(30)
            //: make.leading.width.equalToSuperview()
            make.leading.width.equalToSuperview()
            //: make.height.equalTo(MikePositionItemView_Size.height * 2)
            make.height.equalTo(showHalfContent.height * 2)
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

        //: commInputView.snp.makeConstraints { make in
        commInputView.snp.makeConstraints { make in
            //: make.bottom.equalTo(self.view)
            make.bottom.equalTo(self.view)
            //: make.leading.trailing.equalTo(0)
            make.leading.trailing.equalTo(0)
            //: make.height.equalTo(actualWidth(w: 55))
            make.height.equalTo(actualWidth(w: 55))
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

        //: giftEffectView.snp.makeConstraints { make in
        giftEffectView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: giftTrackView.snp.makeConstraints { make in
        giftTrackView.snp.makeConstraints { make in
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.height.equalTo(180)
            make.height.equalTo(180)
            //: make.bottom.equalTo(bottomView.snp.top).offset(-MsgTableViewHeight)
            make.bottom.equalTo(bottomView.snp.top).offset(-dataNeedBackHeightName)
        }
    }

    /// 添加通知
    //: private func addNotifications() {
    private func tabularMatter() {
        // 私信弹幕联动
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(danmuMoveTop),
                                               selector: #selector(circleTop),
                                               //: name: LIVE_HALF_VIEW_SHOW,
                                               name: k_netBottomData,
                                               //: object: nil)
                                               object: nil)
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(danmuMoveBottom),
                                               selector: #selector(targetWith),
                                               //: name: LIVE_HALF_VIEW_DISMISS,
                                               name: notiTopData,
                                               //: object: nil)
                                               object: nil)

        // 接收到音视频通话
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(quitVoiceRoom),
                                               selector: #selector(way),
                                               //: name: SOCKET_VIDEOCHAT_REQUESTCALL_NOTIFICATION,
                                               name: app_plainValue,
                                               //: object: nil)
                                               object: nil)
        // 运营商通话监听
        //: partyCallHelper.setDelegate(self, queue: DispatchQueue.main)
        appNetName.setDelegate(self, queue: DispatchQueue.main)
    }
}
