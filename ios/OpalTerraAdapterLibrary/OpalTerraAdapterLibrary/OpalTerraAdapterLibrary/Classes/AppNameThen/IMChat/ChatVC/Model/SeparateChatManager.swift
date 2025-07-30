
//: Declare String Begin

/*: "msgInfo" :*/
fileprivate let kBottomStopName:[Character] = ["m","s","g","I","n","f","o"]

/*: "jumps" :*/
fileprivate let kVideoMakeValue:[Character] = ["j","u","m","p","s"]

/*: "uid" :*/
fileprivate let k_betweenListData:[Character] = ["u","i","d"]

/*: "roomId" :*/
fileprivate let k_currentUrl:[UInt8] = [0x52,0x4f,0x4f,0x4d,0x69,0x44]

private func valueModel(count num: UInt8) -> UInt8 {
    return num ^ 32
}

/*: "msgId" :*/
fileprivate let kDeleteName:[UInt8] = [0x24,0x2a,0x1e,0x0,0x1b]

fileprivate func toShared(label num: UInt8) -> UInt8 {
    let value = Int(num) + 73
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "time" :*/
fileprivate let k_withCellData:[UInt8] = [0x2,0x1f,0x1b,0x13]

private func typeObserver(result num: UInt8) -> UInt8 {
    return num ^ 118
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SeparateChatManager.swift
//  AbroadTalking
//
//  Created by young on 2023/4/12.
//

//: import UIKit
import UIKit

//: class TalkingGroupChatManager: NSObject {
class SeparateChatManager: NSObject {
    //: weak var chatRoomVC: TalkingGroupChatController?
    weak var chatRoomVC: PublishReactiveCompatible?
    //: @objc static let share = TalkingGroupChatManager()
    @objc static let share = SeparateChatManager()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

// MARK: - 处理@ 消息

//: extension TalkingGroupChatManager {
extension SeparateChatManager {
    /// 接收到@ 消息
    /// - Parameters:
    ///   - msg: 腾讯消息体
    ///   - extraInfo: "extra" 数据
    //: func receivedMentionMsg(msg: V2TIMMessage, extraInfo: [AnyHashable: Any]) {
    func lubricate(msg: V2TIMMessage, extraInfo: [AnyHashable: Any]) {
        //: let dict = JSON(extraInfo)
        let dict = JSON(extraInfo)
        //: let jumps = dict["msgInfo"]["jumps"].arrayValue
        let jumps = dict[(String(kBottomStopName))][(String(kVideoMakeValue))].arrayValue

        // 判断是否有@ 本人
        //: var atMe = false
        var atMe = false
        //: for dict in jumps {
        for dict in jumps {
            //: if dict["uid"].stringValue == DistanceAppManager.share.loginUid {
            if dict[(String(k_betweenListData))].stringValue == DistanceAppManager.share.loginUid {
                //: atMe = true
                atMe = true
                //: break
                break
            }
        }
        //: guard atMe == true else { return }
        guard atMe == true else { return }

        //: let sendTime = msg.timestamp.timeIntervalSince1970*1000
        let sendTime = msg.timestamp.timeIntervalSince1970 * 1000
        //: if UserTextMacroDefine.isGroupChat(msg.groupID) {
        if UserTextMacroDefine.worldQuery(msg.groupID) { // 家族
            //: } else {
        } else { // 公共聊天室
            //: guard let vc = chatRoomVC else { return }
            guard let vc = chatRoomVC else { return }
            //: let dict: [String: Any] = ["roomId": msg.groupID ?? "",
            let dict: [String: Any] = [String(bytes: k_currentUrl.map{valueModel(count: $0)}, encoding: .utf8)!: msg.groupID ?? "",
                                       //: "msgId": msg.msgID ?? "",
                                       String(bytes: kDeleteName.map{toShared(label: $0)}, encoding: .utf8)!: msg.msgID ?? "",
                                       //: "time": sendTime]
                                       String(bytes: k_withCellData.map{typeObserver(result: $0)}, encoding: .utf8)!: sendTime]
            //: vc.handleMentionMsg(info: dict)
            vc.atDomain(info: dict)
        }
    }
}
