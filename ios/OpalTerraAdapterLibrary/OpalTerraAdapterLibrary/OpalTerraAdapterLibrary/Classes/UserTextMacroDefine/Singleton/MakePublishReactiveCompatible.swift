
//: Declare String Begin

/*: "launchFromApns" :*/
fileprivate let kOpValue:[Character] = ["l","a","u","n","c","h","F","r","o","m","A","p","n","s"]

/*: "type" :*/
fileprivate let k_arrayUrl:[Character] = ["t","y","p","e"]

/*: "fromUid" :*/
fileprivate let k_blueLiveGestureFormat:String = "fromUidview icon list"

/*: "roomId" :*/
fileprivate let k_colorFormat:String = "roomIdself break"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakePublishReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/26.
//

//: import UIKit
import UIKit

// 推送跳转
//: enum ANPSPushType: String {
enum KeyCompatibleValue: String {
    //: case IM = "6"           // 私聊页
    case IM = "6" // 私聊页
    //: case Chat_Room = "7"    // 聊天室
    case Chat_Room = "7" // 聊天室
    //: case Calling = "11"     // 音视频通话
    case Calling = "11" // 音视频通话
    //: case User_Info = "12"   // 用户详情
    case User_Info = "12" // 用户详情
}

//: class TalkingAPNSManager: NSObject {
class MakePublishReactiveCompatible: NSObject {
    //: var APNSUserInfoStr = ""
    var APNSUserInfoStr = ""
    //: @objc dynamic var launchFromApns = false
    @objc dynamic var launchFromApns = false
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: @objc static let share = TalkingAPNSManager()
    @objc static let share = MakePublishReactiveCompatible()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    //: func func__listenAPNSInit() {
    func addToInit() {
        //: self.rx.observeWeakly(Bool.self, "launchFromApns")
        self.rx.observeWeakly(Bool.self, (String(kOpValue)))
            //: .subscribe(onNext: { (value) in
            .subscribe(onNext: { value in
                //: let valueBool = value ?? false
                let valueBool = value ?? false
                //: if valueBool {
                if valueBool {
                    //: self.func__actionWithPushInfo()
                    self.currentAction()
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }

    //: func func__actionWithPushInfo() {
    func currentAction() {
        //: if !APNSUserInfoStr.isEmptyString {
        if !APNSUserInfoStr.isEmptyString {
            //: let json = JSON(parseJSON: APNSUserInfoStr)
            let json = JSON(parseJSON: APNSUserInfoStr)
            //: let type = json["type"].stringValue
            let type = json[(String(k_arrayUrl))].stringValue
            //: let apnsType = ANPSPushType(rawValue: type)
            let apnsType = KeyCompatibleValue(rawValue: type)
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                //: switch(apnsType) {
                switch apnsType {
                //: case .IM:
                case .IM:
                    //: let fromUid = json["fromUid"].stringValue
                    let fromUid = json[(String(k_blueLiveGestureFormat.prefix(7)))].stringValue
                    //: AddReactiveCompatible.share.func__pushToPriveteChatVC(chatID: fromUid)
                    AddReactiveCompatible.share.tincture(chatID: fromUid)

                //: case .Chat_Room:
                case .Chat_Room:
                    //: let roomId = json["roomId"].stringValue
                    let roomId = json[(String(k_colorFormat.prefix(6)))].stringValue
                    //: AddReactiveCompatible.share.func__pushToGroupChat(groupId: roomId)
                    AddReactiveCompatible.share.digitizerLoadId(groupId: roomId)

                //: case .Calling:
                case .Calling:
                    //: break
                    break

                //: case .User_Info:
                case .User_Info:
                    //: let fromUid = json["fromUid"].stringValue
                    let fromUid = json[(String(k_blueLiveGestureFormat.prefix(7)))].stringValue
                    //: AddReactiveCompatible.share.func__pushToUserDetailVC(uid: fromUid)
                    AddReactiveCompatible.share.afterTo(uid: fromUid)

                //: case .none:
                case .none:
                    //: break
                    break
                }

                // 跳转后还原数据
                //: TalkingAPNSManager.share.APNSUserInfoStr = ""
                MakePublishReactiveCompatible.share.APNSUserInfoStr = ""
                //: TalkingAPNSManager.share.launchFromApns = false
                MakePublishReactiveCompatible.share.launchFromApns = false
            }
        }
    }
}
