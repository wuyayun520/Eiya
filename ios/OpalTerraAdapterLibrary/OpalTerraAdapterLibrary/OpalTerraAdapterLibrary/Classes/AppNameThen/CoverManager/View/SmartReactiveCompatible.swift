
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_onPath:[UInt8] = [0xfe,0xf9,0xfe,0xe3,0xbf,0xf4,0xf8,0xf3,0xf2,0xe5,0xad,0xbe,0xb7,0xff,0xf6,0xe4,0xb7,0xf9,0xf8,0xe3,0xb7,0xf5,0xf2,0xf2,0xf9,0xb7,0xfe,0xfa,0xe7,0xfb,0xf2,0xfa,0xf2,0xf9,0xe3,0xf2,0xf3]

private func feedbackTouch(result num: UInt8) -> UInt8 {
    return num ^ 151
}

/*: "  " :*/
fileprivate let k_postModelKey:String = "atat"

/*: "Say something...     " :*/
fileprivate let k_targetUrl:String = "as location up image errorSay s"
fileprivate let k_tableData:String = "ng...   else cur var super content"
fileprivate let k_titleStr:[Character] = [" "," "]

/*: "party_bottom_mic_open" :*/
fileprivate let k_screenFormat:[Character] = ["p","a","r","t","y","_","b"]
fileprivate let kEliteText:[Character] = ["o","t","t","o","m","_","m","i","c","_","o","p","e","n"]

/*: "party_bottom_mic_close" :*/
fileprivate let kErrorMessage:String = "equal image half value typeparty_"
fileprivate let kProduceName:String = "om_mvideo bubble"

/*: "btn_video_gift_nor" :*/
fileprivate let k_viewAppName:[Character] = ["b","t","n","_","v"]
fileprivate let k_makeTextMessage:[Character] = ["i","d","e","o"]
fileprivate let k_mValue:String = "model i_gif"

/*: "btn_live_sx_nor" :*/
fileprivate let k_giftMessage:String = "btn_lirear view"
fileprivate let kPopStatuteName:String = "equal ofx_nor"

/*: "btn_live_sx_pre" :*/
fileprivate let k_messageTitle:[Character] = ["b","t","n","_","l","i","v","e","_"]
fileprivate let kLayerTableStr:String = "sx_preimage index rocket dismiss error"

/*: "#FF2348" :*/
fileprivate let k_sessionTitle:[Character] = ["#","F","F","2","3","4"]
fileprivate let k_labelData:[Character] = ["8"]

/*: "Please contact the host to turn on the mic" :*/
fileprivate let kActualSexFalseKey:[UInt8] = [0x2c,0x10,0x19,0x1d,0xf,0x19,0x5c,0x1f,0x13,0x12,0x8,0x1d,0x1f,0x8,0x5c,0x8,0x14,0x19,0x5c,0x14,0x13,0xf,0x8,0x5c,0x8,0x13,0x5c,0x8,0x9,0xe,0x12,0x5c,0x13,0x12,0x5c,0x8,0x14,0x19,0x5c,0x11,0x15,0x1f]

/*: ", :*/
fileprivate let k_modeKey:[Character] = [","]

/*: "Please select an object" :*/
fileprivate let k_dateModelLetStr:String = "time coordinate button keyPlea"
fileprivate let k_hiddenPriceValue:String = "portraitlportraitct"
fileprivate let k_toRequestMessage:[Character] = ["j","e","c","t"]

/*: "toUid" :*/
fileprivate let k_singleKey:String = "toUidblock var"

/*: "giftId" :*/
fileprivate let kPartyId:[Character] = ["g","i","f","t","I","d"]

/*: "giftNum" :*/
fileprivate let k_sizeUrl:[Character] = ["g","i","f","t","N","u","m"]

/*: "roomId" :*/
fileprivate let k_addFormat:String = "roomIdfollow target self scale"

/*: "pkgItemsetId" :*/
fileprivate let kUpPicMainUrl:[Character] = ["p","k","g","I","t","e","m","s","e","t","I","d"]

/*: "totalMfCoin" :*/
fileprivate let kScreenKey:[Character] = ["t","o","t","a","l","M"]
fileprivate let kSucceedData:String = "fCoinpin kind"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SmartReactiveCompatible.swift
//  OpalTerraAdapterLibrary
//
//  Created by DouXiu on 2024/9/25.
//

//: import UIKit
import UIKit

//: @objc protocol TalkingVoiceRoomBottomViewDelegate: NSObjectProtocol {
@objc protocol StartViewDelegate: NSObjectProtocol {
    /// 发布弹幕按钮点击事件
    //: func bottom_commentBtnClick()
    func noticeReTo()
}

//: class TalkingVoiceRoomBottomView: UIView {
class SmartReactiveCompatible: UIView {
    //: open weak var delegate: TalkingVoiceRoomBottomViewDelegate?
    open weak var delegate: StartViewDelegate?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        collectionClean()
        //: setupSubViewsConstraint()
        numberimate()
        //: ResumeV2Listener.shared.func__addDelegate(self)
        ResumeV2Listener.shared.recordDelegate(self)
        //: refreshRedCountStatus()
        refresh()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_onPath.map{feedbackTouch(result: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var commentBtn: UIButton = {
    private lazy var commentBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("  " + "Say something...     ".localized, for: .normal)
        btn.setTitle("  " + (String(k_targetUrl.suffix(5)) + "omethi" + String(k_tableData.prefix(8)) + String(k_titleStr)).localized, for: .normal)
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
        btn.addTarget(self, action: #selector(demur), for: .touchUpInside)
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
        //: v.alignment = .trailing
        v.alignment = .trailing
        //: v.distribution = .equalSpacing
        v.distribution = .equalSpacing
        //: v.spacing = 10
        v.spacing = 10
        //: return v
        return v
        //: }()
    }()

    //: private lazy var micBtn: UIButton = {
    private lazy var micBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "party_bottom_mic_open"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(k_screenFormat) + String(kEliteText))), for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "party_bottom_mic_close"), for: .selected)
        btn.setImage(UIImage.submitGift(name: (String(kErrorMessage.suffix(6)) + "bott" + String(kProduceName.prefix(4)) + "ic_close")), for: .selected)
        //: btn.addTarget(self, action: #selector(micBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(makeSnap), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftBtn: UIButton = {
    private lazy var giftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "btn_video_gift_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(k_viewAppName) + String(k_makeTextMessage) + String(k_mValue.suffix(4)) + "t_nor")), for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "btn_video_gift_nor"), for: .selected)
        btn.setImage(UIImage.submitGift(name: (String(k_viewAppName) + String(k_makeTextMessage) + String(k_mValue.suffix(4)) + "t_nor")), for: .selected)
        //: btn.addTarget(self, action: #selector(giftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(match), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chatBtn: UIButton = {
    private lazy var chatBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "btn_live_sx_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(k_giftMessage.prefix(6)) + "ve_s" + String(kPopStatuteName.suffix(5)))), for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "btn_live_sx_pre"), for: .highlighted)
        btn.setImage(UIImage.submitGift(name: (String(k_messageTitle) + String(kLayerTableStr.prefix(6)))), for: .highlighted)
        //: btn.addTarget(self, action: #selector(chatBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(commentCount), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var redCountLab: UILabel = {
    private lazy var redCountLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FF2348")
        lab.backgroundColor = UIColor(hex: (String(k_sessionTitle) + String(k_labelData)))
        //: lab.layer.cornerRadius = 3.5
        lab.layer.cornerRadius = 3.5
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var giftView: TalkingChatGiftView = {
    private lazy var giftView: MenuView = {
        //: let giftV = TalkingChatGiftView(style: .party)
        let giftV = MenuView(style: .party)
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue)
        //: return giftV
        return giftV
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVoiceRoomBottomView {
extension SmartReactiveCompatible {
    /// 刷新底部视图麦克风状态
    //: func refreshBottomMicStatus() {
    func toOn() {
        //: guard let itemModel = TalkingVoiceRoomManager.shared().getMikePosition(key: TalkingVoiceRoomManager.shared().partyModel.position) else {
        guard let itemModel = CoverManager.byRest().nextLandmark(key: CoverManager.byRest().partyModel.position) else {
            //: micBtn.isHidden = true
            micBtn.isHidden = true
            //: return
            return
        }
        //: micBtn.isHidden = false
        micBtn.isHidden = false
        //: micBtn.isSelected = (itemModel.mikeStatus != 2)
        micBtn.isSelected = (itemModel.mikeStatus != 2)
    }

    /// 刷新礼物面板上麦头像
    //: func refreshGiftIcon() {
    func allIcon() {
        //: giftView.partyIconView.refreshIconView()
        giftView.partyIconView.manageView()
    }

    /// 拉起弹幕评论按钮点击事件
    //: @objc private func commentBtnClick() {
    @objc private func demur() {
        //: delegate?.bottom_commentBtnClick()
        delegate?.noticeReTo()
    }

    /// 麦克风按钮点击事件
    //: @objc private func micBtnClick() {
    @objc private func makeSnap() {
        // 切换麦克风状态
        //: guard let itemModel = TalkingVoiceRoomManager.shared().getMikePosition(key: TalkingVoiceRoomManager.shared().partyModel.position) else {
        guard let itemModel = CoverManager.byRest().nextLandmark(key: CoverManager.byRest().partyModel.position) else {
            //: return
            return
        }
        //: switch itemModel.mikeStatus {
        switch itemModel.mikeStatus {
        //: case 0:
        case 0: // 闭麦
            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 4, position: TalkingVoiceRoomManager.shared().partyModel.position)
            CoverManager.byRest().optionMatch(type: 4, position: CoverManager.byRest().partyModel.position)

        //: case 1:
        case 1: // 房主闭麦
            //: func__showStatusBarErrorMsg(showMsg: "Please contact the host to turn on the mic".localized)
            arcInfo(showMsg: String(bytes: kActualSexFalseKey.map{$0^124}, encoding: .utf8)!.localized)

        //: case 2:
        case 2: // 开麦
            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 5, position: TalkingVoiceRoomManager.shared().partyModel.position)
            CoverManager.byRest().optionMatch(type: 5, position: CoverManager.byRest().partyModel.position)

        //: default:
        default:
            //: break
            break
        }
    }

    /// 聊天列表按钮点击事件
    //: @objc private func chatBtnClick() {
    @objc private func commentCount() {
        //: AddReactiveCompatible.share.func__pushToChatListVC(isHalfView: true)
        AddReactiveCompatible.share.titleBlock(isHalfView: true)
    }

    /// 送礼按钮点击事件
    //: @objc private func giftBtnClick() {
    @objc private func match() {
        //: func__sendGift()
        quickRange()
    }
}

// MARK: - 送礼

//: extension TalkingVoiceRoomBottomView {
extension SmartReactiveCompatible {
    /// 展示礼物面板
    //: func func__sendGift(selectedUid: String? = nil) {
    func quickRange(selectedUid: String? = nil) {
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: .party, completion: {
        AppNameGiftManager.share.searchCompletion(type: .party, completion: {
            //: self.func__showGiftChoiceView(selectedUid: selectedUid)
            self.postUid(selectedUid: selectedUid)
            //: })
        })
    }

    //: func func__showGiftChoiceView(selectedUid: String? = nil) {
    func postUid(selectedUid: String? = nil) {
        //: giftView.updateGiftInfo(needReload: true, mf_coin: DistanceAppManager.share.loginUserMode.mf_coin)
        giftView.dataGift(needReload: true, mf_coin: DistanceAppManager.share.loginUserMode.mf_coin)
        //: currentViewController()?.view.addSubview(giftView)
        selectStart()?.view.addSubview(giftView)
        //: if selectedUid != nil {
        if selectedUid != nil { // 选中单个用户
            //: giftView.partyIconView.refreshAllIcon(allSelected: false, selectedUid: selectedUid)
            giftView.partyIconView.pathAttribute(allSelected: false, selectedUid: selectedUid)
            //: } else {
        } else { // 全部选中
            //: giftView.partyIconView.refreshAllIcon(allSelected: true)
            giftView.partyIconView.pathAttribute(allSelected: true)
        }
        //: giftView.showView()
        giftView.paradigmView()
        //: giftView.sendActionBlock = { [weak self] (_ giftModel: TalkingRoomGiftModel, _ num: String) in
        giftView.sendActionBlock = { [weak self] (_ giftModel: RangeMeasurable, _ num: String) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.func__sendGiftMsg(giftModel: giftModel, giftNum: num)
            self.jettison(giftModel: giftModel, giftNum: num)
        }
    }

    /// 送礼
    //: func func__sendGiftMsg(giftModel: TalkingRoomGiftModel, giftNum: String) {
    func jettison(giftModel: RangeMeasurable, giftNum: String) {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            arcInfo(showMsg: appViewPingValue)
            //: return
            return
        }

        // 拼接需要送礼的Uid
        //: var toUid = ""
        var toUid = ""
        //: TalkingVoiceRoomManager.shared().getAllMikePositions().forEach { _, model in
        CoverManager.byRest().each().forEach { _, model in
            //: if model.uid > 0, String(model.uid) != DistanceAppManager.share.loginUid, model.needGift == true {
            if model.uid > 0, String(model.uid) != DistanceAppManager.share.loginUid, model.needGift == true {
                //: if toUid.count > 0 {
                if toUid.count > 0 {
                    //: toUid.append(",\(model.uid)")
                    toUid.append(",\(model.uid)")
                    //: } else {
                } else {
                    //: toUid.append("\(model.uid)")
                    toUid.append("\(model.uid)")
                }
            }
        }
        //: guard toUid.count > 0 else {
        guard toUid.count > 0 else {
            //: func__showStatusBarErrorMsg(showMsg: "Please select an object".localized)
            arcInfo(showMsg: (String(k_dateModelLetStr.suffix(4)) + "se s" + k_hiddenPriceValue.replacingOccurrences(of: "portrait", with: "e") + " an ob" + String(k_toRequestMessage)).localized)
            //: return
            return
        }

        //: var params: [String: Any] = [:]
        var params: [String: Any] = [:]
        //: params["toUid"] = toUid
        params[(String(k_singleKey.prefix(5)))] = toUid
        //: params["giftId"] = giftModel.gid
        params[(String(kPartyId))] = giftModel.gid
        //: params["giftNum"] = giftNum
        params[(String(k_sizeUrl))] = giftNum
        //: params["roomId"] = TalkingVoiceRoomManager.shared().partyModel.roomId
        params[(String(k_addFormat.prefix(6)))] = CoverManager.byRest().partyModel.roomId
        //: if giftModel.pkgItemsetId != nil {
        if giftModel.pkgItemsetId != nil {
            //: params["pkgItemsetId"] = giftModel.pkgItemsetId
            params[(String(kUpPicMainUrl))] = giftModel.pkgItemsetId
        }

        //: PlayerRequestTool.req_sendPartyGift(param: params, completion: { succeed, result, errorModel in
        PlayerRequestTool.giftBy(param: params, completion: { succeed, result, errorModel in
            //: guard succeed else {
            guard succeed else {
                //: self.dealSendMsgError(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
                self.pageResend(errorCode: errorModel!.errorCode, errorStr: errorModel!.errorMsg, isGift: true, isResend: false)
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
            self.theExtral(extral: result as! [String: Any])
            //: })
        })
    }

    //: func func__insertGiftMessageWithExtral(extral: [String: Any]) {
    func theExtral(extral: [String: Any]) {
        //: let extralInfo = extral
        let extralInfo = extral
        //: if extralInfo.keys.contains("totalMfCoin") {
        if extralInfo.keys.contains((String(kScreenKey) + String(kSucceedData.prefix(5)))) {
            //: let totalMfCoin: NSNumber = extralInfo["totalMfCoin"] as! NSNumber
            let totalMfCoin: NSNumber = extralInfo[(String(kScreenKey) + String(kSucceedData.prefix(5)))] as! NSNumber
            //: DistanceAppManager.share.loginUserMode.mf_coin = totalMfCoin.stringValue
            DistanceAppManager.share.loginUserMode.mf_coin = totalMfCoin.stringValue
        }
        //: giftView.updateGiftInfo(needReload: false, mf_coin: DistanceAppManager.share.loginUserMode.mf_coin)
        giftView.dataGift(needReload: false, mf_coin: DistanceAppManager.share.loginUserMode.mf_coin)
    }

    //: func dealSendMsgError(errorCode: Int, errorStr: String, isGift: Bool, isResend: Bool) {
    func pageResend(errorCode: Int, errorStr: String, isGift _: Bool, isResend _: Bool) {
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

// MARK: - AlongManagerDelegate【刷新私信红点状态】

//: extension TalkingVoiceRoomBottomView: IMManagerDelegate {
extension SmartReactiveCompatible: AlongManagerDelegate {
    //: func onUnreadMsgCountChanged(count: Int) {
    func appDoing(count _: Int) {
        //: refreshRedCountStatus()
        refresh()
    }

    /// 刷新消息未读数状态
    //: func refreshRedCountStatus() {
    func refresh() {
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

// MARK: - Layout

//: extension TalkingVoiceRoomBottomView {
extension SmartReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func collectionClean() {
        //: addSubview(commentBtn)
        addSubview(commentBtn)
        //: addSubview(stackView)
        addSubview(stackView)
        //: stackView.addArrangedSubview(micBtn)
        stackView.addArrangedSubview(micBtn)
        //: stackView.addArrangedSubview(chatBtn)
        stackView.addArrangedSubview(chatBtn)
        //: chatBtn.addSubview(redCountLab)
        chatBtn.addSubview(redCountLab)
        //: stackView.addArrangedSubview(giftBtn)
        stackView.addArrangedSubview(giftBtn)
    }

    /// 更新布局
    //: private func setupSubViewsConstraint() {
    private func numberimate() {
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
        //: micBtn.snp.makeConstraints { make in
        micBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(33)
            make.width.height.equalTo(33)
        }
        //: giftBtn.snp.makeConstraints { make in
        giftBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(micBtn)
            make.width.height.equalTo(micBtn)
        }
        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.width.height.equalTo(micBtn)
            make.width.height.equalTo(micBtn)
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
    }
}
