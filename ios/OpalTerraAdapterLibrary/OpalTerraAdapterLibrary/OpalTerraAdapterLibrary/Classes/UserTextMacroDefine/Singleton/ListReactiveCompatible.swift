
//: Declare String Begin

/*: "clickStarProjectpop-upsCancel" :*/
fileprivate let k_makeStr:[UInt8] = [0x78,0x77,0x72,0x78,0x70,0x48,0x6f,0x7a,0x69,0x4b,0x69,0x74,0x71,0x7e,0x78,0x6f,0x6b,0x74,0x6b,0x36,0x6e,0x6b,0x68,0x58,0x7a,0x75,0x78,0x7e,0x77]

private func frameHidden(by num: UInt8) -> UInt8 {
    return num ^ 27
}

/*: "2ymw6y" :*/
fileprivate let k_sourceMsg:[Character] = ["2","y","m","w","6","y"]

/*: "clickStarProjectpop-upsFindoutmore" :*/
fileprivate let k_makePath:[UInt8] = [0x65,0x72,0x6f,0x6d,0x74,0x75,0x6f,0x64,0x6e,0x69,0x46,0x73,0x70,0x75,0x2d,0x70,0x6f,0x70,0x74,0x63,0x65,0x6a,0x6f,0x72,0x50,0x72,0x61,0x74,0x53,0x6b,0x63,0x69,0x6c,0x63]

/*: "dof0gn" :*/
fileprivate let k_lastKey:String = "DOF0G"
fileprivate let k_videoStatusMsg:String = "N"

/*: "In app purchase" :*/
fileprivate let k_textContent:String = "value"
fileprivate let k_equalFormat:[Character] = ["n"," ","a","p","p"," ","p","u","r","c","h","a","s","e"]

/*: "m93ixa" :*/
fileprivate let k_collectionStr:[Character] = ["m","9","3","i","x","a"]

/*: "Install" :*/
fileprivate let kProgressName:[UInt8] = [0x75,0x52,0x4f,0x48,0x5d,0x50,0x50]

private func pinView(equal num: UInt8) -> UInt8 {
    return num ^ 60
}

/*: "xyxupw" :*/
fileprivate let k_disableKey:[Character] = ["x","y","x","u","p","w"]

/*: "RegisterSuccess" :*/
fileprivate let k_tableValue:[UInt8] = [0x97,0xaa,0xac,0xae,0xb8,0xb9,0xaa,0xb7,0x98,0xba,0xa8,0xa8,0xaa,0xb8,0xb8]

fileprivate func filePath(model num: UInt8) -> UInt8 {
    let value = Int(num) - 69
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "u5xyxq" :*/
fileprivate let k_viewUrl:[Character] = ["u","5","x","y","x","q"]

/*: "subscribe_sus" :*/
fileprivate let kLiveTitle:String = "sustyle"
fileprivate let k_modeLengthKey:[Character] = ["s","c","r","i","b","e","_","s","u","s"]

/*: "yp6lg8" :*/
fileprivate let kExamineedKey:[Character] = ["y","p","6","l","g"]
fileprivate let kUserMessage:String = "text"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ListReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/10/17.
//

//: import Adjust
import Adjust
//: import UIKit
import UIKit

//: class TalkingAdjustManager: NSObject {
class ListReactiveCompatible: NSObject {
    //: static let share = TalkingAdjustManager()
    static let share = ListReactiveCompatible()
    //: private override init() {}
    override private init() {}
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    // MARK: - Lazy load

    //: private lazy var adjustDict: [String: String] = {
    private lazy var adjustDict: [String: String] = //: return ["clickStarProjectpop-upsCancel":"2ymw6y",
        [String(bytes: k_makeStr.map{frameHidden(by: $0)}, encoding: .utf8)!: (String(k_sourceMsg)),
         //: "clickStarProjectpop-upsFindoutmore":"dof0gn",
         String(bytes: k_makePath.reversed(), encoding: .utf8)!: (k_lastKey.lowercased() + k_videoStatusMsg.lowercased()),
         //: "In app purchase": "m93ixa",
         (k_textContent.replacingOccurrences(of: "value", with: "I") + String(k_equalFormat)): (String(k_collectionStr)),
         //: "Install": "xyxupw",
         String(bytes: kProgressName.map{pinView(equal: $0)}, encoding: .utf8)!: (String(k_disableKey)),
         //: "RegisterSuccess": "u5xyxq",
         String(bytes: k_tableValue.map{filePath(model: $0)}, encoding: .utf8)!: (String(k_viewUrl)),
         //: "subscribe_sus": "yp6lg8"]
         (kLiveTitle.replacingOccurrences(of: "style", with: "b") + String(k_modeLengthKey)): (String(kExamineedKey) + kUserMessage.replacingOccurrences(of: "text", with: "8"))]
    //: }()
}

//: extension TalkingAdjustManager {
extension ListReactiveCompatible {
    /// 添加内购埋点事件
    /// - Parameters:
    ///   - price: 价格
    ///   - currency: 货币单位
    //: func addPurchasedEvent(price: Double, currency: String) {
    func weltanschauungCurrency(price: Double, currency: String) {
        //: guard let token = adjustDict["In app purchase"] else {
        guard let token = adjustDict[(k_textContent.replacingOccurrences(of: "value", with: "I") + String(k_equalFormat))] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: event?.setRevenue(price, currency: currency)
        event?.setRevenue(price, currency: currency)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }

    /// 添加订阅埋点事件
    /// - Parameters:
    ///   - price: 价格
    ///   - currency: 货币单位
    //: func addSubscribeEvent(price: Double, currency: String) {
    func earlyOff(price: Double, currency: String) {
        //: guard let token = adjustDict["subscribe_sus"] else {
        guard let token = adjustDict[(kLiveTitle.replacingOccurrences(of: "style", with: "b") + String(k_modeLengthKey))] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: event?.setRevenue(price, currency: currency)
        event?.setRevenue(price, currency: currency)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }

    /// 添加埋点事件
    /// - Parameter key: 事件名
    //: func addEvent(key: String) {
    func holder(key: String) {
        //: guard let token = adjustDict[key] else {
        guard let token = adjustDict[key] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }

    /// 添加去重事件【只记录一次】
    /// - Parameter key: 事件名
    //: func addOnceEvent(key: String) {
    func qualifyToStemName(key: String) {
        //: guard let token = adjustDict[key] else {
        guard let token = adjustDict[key] else {
            //: return
            return
        }

        //: let event = ADJEvent(eventToken: token)
        let event = ADJEvent(eventToken: token)
        //: event?.setTransactionId(token)
        event?.setTransactionId(token)
        //: Adjust.trackEvent(event)
        Adjust.trackEvent(event)
    }
}
