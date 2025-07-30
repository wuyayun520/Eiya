
//: Declare String Begin

/*: "action" :*/
fileprivate let kTalkFormat:[UInt8] = [0xa6,0xa8,0xb9,0xae,0xb4,0xb3]

fileprivate func squareBlock(asset num: UInt8) -> UInt8 {
    let value = Int(num) - 69
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "category" :*/
fileprivate let kMomentFormat:[UInt8] = [0x78,0x7a,0x6f,0x7e,0x7c,0x74,0x69,0x62]

/*: "label" :*/
fileprivate let k_hideEqualUrl:String = "labmessagel"

/*: "user_action" :*/
fileprivate let k_hungUrl:String = "current section titleuser_"
fileprivate let k_emptyKey:String = "close"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DecisionMakerAnalyticsManager.swift
//  OpalTerraAdapterLibrary
//
//  Created by DouXiu on 2025/4/1.
//

//: import FirebaseAnalytics
import FirebaseAnalytics
//: import UIKit
import UIKit

//: class FirebaseAnalyticsManager: NSObject {
class DecisionMakerAnalyticsManager: NSObject {
    //: static let share = FirebaseAnalyticsManager()
    static let share = DecisionMakerAnalyticsManager()
    //: private override init() {}
    override private init() {}

    // MARK: - 用户属性

    //: func setUserProperty(name: String, value: String) {
    func numericalQuantity(name: String, value: String) {
        //: Analytics.setUserProperty(value, forName: name)
        Analytics.setUserProperty(value, forName: name)
    }

    // MARK: - 用户行为追踪

    //: func trackUserAction(action: String, category: String, label: String? = nil) {
    func valueTo(action: String, category: String, label: String? = nil) {
        //: var parameters: [String: Any] = [
        var parameters: [String: Any] = [
            //: "action": action,
            String(bytes: kTalkFormat.map{squareBlock(asset: $0)}, encoding: .utf8)!: action,
            //: "category": category,
            String(bytes: kMomentFormat.map{$0^27}, encoding: .utf8)!: category,
        ]

        //: if let label = label {
        if let label = label {
            //: parameters["label"] = label
            parameters[(k_hideEqualUrl.replacingOccurrences(of: "message", with: "e"))] = label
        }

        //: logEvent(name: "user_action", parameters: parameters)
        upTimeParameters(name: (String(k_hungUrl.suffix(5)) + "acti" + k_emptyKey.replacingOccurrences(of: "close", with: "on")), parameters: parameters)
    }

    // MARK: - 页面访问追踪

    //: func trackScreenView(screenName: String, screenClass: String) {
    func giftScreen(screenName: String, screenClass: String) {
        //: Analytics.logEvent(
        Analytics.logEvent(
            //: AnalyticsEventScreenView,
            AnalyticsEventScreenView,
            //: parameters: [
            parameters: [
                //: AnalyticsParameterScreenName: screenName,
                AnalyticsParameterScreenName: screenName,
                //: AnalyticsParameterScreenClass: screenClass,
                AnalyticsParameterScreenClass: screenClass,
                //: ])
            ]
        )
    }

    // MARK: - 事件追踪

    //: func logEvent(name: String, parameters: [String: Any]? = nil) {
    func upTimeParameters(name: String, parameters: [String: Any]? = nil) {
        //: Analytics.logEvent(name, parameters: parameters)
        Analytics.logEvent(name, parameters: parameters)
    }

    // MARK: - 内购事件追踪

    //: func trackPurchase(payType: String, price: Double, currency: String) {
    func scanSource(payType: String, price: Double, currency: String) {
        //: Analytics.logEvent(
        Analytics.logEvent(
            //: AnalyticsEventPurchase,
            AnalyticsEventPurchase,
            //: parameters: [
            parameters: [
                //: AnalyticsParameterPaymentType: payType,
                AnalyticsParameterPaymentType: payType,
                //: AnalyticsParameterPrice: price,
                AnalyticsParameterPrice: price,
                //: AnalyticsParameterCurrency: currency,
                AnalyticsParameterCurrency: currency,
                //: ])
            ]
        )
    }
}
