
//: Declare String Begin

/*: "JDStatusBarStyleDefault" :*/
fileprivate let kPathFormat:String = "info clear viewJDSta"
fileprivate let k_countryMenuStr:String = "Stylename data user self value"
fileprivate let kImageMsg:String = "cell makeDefault"

/*: "JDStatusBarStyleError" :*/
fileprivate let k_errorText:[Character] = ["J","D","S","t","a","t","u","s","B","a"]
fileprivate let k_jawId:[Character] = ["r","S","t","y","l","e","E","r","r","o","r"]

/*: "JDStatusBarStyleSuccess" :*/
fileprivate let k_viewValue:[Character] = ["J","D","S","t","a","t","u","s","B","a","r"]
fileprivate let k_labelKey:[Character] = ["S"]
fileprivate let k_countryMsg:[Character] = ["t","y","l","e","S","u","c","c","e","s","s"]

/*: "2AB572" :*/
fileprivate let kTouchMessage:[Character] = ["2","A","B","5","7","2"]

/*: "F05E5E" :*/
fileprivate let kIncreasePath:[Character] = ["F","0","5","E","5","E"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MyViewTipExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import JDStatusBarNotification
import JDStatusBarNotification
//: import UIKit
import UIKit

//: extension NSObject {
extension NSObject {
    //: @objc public func func__showStatusBarNormrlMsg(showMsg: String) {
    @objc public func barrelhouseTop(showMsg: String) {
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleDefault")
        self.titleTo(showMsg: showMsg, dismissTime: 1.5, styleName: (String(kPathFormat.suffix(5)) + "tusBar" + String(k_countryMenuStr.prefix(5)) + String(kImageMsg.suffix(7))))
    }

    //: @objc public func func__showStatusBarErrorMsg(showMsg: String) {
    @objc public func arcInfo(showMsg: String) {
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleError")
        self.titleTo(showMsg: showMsg, dismissTime: 1.5, styleName: (String(k_errorText) + String(k_jawId)))
    }

    //: func func__showStatusBarSuccessMsg(showMsg: String) {
    func rear(showMsg: String) {
        //: self.func__showStatusBarMsg(showMsg: showMsg, dismissTime: 1.5, styleName: "JDStatusBarStyleSuccess")
        self.titleTo(showMsg: showMsg, dismissTime: 1.5, styleName: (String(k_viewValue) + String(k_labelKey) + String(k_countryMsg)))
    }

    //: func func__showStatusBarMsg(showMsg: String, dismissTime: TimeInterval, styleName: String) {
    func titleTo(showMsg: String, dismissTime: TimeInterval, styleName: String) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: DispatchQueue.once(token: DispatchQueueToken_StatusBarInit, block: {
            DispatchQueue.transmission(token: appBarTitle, block: {
                //: NotificationPresenter.shared().updateDefaultStyle { style in
                NotificationPresenter.shared().updateDefaultStyle { style in
                    //: style.backgroundStyle.backgroundColor = UIColor(hex: "2AB572")!
                    style.backgroundStyle.backgroundColor = UIColor(hex: (String(kTouchMessage)))!
                    //: style.textStyle.textColor = .white
                    style.textStyle.textColor = .white
                    //: style.textStyle.font = UIFont.fontChange(type: .Regular, fontSize: 14)
                    style.textStyle.font = UIFont.fontChange(type: .Regular, fontSize: 14)
                    //: return style
                    return style
                }
                //: NotificationPresenter.shared().addStyle(styleName: styleName) { stype in
                NotificationPresenter.shared().addStyle(styleName: styleName) { stype in
                    //: if styleName == "JDStatusBarStyleError" {
                    if styleName == (String(k_errorText) + String(k_jawId)) {
                        //: stype.backgroundStyle.backgroundColor = UIColor(hex: "F05E5E")!
                        stype.backgroundStyle.backgroundColor = UIColor(hex: (String(kIncreasePath)))!
                        //: }else {
                    } else {
                        //: stype.backgroundStyle.backgroundColor = UIColor(hex: "2AB572")!
                        stype.backgroundStyle.backgroundColor = UIColor(hex: (String(kTouchMessage)))!
                    }
                    //: return stype
                    return stype
                }
                //: })
            })

            //: if NotificationPresenter.shared().isVisible() {
            if NotificationPresenter.shared().isVisible() {
                //: DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    //: NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                    NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                }
                //: }else {
            } else {
                //: NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
                NotificationPresenter.shared().present(text: showMsg, dismissAfterDelay: dismissTime, customStyle: styleName)
            }
        }
    }
}
