
//: Declare String Begin

/*: "/dist/loungePlus/index.html" :*/
fileprivate let kGuideKey:[Character] = ["/","d","i","s","t","/","l","o","u","n","g","e","P","l","u","s","/","i","n","d","e"]
fileprivate let kCoverBackgroundId:String = "var shared point ofx.html"

/*: "PremiumStarPlanBanner" :*/
fileprivate let k_viewFormat:[Character] = ["P","r","e","m","i","u","m","S","t","a","r","P","l","a","n","B","a","n","n","e"]
fileprivate let k_pathLogMsg:String = "with"

/*: "uid" :*/
fileprivate let kTitleName:[Character] = ["u","i","d"]

/*: "mfChatGift" :*/
fileprivate let k_equalFormat:String = "mfChashare manager"

/*: "mfChat" :*/
fileprivate let k_lightPath:String = "gift letmfCha"
fileprivate let k_colorObserverTitle:String = "edit"

/*: "user" :*/
fileprivate let kAddId:String = "ucanceler"

/*: "Please verification first" :*/
fileprivate let kShowData:String = "with addPle"
fileprivate let k_videoMinNorStr:String = "ase vemodel in list"
fileprivate let k_textMessage:String = "self icon imagetion "

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AdMeasurable.swift
//  AbroadTalking
//
//  Created by young on 2022/9/9.
//

//: import UIKit
import UIKit

//: struct SocialAdBannerModel: HandyJSON {
struct AdMeasurable: HandyJSON {
    // 广告图
    //: var pic: String = ""
    var pic: String = ""
    // 跳转链接
    //: var url: String = ""
    var url: String = ""
    // 跳转类型 0=无，1=跳转网页，2=跳转原生页面，3=游戏跳转，4=外部网页
    //: var type = 0
    var type = 0
    // 游戏宽高
    //: var widthHeight: Double?
    var widthHeight: Double?
    // 广告小图
    //: var thumbnail: String = ""
    var thumbnail: String = ""
}

// MARK: - Event

//: extension SocialAdBannerModel {
extension AdMeasurable {
    /// 跳转事件
    //: static func jumpEvent(model: SocialAdBannerModel) {
    static func smartModel(model: AdMeasurable) {
        //: if model.type == 1 {
        if model.type == 1 { // 网页跳转
            //: let newUrl: String = model.url
            let newUrl: String = model.url
            //: if newUrl.contains("/dist/loungePlus/index.html") {
            if newUrl.contains((String(kGuideKey) + String(kCoverBackgroundId.suffix(6)))) {
                //: AddReactiveCompatible.share.func__pushToSubscribePageWebVC()
                AddReactiveCompatible.share.belowWith()
                //: return
                return
            }
            //: AddReactiveCompatible.share.func__pushToWebVC(urlStr: model.url)
            AddReactiveCompatible.share.pathAcross(urlStr: model.url)

            //: } else if model.type == 2 {
        } else if model.type == 2 { // 原生跳转
            //: guard let url = URL(string: model.url),
            guard let url = URL(string: model.url),
                  //: let components = URLComponents(url: url, resolvingAgainstBaseURL: false) else {
                  let components = URLComponents(url: url, resolvingAgainstBaseURL: false)
            else {
                //: return
                return
            }
            //: if model.url.contains("PremiumStarPlanBanner") { // 巨星计划
            if model.url.contains((String(k_viewFormat) + k_pathLogMsg.replacingOccurrences(of: "with", with: "r"))) { // 巨星计划
                //: SocialAdBannerModel.premiumStarPlanBanner()
                AdMeasurable.ditheredColour()
                //: return
                return
            }

            //: if let uidItem = components.queryItems?.first(where: { $0.name == "uid" }) {
            if let uidItem = components.queryItems?.first(where: { $0.name == (String(kTitleName)) }) {
                //: let uid = uidItem.value ?? ""
                let uid = uidItem.value ?? ""
                //: if model.url.contains("mfChatGift") { // 私聊打开礼物面板
                if model.url.contains((String(k_equalFormat.prefix(5)) + "tGift")) { // 私聊打开礼物面板
                    //: AddReactiveCompatible.share.func__pushToPriveteChatVC(chatID: uid) { vc in
                    AddReactiveCompatible.share.tincture(chatID: uid) { vc in
                        //: vc.msgInputView.clickgiftBtn()
                        vc.msgInputView.listSize()
                    }
                    //: } else if model.url.contains("mfChat") { // 私聊
                } else if model.url.contains((String(k_lightPath.suffix(5)) + k_colorObserverTitle.replacingOccurrences(of: "edit", with: "t"))) { // 私聊
                    //: AddReactiveCompatible.share.func__pushToPriveteChatVC(chatID: uid)
                    AddReactiveCompatible.share.tincture(chatID: uid)
                    //: } else if model.url.contains("user") { // 用户详情
                } else if model.url.contains((kAddId.replacingOccurrences(of: "cancel", with: "s"))) { // 用户详情
                    //: AddReactiveCompatible.share.func__pushToUserDetailVC(uid: uid)
                    AddReactiveCompatible.share.afterTo(uid: uid)
                }
            }

            //: } else if model.type == 3 {
        } else if model.type == 3 { // 游戏跳转
            //: var config = TalkingWebConfig()
            var config = AppConfig()
            //: config.widthHeight = model.widthHeight
            config.widthHeight = model.widthHeight
            //: config.clearBgColor = true
            config.clearBgColor = true
            //: AddReactiveCompatible.share.func__pushToWebVC(urlStr: model.url, webConfig: config)
            AddReactiveCompatible.share.pathAcross(urlStr: model.url, webConfig: config)

            //: } else if model.type == 4 {
        } else if model.type == 4 { // 外部网页
            //: if let url = URL(string: model.url) {
            if let url = URL(string: model.url) {
                //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }

    /// 加入巨星计划
    //: static func premiumStarPlanBanner() {
    static func ditheredColour() {
        //: if DistanceAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isSuccessed.rawValue ||
        if DistanceAppManager.share.loginUserMode.isTPAuth == BreakValueConvertible.isSuccessed.rawValue ||
            //: DistanceAppManager.share.loginUserMode.isRealPersonAuth == false {
            DistanceAppManager.share.loginUserMode.isRealPersonAuth == false
        { // 真人认证成功 || 不需要真人认证
            //: if DistanceAppManager.share.loginUserMode.premiumStarApplyStatus != PStarStatus.isOnGoing.rawValue {
            if DistanceAppManager.share.loginUserMode.premiumStarApplyStatus != CoverFileReplaceableCollection.isOnGoing.rawValue {
                //: AddReactiveCompatible.share.func__pushToWebVC(webViewType: .StarPlanIndex)
                AddReactiveCompatible.share.overCapacity(webViewType: .StarPlanIndex)
                //: } else {
            } else {
                //: AddReactiveCompatible.share.func__pushToWebVC(webViewType: .StarPlanAudit)
                AddReactiveCompatible.share.overCapacity(webViewType: .StarPlanAudit)
            }
            //: } else if DistanceAppManager.share.loginUserMode.isTPAuth == TPUserAuth.isOnGoing.rawValue {
        } else if DistanceAppManager.share.loginUserMode.isTPAuth == BreakValueConvertible.isOnGoing.rawValue { // 真人认证审核中
            //: NSObject().func__showStatusBarSuccessMsg(showMsg: "Please verification first".localized)
            NSObject().rear(showMsg: (String(kShowData.suffix(3)) + String(k_videoMinNorStr.prefix(6)) + "rifica" + String(k_textMessage.suffix(5)) + "first").localized)
            //: let vc = TalkingFinalVerificationVC()
            let vc = StreamViewController()
            //: AddReactiveCompatible.share.func__getCurrentActivityVC()?.navigationController?.pushViewController(vc, animated: true)
            AddReactiveCompatible.share.pageBy()?.navigationController?.pushViewController(vc, animated: true)
            //: } else {
        } else {
            //: NSObject().func__showStatusBarSuccessMsg(showMsg: "Please verification first".localized)
            NSObject().rear(showMsg: (String(kShowData.suffix(3)) + String(k_videoMinNorStr.prefix(6)) + "rifica" + String(k_textMessage.suffix(5)) + "first").localized)
            //: AddReactiveCompatible.share.func__pushUserVerifyController(toast: nil)
            AddReactiveCompatible.share.decisionToast(toast: nil)
        }
    }
}
