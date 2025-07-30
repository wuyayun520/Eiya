
//: Declare String Begin

/*: "PingFangSC-Regular" :*/
fileprivate let k_modelPath:String = "size color true line varPingF"
fileprivate let k_norFormat:String = "-Reguequal photo"
fileprivate let k_pathValue:String = "lstatus"

/*: "PingFangSC-Medium" :*/
fileprivate let kManagerKey:[Character] = ["P","i","n","g","F","a","n","g","S","C","-","M","e","d","i","u"]
fileprivate let kLevelTextName:[Character] = ["m"]

/*: "PingFangSC-Semibold" :*/
fileprivate let kLabFormat:String = "content today to self framePingF"
fileprivate let k_toName:String = "broadcast contentC-Sem"
fileprivate let k_pastName:[Character] = ["i","b","o","l","d"]

/*: "PingFangSC-Thin" :*/
fileprivate let kRequestEffectDatabaseMsg:String = "Pingblock model button"
fileprivate let k_playerValue:String = "iconin"

/*: "PingFangSC-Light" :*/
fileprivate let kMakeMessage:String = "Pingno text show center"
fileprivate let k_maximumPathMsg:[Character] = ["C","-","L","i","g","h","t"]

/*: "PingFangSC-Ultralight" :*/
fileprivate let k_requestUrl:String = "layer for show return selfPing"
fileprivate let kViewMessage:String = "foundation image bubble-Ultr"
fileprivate let kTopEqualTrueMsg:String = "voice"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FontExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/25.
//

//: import Foundation
import Foundation
//: import UIKit
import UIKit

//: extension UIFont {
public extension UIFont {
    //: static func pingfangFont(type: PingFangFontType, fontSize: CGFloat) -> UIFont {
    internal static func fontChange(type: AppFontType, fontSize: CGFloat) -> UIFont {
        //: var font: UIFont?
        var font: UIFont?
        //: switch type {
        switch type {
        //: case .Regular:
        case .Regular:
            //: font = UIFont(name: "PingFangSC-Regular", size: fontSize)
            font = UIFont(name: (String(k_modelPath.suffix(5)) + "angSC" + String(k_norFormat.prefix(5)) + k_pathValue.replacingOccurrences(of: "status", with: "ar")), size: fontSize)
        //: break
        //: case .Medium:
        case .Medium:
            //: font = UIFont(name: "PingFangSC-Medium", size: fontSize)
            font = UIFont(name: (String(kManagerKey) + String(kLevelTextName)), size: fontSize)
        //: break
        //: case .Semibold:
        case .Semibold:
            //: font = UIFont(name: "PingFangSC-Semibold", size: fontSize)
            font = UIFont(name: (String(kLabFormat.suffix(5)) + "angS" + String(k_toName.suffix(5)) + String(k_pastName)), size: fontSize)
        //: break
        //: case .Thin:
        case .Thin:
            //: font = UIFont(name: "PingFangSC-Thin", size: fontSize)
            font = UIFont(name: (String(kRequestEffectDatabaseMsg.prefix(4)) + "FangSC-T" + k_playerValue.replacingOccurrences(of: "icon", with: "h")), size: fontSize)
        //: break
        //: case .Light:
        case .Light:
            //: font = UIFont(name: "PingFangSC-Light", size: fontSize)
            font = UIFont(name: (String(kMakeMessage.prefix(4)) + "FangS" + String(k_maximumPathMsg)), size: fontSize)
        //: break
        //: case .Ultralight:
        case .Ultralight:
            //: font = UIFont(name: "PingFangSC-Ultralight", size: fontSize)
            font = UIFont(name: (String(k_requestUrl.suffix(4)) + "FangSC" + String(kViewMessage.suffix(5)) + "aligh" + kTopEqualTrueMsg.replacingOccurrences(of: "voice", with: "t")), size: fontSize)
            //: break
        }
        //: return font ?? UIFont.systemFont(ofSize: fontSize)
        return font ?? UIFont.systemFont(ofSize: fontSize)
    }

    //: @objc static public func pingfangRugularFont(fontSize: CGFloat) -> UIFont {
    @objc static func targetFor(fontSize: CGFloat) -> UIFont {
        //: return UIFont.fontChange(type: .Regular, fontSize: fontSize)
        return UIFont.fontChange(type: .Regular, fontSize: fontSize)
    }

    //: @objc static public func pingfangMediumFont(fontSize: CGFloat) -> UIFont {
    @objc static func tapShared(fontSize: CGFloat) -> UIFont {
        //: return UIFont.fontChange(type: .Medium, fontSize: fontSize)
        return UIFont.fontChange(type: .Medium, fontSize: fontSize)
    }
}
