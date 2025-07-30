
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kStateContainerTitle:[UInt8] = [0xf0,0xf5,0xf0,0xfb,0xaf,0xea,0xf6,0xeb,0xec,0xf9,0xc1,0xb0,0xa7,0xef,0xe8,0xfa,0xa7,0xf5,0xf6,0xfb,0xa7,0xe9,0xec,0xec,0xf5,0xa7,0xf0,0xf4,0xf7,0xf3,0xec,0xf4,0xec,0xf5,0xfb,0xec,0xeb]

fileprivate func dataConverter(value num: UInt8) -> UInt8 {
    let value = Int(num) + 121
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "System notification" :*/
fileprivate let k_cameraMsg:String = "Systplayer let"
fileprivate let k_mainFormat:String = "sizei"
fileprivate let kViewPath:String = "cactiontion"

/*: "http://static. :*/
fileprivate let kImageKey:[Character] = ["h","t","t","p",":","/","/"]
fileprivate let k_smartContent:String = "static.equal intimate input"

/*: .com/app/img/message/xitong-v2.png" :*/
fileprivate let k_textFillData:[UInt8] = [0x3a,0x77,0x7b,0x79,0x3b,0x75,0x64,0x64,0x3b,0x7d,0x79,0x73,0x3b,0x79,0x71,0x67,0x67,0x75,0x73,0x71,0x3b,0x6c,0x7d,0x60,0x7b,0x7a,0x73,0x39,0x62,0x26,0x3a,0x64,0x7a,0x73]

private func listColor(index num: UInt8) -> UInt8 {
    return num ^ 20
}

/*: "Customer Care Center" :*/
fileprivate let k_tempMessage:[Character] = ["C","u","s","t","o","m","e","r"," ","C","a","r"]
fileprivate let kCellLayerValue:String = "e let self in"
fileprivate let kViewKey:[Character] = ["C","e","n","t","e","r"]

/*: .com/app/img/message/cs.png" :*/
fileprivate let k_nameTitle:String = "let let true like in.com/ap"
fileprivate let kPathTitle:String = "size to viewp/img"
fileprivate let kViewMessage:String = "age/cscolor super any image"

/*: "Public Chat Room" :*/
fileprivate let k_atUrl:String = "Publisave self reply data"
fileprivate let kKitStr:String = "show pop back self repeatat Room"

/*: "icon_chats_pcr" :*/
fileprivate let k_imageData:String = "make indexicon_"
fileprivate let k_createCenterBottomStr:String = "model user let let_pcr"

/*: "New friends" :*/
fileprivate let k_userName:String = "color extension makeNew frien"
fileprivate let kDelayName:String = "dscreen"

/*: "icon_chats_mm" :*/
fileprivate let k_styleArrayMsg:[Character] = ["i","c","o","n","_","c","h","a","t","s","_","m","m"]

/*: " customElem.data is error" :*/
fileprivate let k_scaleId:String = "else with equal cust"
fileprivate let k_managerUrl:[Character] = ["a","t","a"," ","i"]
fileprivate let k_applicationValue:String = "output value row record touchs error"

/*: "extra" :*/
fileprivate let kEnableContent:[Character] = ["e","x","t","r","a"]

/*: "msgInfo" :*/
fileprivate let k_imageName:String = "msgInfostop model as to game"

/*: "messageType" :*/
fileprivate let k_equalViewMsg:[Character] = ["m","e","s","s","a","g","e","T","y","p","e"]

/*: "msgType" :*/
fileprivate let k_formalExclusiveUrl:String = "corner remove voice returnmsgTyp"
fileprivate let k_listFormat:String = "bottom"

/*: "tips" :*/
fileprivate let k_sourceTitle:[Character] = ["t","i","p","s"]

/*: "totalIntimate" :*/
fileprivate let kExtentHiddenValue:[Character] = ["t","o","t","a","l","I","n","t","i","m","a","t","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewConversationModel.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/9.
//

//: import UIKit
import UIKit

//: public class TalkingConversationModel: NSObject {
public class ViewConversationModel: NSObject {
    //: var type: V2TIMConversationType?
    var type: V2TIMConversationType?
    //: var userID = ""         // 如果会话类型为 C2C 单聊，userID 会存储对方的用户ID，否则为 ni
    var userID = "" // 如果会话类型为 C2C 单聊，userID 会存储对方的用户ID，否则为 ni
    //: var sender = ""         // 消息发送者ID
    var sender = "" // 消息发送者ID
    //: var groupID = ""        // 如果会话类型为群聊，groupID 会存储当前群的群 ID，否则为 nil
    var groupID = "" // 如果会话类型为群聊，groupID 会存储当前群的群 ID，否则为 nil
    //: var groupType = ""      // 如果会话类型为群聊，groupType 为当前群类型
    var groupType = "" // 如果会话类型为群聊，groupType 为当前群类型
    //: var targetId = ""
    var targetId = ""
    //: var conversationID = "" // 会话唯一 ID，C2C 单聊组成方式为 c2c_userID，群聊组成方式为 group_groupID
    var conversationID = "" // 会话唯一 ID，C2C 单聊组成方式为 c2c_userID，群聊组成方式为 group_groupID

    //: var showName = ""
    var showName = ""
    //: var faceUrl = ""
    var faceUrl = ""
    //: var unreadCount: Int = 0
    var unreadCount: Int = 0 // 未读数
    //: var orderKey: Int = 0
    var orderKey: Int = 0 // 排序
    //: var isPinned = false
    var isPinned = false // 是否置顶
    //: var isShowMsgUnread = false
    var isShowMsgUnread = false // 会话中最后一条消息是否未读

    //: var draftText = ""      // 草稿信息
    var draftText = "" // 草稿信息
    //: var draftTimestamp: NSDate?
    var draftTimestamp: NSDate? // 草稿编辑时间，草稿设置的时候自动生成

    //: var onlyOneRoomId = "" // 聊天室ID,如果只有一个聊天室，则返回此字段
    var onlyOneRoomId = "" // 聊天室ID,如果只有一个聊天室，则返回此字段
    //: var num = 0
    var num = 0 // 聊天室当前在线人数

    //: var hasTimestamp = false
    var hasTimestamp = false // swift 解包
    //: var timestamp: NSDate?
    var timestamp: NSDate? // 会话中最后一条消息的时间
    //: var listShowMessage: V2TIMMessage?
    var listShowMessage: V2TIMMessage? // 最后一条消息
    //: var gj_userInfo: HumankindThen?
    var gj_userInfo: HumankindThen? // 用户信息
    //: var chatType: TalkingIMChatType = .unDefined
    var chatType: TalkingIMChatType = .unDefined
    //: var listOnlineStatus = 0
    var listOnlineStatus = 0 // 记录是否在线;1=在线,0=不在线（自定义字段）
    //: var isNewUser = false
    var isNewUser = false // 表示是否是新用户（自定义字段）
    //: var ismoreAPAuto = false
    var ismoreAPAuto = false // 更多会话认证
    //: var totalIntimate = 0
    var totalIntimate = 0 // 与当前用户的亲密值
    //: var userStatus    = 1
    var userStatus = 1 // 用户状态  1正常2被禁言3被封号5被拉黑

    //: override init() {
    override init() {
        //: super.init()
        super.init()
    }

    //: init(conv: V2TIMConversation) {
    init(conv: V2TIMConversation) {
        //: super.init()
        super.init()
        //: self.type = conv.type
        self.type = conv.type
        //: self.userID     = conv.userID ?? ""
        self.userID = conv.userID ?? ""
        //: self.sender     = conv.lastMessage?.sender ?? ""
        self.sender = conv.lastMessage?.sender ?? ""
        //: self.groupID    = conv.groupID ?? ""
        self.groupID = conv.groupID ?? ""
        //: self.groupType  = conv.groupType ?? ""
        self.groupType = conv.groupType ?? ""
        //: self.targetId   = self.userID.count > 0 ? self.userID:self.groupID
        self.targetId = self.userID.count > 0 ? self.userID : self.groupID
        //: self.conversationID = conv.conversationID
        self.conversationID = conv.conversationID
        //: self.showName = conv.showName
        self.showName = conv.showName
        //: self.faceUrl = conv.faceUrl ?? ""
        self.faceUrl = conv.faceUrl ?? ""
        //: self.unreadCount = Int(conv.unreadCount)
        self.unreadCount = Int(conv.unreadCount)
        //: self.orderKey = Int(conv.orderKey)
        self.orderKey = Int(conv.orderKey)
        //: self.isPinned = conv.isPinned
        self.isPinned = conv.isPinned
        //: if conv.lastMessage?.timestamp != nil {
        if conv.lastMessage?.timestamp != nil {
            //: self.hasTimestamp = true
            self.hasTimestamp = true
            //: self.timestamp = conv.lastMessage?.timestamp as NSDate?
            self.timestamp = conv.lastMessage?.timestamp as NSDate?
        }
        //: self.draftText = conv.draftText ?? ""
        self.draftText = conv.draftText ?? ""
        //: self.isShowMsgUnread = (!(conv.lastMessage?.isSelf ?? true) && conv.unreadCount > 0)
        self.isShowMsgUnread = (!(conv.lastMessage?.isSelf ?? true) && conv.unreadCount > 0)
        //: if conv.type == .C2C {
        if conv.type == .C2C {
            //: self.chatType = .private
            self.chatType = .private
            //: if conv.userID == UserTextMacroDefine.getXiaoMiID() {
            if conv.userID == UserTextMacroDefine.publicationRequest() {
                //: self.chatType = .system
                self.chatType = .system
                //: } else if conv.userID == UserTextMacroDefine.getCustomerServiceID() {
            } else if conv.userID == UserTextMacroDefine.lengthId() {
                //: self.chatType = .service
                self.chatType = .service
            }

            //: } else {
        } else {
            //: self.chatType = .group
            self.chatType = .group
        }
        //: if conv.lastMessage != nil {
        if conv.lastMessage != nil {
            //: if self.func__checkMsgCanShow(msg: conv.lastMessage) {
            if self.bridge(msg: conv.lastMessage) {
                //: self.listShowMessage = conv.lastMessage
                self.listShowMessage = conv.lastMessage
            }
        }
        //: if self.listShowMessage != nil {
        if self.listShowMessage != nil {
            //: self.func__updateLastShowMsg()
            self.viewRecord()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kStateContainerTitle.map{dataConverter(value: $0)}, encoding: .utf8)!)
    }
}

// MARK: - 获取占位model

//: extension TalkingConversationModel {
extension ViewConversationModel {
    /// 获取占位model
    /// - Parameter chatType: model类型
    /// - Returns: model
    //: class func getPlaceholderModel(chatType: TalkingIMChatType) -> TalkingConversationModel {
    class func toForm(chatType: TalkingIMChatType) -> ViewConversationModel {
        //: let model = TalkingConversationModel()
        let model = ViewConversationModel()
        //: model.chatType = chatType
        model.chatType = chatType
        //: if chatType == .system {
        if chatType == .system { // 系统通知
            //: model.userID = UserTextMacroDefine.getXiaoMiID()
            model.userID = UserTextMacroDefine.publicationRequest()
            //: model.targetId = UserTextMacroDefine.getXiaoMiID()
            model.targetId = UserTextMacroDefine.publicationRequest()
            //: model.showName = "System notification".localized
            model.showName = (String(k_cameraMsg.prefix(4)) + "em noti" + k_mainFormat.replacingOccurrences(of: "size", with: "f") + kViewPath.replacingOccurrences(of: "action", with: "a")).localized
            //: model.faceUrl = "http://static.\(ReplaceUrlDomain).com/app/img/message/xitong-v2.png"
            model.faceUrl = (String(kImageKey) + String(k_smartContent.prefix(7))) + "\(main_keyValue)" + String(bytes: k_textFillData.map{listColor(index: $0)}, encoding: .utf8)!

            //: } else if chatType == .service {
        } else if chatType == .service { // 官方客服
            //: model.userID = UserTextMacroDefine.getCustomerServiceID()
            model.userID = UserTextMacroDefine.lengthId()
            //: model.targetId = UserTextMacroDefine.getCustomerServiceID()
            model.targetId = UserTextMacroDefine.lengthId()
            //: model.showName = "Customer Care Center".localized
            model.showName = (String(k_tempMessage) + String(kCellLayerValue.prefix(2)) + String(kViewKey)).localized
            //: model.faceUrl = "http://static.\(ReplaceUrlDomain).com/app/img/message/cs.png"
            model.faceUrl = (String(kImageKey) + String(k_smartContent.prefix(7))) + "\(main_keyValue)" + (String(k_nameTitle.suffix(7)) + String(kPathTitle.suffix(5)) + "/mess" + String(kViewMessage.prefix(6)) + ".png")

            //: } else if chatType == .group {
        } else if chatType == .group { // 公共聊天室
            //: model.showName = "Public Chat Room".localized
            model.showName = (String(k_atUrl.prefix(5)) + "c Ch" + String(kKitStr.suffix(7))).localized
            //: model.faceUrl = "icon_chats_pcr"
            model.faceUrl = (String(k_imageData.suffix(5)) + "chats" + String(k_createCenterBottomStr.suffix(4)))

            //: } else if chatType == .moreMsg {
        } else if chatType == .moreMsg { // 更多消息
            //: model.showName = "New friends".localized
            model.showName = (String(k_userName.suffix(9)) + kDelayName.replacingOccurrences(of: "screen", with: "s")).localized
            //: model.faceUrl = "icon_chats_mm"
            model.faceUrl = (String(k_styleArrayMsg))
        }

        //: return model
        return model
    }
}

//: extension TalkingConversationModel {
extension ViewConversationModel {
    //: func func__updateLastShowMsg() {
    func viewRecord() {
        //: if self.type == .C2C {
        if self.type == .C2C {
            //: V2TIMManager.sharedInstance().getC2CHistoryMessageList(self.userID, count: 10, lastMsg: nil) { msgs in
            V2TIMManager.sharedInstance().getC2CHistoryMessageList(self.userID, count: 10, lastMsg: nil) { msgs in
                //: guard let msgsList: [V2TIMMessage] = msgs  else {
                guard let msgsList: [V2TIMMessage] = msgs else {
                    //: return
                    return
                }
                //: for msg in msgsList {
                for msg in msgsList {
                    //: if self.func__checkMsgCanShow(msg: msg) {
                    if self.bridge(msg: msg) {
                        //: self.listShowMessage = msg
                        self.listShowMessage = msg
                        //: if msg.timestamp != nil {
                        if msg.timestamp != nil {
                            //: self.timestamp = msg.timestamp as NSDate?
                            self.timestamp = msg.timestamp as NSDate?
                            //: self.hasTimestamp = true
                            self.hasTimestamp = true
                        }
                        //: self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        //: break
                        break
                    }
                }
                //: } fail: { code, des in
            } fail: { _, _ in
            }
            //: } else {
        } else {
            //: V2TIMManager.sharedInstance().getGroupHistoryMessageList(self.groupID, count: 10, lastMsg: nil) { msgs in
            V2TIMManager.sharedInstance().getGroupHistoryMessageList(self.groupID, count: 10, lastMsg: nil) { msgs in
                //: guard let msgsList: [V2TIMMessage] = msgs  else {
                guard let msgsList: [V2TIMMessage] = msgs else {
                    //: return
                    return
                }
                //: for msg in msgsList {
                for msg in msgsList {
                    //: if self.func__checkMsgCanShow(msg: msg) {
                    if self.bridge(msg: msg) {
                        //: self.listShowMessage = msg
                        self.listShowMessage = msg
                        //: if msg.timestamp != nil {
                        if msg.timestamp != nil {
                            //: self.timestamp = msg.timestamp as NSDate?
                            self.timestamp = msg.timestamp as NSDate?
                            //: self.hasTimestamp = true
                            self.hasTimestamp = true
                        }
                        //: self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        self.isShowMsgUnread = (!msg.isSelf && !msg.isRead)
                        //: break
                        break
                    }
                }
                //: } fail: { code, des in
            } fail: { _, _ in
            }
        }
    }

    //: func func__checkMsgCanShow(msg: V2TIMMessage) -> Bool {
    func bridge(msg: V2TIMMessage) -> Bool {
        //: guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
        guard let extra = String(data: msg.customElem.data, encoding: .utf8) else {
            //: printLog(message: " customElem.data is error")
            printLog(message: (String(k_scaleId.suffix(5)) + "omElem.d" + String(k_managerUrl) + String(k_applicationValue.suffix(7))))
            //: return false
            return false
        }
        //: let json = JSON(parseJSON: extra)
        let json = JSON(parseJSON: extra)
        //: let extraDic = json["extra"]
        let extraDic = json[(String(kEnableContent))]
        //: let msgInfo = extraDic["msgInfo"]
        let msgInfo = extraDic[(String(k_imageName.prefix(7)))]
        //: var messageType = extraDic["messageType"].intValue
        var messageType = extraDic[(String(k_equalViewMsg))].intValue
        //: let msgType = msgInfo["msgType"].stringValue
        let msgType = msgInfo[(String(k_formalExclusiveUrl.suffix(6)) + k_listFormat.replacingOccurrences(of: "bottom", with: "e"))].stringValue
        //: if messageType == 0 {
        if messageType == 0 {
            //: messageType = msgInfo["messageType"].intValue
            messageType = msgInfo[(String(k_equalViewMsg))].intValue
        }
        //: if (!msgType.isEmptyString && msgType == "tips") || messageType == 15 || messageType == 17 {
        if (!msgType.isEmptyString && msgType == (String(k_sourceTitle))) || messageType == 15 || messageType == 17 {
            //: return false
            return false
        }
        //: return true
        return true
    }

    //: func func__updateLastConvModel(conv: V2TIMConversation) {
    func toShow(conv: V2TIMConversation) {
        //: self.draftText = conv.draftText ?? ""
        self.draftText = conv.draftText ?? ""
        //: self.orderKey = Int(conv.orderKey)
        self.orderKey = Int(conv.orderKey)
        //: self.unreadCount = Int(conv.unreadCount)
        self.unreadCount = Int(conv.unreadCount)

        //: if conv.lastMessage != nil {
        if conv.lastMessage != nil {
            //: if self.func__checkMsgCanShow(msg: conv.lastMessage) {
            if self.bridge(msg: conv.lastMessage) {
                //: self.listShowMessage = conv.lastMessage
                self.listShowMessage = conv.lastMessage
                //: if conv.lastMessage.timestamp != nil {
                if conv.lastMessage.timestamp != nil {
                    //: self.timestamp = conv.lastMessage.timestamp as NSDate?
                    self.timestamp = conv.lastMessage.timestamp as NSDate?
                    //: self.hasTimestamp = true
                    self.hasTimestamp = true
                }
                //: self.sender = conv.lastMessage.sender
                self.sender = conv.lastMessage.sender
                //: self.isShowMsgUnread = (!conv.lastMessage.isSelf && conv.unreadCount > 0)
                self.isShowMsgUnread = (!conv.lastMessage.isSelf && conv.unreadCount > 0)
                //: self.updateIntimateTool(conv: conv)
                self.magnitudeimate(conv: conv)
                //: } else {
            } else {
                //: self.func__updateLastShowMsg()
                self.viewRecord()
            }
        }
    }
}

/// 亲密度
//: extension TalkingConversationModel {
extension ViewConversationModel {
    //: private func updateIntimateTool(conv: V2TIMConversation) {
    private func magnitudeimate(conv: V2TIMConversation) {
        /// 新消息会话变更时，获取亲密度
        //: let data = conv.lastMessage!
        let data = conv.lastMessage!
        //: let dic = DistrictManagerReactiveCompatible.parseTXMessageData(data: data.customElem.data)
        let dic = DistrictManagerReactiveCompatible.productData(data: data.customElem.data)
        //: let jsonDic = JSON(dic)
        let jsonDic = JSON(dic)
        //: let extra = jsonDic["extra"].dictionary
        let extra = jsonDic[(String(kEnableContent))].dictionary
        //: let msgInfo = extra?["msgInfo"]?.dictionary
        let msgInfo = extra?[(String(k_imageName.prefix(7)))]?.dictionary
        //: if let totalIntimate = msgInfo?["totalIntimate"]?.int {
        if let totalIntimate = msgInfo?[(String(kExtentHiddenValue))]?.int {
            //: if let model = DBUserInfoManager.cache_getCachedUserInfo(targetId: self.userID) {
            if let model = AppNameThen.imageBar(targetId: self.userID) {
                /// 获取消息为最新时
                //: let time = Int(data.timestamp.timeIntervalSince1970)
                let time = Int(data.timestamp.timeIntervalSince1970)
                //: if time > model.intimateTime {
                if time > model.intimateTime {
                    //: self.totalIntimate = totalIntimate
                    self.totalIntimate = totalIntimate
                    /// 更新
                    //: DBUserInfoManager.cache_updateIntimate(with: userID, intimate: totalIntimate, currTime: time)
                    AppNameThen.equalBlock(with: userID, intimate: totalIntimate, currTime: time)
                    //: } else {
                } else {
                    //: self.totalIntimate = model.intimate
                    self.totalIntimate = model.intimate
                }
                //: } else {
            } else {
                //: self.totalIntimate = totalIntimate
                self.totalIntimate = totalIntimate
            }
        }
    }
}
