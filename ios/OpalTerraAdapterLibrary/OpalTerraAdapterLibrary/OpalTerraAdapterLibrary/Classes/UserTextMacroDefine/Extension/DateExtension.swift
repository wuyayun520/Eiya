
//: Declare String Begin

/*: "%zd:%02zd:%02zd" :*/
fileprivate let k_tableName:[Character] = ["%","z","d",":","%","0"]
fileprivate let kPlayerStr:String = "2zd:if warning gift return error"
fileprivate let kEffectStr:[Character] = ["%","0","2","z","d"]

/*: "%02zd:%02zd" :*/
fileprivate let kContentKey:String = "var info any%02z"

/*: "MM-dd-YYYY HH:mm" :*/
fileprivate let kPopPath:[UInt8] = [0xd8,0xd8,0xb8,0xf1,0xf1,0xb8,0xcc,0xcc,0xcc,0xcc,0xb5,0xdd,0xdd,0xaf,0xf8,0xf8]

private func vocalismMin(view num: UInt8) -> UInt8 {
    return num ^ 149
}

/*: "MM-dd-YYYY" :*/
fileprivate let k_logKey:String = "MM-session size total line"
fileprivate let kBackgroundUpKey:String = "dd-YYYYlet height list"

/*: "HH:mm" :*/
fileprivate let k_timeTitle:String = "HH:mmcontent content self any type"

/*: "MM-dd HH:mm" :*/
fileprivate let k_succeedPathMessage:[UInt8] = [0xd7,0xd7,0xb7,0xfe,0xfe,0xba,0xd2,0xd2,0xa0,0xf7,0xf7]

/*: "MM-dd" :*/
fileprivate let kAddName:String = "MM-dddirection frame self guard not"

/*: "Yesterday" :*/
fileprivate let kModelText:[Character] = ["Y"]
fileprivate let k_popUrl:String = "cellterday"

/*: "  :*/
fileprivate let kValuePath:String = " "

/*: "America/New_York" :*/
fileprivate let kTranslateUrl:[Character] = ["A","m","e","r","i"]
fileprivate let k_bagUserTextTitle:String = "data style top view makeca/New"

/*: "en_US" :*/
fileprivate let kIndexCenterMessage:String = "in layer show var videoen_US"

/*: "Asia/Shanghai" :*/
fileprivate let k_makeMsg:String = "Asia/Ssuper action kit false"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DateExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/25.
//

//: import Foundation
import Foundation

//: let dateformatter = DateFormatter()
let data_maxName = DateFormatter()

//: extension NSDate {
extension NSDate {
    // override 继承
    // class、static 类方法
    // 当前的时间戳字符串 用static关键字指定的类方法是不能被子类重写的,

    /// 展示当前日期
    /// - Returns: 返回日期格式（包含年、月、日、时、分、秒、星期几）
    //: static func getCurrentDateComponents() -> DateComponents {
    static func blockMake() -> DateComponents {
        //: let calendar = NSCalendar.current
        let calendar = NSCalendar.current
        //: let components = calendar.dateComponents(
        let components = calendar.dateComponents(
            //: Set<Calendar.Component>([.year, .month, .day, .hour, .minute, .second, .weekday]), from: Date())
            Set<Calendar.Component>([.year, .month, .day, .hour, .minute, .second, .weekday]), from: Date()
        )
        //: return components
        return components
    }

    /// 返回当前的时间戳
    /// - Returns: 当前的时间戳字符串
    //: static func getCurrentTimeStamp() ->String {
    static func upToDate() -> String {
        //: let nowDate = Date.init()
        let nowDate = Date()
        //: let interval = Int(nowDate.timeIntervalSince1970)
        let interval = Int(nowDate.timeIntervalSince1970)
        //: return "\(interval)"
        return "\(interval)"
    }

    /// 时间字符串转换成对应格式的时间字符串【以美东时间为标准】
    /// - Parameters:
    ///   - timeString: 时间字符串，如：“2022-10-22”
    ///   - currDateFormat: 当前时间格式，如：“yyyy-MM-dd”
    ///   - newDateFormat: 新时间格式，如：”MMMM yyyy“
    /// - Returns: 格式化后的日期字符串
    //: static func getDateStringFromTimeString(_ timeString: String, currDateFormat: String, newDateFormat: String) -> String {
    static func overChannel(_ timeString: String, currDateFormat: String, newDateFormat: String) -> String {
        //: let date = getDateFromTimeString(timeString, dateFormat: currDateFormat)
        let date = digitizerGroup(timeString, dateFormat: currDateFormat)
        //: return getTimeString(date: date, dateFormat: newDateFormat)
        return nameDateDayOfTheMonthAppearanceTimeGet(date: date, dateFormat: newDateFormat)
    }

    /// 根据秒转换视频播放时间
    /// - Parameter totalTime: 总时间【秒】
    /// - Returns: 视频播放时间字符串
    //: @objc static public func videoTimeFormat(totalTime: NSInteger) -> String {
    @objc public static func televisionSubTime(totalTime: NSInteger) -> String {
        //: if totalTime < 0 {
        if totalTime < 0 {
            //: return ""
            return ""
        }
        //: let durHour = totalTime / 3600
        let durHour = totalTime / 3600
        //: let durMin = (totalTime / 60) % 60
        let durMin = (totalTime / 60) % 60
        //: let durSec = totalTime % 60
        let durSec = totalTime % 60

        //: if durHour > 0 {
        if durHour > 0 {
            //: return  String(format: "%zd:%02zd:%02zd", durHour, durMin, durSec)
            return String(format: (String(k_tableName) + String(kPlayerStr.prefix(4)) + String(kEffectStr)), durHour, durMin, durSec)
            //: } else {
        } else {
            //: return  String(format: "%02zd:%02zd", durMin, durSec)
            return String(format: "%02zd:%02zd", durMin, durSec)
        }
    }

    //: @objc static public func tx_messageTimeString(showDetail: Bool, date: Date) -> String {
    @objc public static func trifleColor(showDetail: Bool, date: Date) -> String {
        //: let calendar = NSCalendar.current
        let calendar = NSCalendar.current
        //: let components = calendar.dateComponents(
        let components = calendar.dateComponents(
            //: Set<Calendar.Component>([.year, .month, .day]), from: date )
            Set<Calendar.Component>([.year, .month, .day]), from: date
        )
        //: let nowComponents = calendar.dateComponents(
        let nowComponents = calendar.dateComponents(
            //: Set<Calendar.Component>([.year, .month, .day]), from: Date())
            Set<Calendar.Component>([.year, .month, .day]), from: Date()
        )
        //: var  isYesterday = false
        var isYesterday = false

        //: let dateformatter = DateFormatter()
        let dateformatter = DateFormatter()
        //: if components.year != nowComponents.year {
        if components.year != nowComponents.year {
            //: dateformatter.dateFormat = showDetail ? "MM-dd-YYYY HH:mm" : "MM-dd-YYYY"
            dateformatter.dateFormat = showDetail ? String(bytes: kPopPath.map{vocalismMin(view: $0)}, encoding: .utf8)! : (String(k_logKey.prefix(3)) + String(kBackgroundUpKey.prefix(7)))
            //: } else {
        } else {
            //: let tempDay: Int = nowComponents.day!-components.day!
            let tempDay: Int = nowComponents.day! - components.day!

            //: if tempDay == 0 {
            if tempDay == 0 {
                //: dateformatter.dateFormat = "HH:mm"
                dateformatter.dateFormat = (String(k_timeTitle.prefix(5)))
                //: } else if(tempDay == 1) {
            } else if tempDay == 1 {
                //: isYesterday = true
                isYesterday = true
                //: dateformatter.dateFormat = "HH:mm"
                dateformatter.dateFormat = (String(k_timeTitle.prefix(5)))
                //: } else {
            } else {
                //: dateformatter.dateFormat = showDetail ? "MM-dd HH:mm" : "MM-dd"
                dateformatter.dateFormat = showDetail ? String(bytes: k_succeedPathMessage.map{$0^154}, encoding: .utf8)! : (String(kAddName.prefix(5)))
            }
        }

        //: var str = dateformatter.string(from: date)
        var str = dateformatter.string(from: date)
        //: if isYesterday {
        if isYesterday {
            //: if showDetail {
            if showDetail {
                //: str = "Yesterday".localized + " \(str)"
                str = (String(kModelText) + k_popUrl.replacingOccurrences(of: "cell", with: "es")).localized + " \(str)"
                //: } else {
            } else {
                //: str = "Yesterday".localized
                str = (String(kModelText) + k_popUrl.replacingOccurrences(of: "cell", with: "es")).localized
            }
        }

        //: return str
        return str
    }
}

// MARK: - 以美东时间为标准

//: extension NSDate {
extension NSDate {
    /// 根据时间字符串获取date【以美东时间为标准】
    /// - Parameters:
    ///   - timeString: 时间字符串，如：“2022-10-22”
    ///   - dateFormat: 时间格式，如：“yyyy-MM-dd”
    /// - Returns: date
    //: static func getDateFromTimeString(_ timeString: String, dateFormat: String) -> Date {
    static func digitizerGroup(_ timeString: String, dateFormat: String) -> Date {
        //: dateformatter.timeZone = TimeZone(identifier: "America/New_York")
        data_maxName.timeZone = TimeZone(identifier: (String(kTranslateUrl) + String(k_bagUserTextTitle.suffix(6)) + "_York"))
        //: dateformatter.dateFormat = dateFormat
        data_maxName.dateFormat = dateFormat
        //: return dateformatter.date(from: timeString) ?? Date()
        return data_maxName.date(from: timeString) ?? Date()
    }

    /// 根据date获取时间字符串
    /// - Parameters:
    ///   - date: date
    ///   - dateFormat: 时间格式，如：“yyyy-MM-dd”
    /// - Returns: 时间字符串
    //: static func getTimeString(date: Date, dateFormat: String) -> String {
    static func nameDateDayOfTheMonthAppearanceTimeGet(date: Date, dateFormat: String) -> String {
        //: dateformatter.timeZone = TimeZone(identifier: "America/New_York")
        data_maxName.timeZone = TimeZone(identifier: (String(kTranslateUrl) + String(k_bagUserTextTitle.suffix(6)) + "_York"))
        //: dateformatter.dateFormat = dateFormat
        data_maxName.dateFormat = dateFormat
        //: dateformatter.locale = Locale(identifier: "en_US")
        data_maxName.locale = Locale(identifier: (String(kIndexCenterMessage.suffix(5))))
        //: return dateformatter.string(from: date)
        return data_maxName.string(from: date)
    }
}

// MARK: - 以设备所在时区为标准

//: extension NSDate {
extension NSDate {
    /// 将东八区时间字符串转换成设备所在时区的字符串
    /// - Parameters:
    ///   - dateFormat: 时间格式（默认："HH:mm"）
    ///   - shDateStr: 【东八区】时间字符串
    /// - Returns: 【设备所在时区】时间字符串
    //: static func getCurrentZoneDateString(dateFormat: String = "HH:mm", shDateStr: String) -> String {
    static func actionEqual(dateFormat _: String = (String(k_timeTitle.prefix(5))), shDateStr: String) -> String {
        // 计算GMT时差（小时）
        //: let shTimeZone = TimeZone(identifier: "Asia/Shanghai")!
        let shTimeZone = TimeZone(identifier: (String(k_makeMsg.prefix(6)) + "hanghai"))!
        //: let shTimeOffset = shTimeZone.secondsFromGMT()
        let shTimeOffset = shTimeZone.secondsFromGMT()
        //: let currentTimeOffset = TimeZone.autoupdatingCurrent.secondsFromGMT()
        let currentTimeOffset = TimeZone.autoupdatingCurrent.secondsFromGMT()
        //: let timeOffsetDiff = (currentTimeOffset - shTimeOffset)
        let timeOffsetDiff = (currentTimeOffset - shTimeOffset)

        // 获取东八区时间
        //: dateformatter.dateFormat = "HH:mm"
        data_maxName.dateFormat = (String(k_timeTitle.prefix(5)))
        //: dateformatter.timeZone = shTimeZone
        data_maxName.timeZone = shTimeZone
        //: if let shDate = dateformatter.date(from: shDateStr) {
        if let shDate = data_maxName.date(from: shDateStr) {
            // 东八区加上GMT时差，计算出当地时间
            //: let opFormatter = DateFormatter()
            let opFormatter = DateFormatter()
            //: opFormatter.dateFormat = "HH:mm"
            opFormatter.dateFormat = (String(k_timeTitle.prefix(5)))
            //: opFormatter.timeZone = shTimeZone
            opFormatter.timeZone = shTimeZone
            //: let localDate = shDate.addingTimeInterval(TimeInterval(timeOffsetDiff))
            let localDate = shDate.addingTimeInterval(TimeInterval(timeOffsetDiff))
            //: let opStr = opFormatter.string(from: localDate)
            let opStr = opFormatter.string(from: localDate)

            //: return opStr
            return opStr
        }

        //: return ""
        return ""
    }

    /// 比较当前时间是否在时间段内
    /// - Parameters:
    ///   - startTime: 开始时间（如："09:30"）
    ///   - endTime: 结束时间（如："18:30"）
    /// - Returns: 比较结果
    //: static func compareCurrentTimeIsIncluded(startTime: String, endTime: String) -> Bool {
    static func buss(startTime: String, endTime: String) -> Bool {
        //: let now = Date()
        let now = Date()
        //: let nowFormatter = DateFormatter()
        let nowFormatter = DateFormatter()
        //: nowFormatter.dateFormat = "HH:mm"
        nowFormatter.dateFormat = (String(k_timeTitle.prefix(5)))
        //: nowFormatter.timeZone = TimeZone.autoupdatingCurrent
        nowFormatter.timeZone = TimeZone.autoupdatingCurrent
        //: let nowTime = nowFormatter.string(from: now)
        let nowTime = nowFormatter.string(from: now)
        //: let nowTimeInt = Int(nowTime.replacingOccurrences(of: ":", with: "")) ?? 0
        let nowTimeInt = Int(nowTime.replacingOccurrences(of: ":", with: "")) ?? 0
        //: let startTimeInt = Int(startTime.replacingOccurrences(of: ":", with: "")) ?? 0
        let startTimeInt = Int(startTime.replacingOccurrences(of: ":", with: "")) ?? 0
        //: let endTimeInt = Int(endTime.replacingOccurrences(of: ":", with: "")) ?? 0
        let endTimeInt = Int(endTime.replacingOccurrences(of: ":", with: "")) ?? 0

        //: if startTimeInt > endTimeInt {
        if startTimeInt > endTimeInt { // 跨天
            //: if nowTimeInt >= startTimeInt || nowTimeInt <= endTimeInt {
            if nowTimeInt >= startTimeInt || nowTimeInt <= endTimeInt {
                //: return true
                return true
                //: } else {
            } else {
                //: return false
                return false
            }

            //: } else {
        } else {
            //: if nowTimeInt >= startTimeInt && nowTimeInt <= endTimeInt {
            if nowTimeInt >= startTimeInt && nowTimeInt <= endTimeInt {
                //: return true
                return true
                //: } else {
            } else {
                //: return false
                return false
            }
        }
    }
}
