
//: Declare String Begin

/*: "toUserInfo" :*/
fileprivate let kManagerViewStr:[Character] = ["t","o","U","s","e","r"]
fileprivate let kPathName:String = "Infotitle image actual selected render"

/*: "toUid" :*/
fileprivate let k_norKey:String = "text if cornertoUid"

/*: "nickname" :*/
fileprivate let kMemoryText:[Character] = ["n","i","c","k","n","a","m","e"]

/*: "headPic" :*/
fileprivate let k_deviceContent:[Character] = ["h","e","a","d","P","i","c"]

/*: "sex" :*/
fileprivate let kLeadingMessage:[Character] = ["s","e","x"]

/*: "age" :*/
fileprivate let kSizeAtData:[Character] = ["a","g","e"]

/*: "tpAuth" :*/
fileprivate let k_headValue:String = "data lettpAuth"

/*: "interest" :*/
fileprivate let k_videoFormat:String = "INTEREST"

/*: "picture" :*/
fileprivate let kRequestMsg:String = "picolorture"

/*: "loungePlus" :*/
fileprivate let kStartText:String = "viewu"
fileprivate let k_atNameVarMsg:[Character] = ["n","g","e","P","l","u","s"]

/*: "vipSkinId" :*/
fileprivate let k_colorStr:String = "continue out selfvipSk"
fileprivate let kToMsg:String = "inIdsubmit error let"

/*: "voicePrice" :*/
fileprivate let kSuccessPlayerMsg:[Character] = ["v","o","i","c","e","P","r","i","c","e"]

/*: "videoPrice" :*/
fileprivate let kSelectedMessage:String = "vaddeo"
fileprivate let kDataImageWillMessage:String = "Pricemoment picture"

/*: "voiceVIPPrice" :*/
fileprivate let k_pictureMessage:String = "voeachc"
fileprivate let k_actionLabPath:String = "cshare"

/*: "videoVIPPrice" :*/
fileprivate let kIconTextMakeName:[Character] = ["v","i","d","e","o","V","I","P","P","r","i"]
fileprivate let k_pressUrl:[Character] = ["c","e"]

/*: "version" :*/
fileprivate let k_nameUrl:String = "VERSION"

/*: "headPicFrame" :*/
fileprivate let k_userId:[Character] = ["h","e","a","d","P","i","c","F","r"]
fileprivate let k_titleName:String = "pathme"

/*: "signature" :*/
fileprivate let kImageData:String = "view"
fileprivate let k_valueText:String = "gsucceedature"

/*: "constellation" :*/
fileprivate let k_keyTitle:[Character] = ["c","o","n","s","t"]
fileprivate let k_attachValue:[Character] = ["e","l"]
fileprivate let kDataPath:[Character] = ["l","a","t","i","o","n"]

/*: "onlineStatus" :*/
fileprivate let kOfName:String = "ONLINE"

/*: "isNewUser" :*/
fileprivate let k_capacityFormat:[Character] = ["i","s","N","e","w"]
fileprivate let kSightId:String = "Userindex self self self"

/*: "isOfficial" :*/
fileprivate let k_modelBackDoContent:[Character] = ["i","s","O","f","f","i","c","i","a","l"]

/*: "userStatus" :*/
fileprivate let kBlockUrl:String = "userSbottom text filter"
fileprivate let k_managerViewMsg:[Character] = ["s"]

/*: "remarkInfo" :*/
fileprivate let k_modeUrl:String = "sectionmark"

/*: "content" :*/
fileprivate let k_willLocationMsg:[Character] = ["c","o","n","t","e"]
fileprivate let k_centerText:String = "NT"

/*: "top" :*/
fileprivate let k_userKey:String = "twillp"

/*: "enableVideoCall" :*/
fileprivate let k_pleaseVideoData:String = "efinishb"
fileprivate let kLabelPath:String = "key report player viewdeoCall"

/*: "voiceBean" :*/
fileprivate let kShareRangeContent:[Character] = ["v","o","i","c","e","B","e","a","n"]

/*: "videoBean" :*/
fileprivate let kTimeTitle:String = "vidato"
fileprivate let k_viewTitle:String = "Beanheight value app"

/*: "prompt" :*/
fileprivate let k_alwaysFormat:String = "managerompt"

/*: "matchRate" :*/
fileprivate let kUserKey:String = "mcentertc"

/*: "existSess" :*/
fileprivate let kFilterId:[Character] = ["e","x","i","s","t","S","e","s","s"]

/*: "totalIntimate" :*/
fileprivate let kStyleContent:[Character] = ["t","o","t","a","l","I","n","t","i","m","a"]
fileprivate let k_toPath:String = "sessione"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HumankindThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/16.
//

//: import UIKit
import UIKit

//: @objcMembers
@objcMembers
//: public class HumankindThen: NSObject, HandyJSON {
public class HumankindThen: NSObject, HandyJSON {
    //: public var uid: String = ""
    public var uid: String = ""
    //: public var nickname: String = ""
    public var nickname: String = ""
    //: public var age: String = "0"
    public var age: String = "0"
    //: public var headPic: String = ""
    public var headPic: String = ""
    //: public var sex: String = "0"                   // 1 男性 2 女性
    public var sex: String = "0" // 1 男性 2 女性
    //: public var version: String = "0"               // 当前用户版本
    public var version: String = "0" // 当前用户版本

    //: var interest: Array<String> = []
    var interest: [String] = []
    //: var picture: Array<String> = []
    var picture: [String] = []
    //: public var tpAuth: Bool = false
    public var tpAuth: Bool = false // 是否认证
    //: var enableVideoCall = false
    var enableVideoCall = false // 是否展示视频通话按钮，默认否
    //: public var loungePlus: Bool = false
    public var loungePlus: Bool = false // 是否订阅
    //: var vipSkinId = 0
    var vipSkinId = 0 // vip皮肤id
    //: var voicePrice: String = ""             // 语音通话价格
    var voicePrice: String = "" // 语音通话价格
    //: var videoPrice: String = ""             // 视频通话价格
    var videoPrice: String = "" // 视频通话价格
    //: var videoVIPPrice: String = ""          // 视频通话VIP价格
    var videoVIPPrice: String = "" // 视频通话VIP价格
    //: var voiceVIPPrice: String = ""          // 语音通话VIP价格
    var voiceVIPPrice: String = "" // 语音通话VIP价格
    //: var videoBean: String = ""              // 视频通话获取积分（限女性）
    var videoBean: String = "" // 视频通话获取积分（限女性）
    //: var voiceBean: String = ""              // 语音通话获取积分（限女性）
    var voiceBean: String = "" // 语音通话获取积分（限女性）
    //: var prompt: String = ""                 // VIP折扣提醒（限女性）
    var prompt: String = "" // VIP折扣提醒（限女性）
    //: public var headPicFrame: String = ""    // 头像框
    public var headPicFrame: String = "" // 头像框
    //: var matchRate = 0
    var matchRate = 0 // 匹配度
    //: var signature: String = ""              // 签名
    var signature: String = "" // 签名
    //: var constellation: String = ""          // 星座
    var constellation: String = "" // 星座
    //: var existSess: Bool = false
    var existSess: Bool = false // false表示未建立会话
    //: var onlineStatus = 0
    var onlineStatus = 0 // 用户在线状态 1=在线 0=不在线
    //: var isNewUser = false
    var isNewUser = false // 是否新用户
    //: var isHaveSession = false
    var isHaveSession = false // 是否建立会话
    //: public var isOfficial = false
    public var isOfficial = false // 是否官方账号
    //: var intimate = 0
    var intimate = 0 // 亲密度
    //: var intimateTime = 0
    var intimateTime = 0 // 亲密度保存时间
    //: var readReceiptTime = 0
    var readReceiptTime = 0 // 对方已读消息回执时间戳
    //: var userStatus = 1
    var userStatus = 1 // 用户状态 1正常2被禁言3被封号5被拉黑
    //: var content = ""                        // 置顶内容
    var content = "" // 置顶内容
    //: var top = 2
    var top = 2 // 是否置顶 1：置顶，2：否

    //: public required override init() {}
    override public required init() {}

    //: public class func func__transformedChatinfo(userDic: Dictionary<String, Any>) -> HumankindThen {
    public class func gettable(userDic: [String: Any]) -> HumankindThen {
        //: let wrap = HumankindThen.init()
        let wrap = HumankindThen()

        //: if userDic.keys.contains("toUserInfo") {
        if userDic.keys.contains((String(kManagerViewStr) + String(kPathName.prefix(4)))) {
            //: let userInfoDic = userDic["toUserInfo"] as! Dictionary<String, Any>
            let userInfoDic = userDic[(String(kManagerViewStr) + String(kPathName.prefix(4)))] as! [String: Any]
            //: if userInfoDic.keys.contains("toUid") {
            if userInfoDic.keys.contains((String(k_norKey.suffix(5)))) {
                //: wrap.uid = "\(userInfoDic["toUid"] as! NSNumber)"
                wrap.uid = "\(userInfoDic[(String(k_norKey.suffix(5)))] as! NSNumber)"
            }
            //: wrap.nickname = userInfoDic["nickname"] as? String ?? ""
            wrap.nickname = userInfoDic[(String(kMemoryText))] as? String ?? ""
            //: wrap.headPic = userInfoDic["headPic"] as? String ?? ""
            wrap.headPic = userInfoDic[(String(k_deviceContent))] as? String ?? ""
            //: wrap.sex = userInfoDic["sex"] as? String ?? ""
            wrap.sex = userInfoDic[(String(kLeadingMessage))] as? String ?? ""
            //: wrap.age = "\(userInfoDic["age"] as? NSNumber ?? NSNumber.init())"
            wrap.age = "\(userInfoDic[(String(kSizeAtData))] as? NSNumber ?? NSNumber())"
            //: wrap.tpAuth = userInfoDic["tpAuth"] as? Bool ?? false
            wrap.tpAuth = userInfoDic[(String(k_headValue.suffix(6)))] as? Bool ?? false
            //: wrap.interest = userInfoDic["interest"] as? Array<String> ?? [""]
            wrap.interest = userInfoDic[(k_videoFormat.lowercased())] as? [String] ?? [""]
            //: wrap.picture = userInfoDic["picture"] as? Array<String> ?? [""]
            wrap.picture = userInfoDic[(kRequestMsg.replacingOccurrences(of: "color", with: "c"))] as? [String] ?? [""]
            //: wrap.loungePlus = userInfoDic["loungePlus"] as? Bool ?? false
            wrap.loungePlus = userInfoDic[(kStartText.replacingOccurrences(of: "view", with: "lo") + String(k_atNameVarMsg))] as? Bool ?? false
            //: wrap.vipSkinId = userInfoDic["vipSkinId"] as? Int ?? 0
            wrap.vipSkinId = userInfoDic[(String(k_colorStr.suffix(5)) + String(kToMsg.prefix(4)))] as? Int ?? 0
            //: wrap.voicePrice = userInfoDic["voicePrice"] as? String ?? ""
            wrap.voicePrice = userInfoDic[(String(kSuccessPlayerMsg))] as? String ?? ""
            //: wrap.videoPrice = userInfoDic["videoPrice"] as? String ?? ""
            wrap.videoPrice = userInfoDic[(kSelectedMessage.replacingOccurrences(of: "add", with: "id") + String(kDataImageWillMessage.prefix(5)))] as? String ?? ""
            //: wrap.voiceVIPPrice = userInfoDic["voiceVIPPrice"] as? String ?? ""
            wrap.voiceVIPPrice = userInfoDic[(k_pictureMessage.replacingOccurrences(of: "each", with: "i") + "eVIPPri" + k_actionLabPath.replacingOccurrences(of: "share", with: "e"))] as? String ?? ""
            //: wrap.videoVIPPrice = userInfoDic["videoVIPPrice"] as? String ?? ""
            wrap.videoVIPPrice = userInfoDic[(String(kIconTextMakeName) + String(k_pressUrl))] as? String ?? ""
            //: wrap.version = userInfoDic["version"] as? String ?? ""
            wrap.version = userInfoDic[(k_nameUrl.lowercased())] as? String ?? ""
            //: wrap.headPicFrame = userInfoDic["headPicFrame"] as? String ?? ""
            wrap.headPicFrame = userInfoDic[(String(k_userId) + k_titleName.replacingOccurrences(of: "path", with: "a"))] as? String ?? ""
            //: wrap.signature = userInfoDic["signature"] as? String ?? ""
            wrap.signature = userInfoDic[(kImageData.replacingOccurrences(of: "view", with: "si") + k_valueText.replacingOccurrences(of: "succeed", with: "n"))] as? String ?? ""
            //: wrap.constellation = userInfoDic["constellation"] as? String ?? ""
            wrap.constellation = userInfoDic[(String(k_keyTitle) + String(k_attachValue) + String(kDataPath))] as? String ?? ""
            //: wrap.onlineStatus = userInfoDic["onlineStatus"] as! Int
            wrap.onlineStatus = userInfoDic[(kOfName.lowercased() + "Status")] as! Int
            //: wrap.isNewUser = userInfoDic["isNewUser"] as? Bool ?? false
            wrap.isNewUser = userInfoDic[(String(k_capacityFormat) + String(kSightId.prefix(4)))] as? Bool ?? false
            //: wrap.isOfficial = userInfoDic["isOfficial"] as? Bool ?? false
            wrap.isOfficial = userInfoDic[(String(k_modelBackDoContent))] as? Bool ?? false
            //: wrap.userStatus = userInfoDic["userStatus"] as? Int ?? 1
            wrap.userStatus = userInfoDic[(String(kBlockUrl.prefix(5)) + "tatu" + String(k_managerViewMsg))] as? Int ?? 1
        }
        //: if userDic.keys.contains("remarkInfo") { // 备注相关
        if userDic.keys.contains((k_modeUrl.replacingOccurrences(of: "section", with: "re") + "Info")) { // 备注相关
            //: let remarkDict = userDic["remarkInfo"] as! [String: Any]
            let remarkDict = userDic[(k_modeUrl.replacingOccurrences(of: "section", with: "re") + "Info")] as! [String: Any]
            //: wrap.content = remarkDict["content"] as? String ?? ""
            wrap.content = remarkDict[(String(k_willLocationMsg) + k_centerText.lowercased())] as? String ?? ""
            //: wrap.top = remarkDict["top"] as? Int ?? 2
            wrap.top = remarkDict[(k_userKey.replacingOccurrences(of: "will", with: "o"))] as? Int ?? 2
        }
        //: if userDic.keys.contains("enableVideoCall") {
        if userDic.keys.contains((k_pleaseVideoData.replacingOccurrences(of: "finish", with: "na") + "leVi" + String(kLabelPath.suffix(7)))) {
            //: wrap.enableVideoCall = userDic["enableVideoCall"] as! Bool
            wrap.enableVideoCall = userDic[(k_pleaseVideoData.replacingOccurrences(of: "finish", with: "na") + "leVi" + String(kLabelPath.suffix(7)))] as! Bool
        }
        //: if userDic.keys.contains("voiceBean") {
        if userDic.keys.contains((String(kShareRangeContent))) {
            //: wrap.voiceBean = userDic["voiceBean"] as! String
            wrap.voiceBean = userDic[(String(kShareRangeContent))] as! String
        }
        //: if userDic.keys.contains("videoBean") {
        if userDic.keys.contains((kTimeTitle.replacingOccurrences(of: "at", with: "e") + String(k_viewTitle.prefix(4)))) {
            //: wrap.videoBean =  userDic["videoBean"] as! String
            wrap.videoBean = userDic[(kTimeTitle.replacingOccurrences(of: "at", with: "e") + String(k_viewTitle.prefix(4)))] as! String
        }
        //: if userDic.keys.contains("prompt") {
        if userDic.keys.contains((k_alwaysFormat.replacingOccurrences(of: "manager", with: "pr"))) {
            //: wrap.prompt = userDic["prompt"] as! String
            wrap.prompt = userDic[(k_alwaysFormat.replacingOccurrences(of: "manager", with: "pr"))] as! String
        }
        //: if userDic.keys.contains("matchRate") {
        if userDic.keys.contains((kUserKey.replacingOccurrences(of: "center", with: "a") + "hRate")) {
            //: wrap.matchRate =  userDic["matchRate"] as! Int
            wrap.matchRate = userDic[(kUserKey.replacingOccurrences(of: "center", with: "a") + "hRate")] as! Int
        }
        //: if userDic.keys.contains("existSess") {
        if userDic.keys.contains((String(kFilterId))) {
            //: wrap.existSess = userDic["existSess"] as? Bool ?? false
            wrap.existSess = userDic[(String(kFilterId))] as? Bool ?? false
        }
        //: if userDic.keys.contains("totalIntimate") {
        if userDic.keys.contains((String(kStyleContent) + k_toPath.replacingOccurrences(of: "session", with: "t"))) {
            //: wrap.intimate = userDic["totalIntimate"] as? Int ?? 0
            wrap.intimate = userDic[(String(kStyleContent) + k_toPath.replacingOccurrences(of: "session", with: "t"))] as? Int ?? 0
        }
        //: return wrap
        return wrap
    }
}
