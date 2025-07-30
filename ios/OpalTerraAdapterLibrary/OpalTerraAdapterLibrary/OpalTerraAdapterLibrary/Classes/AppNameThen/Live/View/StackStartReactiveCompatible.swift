
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kFrameDataName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "  " :*/
fileprivate let kTitleMsg:[Character] = [" "," "]

/*: "Say something...     " :*/
fileprivate let k_voiceMessage:String = "lab of be modeSay so"
fileprivate let kColorData:String = "g... title image app as"
fileprivate let kPopPleaseUrl:[Character] = [" "," "," "," "]

/*: "btn_video_gift_nor" :*/
fileprivate let k_tempName:String = "btn_vito height user name"
fileprivate let kCheckPath:[Character] = ["d","e","o"]
fileprivate let k_totalData:String = "_gifadd text make var table"

/*: "btn_live_gd_nor" :*/
fileprivate let kQuickName:String = "manager info intervalbtn_"
fileprivate let kViewName:String = "model select true withd_nor"

/*: "btn_live_gd_pre" :*/
fileprivate let kModelTitle:String = "background app self application screenbtn_l"
fileprivate let k_signName:String = "in voice now willive_gd"

/*: "btn_live_sx_nor" :*/
fileprivate let k_infoPath:[Character] = ["b","t","n","_","l","i","v","e","_","s","x","_","n","o","r"]

/*: "btn_live_sx_pre" :*/
fileprivate let kHiddenMessage:[Character] = ["b","t","n","_","l","i","v"]
fileprivate let kScreenData:String = "equal view view index capacitye_sx_pre"

/*: "#FF2348" :*/
fileprivate let k_contentUrl:String = "icon extension make var model#F"
fileprivate let kMakePath:[Character] = ["F","2","3","4","8"]

/*: "btn_live_yx_nor" :*/
fileprivate let k_cameraNameId:String = "as userbtn_li"
fileprivate let k_sizeKey:String = "list end return makex_nor"

/*: "btn_live_yx_pre" :*/
fileprivate let k_modelMessage:String = "message model action ofbtn_li"

/*: "toUid" :*/
fileprivate let kDataTitle:String = "style equal app totoUid"

/*: "giftId" :*/
fileprivate let k_resultMakeId:String = "scale pairgiftId"

/*: "giftNum" :*/
fileprivate let kCenterStr:[Character] = ["g","i","f","t","N"]
fileprivate let kLineData:[Character] = ["u","m"]

/*: "pkgItemsetId" :*/
fileprivate let k_giftTitle:String = "row string model listpkgIte"

/*: "totalMfCoin" :*/
fileprivate let k_shareSendStr:String = "totalMnumber false return voice image"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StackStartReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: @objc protocol TalkingLiveRoomBottomViewDelegate: NSObjectProtocol {
@objc protocol PlayerObjectProtocol: NSObjectProtocol {
    //: func func__commentBtnClick()
    func mightHaveBeen()
}

//: class TalkingLiveRoomBottomView: UIView {
class StackStartReactiveCompatible: UIView {
    //: var toUid: String?
    var toUid: String? /// 送给谁

    //: open weak var delegate: TalkingLiveRoomBottomViewDelegate?
    open weak var delegate: PlayerObjectProtocol?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        lineEqual()
        //: setupSubViewsConstraint()
        endUser()
        //: ResumeV2Listener.shared.func__addDelegate(self)
        ResumeV2Listener.shared.recordDelegate(self)
        //: refreshRedCountStatus()
        untilMake()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kFrameDataName.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.clear
        view.backgroundColor = UIColor.clear
        //: return view
        return view
        //: }()
    }()

    //: private lazy var commentBtn: UIButton = {
    private lazy var commentBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("  " + "Say something...     ".localized, for: .normal)
        btn.setTitle("  " + (String(k_voiceMessage.suffix(6)) + "methin" + String(kColorData.prefix(5)) + String(kPopPleaseUrl)).localized, for: .normal)
        //: btn.setTitleColor(UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 0.8), for: .normal)
        btn.setTitleColor(UIColor(red: 255 / 255.0, green: 255 / 255.0, blue: 255 / 255.0, alpha: 0.8), for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.fontChange(type: .Regular, fontSize: 14)
        //: btn.setBackgroundColor(color: UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.25), forState: .normal)
        btn.languageUnitState(color: UIColor(red: 0 / 255.0, green: 0 / 255.0, blue: 0 / 255.0, alpha: 0.25), forState: .normal)
        //: btn.layer.cornerRadius = 17
        btn.layer.cornerRadius = 17
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeLanguageManager.shared.direction == .rightToLeft {
            //: btn.contentHorizontalAlignment = .right
            btn.contentHorizontalAlignment = .right
            //: } else {
        } else {
            //: btn.contentHorizontalAlignment = .left
            btn.contentHorizontalAlignment = .left
        }
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(commentBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(pointOut), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .leading
        v.alignment = .leading
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 10
        v.spacing = 10
        //: return v
        return v
        //: }()
    }()

    //: private lazy var giftBtn: UIButton = {
    private lazy var giftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "btn_video_gift_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(k_tempName.prefix(6)) + String(kCheckPath) + String(k_totalData.prefix(4)) + "t_nor")), for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "btn_video_gift_nor"), for: .selected)
        btn.setImage(UIImage.submitGift(name: (String(k_tempName.prefix(6)) + String(kCheckPath) + String(k_totalData.prefix(4)) + "t_nor")), for: .selected)
        //: btn.addTarget(self, action: #selector(giftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(frontDown), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var moreBtn: UIButton = {
    private lazy var moreBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "btn_live_gd_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kQuickName.suffix(4)) + "live_g" + String(kViewName.suffix(5)))), for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "btn_live_gd_pre"), for: .highlighted)
        btn.setImage(UIImage.submitGift(name: (String(kModelTitle.suffix(5)) + String(k_signName.suffix(6)) + "_pre")), for: .highlighted)
        //: btn.addTarget(self, action: #selector(moreBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(toAGreaterExtentMakeClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chatBtn: UIButton = {
    private lazy var chatBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "btn_live_sx_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(k_infoPath))), for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "btn_live_sx_pre"), for: .highlighted)
        btn.setImage(UIImage.submitGift(name: (String(kHiddenMessage) + String(kScreenData.suffix(8)))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(chatBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(arrayMessageClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var redCountLab: UILabel = {
    private lazy var redCountLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FF2348")
        lab.backgroundColor = UIColor(hex: (String(k_contentUrl.suffix(2)) + String(kMakePath)))
        //: lab.layer.cornerRadius = 3.5
        lab.layer.cornerRadius = 3.5
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var gameBtn: UIButton = {
    private lazy var gameBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "btn_live_yx_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(k_cameraNameId.suffix(6)) + "ve_y" + String(k_sizeKey.suffix(5)))), for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "btn_live_yx_pre"), for: .highlighted)
        btn.setImage(UIImage.submitGift(name: (String(k_modelMessage.suffix(6)) + "ve_yx_pre")), for: .highlighted)
        //: btn.addTarget(self, action: #selector(gameBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(enterClick), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftView: TalkingChatGiftView = {
    private lazy var giftView: MenuView = {
        //: let giftV = TalkingChatGiftView(style: .live)
        let giftV = MenuView(style: .live)
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue)
        //: return giftV
        return giftV
        //: }()
    }()

    //: private lazy var moreView: TalkingLiveRoomMoreView = {
    private lazy var moreView: MoreReactiveCompatible = {
        //: let v = TalkingLiveRoomMoreView()
        let v = MoreReactiveCompatible()
        //: return v
        return v
        //: }()
    }()

    //: private lazy var gamesView: TalkingLiveRoomGamesView = {
    private lazy var gamesView: TelevisionThen = {
        //: let v = TalkingLiveRoomGamesView()
        let v = TelevisionThen()
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveRoomBottomView {
extension StackStartReactiveCompatible {
    /// 拉起弹幕评论
    //: @objc private func commentBtnClick() {
    @objc private func pointOut() {
        //: delegate?.func__commentBtnClick()
        delegate?.mightHaveBeen()
    }

    /// 送礼
    //: @objc private func giftBtnClick() {
    @objc private func frontDown() {
        //: func__sendGift()
        beGift()
    }

    /// 聊天列表
    //: @objc private func chatBtnClick() {
    @objc private func arrayMessageClick() {
        //: AddReactiveCompatible.share.func__pushToChatListVC(isHalfView: true)
        AddReactiveCompatible.share.titleBlock(isHalfView: true)
    }

    /// 更多
    //: @objc private func moreBtnClick() {
    @objc private func toAGreaterExtentMakeClick() {
        //: moreView.showView()
        moreView.radiotelephoneOver()
    }

    /// 游戏
    //: @objc private func gameBtnClick() {
    @objc private func enterClick() {
        //: gamesView.showView(from: .LiveRoom)
        gamesView.outspokenFrom(from: .LiveRoom)
    }
}

// MARK: - AlongManagerDelegate【刷新私信红点状态】

//: extension TalkingLiveRoomBottomView: IMManagerDelegate {
extension StackStartReactiveCompatible: AlongManagerDelegate {
    //: func onUnreadMsgCountChanged(count: Int) {
    func appDoing(count _: Int) {
        //: refreshRedCountStatus()
        untilMake()
    }

    /// 刷新消息未读数状态
    //: func refreshRedCountStatus() {
    func untilMake() {
        //: var msgCount = 0
        var msgCount = 0
        //: let convLists = [ResumeV2Listener.shared.topConvList, ResumeV2Listener.shared.norConvList]
        let convLists = [ResumeV2Listener.shared.topConvList, ResumeV2Listener.shared.norConvList]
        //: for list in convLists {
        for list in convLists {
            //: if let model = list.first(where: { $0.chatType == .private && $0.unreadCount > 0 }) {
            if let model = list.first(where: { $0.chatType == .private && $0.unreadCount > 0 }) {
                //: msgCount += Int(model.unreadCount)
                msgCount += Int(model.unreadCount)
                //: break
                break // 找到第一个未读消息后退出，不需要全部计算，只要有未读数就展示红点
            }
        }
        //: redCountLab.isHidden = (msgCount == 0)
        redCountLab.isHidden = (msgCount == 0)
    }
}

// MARK: - 送礼

//: extension TalkingLiveRoomBottomView {
extension StackStartReactiveCompatible {
    //: func func__sendGift() {
    func beGift() {
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: .live, completion: {
        AppNameGiftManager.share.searchCompletion(type: .live, completion: {
            //: self.func__showGiftChoiceView()
            self.statute()
            //: })
        })
    }

    //: func func__showGiftChoiceView() {
    func statute() {
        //: giftView.updateGiftInfo(needReload: true, mf_coin: DistanceAppManager.share.loginUserMode.mf_coin)
        giftView.dataGift(needReload: true, mf_coin: DistanceAppManager.share.loginUserMode.mf_coin)
        //: currentViewController()?.view.addSubview(giftView)
        selectStart()?.view.addSubview(giftView)
        //: giftView.showView()
        giftView.paradigmView()

        //: giftView.sendActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String) in
        giftView.sendActionBlock = { [weak self] (_ giftModel: RangeMeasurable, _ num: String) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__sendGiftMsg(giftModel: giftModel, giftNum: num)
            self.sizeBy(giftModel: giftModel, giftNum: num)
        }
    }

    //: func func__sendGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String) {
    func sizeBy(giftModel: RangeMeasurable, giftNum: String) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            arcInfo(showMsg: appViewPingValue)
            //: return
            return
        }
        //: var params: [String: Any] = [:]
        var params: [String: Any] = [:]
        //: if toUid != nil {
        if toUid != nil {
            //: params["toUid"] = toUid
            params[(String(kDataTitle.suffix(5)))] = toUid
        }
        //: params["giftId"] = giftModel.gid
        params[(String(k_resultMakeId.suffix(6)))] = giftModel.gid
        //: params["giftNum"] = giftNum
        params[(String(kCenterStr) + String(kLineData))] = giftNum
        //: if giftModel.pkgItemsetId != nil {
        if giftModel.pkgItemsetId != nil {
            //: params["pkgItemsetId"] = giftModel.pkgItemsetId
            params[(String(k_giftTitle.suffix(6)) + "msetId")] = giftModel.pkgItemsetId
        }

        //: PlayerRequestTool.req_SendGiftLive(param: params, completion: { succeed, result, errorModel in
        PlayerRequestTool.smallParamNeighbourSendGiftData(param: params, completion: { succeed, result, errorModel in
            //: guard succeed else {
            guard succeed else {
                //: self.dealSendMsgError(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                self.meanSun(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                //: return
                return
            }

            // 更新本地礼物背包
            //: if giftModel.pkgItemsetId != nil {
            if giftModel.pkgItemsetId != nil {
                //: self.giftView.bags_removeGiftPackage(pkgItemsetId: giftModel.pkgItemsetId!, num: Int(giftNum) ?? 0)
                self.giftView.poke(pkgItemsetId: giftModel.pkgItemsetId!, num: Int(giftNum) ?? 0)
            }
            //: self.func__insertGiftMessageWithExtral(extral: result as! [String: Any])
            self.groupExtral(extral: result as! [String: Any])
            //: })
        })
    }

    //: func func__insertGiftMessageWithExtral(extral: [String: Any]) {
    func groupExtral(extral: [String: Any]) {
        //: let extralInfo = extral
        let extralInfo = extral

        //: if extralInfo.keys.contains("totalMfCoin") {
        if extralInfo.keys.contains((String(k_shareSendStr.prefix(6)) + "fCoin")) {
            //: let totalMfCoin: NSNumber = extralInfo["totalMfCoin"] as! NSNumber
            let totalMfCoin: NSNumber = extralInfo[(String(k_shareSendStr.prefix(6)) + "fCoin")] as! NSNumber
            //: DistanceAppManager.share.loginUserMode.mf_coin = totalMfCoin.stringValue
            DistanceAppManager.share.loginUserMode.mf_coin = totalMfCoin.stringValue
        }
        //: giftView.updateGiftInfo(needReload: false, mf_coin: DistanceAppManager.share.loginUserMode.mf_coin)
        giftView.dataGift(needReload: false, mf_coin: DistanceAppManager.share.loginUserMode.mf_coin)
    }

    //: func dealSendMsgError(errorCode: Int, errorStr: String, isGift: Bool, isResend: Bool) {
    func meanSun(errorCode: Int, errorStr: String, isGift _: Bool, isResend _: Bool) {
        //: if errorCode == 50203 {
        if errorCode == 50203 {
            //: guard DistanceAppManager.share.loginUserMode.status != 1 else {
            guard DistanceAppManager.share.loginUserMode.status != 1 else {
                //: if !errorStr.isEmptyString {
                if !errorStr.isEmptyString {
                    //: func__showStatusBarErrorMsg(showMsg: errorStr)
                    arcInfo(showMsg: errorStr)
                }
                //: return
                return
            }
            //: AddReactiveCompatible.share.func__jumpToWebRecharge(clickEvent: clickSendingiftsButton, sufficient: false)
            AddReactiveCompatible.share.viewParams(clickEvent: show_appData, sufficient: false)
            //: giftView.dismissView()
            giftView.validSight()
            //: } else if errorCode == 10888 {
        } else if errorCode == 10888 {
            //: let view = TalkingLiveVipSubscribePopView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
            let view = ValuePopView(frame: CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue))
            //: view.show()
            view.attributeStrokeHalfGroup()
            //: } else {
        } else {
            //: if !errorStr.isEmptyString {
            if !errorStr.isEmptyString {
                //: func__showStatusBarErrorMsg(showMsg: errorStr)
                arcInfo(showMsg: errorStr)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveRoomBottomView {
extension StackStartReactiveCompatible {
    /// 刷新底部视图
    //: func refreshBottomView(_ liveModel: TalkingLiveRoomModel) {
    func addView(_ liveModel: LeagueTogetherModelType) {
        //: toUid = String(liveModel.streamerInfo.uid)
        toUid = String(liveModel.streamerInfo.uid)
        // 非主播没有更多按钮
        //: let isAnchor = (String(liveModel.streamerInfo.uid) == DistanceAppManager.share.loginUid)
        let isAnchor = (String(liveModel.streamerInfo.uid) == DistanceAppManager.share.loginUid)
        //: if isAnchor == false {
        if isAnchor == false {
            //: stackView.removeArrangedSubview(moreBtn)
            stackView.removeArrangedSubview(moreBtn)
            //: moreBtn.isHidden = true
            moreBtn.isHidden = true
        }

        // 非审核模式 && 有游戏
        //: if DistanceAppManager.share.appStatus != AppSkinStatus.special.rawValue,
        if DistanceAppManager.share.appStatus != NameQuickLookable.special.rawValue,
           //: liveModel.gameList.count > 0
           liveModel.gameList.count > 0
        {
            //: gameBtn.isHidden = false
            gameBtn.isHidden = false
            //: } else {
        } else {
            //: stackView.removeArrangedSubview(gameBtn)
            stackView.removeArrangedSubview(gameBtn)
            //: gameBtn.isHidden = true
            gameBtn.isHidden = true
        }
    }

    //: func setupSubviews() {
    func lineEqual() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(commentBtn)
        contentView.addSubview(commentBtn)
        //: contentView.addSubview(stackView)
        contentView.addSubview(stackView)
        //: stackView.addArrangedSubview(gameBtn)
        stackView.addArrangedSubview(gameBtn)
        //: stackView.addArrangedSubview(chatBtn)
        stackView.addArrangedSubview(chatBtn)
        //: chatBtn.addSubview(redCountLab)
        chatBtn.addSubview(redCountLab)
        //: stackView.addArrangedSubview(moreBtn)
        stackView.addArrangedSubview(moreBtn)
        //: stackView.addArrangedSubview(giftBtn)
        stackView.addArrangedSubview(giftBtn)
    }

    //: func setupSubViewsConstraint() {
    func endUser() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.leading.trailing.bottom.equalTo(self)
            make.top.leading.trailing.bottom.equalTo(self)
        }
        //: commentBtn.snp.makeConstraints { make in
        commentBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.height.equalTo(actualWidth(w: 33))
            make.height.equalTo(actualWidth(w: 33))
            //: make.width.equalTo(actualWidth(w: 157))
            make.width.equalTo(actualWidth(w: 157))
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
        }

        //: giftBtn.snp.makeConstraints { make in
        giftBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(33)
            make.width.height.equalTo(33)
        }
        //: moreBtn.snp.makeConstraints { make in
        moreBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
        //: redCountLab.snp.makeConstraints { make in
        redCountLab.snp.makeConstraints { make in
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.width.height.equalTo(7)
            make.width.height.equalTo(7)
        }
        //: gameBtn.snp.makeConstraints { make in
        gameBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(giftBtn)
            make.width.height.equalTo(giftBtn)
        }
    }
}
