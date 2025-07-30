
//: Declare String Begin

/*: "#8A79F9" :*/
fileprivate let kBackgroundText:String = "at stop view view view#8A79F"
fileprivate let k_equalText:String = "9"

/*: "#E6BD8B" :*/
fileprivate let kCollectionUrl:[Character] = ["#"]
fileprivate let k_textName:String = "E6Bshare8B"

/*: "#F5F5F8" :*/
fileprivate let k_actionFormat:String = "manager true self#F5F5F8"

/*: "333333" :*/
fileprivate let k_hiddenName:[Character] = ["3","3","3","3","3","3"]

/*: "FF2348" :*/
fileprivate let k_contentName:[Character] = ["F","F","2","3","4"]
fileprivate let k_playText:[Character] = ["8"]

/*: "666666" :*/
fileprivate let k_iconFormat:String = "cell"
fileprivate let k_replyName:String = "logloglogloglog"

/*: "999999" :*/
fileprivate let k_leadingFormat:String = "999999"

/*: "7C74F4" :*/
fileprivate let k_errorUrl:[Character] = ["7","C","7","4","F"]
fileprivate let k_imageStatusMsg:String = "4"

/*: "B97AF8" :*/
fileprivate let kStyleKey:[Character] = ["B","9","7","A","F","8"]

/*: "#FF5C9D" :*/
fileprivate let k_toValue:String = "var tool#FF5C9D"

/*: "#EEEEEE" :*/
fileprivate let kValueKey:String = "video"
fileprivate let k_modelTitle:String = "floorfloorfloor"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import Foundation
import Foundation
//: import UIKit
import UIKit

//: extension UIColor {
extension UIColor {
    //: @objc convenience init?(hex: String) {
    @objc convenience init?(hex: String) {
        //: var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        //: hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        //: var rgb: UInt64 = 0
        var rgb: UInt64 = 0
        //: var r: CGFloat = 0.0
        var r: CGFloat = 0.0
        //: var g: CGFloat = 0.0
        var g: CGFloat = 0.0
        //: var b: CGFloat = 0.0
        var b: CGFloat = 0.0
        //: var a: CGFloat = 1.0
        var a: CGFloat = 1.0

        //: let length = hexSanitized.count
        let length = hexSanitized.count
        //: guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }
        guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }

        //: if length == 6 {
        if length == 6 {
            //: r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            //: g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            //: b = CGFloat(rgb & 0x0000FF) / 255.0
            b = CGFloat(rgb & 0x0000FF) / 255.0
            //: } else if length == 8 {
        } else if length == 8 {
            //: r = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
            r = CGFloat((rgb & 0xFF00_0000) >> 24) / 255.0
            //: g = CGFloat((rgb & 0x00FF0000) >> 16) / 255.0
            g = CGFloat((rgb & 0x00FF_0000) >> 16) / 255.0
            //: b = CGFloat((rgb & 0x0000FF00) >> 8) / 255.0
            b = CGFloat((rgb & 0x0000_FF00) >> 8) / 255.0
            //: a = CGFloat(rgb & 0x000000FF) / 255.0
            a = CGFloat(rgb & 0x0000_00FF) / 255.0
            //: } else {
        } else {
            //: return nil
            return nil
        }
        //: self.init(red: r, green: g, blue: b, alpha: a)
        self.init(red: r, green: g, blue: b, alpha: a)
    }

    //: class func RGBA(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
    class func behindVoice(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
        //: return UIColor.init(red: (r/255.0), green: (g/255.0), blue: (b/255.0), alpha: a)
        return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
    }

    //: @objc static func appThemeColor() -> UIColor {
    @objc static func increase() -> UIColor {
        //: return UIColor.init(hex: "#8A79F9")!
        return UIColor(hex: (String(kBackgroundText.suffix(6)) + k_equalText.capitalized))!
    }

    //: @objc static func userVipColor() -> UIColor {
    @objc static func usufructuaryHeadSkinColour() -> UIColor {
        //: return UIColor(hex: "#E6BD8B")!
        return UIColor(hex: (String(kCollectionUrl) + k_textName.replacingOccurrences(of: "share", with: "D")))!
    }

    //: @objc static func appBgColor() -> UIColor {
    @objc static func postColor() -> UIColor {
        //: return UIColor.init(hex: "#F5F5F8")!
        return UIColor(hex: (String(k_actionFormat.suffix(7))))!
    }

    //: @objc static func colorStatuteNameApp() ->UIColor {
    @objc static func colorStatuteNameApp() -> UIColor {
        //: return UIColor.init(hex: "333333")!
        return UIColor(hex: (String(k_hiddenName)))!
    }

    //: @objc static func msgTipsColor() ->UIColor {
    @objc static func tips() -> UIColor {
        //: return UIColor.init(hex: "FF2348")!
        return UIColor(hex: (String(k_contentName) + String(k_playText)))!
    }

    //: @objc static func appValueColor() ->UIColor {
    @objc static func scaleValueTo() -> UIColor {
        //: return UIColor.init(hex: "666666")!
        return UIColor(hex: (k_iconFormat.replacingOccurrences(of: "cell", with: "6") + k_replyName.replacingOccurrences(of: "log", with: "6")))!
    }

    //: @objc static func appValueDetailColor() ->UIColor {
    @objc static func childMenu() -> UIColor {
        //: return UIColor.init(hex: "999999")!
        return UIColor(hex: (k_leadingFormat.capitalized))!
    }

    //: class func appGradientColor() ->[CGColor] {
    class func georgiaHomeBoy() -> [CGColor] {
        //: return [UIColor.init(hex: "7C74F4")!.cgColor, UIColor.init(hex: "B97AF8")!.cgColor]
        return [UIColor(hex: (String(k_errorUrl) + k_imageStatusMsg.capitalized))!.cgColor, UIColor(hex: (String(kStyleKey)))!.cgColor]
    }

    //: class func appGradientDisableColor() ->[CGColor] {
    class func actionPhoto() -> [CGColor] {
        //: return [UIColor.init(hex: "#FF5C9D")!.withAlphaComponent(0.4).cgColor, UIColor.init(hex: "#FF5C9D")!.withAlphaComponent(0.4).cgColor]
        return [UIColor(hex: (String(k_toValue.suffix(7))))!.withAlphaComponent(0.4).cgColor, UIColor(hex: (String(k_toValue.suffix(7))))!.withAlphaComponent(0.4).cgColor]
    }

    //: class func separatorLineColor() -> UIColor {
    class func part() -> UIColor {
        //: return UIColor.init(hex: "#EEEEEE")!
        return UIColor(hex: (kValueKey.replacingOccurrences(of: "video", with: "#") + k_modelTitle.replacingOccurrences(of: "floor", with: "EE")))!
    }

    //: class func getRandomColor() -> UIColor {
    class func getToColor() -> UIColor {
        //: let red = CGFloat(arc4random_uniform(256)) / 255.0
        let red = CGFloat(arc4random_uniform(256)) / 255.0
        //: let green = CGFloat(arc4random_uniform(256)) / 255.0
        let green = CGFloat(arc4random_uniform(256)) / 255.0
        //: let blue = CGFloat(arc4random_uniform(256)) / 255.0
        let blue = CGFloat(arc4random_uniform(256)) / 255.0
        //: return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
