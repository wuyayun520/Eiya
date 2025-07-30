
//: Declare String Begin

/*: "fee" :*/
fileprivate let kWeFormat:[Character] = ["f","e","e"]

/*: "VIPFee" :*/
fileprivate let kAddMessage:String = "component type status toVIPFee"

/*: "chattingNum" :*/
fileprivate let k_resultContent:[Character] = ["c","h","a","t","t"]
fileprivate let k_addId:[Character] = ["i","n","g","N","u","m"]

/*: "You're already in her live room" :*/
fileprivate let kImageUrl:[UInt8] = [0xc8,0xde,0xe4,0x96,0xe1,0xd4,0x8f,0xd0,0xdb,0xe1,0xd4,0xd0,0xd3,0xe8,0x8f,0xd8,0xdd,0x8f,0xd7,0xd4,0xe1,0x8f,0xdb,0xd8,0xe5,0xd4,0x8f,0xe1,0xde,0xde,0xdc]

fileprivate func infoView(equal num: UInt8) -> UInt8 {
    let value = Int(num) - 111
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "toUid" :*/
fileprivate let kManagerId:[UInt8] = [0x94,0x8f,0x75,0x89,0x84]

fileprivate func logPic(model num: UInt8) -> UInt8 {
    let value = Int(num) - 32
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "momentId" :*/
fileprivate let kDataName:[UInt8] = [0x40,0x42,0x40,0x48,0x43,0x59,0x64,0x49]

/*: "extra" :*/
fileprivate let kUserText:[UInt8] = [0x8f,0x92,0x9e,0x98,0x8b]

private func countMessage(bottom num: UInt8) -> UInt8 {
    return num ^ 234
}

/*: "uid" :*/
fileprivate let kPokeStr:[UInt8] = [0x74,0x68,0x65]

/*: "onlineStatus" :*/
fileprivate let k_logDeleteKey:[UInt8] = [0x73,0x75,0x74,0x61,0x74,0x53,0x65,0x6e,0x69,0x6c,0x6e,0x6f]

/*: "isNewUser" :*/
fileprivate let k_norContent:[UInt8] = [0x76,0x6c,0x51,0x7a,0x68,0x4a,0x6c,0x7a,0x6d]

/*: "userStatus" :*/
fileprivate let k_imageValue:[UInt8] = [0x73,0x75,0x74,0x61,0x74,0x53,0x72,0x65,0x73,0x75]

/*: "Account is restricted！" :*/
fileprivate let kManagerName:String = "normal selfAccoun"
fileprivate let k_infoTitle:[Character] = [" ","r","e","s","t","r","i","c","t","e","d","！"]

/*: "Failed to enter the chat room. Please try again later" :*/
fileprivate let k_postId:[UInt8] = [0x59,0x74,0x7c,0x7f,0x78,0x77,0x33,0x87,0x82,0x33,0x78,0x81,0x87,0x78,0x85,0x33,0x87,0x7b,0x78,0x33,0x76,0x7b,0x74,0x87,0x33,0x85,0x82,0x82,0x80,0x41,0x33,0x63,0x7f,0x78,0x74,0x86,0x78,0x33,0x87,0x85,0x8c,0x33,0x74,0x7a,0x74,0x7c,0x81,0x33,0x7f,0x74,0x87,0x78,0x85]

fileprivate func coatButton(make num: UInt8) -> UInt8 {
    let value = Int(num) + 237
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "url" :*/
fileprivate let k_viewText:[Character] = ["u","r","l"]

/*: "userDetail" :*/
fileprivate let k_nextValue:String = "userDetself if top custom"
fileprivate let k_directionId:[Character] = ["a","i","l"]

/*: "&type=7" :*/
fileprivate let kCurrentValue:String = "value let session user size&type=7"

/*: "amount" :*/
fileprivate let k_playerStr:[UInt8] = [0xb4,0xb8,0xba,0xa0,0xbb,0xa1]

private func centerSize(item num: UInt8) -> UInt8 {
    return num ^ 213
}

/*: "transparency" :*/
fileprivate let kGiftViewMessage:String = "trasucceedpa"
fileprivate let kSufficientFormat:String = "renlist"

/*: "`%^{}" :*/
fileprivate let kMaxNorData:[Character] = ["`","%","^","{","}"]

/*: "[]|\\<>" :*/
fileprivate let kAddName:[Character] = ["["]
fileprivate let kIntervalervalId:[Character] = ["]","|","\\","<",">"]

/*: "version= :*/
fileprivate let kToKey:String = "camerars"

/*: &packageId= :*/
fileprivate let kInfoPath:[Character] = ["&","p","a","c","k","a","g","e","I","d"]
fileprivate let k_maxPath:[Character] = ["="]

/*: &bundleId= :*/
fileprivate let kMakeMessage:[Character] = ["&","b","u","n","d","l","e","I","d"]
fileprivate let k_languageMessage:[Character] = ["="]

/*: & :*/
fileprivate let kViewText:String = "&"

/*: ? :*/
fileprivate let kIconButtonId:[Character] = ["?"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AddReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/31.
//

//: import UIKit
import UIKit

//: public class AddReactiveCompatible: NSObject {
public class AddReactiveCompatible: NSObject {
    //: @objc static public let share = AddReactiveCompatible()
    @objc public static let share = AddReactiveCompatible()
    //: private override init() {}
    override private init() {}
}

//: extension AddReactiveCompatible {
extension AddReactiveCompatible {
    // MARK: - 随机视频入口

    //: func func__pushToRandomVideoVC(isBeginRand: Bool) {
    func sampleWith(isBeginRand: Bool) {
        //: uploadRecord.uploadRecordEvent(eventID: ClickInRandomvideo)
        kSoundName.messUp(eventID: show_colorValue)
        //: guard TalkingSocketManager.shared.isSpace == false else {
        guard ListSocketManager.shared.isSpace == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.arcInfo(showMsg: kTopReplaceHeightData)
            //: return
            return
        }
        //: TalkingPermissionTool.checkCameraAndMicrophone { isOpen in
        ToolThen.drunkComponent { isOpen in
            //: guard isOpen == true else { return }
            guard isOpen == true else { return }
            //: TalkingQuickVideoManager.req_videoMatchCheck() { succeed, result, errorModel in
            ValuePublishVideoManager.thirdSub { succeed, result, _ in
                //: guard succeed else { return }
                guard succeed else { return }
                //: let json = JSON(result ?? [String: Any]())
                let json = JSON(result ?? [String: Any]())
                //: let vc = TalkingRandomVideoViewController()
                let vc = EqualModelObjectProtocol()
                //: vc.fee = json["fee"].intValue
                vc.fee = json[(String(kWeFormat))].intValue
                //: vc.vipFee = json["VIPFee"].intValue
                vc.vipFee = json[(String(kAddMessage.suffix(6)))].intValue
                //: vc.chattingNum = json["chattingNum"].intValue
                vc.chattingNum = json[(String(k_resultContent) + String(k_addId))].intValue
                //: vc.isBeginRand = isBeginRand
                vc.isBeginRand = isBeginRand
                //: vc.isFirstRandow = isBeginRand
                vc.isFirstRandow = isBeginRand
                //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
                self.selectStart()?.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }

    // MARK: - 完善资料

    //: func func__pushToFillUserInfoVC() {
    func notFillAgainText() {
        //: DistanceAppManager.share.userFillInfoMode = UserFillInfoModel.init()
        DistanceAppManager.share.userFillInfoMode = SightInfoModel()
        //: let VC = TalkingLoginGenderVC()
        let VC = CustomGenderVc()
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = pageBy()
        //: if currentVC != nil {
        if currentVC != nil {
            //: currentVC?.navigationController?.pushViewController(VC, animated: true)
            currentVC?.navigationController?.pushViewController(VC, animated: true)
        }
    }

    // MARK: - 绑定邮箱

    /// - Parameters:
    ///   - type: 类型
    ///   - isShowBack: 是否显示返回按钮
    //: func func__pushToLockUserEmailVC(isShowBack: Bool = true) {
    func makeColorView(isShowBack: Bool = true) {
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = pageBy()
        //: if currentVC != nil {
        if currentVC != nil {
            //: if currentVC!.isKind(of: TalkingLoginBindEmailVC.self) ||
            if currentVC!.isKind(of: AdhereViewController.self) ||
                //: currentVC!.isKind(of: TalkingLoginMainViewController.self) {
                currentVC!.isKind(of: CoverTitleRecognizerDelegate.self)
            {
                //: return
                return
            }
            //: let vc = TalkingLoginBindEmailVC()
            let vc = AdhereViewController()
            //: vc.isBack = isShowBack
            vc.isBack = isShowBack
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)
        }
    }

    // MARK: - 跳转个人资料

    //: func func__pushToUserDetailVC(uid: String?) {
    func afterTo(uid: String?) {
        //: guard let currentVC = self.currentViewController() else { return }
        guard let currentVC = self.selectStart() else { return }
        //: if let liveVC = currentVC as? TalkingLiveBeautifyViewController, TalkingLiveManager.shared().isLive {
        if let liveVC = currentVC as? ControllerViewDelegate, ValueThen.kindShared().isLive {
            // 从主播页跳转个人资料时，切小屏模式
            //: liveVC.topView.miniButtonClick()
            liveVC.topView.migrationSocial()

            //: } else if currentVC.isKind(of: TalkingVoiceRoomViewController.self), TalkingVoiceRoomManager.shared().isParty {
        } else if currentVC.isKind(of: PanoramicViewController.self), CoverManager.byRest().isParty {
            //: TalkingVoiceRoomManager.shared().voiceRoom_mini()
            CoverManager.byRest().mix()

            //: } else if let profileVC = currentVC as? TalkingUserDetailViewController {
        } else if let profileVC = currentVC as? HiddenSizeRecognizerDelegate {
            // 同一用户的资料页已经在顶部，只刷新
            //: if profileVC.uid == uid {
            if profileVC.uid == uid {
                //: profileVC.requestAllData()
                profileVC.searchSize()
                //: return
                return
            }
        }

        //: let vc = TalkingUserDetailViewController(tempUid: uid)
        let vc = HiddenSizeRecognizerDelegate(tempUid: uid)
        //: getNavigationController()?.pushViewController(vc, animated: true)
        put()?.pushViewController(vc, animated: true)
    }

    // MARK: - 观众侧进入直播间

    /// 观众侧跳转到直播间
    /// - Parameters:
    ///   - uid: 主播id
    ///   - enterType: 入口
    //: func func_audiencePushToLiveRoomVC(uid: String, enterType: LiveEnterType) {
    func magnitudeeractionPinType(uid: String, enterType: CommensurateEnterType) {
        //: guard TalkingPermissionTool.isLiveOrPartyActive() == false else { return }
        guard ToolThen.pushSizePress() == false else { return }

        // 同一直播间只能进一次
        //: guard String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid) != uid else {
        guard String(ValueThen.kindShared().liveRoomModel.streamerInfo.uid) != uid else {
            //: self.func__showStatusBarErrorMsg(showMsg: "You're already in her live room".localized)
            self.arcInfo(showMsg: String(bytes: kImageUrl.map{infoView(equal: $0)}, encoding: .utf8)!.localized)
            //: return
            return
        }
        // 校验接口，通过后进入直播间
        //: TalkingAudienceManager().req_enterLiveRoom(streamerUid: uid) { succeed, result, errorModel in
        LimitReactiveCompatible().completionByTitle(streamerUid: uid) { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: guard let livemodel = TalkingLiveRoomModel.deserialize(from: result as? Dictionary) else { return }
            guard let livemodel = LeagueTogetherModelType.deserialize(from: result as? Dictionary) else { return }
            // 退出之前的直播间
            //: let currentVC = self.func__getCurrentActivityVC()
            let currentVC = self.pageBy()
            //: if let vcArr = currentVC?.navigationController?.viewControllers {
            if let vcArr = currentVC?.navigationController?.viewControllers {
                //: for index in 0..<(vcArr.count) {
                for index in 0 ..< (vcArr.count) {
                    //: let vc = vcArr[index]
                    let vc = vcArr[index]
                    //: if vc.isKind(of: TalkingLivePullStreamsViewController.self) == true {
                    if vc.isKind(of: DataGroupListener.self) == true {
                        //: (vc as! TalkingLivePullStreamsViewController).popCurrentViewController()
                        (vc as! DataGroupListener).toBy()
                    }
                }
            }

            // 进入新直播间
            //: TalkingLiveManager.shared().liveRoomModel = livemodel
            ValueThen.kindShared().liveRoomModel = livemodel
            //: let liveVc = TalkingLivePullStreamsViewController()
            let liveVc = DataGroupListener()
            //: liveVc.type = enterType
            liveVc.type = enterType
            //: currentVC?.navigationController?.pushViewController(liveVc, animated: true)
            currentVC?.navigationController?.pushViewController(liveVc, animated: true)
            // 埋点
            //: switch enterType {
            switch enterType {
            //: case .match:
            case .match:
                //: uploadRecord.uploadRecordEvent(eventID: ClickMatchLiveWindowNoP, toUid: uid)
                kSoundName.messUp(eventID: app_voiceValue, toUid: uid)
            //: case .userDetail:
            case .userDetail:
                //: uploadRecord.uploadRecordEvent(eventID: ClickProfileLiveWindowNoP, toUid: uid)
                kSoundName.messUp(eventID: constOkData, toUid: uid)
            //: case .unknown: break
            case .unknown: break
            }
        }
    }

    /// 进入语聊房
    /// - Parameters:
    ///   - roomId: 房间Id（nil：创建房间；有值：进入房间）
    //: func func_pushToVoiceRoomVC(roomId: String? = nil) {
    func photoTo(roomId: String? = nil) {
        //: if TalkingLiveManager.shared().isLive == true {
        if ValueThen.kindShared().isLive == true { // 直播中
            //: func__showStatusBarErrorMsg(showMsg: kMessage_live_limit)
            arcInfo(showMsg: main_changeText)
            //: return
            return
        }
        //: if roomId == TalkingVoiceRoomManager.shared().partyModel.roomId {
        if roomId == CoverManager.byRest().partyModel.roomId { // 返回语聊房
            //: TalkingVoiceRoomManager.shared().voiceRoom_goback()
            CoverManager.byRest().ofColorGoback()
            //: return
            return
        }
        //: if TalkingVoiceRoomManager.shared().isParty == true {
        if CoverManager.byRest().isParty == true { // 切换语聊房
            //: if roomId != nil {
            if roomId != nil {
                //: TalkingVoiceRoomManager.shared().voiceRoom_switch(roomId: roomId!, beforeRoomId: TalkingVoiceRoomManager.shared().partyModel.roomId)
                CoverManager.byRest().compartmentTop(roomId: roomId!, beforeRoomId: CoverManager.byRest().partyModel.roomId)
            }
            //: return
            return
        }
        //: TalkingVoiceRoomManager.shared().voiceRoom_checkAndTurnOn(roomId: roomId)
        CoverManager.byRest().equalSmart(roomId: roomId)
    }

    // MARK: - 跳转聊天

    /// 跳转到消息列表页
    /// - Parameter isHalf: 是否半屏展示
    //: func func__pushToChatListVC(isHalfView: Bool = false) {
    func titleBlock(isHalfView: Bool = false) {
        //: let vc = TalkingChatListViewController(isHalfView: isHalfView)
        let vc = ParadigmCoverDataSource(isHalfView: isHalfView)
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = pageBy()
        //: if isHalfView == false {
        if isHalfView == false {
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: currentVC?.addChild(vc)
            currentVC?.addChild(vc)
            //: currentVC?.view.addSubview(vc.view)
            currentVC?.view.addSubview(vc.view)
        }
    }

    /// 跳转到消息聊天页
    /// - Parameters:
    ///   - chatID: 对方Id
    ///   - isFrom: 私聊页入口
    /// - Returns: 消息聊天页

    //: func func__pushToPriveteChatVC(chatID: String, isFrom: PrivateChatIsFromEnum = .Normal, completion: ((_ vc: TalkingPrivateChatController) -> Void)? = nil ) {
    func tincture(chatID: String, isFrom: NameDataFromEnum = .Normal, completion: ((_ vc: DistantViewController) -> Void)? = nil) {
        //: guard chatID.count > 0 else { return }
        guard chatID.count > 0 else { return }

        //: if chatID != UserTextMacroDefine.getXiaoMiID() {
        if chatID != UserTextMacroDefine.publicationRequest() { // 系统消息
            //: ProgressHUD.show()
            EndProgressHUD.listHide()
            //: let param = ["toUid": chatID, "momentId": "0", "extra": "1"]
            let param = [String(bytes: kManagerId.map{logPic(model: $0)}, encoding: .utf8)!: chatID, String(bytes: kDataName.map{$0^45}, encoding: .utf8)!: "0", String(bytes: kUserText.map{countMessage(bottom: $0)}, encoding: .utf8)!: "1"]
            //: PlayerRequestTool.req_refreshUserChatInfo(param: param) { [weak self] succeed, result, errorModel in
            PlayerRequestTool.modelCompletion(param: param) { [weak self] succeed, result, _ in
                //: EndProgressHUD.popEnable()
                EndProgressHUD.popEnable()
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: guard succeed else { return }
                guard succeed else { return }

                //: let userWrap = HumankindThen.func__transformedChatinfo(userDic: result as! Dictionary<String, Any>)
                let userWrap = HumankindThen.gettable(userDic: result as! [String: Any])
                //: DBUserInfoManager.cache_updateMsgUserInfoAndPostNotif(with: userWrap)
                AppNameThen.toMedia(with: userWrap)
                // 更新消息列表用户在线状态
                //: let userInfo = ["uid": chatID,
                let userInfo = [String(bytes: kPokeStr.map{$0^1}, encoding: .utf8)!: chatID,
                                //: "onlineStatus": userWrap.onlineStatus,
                                String(bytes: k_logDeleteKey.reversed(), encoding: .utf8)!: userWrap.onlineStatus,
                                //: "isNewUser":userWrap.isNewUser,
                                String(bytes: k_norContent.map{$0^31}, encoding: .utf8)!: userWrap.isNewUser,
                                //: "userStatus": userWrap.userStatus]
                                String(bytes: k_imageValue.reversed(), encoding: .utf8)!: userWrap.userStatus]
                //: NotificationCenter.default.post(name: MSGLIST_UPDATE_ONLINESTATUS_NOTIFICATION,
                NotificationCenter.default.post(name: main_screenData,
                                                //: object: nil,
                                                object: nil,
                                                //: userInfo: userInfo)
                                                userInfo: userInfo)
                //: if userWrap.userStatus == 3 {
                if userWrap.userStatus == 3 { /// 被封号
                    //: self.func__showStatusBarErrorMsg(showMsg: "Account is restricted！".localized)
                    self.arcInfo(showMsg: (String(kManagerName.suffix(6)) + "t is" + String(k_infoTitle)).localized)
                    //: return
                    return
                }
                //: DispatchQueue.main.async {
                DispatchQueue.main.async {
                    //: let chatVC = self.func__canPushToPriveteChatVC(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
                    let chatVC = self.colorUser(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
                    //: completion?(chatVC)
                    completion?(chatVC)
                }
            }
            //: }else{
        } else {
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: let chatVC = self.func__canPushToPriveteChatVC(chatID: chatID, isFrom: isFrom, userWrap: HumankindThen())
                let chatVC = self.colorUser(chatID: chatID, isFrom: isFrom, userWrap: HumankindThen())
                //: completion?(chatVC)
                completion?(chatVC)
            }
        }
    }

    //: func func__canPushToPriveteChatVC(chatID: String, isFrom: PrivateChatIsFromEnum = .Normal, userWrap: HumankindThen ) -> TalkingPrivateChatController {
    func colorUser(chatID: String, isFrom: NameDataFromEnum = .Normal, userWrap: HumankindThen) -> DistantViewController {
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = pageBy()
        //: if isFrom != .LiveRoom, let vcArr = currentVC?.navigationController?.viewControllers {
        if isFrom != .LiveRoom, let vcArr = currentVC?.navigationController?.viewControllers {
            //: for index in 0..<(vcArr.count) {
            for index in 0 ..< (vcArr.count) {
                //: if vcArr[index] .isKind(of: TalkingPrivateChatController.self) == true {
                if vcArr[index].isKind(of: DistantViewController.self) == true {
                    //: let vc = vcArr[index] as! TalkingPrivateChatController
                    let vc = vcArr[index] as! DistantViewController
                    //: if vc.targetId == chatID {
                    if vc.targetId == chatID {
                        //: currentVC?.navigationController?.popToViewController(vc, animated: true)
                        currentVC?.navigationController?.popToViewController(vc, animated: true)
                        //: return vc
                        return vc
                    }
                }
            }
        }

        //: let vc = TalkingPrivateChatController(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
        let vc = DistantViewController(chatID: chatID, isFrom: isFrom, userWrap: userWrap)
        //: if isFrom == .LiveRoom {
        if isFrom == .LiveRoom {
            //: currentVC?.addChild(vc)
            currentVC?.addChild(vc)
            //: currentVC?.view.addSubview(vc.view)
            currentVC?.view.addSubview(vc.view)
            //: } else {
        } else {
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)
        }
        //: return vc
        return vc
    }

    // MARK: - 跳转群聊

    //: func func__pushToGroupChat(groupId: String) {
    func digitizerLoadId(groupId: String) {
        //: guard groupId.count > 0 else { return }
        guard groupId.count > 0 else { return }
        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: PlayerRequestTool.req_checkChatRoom(roomId: groupId) { succeed, result, errorModel in
        PlayerRequestTool.circumferenceCompletion(roomId: groupId) { succeed, result, errorModel in
            //: EndProgressHUD.popEnable()
            EndProgressHUD.popEnable()
            //: guard succeed == true else {
            guard succeed == true else {
                //: if errorModel?.errorCode == 106 {
                if errorModel?.errorCode == 106 {
                    //: } else {
                } else {
                    //: self.func__showStatusBarErrorMsg(showMsg: errorModel?.errorMsg ?? "")
                    self.arcInfo(showMsg: errorModel?.errorMsg ?? "")
                    //: if errorModel?.errorCode == 103 {
                    if errorModel?.errorCode == 103 { // 不在家族里
                    }
                }

                //: return
                return
            }

            //: guard let data = result as? [String: Any] else {
            guard let data = result as? [String: Any] else {
                //: return
                return
            }

            //: if UserTextMacroDefine.isGroupChat(groupId) {
            if UserTextMacroDefine.worldQuery(groupId) {
                //: } else {
            } else { // 公共聊天室
                //: V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
                V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
                    //: guard self.func__checkIsGroupChatVC(roomId: groupId) == false else { return }
                    guard self.tingFuncBlock(roomId: groupId) == false else { return }
                    //: let vc = TalkingGroupChatController(groupType: GroupType_Meeting, infoData: data)
                    let vc = PublishReactiveCompatible(groupType: GroupType_Meeting, infoData: data)
                    //: self.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
                    self.pageBy()?.navigationController?.pushViewController(vc, animated: true)

                    //: } fail: { code, desc in
                } fail: { code, _ in
                    //: if code == 10013 {
                    if code == 10013 { // 程序异常退出，未退出聊天室
                        //: guard self.func__checkIsGroupChatVC(roomId: groupId) == false else { return }
                        guard self.tingFuncBlock(roomId: groupId) == false else { return }
                        //: let vc = TalkingGroupChatController(groupType: GroupType_Meeting, infoData: data)
                        let vc = PublishReactiveCompatible(groupType: GroupType_Meeting, infoData: data)
                        //: self.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
                        self.pageBy()?.navigationController?.pushViewController(vc, animated: true)
                        //: } else {
                    } else {
                        //: self.func__showStatusBarErrorMsg(showMsg: "Failed to enter the chat room. Please try again later".localized)
                        self.arcInfo(showMsg: String(bytes: k_postId.map{coatButton(make: $0)}, encoding: .utf8)!.localized)
                    }
                }
            }
        }
    }

    /// 检测堆栈中是否有群聊控制器，有则跳转到群聊页
    /// - Parameter roomId: 房间Id
    /// - Returns: 检测结果（true: 有; false: 无）
    //: private func func__checkIsGroupChatVC(roomId: String) -> Bool {
    private func tingFuncBlock(roomId: String) -> Bool {
        //: let currentVC = self.func__getCurrentActivityVC()
        let currentVC = self.pageBy()
        //: if let vcArr = currentVC?.navigationController?.viewControllers {
        if let vcArr = currentVC?.navigationController?.viewControllers {
            //: for index in 0..<(vcArr.count) {
            for index in 0 ..< (vcArr.count) {
                //: if vcArr[index].isKind(of: TalkingGroupChatController.self) == true {
                if vcArr[index].isKind(of: PublishReactiveCompatible.self) == true {
                    //: let vc = vcArr[index] as! TalkingGroupChatController
                    let vc = vcArr[index] as! PublishReactiveCompatible
                    //: if vc.infoModel.roomId == roomId {
                    if vc.infoModel.roomId == roomId {
                        //: currentVC?.navigationController?.popToViewController(vc, animated: true)
                        currentVC?.navigationController?.popToViewController(vc, animated: true)
                        //: return true
                        return true
                    }
                }
            }
        }

        //: return false
        return false
    }

    // MARK: - 真人认证

    //: func func__pushUserVerifyController(toast: String?) {
    func decisionToast(toast: String?) {
        //: let tpAuth = TPUserAuth(rawValue: DistanceAppManager.share.loginUserMode.isTPAuth)
        let tpAuth = BreakValueConvertible(rawValue: DistanceAppManager.share.loginUserMode.isTPAuth)
        //: switch(tpAuth) {
        switch tpAuth {
        //: case .unknown, .isRefused:
        case .unknown, .isRefused:
            //: let vc = TalkingFaceVerificationVC()
            let vc = ObserverThen()
            //: vc.toastStr = toast ?? ""
            vc.toastStr = toast ?? ""
            //: let currentVC = func__getCurrentActivityVC()
            let currentVC = pageBy()
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)

        //: case .isOnGoing:
        case .isOnGoing:
            //: let vc = TalkingFinalVerificationVC()
            let vc = StreamViewController()
            //: let currentVC = func__getCurrentActivityVC()
            let currentVC = pageBy()
            //: currentVC?.navigationController?.pushViewController(vc, animated: true)
            currentVC?.navigationController?.pushViewController(vc, animated: true)

        //: default:
        default:
            //: break
            break
        }
    }

    // MARK: - 任意用户的动态列表

    //: func func__pushUserPostListWithUid(uid: String) {
    func cellRow(uid _: String) {}

    // MARK: - 反馈feebook

    //: func func__pushFeedbackVC() {
    func naturalProcess() {
        //: let currentVC = func__getCurrentActivityVC()
        let currentVC = pageBy()
        //: let vc = TalkingFeedbackVC.init()
        let vc = MakeThen()
        //: currentVC?.navigationController?.pushViewController(vc, animated: true)
        currentVC?.navigationController?.pushViewController(vc, animated: true)
    }

    // MARK: - 消息跳转

    //: func func__actionPushForMessage(jumpModel: TalkingMessageJumpModel) {
    func circulating(jumpModel: MakeTransformable) {
        //: if jumpModel.jumpKey == "url" {
        if jumpModel.jumpKey == (String(k_viewText)) {
            //: func__pushToWebVC(urlStr: jumpModel.url)
            pathAcross(urlStr: jumpModel.url)
            //: } else if jumpModel.jumpKey == "userDetail"{
        } else if jumpModel.jumpKey == (String(k_nextValue.prefix(7)) + String(k_directionId)) {}
    }

    // MARK: - 会员订阅网页

    //: @objc public func func__pushToSubscribePageWebVC() {
    @objc public func belowWith() {
        //: AddReactiveCompatible.share.func__pushToWebVC(webViewType: .SubscribePage)
        AddReactiveCompatible.share.overCapacity(webViewType: .SubscribePage)
    }

    // MARK: - 设置密码页面

    /// 跳转设置密码页面
    /// - Parameters:
    ///   - type: 手机号/邮箱
    ///   - content: 展示内容
    ///   - isNewPwd: 是否新设置密码（修改需要验证码）
    //: func func__pushToSetNewPasswordVC(type: LoginType, content: String, isNewPwd: Bool) {
    func confusion(type: PalmClusterLiteral, content: String, isNewPwd: Bool) {
        //: let vc = TalkingSetNewPasswordVC()
        let vc = StartViewController()
        //: vc.type = type
        vc.type = type
        //: vc.content = content
        vc.content = content
        //: vc.isNewPwd = isNewPwd
        vc.isNewPwd = isNewPwd
        //: func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
        pageBy()?.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - 跳转H5

//: extension AddReactiveCompatible {
extension AddReactiveCompatible {
    // 跳转全屏H5入口
    //: func func__pushToWebVC(webViewType: WebUrlType) {
    func overCapacity(webViewType: CounterwomanCustomReflectable) {
        //: func__pushToWebVC(webViewType: webViewType, webConfig: TalkingWebConfig())
        substituteUser(webViewType: webViewType, webConfig: AppConfig())
    }

    /// 余额不足跳转充值/订阅页
    /// - Parameters:
    ///   - clickEvent: 埋点事件
    ///   - sufficient: 余额是否充足（默认true）
    //: func func__jumpToWebRecharge(clickEvent: String = "", sufficient: Bool = true, appendParams: String = "&type=7") {
    func viewParams(clickEvent: String = "", sufficient: Bool = true, appendParams: String = (String(kCurrentValue.suffix(7)))) {
        //: let payWinType = DistanceAppManager.share.appUserConfigMode.payWinType
        let payWinType = DistanceAppManager.share.appUserConfigMode.payWinType
        // 样式：半屏充值页 || (已订阅 && 余额不足)
        //: if payWinType == 1 || (DistanceAppManager.share.loginUserMode.loungePlus && sufficient == false) {
        if payWinType == 1 || (DistanceAppManager.share.loginUserMode.loungePlus && sufficient == false) { // 半屏充值页
            //: func__pushToHalfWebVC(webViewType: .RechargeHalfPage, clickEvent: clickEvent)
            halfDismiss(webViewType: .RechargeHalfPage, clickEvent: clickEvent)

            //: } else if payWinType == 2 {
        } else if payWinType == 2 { // 会员订阅弹窗
            //: func__pushToSubscribeAlert(appendParams: appendParams)
            digitiserParams(appendParams: appendParams)
        }
    }

    /// 跳转会员订阅弹窗
    /// - Parameter appendParams: url拼接参数（假视频流程拼接："&type=6；默认流程："&type=7"）
    //: func func__pushToSubscribeAlert(appendParams: String = "&type=7") {
    func digitiserParams(appendParams: String = (String(kCurrentValue.suffix(7)))) {
        //: var urlStr = TalkingWebManager.getFullUrl(urlType: .SubscribeAlert)
        var urlStr = OriginalManager.actionFile(urlType: .SubscribeAlert)
        //: urlStr.append(appendParams)
        urlStr.append(appendParams)
        //: AddReactiveCompatible.share.func__pushToWebVC(urlStr: urlStr)
        AddReactiveCompatible.share.pathAcross(urlStr: urlStr)
        // 曝光用户数埋点
        //: uploadRecord.uploadRecordEvent(eventID: subscribtionRecordButton, parameterStr: ["amount": 0])
        kSoundName.releaseStr(eventID: app_recordText, parameterStr: [String(bytes: k_playerStr.map{centerSize(item: $0)}, encoding: .utf8)!: 0])
    }

    /// 跳转半屏H5入口
    /// - Parameters:
    ///   - webViewType: 网页URL
    ///   - clickEvent: 埋点事件
    //: func func__pushToHalfWebVC(webViewType: WebUrlType, clickEvent: String = "") {
    func halfDismiss(webViewType: CounterwomanCustomReflectable, clickEvent: String = "") {
        //: var config = TalkingWebConfig.init()
        var config = AppConfig()
        //: config.showLoadingView = false
        config.showLoadingView = false
        //: config.isHalfView = true
        config.isHalfView = true
        //: func__pushToWebVC(webViewType: webViewType, webConfig: config)
        substituteUser(webViewType: webViewType, webConfig: config)
        // 充值埋点
        //: if webViewType == .RechargeHalfPage {
        if webViewType == .RechargeHalfPage {
            //: RECHARGE_CLICK_EVENT = clickEvent
            main_tabName = clickEvent
            //: if clickEvent.count > 0 {
            if clickEvent.count > 0 {
                //: uploadRecord.uploadRecordEvent(eventID: clickEvent, parameterStr: ["amount": 0])
                kSoundName.releaseStr(eventID: clickEvent, parameterStr: [String(bytes: k_playerStr.map{centerSize(item: $0)}, encoding: .utf8)!: 0])
            }
        }
    }

    //: func func__pushToWebVC(webViewType: WebUrlType, webConfig: TalkingWebConfig) {
    func substituteUser(webViewType: CounterwomanCustomReflectable, webConfig: AppConfig) {
        //: let urlStr = TalkingWebManager.getFullUrl(urlType: webViewType)
        let urlStr = OriginalManager.actionFile(urlType: webViewType)
        //: func__pushToWebView(urlStr: urlStr, webViewType: webViewType, webConfig: webConfig)
        variantConfig(urlStr: urlStr, webViewType: webViewType, webConfig: webConfig)
    }

    //: func func__pushToWebVC(urlStr: String?, webConfig: TalkingWebConfig? = nil) {
    func pathAcross(urlStr: String?, webConfig: AppConfig? = nil) {
        //: let config = (webConfig == nil) ? TalkingWebConfig():webConfig
        let config = (webConfig == nil) ? AppConfig() : webConfig
        //: func__pushToWebView(urlStr: urlStr, webViewType: nil, webConfig: config!)
        variantConfig(urlStr: urlStr, webViewType: nil, webConfig: config!)
    }

    //: func func__pushToWebView(urlStr: String?, webViewType: WebUrlType?, webConfig: TalkingWebConfig) {
    func variantConfig(urlStr: String?, webViewType: CounterwomanCustomReflectable?, webConfig: AppConfig) {
        //: guard urlStr != nil && urlStr != "" else { return }
        guard urlStr != nil, urlStr != "" else { return }
        //: var config = webConfig
        var config = webConfig

        // 有值且大于0，半屏按照比例展示
        //: if config.widthHeight ?? 0 > 0 {
        if config.widthHeight ?? 0 > 0 {
            //: config.isHalfView = true
            config.isHalfView = true
        }
        // 解析url中带的参数
        //: let urlParams = JSON(urlStr!.urlParameters ?? [:])
        let urlParams = JSON(urlStr!.urlParameters ?? [:])
        //: if urlParams["transparency"].stringValue == "1" { // 透明背景
        if urlParams[(kGiftViewMessage.replacingOccurrences(of: "succeed", with: "ns") + kSufficientFormat.replacingOccurrences(of: "list", with: "cy"))].stringValue == "1" { // 透明背景
            //: config.clearBgColor = true
            config.clearBgColor = true
        }

        // url拼接参数
        //: let allowCharSet: CharacterSet = CharacterSet.init(charactersIn: "`%^{}\"[]|\\<>").inverted
        let allowCharSet = CharacterSet(charactersIn: "`%^{}" + "\"" + "[]|\\<>").inverted
        //: var urlStr = urlStr!.addingPercentEncoding(withAllowedCharacters: allowCharSet)!
        var urlStr = urlStr!.addingPercentEncoding(withAllowedCharacters: allowCharSet)!
        //: let otherParams = "version=\(AppNetVersion)&packageId=\(PackageID)&bundleId=\(AppBundle)"
        let otherParams = (kToKey.replacingOccurrences(of: "camera", with: "ve") + "ion=") + "\(mainConversationName)" + (String(kInfoPath) + String(k_maxPath)) + "\(const_userName)" + (String(kMakeMessage) + String(k_languageMessage)) + "\(const_availableName)"
        //: if urlStr.contains("?") {
        if urlStr.contains("?") {
            //: urlStr = "\(urlStr)&\(otherParams)"
            urlStr = "\(urlStr)&\(otherParams)"
            //: } else {
        } else {
            //: urlStr = "\(urlStr)?\(otherParams)"
            urlStr = "\(urlStr)?\(otherParams)"
        }

        //: let vc = TalkingWebViewController.init(urlString: urlStr, webViewType: webViewType, webConfig: config)
        let vc = PerspectiveViewController(urlString: urlStr, webViewType: webViewType, webConfig: config)

        // 展示网页
        //: if let currentVC = func__getCurrentActivityVC() {
        if let currentVC = pageBy() {
            // 如果当前视图是模态上来的，跳转到下级时只能使用模态效果跳转
            //: var currentVCIsPresent = false
            var currentVCIsPresent = false
            //: if currentVC.isKind(of: TalkingWebViewController.self) &&
            if currentVC.isKind(of: PerspectiveViewController.self) &&
                //: (currentVC as! TalkingWebViewController).isModal == true {
                (currentVC as! PerspectiveViewController).isModal == true
            {
                //: currentVCIsPresent = true
                currentVCIsPresent = true
            }

            //: if config.isHalfView {
            if config.isHalfView { // 半屏使用present
                //: if config.widthHeight == nil {
                if config.widthHeight == nil {
                    //: vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight*2/3)
                    vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue * 2 / 3)
                    //: vc.tranConfig.configCorner(corners: [.topLeft, .topRight], radius: 18)
                    vc.tranConfig.scopePackage(corners: [.topLeft, .topRight], radius: 18)
                    //: } else {
                } else {
                    //: vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenWidth/config.widthHeight!)
                    vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: constFormalContent, height: constFormalContent / config.widthHeight!)
                }
                //: vc.isModal = true
                vc.isModal = true
                //: currentVC.present(vc, animated: true)
                currentVC.present(vc, animated: true)

                //: } else if config.clearBgColor || currentVCIsPresent {
            } else if config.clearBgColor || currentVCIsPresent { // 透明背景只能用present
                //: vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
                vc.tranConfig.frameOfPresentedView = CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue)
                //: vc.isModal = true
                vc.isModal = true
                //: currentVC.present(vc, animated: true)
                currentVC.present(vc, animated: true)

                //: } else {
            } else {
                //: vc.isModal = false
                vc.isModal = false
                //: currentVC.navigationController?.pushViewController(vc, animated: true)
                currentVC.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }
}

// MARK: - 获取当前视图、导航

//: extension AddReactiveCompatible {
public extension AddReactiveCompatible {
    //: @objc public func func__getCurrentActivityVC() -> UIViewController? {
    @objc func pageBy() -> UIViewController? {
        //: return currentViewController()
        return selectStart()
    }
}

//: struct TalkingMessageJumpModel: HandyJSON {
struct MakeTransformable: HandyJSON {
    //: var jumpKey: String?
    var jumpKey: String? // 评论的id
    //: var jumpUid: String?
    var jumpUid: String?
    //: var url: String?
    var url: String?
}
