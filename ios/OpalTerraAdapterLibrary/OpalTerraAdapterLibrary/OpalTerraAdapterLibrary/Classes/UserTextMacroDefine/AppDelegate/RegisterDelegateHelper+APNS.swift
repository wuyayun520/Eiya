
//: Declare String Begin

/*: "%02hhx" :*/
fileprivate let kViewValue:[Character] = ["%"]
fileprivate let k_dataFormat:String = "edge name02hhx"

/*: "APNS Token =  :*/
fileprivate let k_rowModelActionData:[Character] = ["A","P","N","S"," "]
fileprivate let kColorValue:[Character] = ["T","o","k","e","n"," ","="," "]

/*: "APNS Token Error:  :*/
fileprivate let kEqualMarginForMessage:String = "APblock"
fileprivate let kModelUrl:[Character] = ["e","n"," ","E","r","r","o","r",":"," "]

/*: ." :*/
fileprivate let k_infoTitle:String = "."

/*: "token =  :*/
fileprivate let k_nameValue:String = "data apptoken = "

/*: "extra" :*/
fileprivate let kDataName:[Character] = ["e","x","t","r","a"]

/*: "Unable to register for remote notifications: :*/
fileprivate let k_tempFormat:[UInt8] = [0xe7,0xdc,0xd3,0xd0,0xde,0xd7,0x92,0xc6,0xdd,0x92,0xc0,0xd7,0xd5,0xdb,0xc1,0xc6,0xd7,0xc0,0x92,0xd4,0xdd,0xc0,0x92,0xc0,0xd7,0xdf,0xdd,0xc6,0xd7,0x92,0xdc,0xdd,0xc6,0xdb,0xd4,0xdb,0xd1,0xd3,0xc6,0xdb,0xdd,0xdc,0xc1,0x88]

private func indexVar(message num: UInt8) -> UInt8 {
    return num ^ 178
}

/*: "token" :*/
fileprivate let kPokeTitle:[UInt8] = [0x1b,0x16,0x12,0xc,0x15]

fileprivate func labelAwake(line num: UInt8) -> UInt8 {
    let value = Int(num) - 167
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "FCMToken" :*/
fileprivate let kTableStr:[Character] = ["F","C","M","T","o","k","e","n"]

/*: _LocalPush" :*/
fileprivate let k_imageValue:[Character] = ["_","L"]
fileprivate let kWithUrl:[Character] = ["o","c","a","l","P","u","s","h"]

/*: "identifier" :*/
fileprivate let kHundredData:String = "minient"
fileprivate let kObjectName:String = "moreier"

/*: "fcm_options" :*/
fileprivate let kApplicationStr:String = "message"
fileprivate let kMaleValue:String = "point make let mycm_opt"

/*: "image" :*/
fileprivate let kTotalimateMsg:[UInt8] = [0x79,0x7d,0x71,0x77,0x75]

fileprivate func statisticalTable(finish num: UInt8) -> UInt8 {
    let value = Int(num) + 240
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "本地推送通知 -- 用户未授权(.notDetermined)" :*/
fileprivate let k_imageKey:[UInt8] = [0xe,0x74,0x44,0xd,0x74,0x58,0xe,0x66,0x40,0x1,0x68,0x69,0x1,0x68,0x72,0xf,0x77,0x4d,0xc8,0xc5,0xc5,0xc8,0xf,0x7c,0x40,0xe,0x60,0x5f,0xe,0x74,0x42,0xe,0x66,0x60,0xe,0x75,0x6b,0xc0,0xc6,0x86,0x87,0x9c,0xac,0x8d,0x9c,0x8d,0x9a,0x85,0x81,0x86,0x8d,0x8c,0xc1]

private func labelTime(view num: UInt8) -> UInt8 {
    return num ^ 232
}

/*: "本地推送通知 -- 用户未授权(.denied)" :*/
fileprivate let k_afterMsg:String = "send推送通知"
fileprivate let kBackgroundName:String = "用from授"
fileprivate let kObjectKey:String = "ed)hidden render app"

/*: "本地推送通知 -- 用户未授权(.ephemeral)" :*/
fileprivate let k_itemName:String = "本\u{5730}推\u{9001}"
fileprivate let k_bottomViewToKey:[Character] = ["户","未","授","\u{6743}","(",".","e","p","h","e","m","e","r","a","l",")"]

/*: "本地推送通知 -- 用户未授权" :*/
fileprivate let kMakeTopContent:String = "\u{672c}\u{5730}推送通"
fileprivate let kSharedStr:[Character] = [" ","用","户","未","授","权"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RegisterDelegateHelper+APNS.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/23.
//

//: import FirebaseCore
import FirebaseCore
//: import FirebaseMessaging
import FirebaseMessaging
//: import Foundation
import Foundation
//: import UserNotifications
import UserNotifications

//: public extension AppDelegateHelper {
public extension RegisterDelegateHelper {
    /// 成功的回调
    //: class func application(didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
    class func view(didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        //: let deviceStr = deviceToken.map { String(format: "%02hhx", $0) }.joined()
        let deviceStr = deviceToken.map { String(format: "%02hhx", $0) }.joined()
        //: Messaging.messaging().apnsToken = deviceToken
        Messaging.messaging().apnsToken = deviceToken
        //: printLog(message: "APNS Token = \(deviceStr)")
        printLog(message: (String(k_rowModelActionData) + String(kColorValue)) + "\(deviceStr)")
        //: Messaging.messaging().token { token, error in
        Messaging.messaging().token { token, error in
            //: if let error = error {
            if let error = error {
                //: UploadLogTool.writeLog(msg: "APNS Token Error: \(error).")
                UploadDisplayThen.makeSelected(msg: (kEqualMarginForMessage.replacingOccurrences(of: "block", with: "NS") + " Tok" + String(kModelUrl)) + "\(error).")
                //: } else if let token = token {
            } else if let token = token {
                //: printLog(message: "token = \(token)")
                printLog(message: (String(k_nameValue.suffix(8))) + "\(token)")
            }
        }
    }

    /// 收到远程推送（kill app）
    //: class func application(didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
    class func tipNotification(didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
        //: Messaging.messaging().appDidReceiveMessage(userInfo)
        Messaging.messaging().appDidReceiveMessage(userInfo)
        //: if UIApplication.shared.applicationState != .active {
        if UIApplication.shared.applicationState != .active {
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: if userInfo.keys.contains("extra") {
                if userInfo.keys.contains((String(kDataName))) {
                    //: let extraStr = userInfo["extra"] as? String ?? ""
                    let extraStr = userInfo[(String(kDataName))] as? String ?? ""
                    //: TalkingAPNSManager.share.APNSUserInfoStr = extraStr
                    MakePublishReactiveCompatible.share.APNSUserInfoStr = extraStr
                    //: TalkingAPNSManager.share.launchFromApns = true
                    MakePublishReactiveCompatible.share.launchFromApns = true
                }
            }
        }
    }

    /// 失败的回调
    //: class func application(didFailToRegisterForRemoteNotificationsWithError error: Error) {
    class func with(didFailToRegisterForRemoteNotificationsWithError error: Error) {
        //: printLog(message: "Unable to register for remote notifications:\(error.localizedDescription)")
        printLog(message: String(bytes: k_tempFormat.map{indexVar(message: $0)}, encoding: .utf8)! + "\(error.localizedDescription)")
    }

    /// 点击消息（app运行中）
    //: class func userNotificationCenter(didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
    class func alongHandler(didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        //: if UIApplication.shared.applicationState == .active {
        if UIApplication.shared.applicationState == .active {
            //: TalkingAPNSManager.share.APNSUserInfoStr = ""
            MakePublishReactiveCompatible.share.APNSUserInfoStr = ""
            //: TalkingAPNSManager.share.launchFromApns = false
            MakePublishReactiveCompatible.share.launchFromApns = false

            //: } else {
        } else {
            //: let userInfo = response.notification.request.content.userInfo
            let userInfo = response.notification.request.content.userInfo
            //: if userInfo.keys.contains("extra") {
            if userInfo.keys.contains((String(kDataName))) {
                //: let extraStr = userInfo["extra"] as? String ?? ""
                let extraStr = userInfo[(String(kDataName))] as? String ?? ""
                //: TalkingAPNSManager.share.APNSUserInfoStr = extraStr
                MakePublishReactiveCompatible.share.APNSUserInfoStr = extraStr
                //: TalkingAPNSManager.share.launchFromApns = true
                MakePublishReactiveCompatible.share.launchFromApns = true
            }
        }

        //: completionHandler()
        completionHandler()
    }

    /// MessagingDelegate
    //: class func messaging(didReceiveRegistrationToken fcmToken: String?) {
    class func stemReceive(didReceiveRegistrationToken fcmToken: String?) {
        //: let dataDict: [String: String] = ["token": fcmToken ?? ""]
        let dataDict: [String: String] = [String(bytes: kPokeTitle.map{labelAwake(line: $0)}, encoding: .utf8)!: fcmToken ?? ""]
        //: NotificationCenter.default.post(
        NotificationCenter.default.post(
            //: name: Notification.Name("FCMToken"),
            name: Notification.Name((String(kTableStr))),
            //: object: nil,
            object: nil,
            //: userInfo: dataDict
            userInfo: dataDict
        )
    }
}

// MARK: - 本地推送

//: extension AppDelegateHelper {
extension RegisterDelegateHelper {
    /// 构建通知内容，发送本地通知
    /// - Parameters:
    ///   - uid: 用户Id（用于identifier）
    ///   - title: 标题
    ///   - body: 内容
    ///   - imageUrl: 图片地址
    //: class func pushLocalNotification(uid: String? = nil,
    class func equalClick(uid: String? = nil,
                          //: title: String? = nil,
                          title: String? = nil,
                          //: body: String,
                          body: String,
                          //: imageUrl: String? = nil) {
                          imageUrl: String? = nil)
    {
        //: UNUserNotificationCenter.current().getNotificationSettings { settings in
        UNUserNotificationCenter.current().getNotificationSettings { settings in
            //: switch settings.authorizationStatus {
            switch settings.authorizationStatus {
            //: case .provisional, .authorized:
            case .provisional, .authorized: // 已授权，发送本地推送通知
                //: let content = UNMutableNotificationContent()
                let content = UNMutableNotificationContent()
                //: content.title = title ?? ""
                content.title = title ?? ""
                //: content.body = body
                content.body = body
                //: content.sound = UNNotificationSound.default
                content.sound = UNNotificationSound.default
                //: let identifier = (uid != nil) ? uid:"\(AppName)_LocalPush"
                let identifier = (uid != nil) ? uid : "\(kAddData)" + (String(k_imageValue) + String(kWithUrl))
                //: let userInfo = ["identifier": identifier!] as [String: Any]
                let userInfo = [(kHundredData.replacingOccurrences(of: "mini", with: "id") + kObjectName.replacingOccurrences(of: "more", with: "if")): identifier!] as [String: Any]
                //: content.userInfo = userInfo
                content.userInfo = userInfo
                //: guard let imgStr = imageUrl else {
                guard let imgStr = imageUrl else {
                    //: local_notificationPush(content)
                    upTitle(content)
                    //: return
                    return
                }
                /// 带图片的本地通知
                //: let newStr = imgStr.replacingOccurrences(of: UrlDomin.urlAes256Decrypt(), with: ReplaceUrlDomain)
                let newStr = imgStr.replacingOccurrences(of: data_statusText.doingApp(), with: main_keyValue)
                //: content.userInfo["fcm_options"] = ["image": newStr]
                content.userInfo[(kApplicationStr.replacingOccurrences(of: "message", with: "f") + String(kMaleValue.suffix(6)) + "ions")] = [String(bytes: kTotalimateMsg.map{statisticalTable(finish: $0)}, encoding: .utf8)!: newStr]
                //: FIRMessagingExtensionHelper().populateNotificationContent(content) { content in
                FIRMessagingExtensionHelper().populateNotificationContent(content) { content in
                    //: local_notificationPush(content)
                    upTitle(content)
                }

            //: case .notDetermined:
            case .notDetermined:
                //: printLog(message: "本地推送通知 -- 用户未授权(.notDetermined)")
                printLog(message: String(bytes: k_imageKey.map{labelTime(view: $0)}, encoding: .utf8)!)
            //: case .denied:
            case .denied:
                //: printLog(message: "本地推送通知 -- 用户未授权(.denied)")
                printLog(message: (k_afterMsg.replacingOccurrences(of: "send", with: "本地") + " -- " + kBackgroundName.replacingOccurrences(of: "from", with: "户未") + "权(.deni" + String(kObjectKey.prefix(3))))
            //: case .ephemeral:
            case .ephemeral:
                //: printLog(message: "本地推送通知 -- 用户未授权(.ephemeral)")
                printLog(message: (k_itemName + "\u{901a}知 -- 用" + String(k_bottomViewToKey)))
            //: @unknown default:
            @unknown default:
                //: printLog(message: "本地推送通知 -- 用户未授权")
                printLog(message: (kMakeTopContent + "知 --" + String(kSharedStr)))
            }
        }
    }

    /// 根据content发送本地通知
    /// - Parameter content: 通知内容
    //: private class func local_notificationPush(_ content: UNNotificationContent) {
    private class func upTitle(_ content: UNNotificationContent) {
        //: let time = Date(timeIntervalSinceNow: 1).timeIntervalSinceNow
        let time = Date(timeIntervalSinceNow: 1).timeIntervalSinceNow
        //: let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        //: if let identifier = content.userInfo["identifier"] as? String {
        if let identifier = content.userInfo[(kHundredData.replacingOccurrences(of: "mini", with: "id") + kObjectName.replacingOccurrences(of: "more", with: "if"))] as? String {
            //: let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
            let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
            //: UNUserNotificationCenter.current().add(request) { _ in
            UNUserNotificationCenter.current().add(request) { _ in
            }
        }
    }

    /// 移除已经展示的推送
    /// - Parameter identifier: 通知标识符（nil：移除所有）
    //: class func local_removeDeliveredNotification(identifier: String?) {
    class func local(identifier: String?) {
        //: guard let idf = identifier else {
        guard let idf = identifier else {
            //: UNUserNotificationCenter.current().removeAllDeliveredNotifications()
            UNUserNotificationCenter.current().removeAllDeliveredNotifications()
            //: return
            return
        }
        //: UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [idf])
        UNUserNotificationCenter.current().removeDeliveredNotifications(withIdentifiers: [idf])
    }
}
