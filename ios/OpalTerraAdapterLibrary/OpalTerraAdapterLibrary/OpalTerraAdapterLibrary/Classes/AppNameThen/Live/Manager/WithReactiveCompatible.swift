
//: Declare String Begin

/*: " customElem.data is error" :*/
fileprivate let kWhiteTitle:String = " cusjaw hidden"
fileprivate let k_offStr:String = "m.data iclear cell from tag"
fileprivate let kClickWhoKey:String = "file let enable alls error"

/*: "extra" :*/
fileprivate let k_priceStr:String = "extrlist"

/*: "MF:PartyChatSysMsg" :*/
fileprivate let kColorTargetCellPath:[Character] = ["M","F",":","P","a","r","t","y","C","h","a","t","S","y","s"]
fileprivate let k_asideStr:String = "arc limitMsg"

/*: "opType" :*/
fileprivate let kTitleContent:[Character] = ["o","p","T","y","p","e"]

/*: "roomLogout" :*/
fileprivate let kConversationId:String = "let mode photo nameroomLo"
fileprivate let kNearName:String = "pairout"

/*: "MF:PartyChatWelMsg" :*/
fileprivate let k_addKey:String = "MF:Pgift top if"
fileprivate let kRedKey:String = "user inatWelMsg"

/*: "startLive" :*/
fileprivate let k_modeStr:String = "finish self customstartLi"
fileprivate let k_appFormat:[Character] = ["v","e"]

/*: "floatingScreen" :*/
fileprivate let k_phoneName:[UInt8] = [0x75,0x7f,0x7c,0x72,0x67,0x7a,0x7d,0x74,0x40,0x70,0x61,0x76,0x76,0x7d]

private func partyTo(view num: UInt8) -> UInt8 {
    return num ^ 19
}

/*: "mute" :*/
fileprivate let k_giftStr:[Character] = ["m","u","t","e"]

/*: "uid" :*/
fileprivate let k_actualPath:String = "uspeciald"

/*: "expireAt" :*/
fileprivate let kAddMsg:[Character] = ["e","x","p","i","r","e","A","t"]

/*: "unmute" :*/
fileprivate let k_listOfId:String = "unuserte"

/*: "MF:LiveChatGiftMsg" :*/
fileprivate let kBlockFormat:String = "stack micMF:Li"
fileprivate let kEqualData:String = "pic viewiftMsg"

/*: "MF:PartyChatGiftMsg" :*/
fileprivate let k_actualName:String = "name startMF:Par"
fileprivate let kScaleMessage:[Character] = ["t"]
fileprivate let k_modeValueId:[Character] = ["y","C","h","a","t","G","i","f","t","M","s","g"]

/*: "gift" :*/
fileprivate let kApplicationNamePermissionMsg:[Character] = ["g","i","f","t"]

/*: "id" :*/
fileprivate let k_emptyTitle:String = "itext"

/*: "imgPreview" :*/
fileprivate let k_equalPath:String = "imgPrto user lab model"
fileprivate let kResultPath:String = "evacceptw"

/*: "name" :*/
fileprivate let kPlainKey:String = "naerr"

/*: "num" :*/
fileprivate let k_errorMsg:String = "NUM"

/*: "mfBean" :*/
fileprivate let k_skinStr:[UInt8] = [0xd8,0xd3,0xf7,0xd0,0xd4,0xdb]

/*: "MF:LiveChatPrizeMsg" :*/
fileprivate let k_contentUrl:String = "MF:Lihello color let"
fileprivate let k_pathFormat:String = "Prizeself mode title fill clear"
fileprivate let k_followViewWhiteFormat:String = "Msgpair frame"

/*: "<at>@[\\S\\s]+?</at>" :*/
fileprivate let kNameText:String = "value var drop status<at>"
fileprivate let kChangeMessage:String = "content make title name]+?</at>"

/*: "加入弹幕房间" :*/
fileprivate let k_norMsg:String = "\u{52a0}\u{5165}弹幕\u{623f}间"

/*: "Failed to enter the chat room. Please try again later" :*/
fileprivate let k_writePath:[UInt8] = [0x72,0x65,0x74,0x61,0x6c,0x20,0x6e,0x69,0x61,0x67,0x61,0x20,0x79,0x72,0x74,0x20,0x65,0x73,0x61,0x65,0x6c,0x50,0x20,0x2e,0x6d,0x6f,0x6f,0x72,0x20,0x74,0x61,0x68,0x63,0x20,0x65,0x68,0x74,0x20,0x72,0x65,0x74,0x6e,0x65,0x20,0x6f,0x74,0x20,0x64,0x65,0x6c,0x69,0x61,0x46]

/*: "live/sendMsg" :*/
fileprivate let k_succeedUrl:[Character] = ["l","i","v","e","/","s","e","n","d","M","s","g"]

/*: "groupId" :*/
fileprivate let kItemId:[Character] = ["g","r","o","u","p","I","d"]

/*: "message" :*/
fileprivate let kModeMessage:String = "messaappe"

/*: "toUid" :*/
fileprivate let kTouchTargetKey:String = "return content casetoUid"

/*: "party/sendMsg" :*/
fileprivate let kRetName:[Character] = ["p","a"]
fileprivate let k_equalTitle:String = "rty/day show self"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingDanmuManagerDelegate: NSObject {
protocol CancelPopThen: NSObject {
    /// 弹幕消息
    //: func func__DanmuRecvNewModel(Msg: TalkingLiveRoomDanmuModel)
    func errorProcess(Msg: MakeDanmuModel)
    /// 礼物动效
    //: func func__giftRecvNewModel(Msg: TalkingLiveRoomDanmuModel)
    func hadith(Msg: MakeDanmuModel)

    //: func func__actionUserNewModel(pushUid: String?)
    func serviceReport(pushUid: String?)

    //: func func__longTouchUserNewModel(nickName: String, atUid: String?)
    func dowery(nickName: String, atUid: String?)
    // 用户进入房间
    //: func func__userLogin()
    func getGoing()
    // 用户退出房间
    //: func func__userLogout()
    func viewTitle()
}

//: class TalkingDanmuManager: NSObject {
class WithReactiveCompatible: NSObject {
    //: private var maxJoinRoom = 1
    private var maxJoinRoom = 1 // 重试加入弹幕房间次数
    //: private static var _instance: TalkingDanmuManager?
    private static var _instance: WithReactiveCompatible? // singleton
    //: open weak var delegate: TalkingDanmuManagerDelegate?
    open weak var delegate: CancelPopThen?

    //: override private init() {}
    override private init() {}
    //: class func shared() -> TalkingDanmuManager {
    class func appearShould() -> WithReactiveCompatible {
        //: guard _instance != nil else {
        guard _instance != nil else {
            //: _instance = TalkingDanmuManager()
            _instance = WithReactiveCompatible()
            //: return _instance!
            return _instance!
        }
        //: return _instance!
        return _instance!
    }
}

// MARK: - 展示消息通知

//: extension TalkingDanmuManager {
extension WithReactiveCompatible {
    /// 公告消息
    //: func showAnnouncementMsg(str: String) {
    func edictEdit(str: String) {
        //: var model = TalkingLiveRoomDanmuModel()
        var model = MakeDanmuModel()
        //: var msgInfo = TalkingDanmuMsgInfo()
        var msgInfo = EqualityModelType()
        //: msgInfo.messageType = 1
        msgInfo.messageType = 1 /// (公告算是特殊的文本消息)
        //: msgInfo.content = str
        msgInfo.content = str
        //: model.msgInfo = msgInfo
        model.msgInfo = msgInfo
        //: let celldata = TalkingLiveRoomDammuCellData()
        let celldata = ObserverReactiveCompatible()
        //: model = celldata.showAnnouncementMsg(model: model)
        model = celldata.unusedOf(model: model)
        //: delegate?.func__DanmuRecvNewModel(Msg: model)
        delegate?.errorProcess(Msg: model)
    }

    /// 处理接收到的弹幕消息，展示
    /// - Parameters:
    ///   - msg: V2TIMMessage
    //: func onRecvDanmuNewMsg(msg: V2TIMMessage) {
    func afterMax(msg: V2TIMMessage) {
        //: guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            printLog(message: (String(kWhiteTitle.prefix(4)) + "tomEle" + String(k_offStr.prefix(8)) + String(kClickWhoKey.suffix(7))))
            //: return
            return
        }
        //: let jsonData: Data = extra.data(using: .utf8)!
        let jsonData: Data = extra.data(using: .utf8)!
        //: let dict = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as? NSDictionary
        let dict = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers) as? NSDictionary
        //: let extraDic = dict?["extra"] as? [String: Any]
        let extraDic = dict?[(k_priceStr.replacingOccurrences(of: "list", with: "a"))] as? [String: Any]
        //: let ext = msg.customElem.extension
        let ext = msg.customElem.extension

        //: if ext == "MF:PartyChatSysMsg", extraDic?["opType"] as? String == "roomLogout" { // 语聊房退房操作
        if ext == (String(kColorTargetCellPath) + String(k_asideStr.suffix(3))), extraDic?[(String(kTitleContent))] as? String == (String(kConversationId.suffix(6)) + kNearName.replacingOccurrences(of: "pair", with: "g")) { // 语聊房退房操作
            //: self.delegate?.func__userLogout()
            self.delegate?.viewTitle()
            //: return
            return

                    //: } else if ext == "MF:PartyChatWelMsg" { // 语聊房进入欢迎消息
        } else if ext == (String(k_addKey.prefix(4)) + "artyCh" + String(kRedKey.suffix(8))) { // 语聊房进入欢迎消息
            //: self.delegate?.func__userLogin()
            self.delegate?.getGoing()

            //: } else if let opType = extraDic?["opType"], opType as? String == "startLive" {
        } else if let opType = extraDic?[(String(kTitleContent))], opType as? String == (String(k_modeStr.suffix(7)) + String(k_appFormat)) {
            //: NotificationCenter.default.post(name: LIVE_RECIVE_STARTLIVE_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: app_fileText, object: nil)
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "floatingScreen" { // 飘屏
        } else if let opType = extraDic?[(String(kTitleContent))], opType as? String == String(bytes: k_phoneName.map{partyTo(view: $0)}, encoding: .utf8)! { // 飘屏
            //: if let dict = extraDic?["floatingScreen"] {
            if let dict = extraDic?[String(bytes: k_phoneName.map{partyTo(view: $0)}, encoding: .utf8)!] {
                //: NotificationCenter.default.post(name: LIVE_RECIVE_FLOATSCREEN_NOTIFICATION, object: nil, userInfo: ["floatingScreen": dict])
                NotificationCenter.default.post(name: constBottomData, object: nil, userInfo: [String(bytes: k_phoneName.map{partyTo(view: $0)}, encoding: .utf8)!: dict])
            }
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "mute" { // 禁言
        } else if let opType = extraDic?[(String(kTitleContent))], opType as? String == (String(k_giftStr)) { // 禁言
            //: if let uid = extraDic?["uid"] as? Int {
            if let uid = extraDic?[(k_actualPath.replacingOccurrences(of: "special", with: "i"))] as? Int {
                //: if DistanceAppManager.share.loginUserMode.userID == "\(uid)" {
                if DistanceAppManager.share.loginUserMode.userID == "\(uid)" {
                    //: if ext == "MF:PartyChatSysMsg" { // 语聊房
                    if ext == (String(kColorTargetCellPath) + String(k_asideStr.suffix(3))) { // 语聊房
                        //: TalkingVoiceRoomManager.shared().partyModel.muteExpireAt = extraDic?["expireAt"] as? Int ?? 0
                        CoverManager.byRest().partyModel.muteExpireAt = extraDic?[(String(kAddMsg))] as? Int ?? 0
                        //: }else {
                    } else {
                        //: TalkingLiveManager.shared().liveRoomModel.muteExpireAt = extraDic?["expireAt"] as? Int ?? 0
                        ValueThen.kindShared().liveRoomModel.muteExpireAt = extraDic?[(String(kAddMsg))] as? Int ?? 0
                    }
                }
            }
            //: return
            return

                    //: } else if let opType = extraDic?["opType"], opType as? String == "unmute" { // 解禁
        } else if let opType = extraDic?[(String(kTitleContent))], opType as? String == (k_listOfId.replacingOccurrences(of: "user", with: "mu")) { // 解禁
            //: if let uid = extraDic?["uid"] as? Int {
            if let uid = extraDic?[(k_actualPath.replacingOccurrences(of: "special", with: "i"))] as? Int {
                //: if DistanceAppManager.share.loginUserMode.userID == "\(uid)" {
                if DistanceAppManager.share.loginUserMode.userID == "\(uid)" {
                    //: if DistanceAppManager.share.loginUserMode.userID == "\(uid)" {
                    if DistanceAppManager.share.loginUserMode.userID == "\(uid)" {
                        //: if ext == "MF:PartyChatSysMsg" { // 语聊房
                        if ext == (String(kColorTargetCellPath) + String(k_asideStr.suffix(3))) { // 语聊房
                            //: TalkingVoiceRoomManager.shared().partyModel.muteExpireAt = 0
                            CoverManager.byRest().partyModel.muteExpireAt = 0
                            //: }else {
                        } else {
                            //: TalkingLiveManager.shared().liveRoomModel.muteExpireAt = 0
                            ValueThen.kindShared().liveRoomModel.muteExpireAt = 0
                        }
                    }
                }
            }
            //: return
            return
        }

        //: if var model = TalkingLiveRoomDanmuModel.deserialize(from: extraDic as? Dictionary) {
        if var model = MakeDanmuModel.deserialize(from: extraDic as? Dictionary) {
            //: model.MsgExtension = msg.customElem.extension
            model.MsgExtension = msg.customElem.extension

            //: if model.msgInfo?.messageType == 3, model.MsgExtension == "MF:LiveChatGiftMsg" || model.MsgExtension == "MF:PartyChatGiftMsg" {
            if model.msgInfo?.messageType == 3, model.MsgExtension == (String(kBlockFormat.suffix(5)) + "veChatG" + String(kEqualData.suffix(6))) || model.MsgExtension == (String(k_actualName.suffix(6)) + String(kScaleMessage) + String(k_modeValueId)) {
                //: let dic: Dictionary? = extraDic?["gift"] as? [String: Any]
                let dic: Dictionary? = extraDic?[(String(kApplicationNamePermissionMsg))] as? [String: Any]
                //: if dic == nil {
                if dic == nil {
                    //: return
                    return
                }
                //: model.gift?.fromUid = model.user?.uid ?? 0
                model.gift?.fromUid = model.user?.uid ?? 0
                //: model.gift?.fromNickname = model.user?.nickname ?? ""
                model.gift?.fromNickname = model.user?.nickname ?? ""
                //: model.gift?.fromHeadPic = model.user?.headPic ?? ""
                model.gift?.fromHeadPic = model.user?.headPic ?? ""
                //: model.gift?.pid = Int(dic?["id"] as! String)
                model.gift?.pid = Int(dic?["id"] as! String)
                //: model.gift?.giftPic = dic?["imgPreview"] as? String ?? ""
                model.gift?.giftPic = dic?[(String(k_equalPath.prefix(5)) + kResultPath.replacingOccurrences(of: "accept", with: "ie"))] as? String ?? ""
                //: model.gift?.pname = dic?["name"] as! String
                model.gift?.pname = dic?[(kPlainKey.replacingOccurrences(of: "err", with: "me"))] as! String
                //: if model.gift?.animationTimes ?? 0 <= 0 {
                if model.gift?.animationTimes ?? 0 <= 0 {
                    //: model.gift?.animationTimes = dic?["num"] as? Int ?? 0
                    model.gift?.animationTimes = dic?[(k_errorMsg.lowercased())] as? Int ?? 0
                }

                //: if TalkingLiveManager.shared().liveRoomModel.roomId.count > 0 {
                if ValueThen.kindShared().liveRoomModel.roomId.count > 0 { // 直播间弹幕礼物(包含男性用户)
                    //: if TalkingLiveManager.shared().config.isSmallMode {
                    if ValueThen.kindShared().config.isSmallMode {
                        //: AbTalkingPrivateChatAnimatTool.shared.disposeReceiveLiveRoomGiftMsg(giftMessageDic: dict! as NSDictionary)
                        ViewMakeReactiveCompatible.shared.presentDay(giftMessageDic: dict! as NSDictionary)
                        //: } else {
                    } else {
                        //: delegate?.func__giftRecvNewModel(Msg: model)
                        delegate?.hadith(Msg: model)
                    }

                    //: } else if TalkingVoiceRoomManager.shared().isParty && model.gift?.isDisplay == true {
                } else if CoverManager.byRest().isParty, model.gift?.isDisplay == true { // 语聊房弹幕礼物
                    //: if TalkingVoiceRoomManager.shared().isSmallMode {
                    if CoverManager.byRest().isSmallMode {
                        //: AbTalkingPrivateChatAnimatTool.shared.disposeReceiveLiveRoomGiftMsg(giftMessageDic: dict! as NSDictionary)
                        ViewMakeReactiveCompatible.shared.presentDay(giftMessageDic: dict! as NSDictionary)
                        //: } else {
                    } else {
                        //: delegate?.func__giftRecvNewModel(Msg: model)
                        delegate?.hadith(Msg: model)
                    }
                }

                //: let mfBean = model.msgInfo?.mfBean
                let mfBean = model.msgInfo?.mfBean
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                NotificationCenter.default.post(name: app_userText, object: nil, userInfo: [String(bytes: k_skinStr.map{$0^181}, encoding: .utf8)!: mfBean ?? 0.0])

                //: if model.gift?.giftPic.count ?? 0 > 0 {
                if model.gift?.giftPic.count ?? 0 > 0 {
                    //: if let newStr = model.gift?.giftPic.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: ReplaceUrlDomain) {
                    if let newStr = model.gift?.giftPic.replacingOccurrences(of: data_statusText.doingApp(), with: main_keyValue) {
                        //: URLSession.shared.dataTask(with: URL(string: newStr)!) { data, _, error in
                        URLSession.shared.dataTask(with: URL(string: newStr)!) { data, _, error in
                            //: DispatchQueue.main.async {
                            DispatchQueue.main.async {
                                //: guard let data = data, error == nil, let image = UIImage(data: data) else {
                                guard let data = data, error == nil, let image = UIImage(data: data) else {
                                    //: self.setLiveRoomDammuCellData(danmuModel: model)
                                    self.imageOf(danmuModel: model)
                                    //: return
                                    return
                                }
                                //: model.gift?.giftImg = image
                                model.gift?.giftImg = image
                                //: self.setLiveRoomDammuCellData(danmuModel: model)
                                self.imageOf(danmuModel: model)
                            }
                            //: }.resume()
                        }.resume()
                    }
                }
                //: return
                return
            }
            //: if DistanceAppManager.share.appStatus == AppSkinStatus.special.rawValue, model.MsgExtension == "MF:LiveChatPrizeMsg" {
            if DistanceAppManager.share.appStatus == NameQuickLookable.special.rawValue, model.MsgExtension == (String(k_contentUrl.prefix(5)) + "veChat" + String(k_pathFormat.prefix(5)) + String(k_followViewWhiteFormat.prefix(3))) {
                //: return
                return
            }

            //: setLiveRoomDammuCellData(danmuModel: model)
            imageOf(danmuModel: model)
        }
    }

    //: private func setLiveRoomDammuCellData(danmuModel: TalkingLiveRoomDanmuModel) {
    private func imageOf(danmuModel: MakeDanmuModel) {
        //: var model = danmuModel
        var model = danmuModel
        //: let celldata = TalkingLiveRoomDammuCellData()
        let celldata = ObserverReactiveCompatible()
        //: model = celldata.caculateMsgHeight(model: model)
        model = celldata.lagSub(model: model)
        //: celldata.actionUserBlock = { [weak self] atUid in
        celldata.actionUserBlock = { [weak self] atUid in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.delegate?.func__actionUserNewModel(pushUid: atUid)
            self.delegate?.serviceReport(pushUid: atUid)
        }
        //: celldata.longUserBlock = { [weak self] atUid in
        celldata.longUserBlock = { [weak self] atUid in
            //: guard let self = self else { return }
            guard let self = self else { return }

            //: var uid = String(model.user?.uid ?? 0)
            var uid = String(model.user?.uid ?? 0)
            //: var name = model.user?.nickname ?? ""
            var name = model.user?.nickname ?? ""
            //: if atUid != nil, model.msgInfo?.jumps.count ?? 0 > 0, atUid != DistanceAppManager.share.loginUserMode.userID, atUid != String(model.user?.uid ?? 0) {
            if atUid != nil, model.msgInfo?.jumps.count ?? 0 > 0, atUid != DistanceAppManager.share.loginUserMode.userID, atUid != String(model.user?.uid ?? 0) {
                //: uid = atUid!
                uid = atUid!
                //: let text = model.msgInfo?.content ?? ""
                let text = model.msgInfo?.content ?? ""
                //: let regex = try! NSRegularExpression(pattern: "<at>@[\\S\\s]+?</at>", options: [])
                let regex = try! NSRegularExpression(pattern: (String(kNameText.suffix(4)) + "@[\\S\\s" + String(kChangeMessage.suffix(8))), options: [])
                //: let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
                let result = regex.matches(in: text, options: [], range: NSRange(location: 0, length: text.utf16.count))
                //: let matchRange = result.first?.range
                let matchRange = result.first?.range
                //: if matchRange?.length ?? 0 > 10 {
                if matchRange?.length ?? 0 > 10 {
                    //: let subStr = String.substringByUnicodeIndex(str: text, from: (matchRange?.location ?? 0) + 5, to: (matchRange?.length ?? 0) - 5)
                    let subStr = String.book(str: text, from: (matchRange?.location ?? 0) + 5, to: (matchRange?.length ?? 0) - 5)
                    //: name = subStr
                    name = subStr
                }
            }

            //: self.delegate?.func__longTouchUserNewModel(nickName: name, atUid: uid)
            self.delegate?.dowery(nickName: name, atUid: uid)
        }

        //: delegate?.func__DanmuRecvNewModel(Msg: model)
        delegate?.errorProcess(Msg: model)
    }
}

//: extension TalkingDanmuManager {
extension WithReactiveCompatible {
    /// 释放单利
    //: class func danmu_releaseAllResource() {
    class func viewResource() {
        //: if TalkingDanmuManager._instance != nil {
        if WithReactiveCompatible._instance != nil {
            //: TalkingDanmuManager._instance = nil
            WithReactiveCompatible._instance = nil
        }
    }

    /// 加入直播弹幕
    //: class func joinLiveRoomDanmu(groupId: String, announcementMsg: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    class func saveByMentalAct(groupId: String, announcementMsg: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
        V2TIMManager.sharedInstance().joinGroup(groupId, msg: nil) {
            //: printLog(message: "加入弹幕房间")
            printLog(message: (k_norMsg))
            //: if announcementMsg.count > 0 {
            if announcementMsg.count > 0 {
                //: TalkingDanmuManager.shared().showAnnouncementMsg(str: announcementMsg)
                WithReactiveCompatible.appearShould().edictEdit(str: announcementMsg)
            }
            //: completion?(true)
            completion?(true)

            //: } fail: { _, _ in
        } fail: { _, _ in
            //: if TalkingDanmuManager.shared().maxJoinRoom == 1 {
            if WithReactiveCompatible.appearShould().maxJoinRoom == 1 {
                //: TalkingDanmuManager.shared().maxJoinRoom = 0
                WithReactiveCompatible.appearShould().maxJoinRoom = 0
                //: joinLiveRoomDanmu(groupId: groupId, announcementMsg: "")
                saveByMentalAct(groupId: groupId, announcementMsg: "")
                //: } else {
            } else {
                //: TalkingDanmuManager.shared().func__showStatusBarErrorMsg(showMsg: "Failed to enter the chat room. Please try again later".localized)
                WithReactiveCompatible.appearShould().arcInfo(showMsg: String(bytes: k_writePath.reversed(), encoding: .utf8)!.localized)
            }
            //: completion?(false)
            completion?(false)
        }
    }

    /// 退出群聊弹幕
    //: class func qiutGroupDanmu(groupId: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    class func via(groupId: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: V2TIMManager.sharedInstance().quitGroup(groupId, succ: {
        V2TIMManager.sharedInstance().quitGroup(groupId, succ: {
            //: completion?(true)
            completion?(true)
            //: }, fail: { _, _ in
        }, fail: { _, _ in
            //: completion?(false)
            completion?(false)
            //: })
        })
    }
}

// MARK: - 发送接口

//: extension TalkingDanmuManager {
extension WithReactiveCompatible {
    /// 发送文本弹幕消息
    /// - Parameters:
    ///   - groupId: 弹幕群组id
    ///   - message: 消息内容
    ///   - toUid:   @用户的uid
    ///   - completion: 回调
    //: class func uploadToTextMsg(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
    class func disable(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "live/sendMsg"
        reqModel.requestPath = (String(k_succeedUrl))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["groupId"] = groupId
        dict[(String(kItemId))] = groupId
        //: dict["message"] = message
        dict[(kModeMessage.replacingOccurrences(of: "app", with: "g"))] = message
        //: if toUid?.count ?? 0 > 0 {
        if toUid?.count ?? 0 > 0 {
            //: dict["toUid"] = toUid
            dict[(String(kTouchTargetKey.suffix(5)))] = toUid
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }

    /// 语聊房发送文本弹幕消息
    /// - Parameters:
    ///   - groupId: 弹幕群组id
    ///   - message: 消息内容
    ///   - toUid:   @用户的uid
    ///   - completion: 回调
    //: class func voiceRoomSendTextMsg(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
    class func measurementRender(groupId: String, message: String, toUid: String? = "", completion: FinishBlock? = nil) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "party/sendMsg"
        reqModel.requestPath = (String(kRetName) + String(k_equalTitle.prefix(4)) + "sendMsg")
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["groupId"] = groupId
        dict[(String(kItemId))] = groupId
        //: dict["message"] = message
        dict[(kModeMessage.replacingOccurrences(of: "app", with: "g"))] = message
        //: if toUid?.count ?? 0 > 0 {
        if toUid?.count ?? 0 > 0 {
            //: dict["toUid"] = toUid
            dict[(String(kTouchTargetKey.suffix(5)))] = toUid
        }
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion?(succeed, result, errorModel)
            completion?(succeed, result, errorModel)
        }
    }
}
