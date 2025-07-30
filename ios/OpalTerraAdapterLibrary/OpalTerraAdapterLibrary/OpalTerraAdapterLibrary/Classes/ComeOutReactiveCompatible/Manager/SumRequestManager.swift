
//: Declare String Begin

/*: "mf/business/list" :*/
fileprivate let kDropPath:[Character] = ["m","f","/","b","u"]
fileprivate let k_objectTimeFeatureName:[Character] = ["s","i","n","e","s","s"]
fileprivate let kWithUrl:[Character] = ["/","l","i","s","t"]

/*: "Any" :*/
fileprivate let k_upTitle:String = "app moment allow return playerAny"

/*: "58+" :*/
fileprivate let k_shareId:[Character] = ["5","8","+"]

/*: "Yes" :*/
fileprivate let k_colorConStr:[Character] = ["Y","e","s"]

/*: "tab" :*/
fileprivate let kContentData:[UInt8] = [0xd8,0xc5,0xc6]

fileprivate func classIf(quick num: UInt8) -> UInt8 {
    let value = Int(num) - 100
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "page" :*/
fileprivate let kGiftMessage:[UInt8] = [0x90,0x81,0x87,0x85]

/*: "minAge" :*/
fileprivate let k_modeMessage:[UInt8] = [0x15,0x11,0x16,0x39,0x1f,0x1d]

private func statusTo(greet num: UInt8) -> UInt8 {
    return num ^ 120
}

/*: "maxAge" :*/
fileprivate let kLabFormat:[UInt8] = [0x65,0x67,0x41,0x78,0x61,0x6d]

/*: "datingVideo" :*/
fileprivate let k_frameSuccessStr:[UInt8] = [0xbe,0xbb,0xce,0xc3,0xc8,0xc1,0xb0,0xc3,0xbe,0xbf,0xc9]

fileprivate func placeName(layer num: UInt8) -> UInt8 {
    let value = Int(num) + 166
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "uid" :*/
fileprivate let k_equalData:String = "uikind"

/*: "mf/premiumStar/list" :*/
fileprivate let kDoingName:[Character] = ["m","f","/","p","r","e","m","i","u","m","S","t","a","r","/","l","i","s"]
fileprivate let k_thanValue:[Character] = ["t"]

/*: "mf/business/adBanner" :*/
fileprivate let k_sizeMsg:String = "hidden reasonmf/b"
fileprivate let k_labelTitle:String = "s/adBannelist if edit"
fileprivate let kBeautyPath:[Character] = ["r"]

/*: "position" :*/
fileprivate let kNameUrl:[UInt8] = [0x37,0x28,0x34,0x2e,0x33,0x2e,0x28,0x29]

private func hiddenWindow(cell num: UInt8) -> UInt8 {
    return num ^ 71
}

/*: "bannerList" :*/
fileprivate let kToMessage:String = "succeed if modelbannerL"
fileprivate let k_menuPath:String = "isserver"

/*: "mf/rank/list" :*/
fileprivate let k_placeName:[Character] = ["m","f","/","r","a","n","k"]
fileprivate let kMakeUrl:[Character] = ["/","l","i","s","t"]

/*: "name" :*/
fileprivate let k_headStr:[UInt8] = [0x23,0x2c,0x20,0x28]

private func succeedShare(value num: UInt8) -> UInt8 {
    return num ^ 77
}

/*: "period" :*/
fileprivate let kKitContent:[UInt8] = [0x64,0x6f,0x69,0x72,0x65,0x70]

/*: "user/position" :*/
fileprivate let kGiftId:[Character] = ["u","s","e","r","/","p","o"]
fileprivate let kIndexElementIfName:String = "sitiocolor"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SumRequestManager.swift
//  AbroadTalking
//
//  Created by young on 2022/9/8.
//

//: import UIKit
import UIKit

//: enum SocialTab: Int {
enum DisappearTotal: Int {
    //: case hot = 1
    case hot = 1 // 活跃
    //: case nearby  = 2
    case nearby = 2 // 附近
    //: case new  = 3
    case new = 3 // 新用户
}

//: class SocialRequestManager {
class SumRequestManager {
    // 列表分页
    //: var listPage = 0
    var listPage = 0
    // 巨星计划分页
    //: var premiumStarPage = 0
    var premiumStarPage = 0
    // 防止重复请求
    //: var premiumStarIsLoading = false
    var premiumStarIsLoading = false
    // 巨星计划是否有更多数据
    //: var premiumStarCanLoadMore = true
    var premiumStarCanLoadMore = true
    // 最大请求次数
    //: let maxReq = 3
    let maxReq = 3
    // 当前已请求次数
    //: var haveReq = 0
    var haveReq = 0
    /// 请求首页列表数据
    /// - Parameters:
    ///   - tab: 1-活跃 2-附近 3-新人 4-同省 5-同城 6-高级用户
    ///   - page: 分页
    ///   - completion: 回调
    //: func req_socialList(tab: SocialTab, completion: @escaping FinishBlock) {
    func sizeChild(tab: DisappearTotal, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/business/list"
        reqModel.requestPath = (String(kDropPath) + String(k_objectTimeFeatureName) + String(kWithUrl))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET

        // 筛选条件
        //: var minAge = 0
        var minAge = 0
        //: var maxAge = 0
        var maxAge = 0
        //: var datingVideo = 0
        var datingVideo = 0
        //: if SEARCH_AGE == "Any".localized {
        if noti_failureValue == (String(k_upTitle.suffix(3))).localized {
            //: minAge = 18
            minAge = 18
            //: maxAge = 80
            maxAge = 80
            //: } else if SEARCH_AGE == "58+" {
        } else if noti_failureValue == "58+" {
            //: minAge = 58
            minAge = 58
            //: maxAge = 80
            maxAge = 80
            //: } else {
        } else {
            //: let arr = SEARCH_AGE.split(separator: "-")
            let arr = noti_failureValue.split(separator: "-")
            //: if arr.count > 1 {
            if arr.count > 1 {
                //: minAge = Int(arr[0]) ?? 0
                minAge = Int(arr[0]) ?? 0
                //: maxAge = Int(arr[1]) ?? 0
                maxAge = Int(arr[1]) ?? 0
            }
        }
        //: if SEARCH_VIDEOCOVER == "Yes".localized {
        if dataMinText == (String(k_colorConStr)).localized {
            //: datingVideo = 1
            datingVideo = 1
        }

        //: reqModel.params = ["tab": tab.rawValue,
        reqModel.params = [String(bytes: kContentData.map{classIf(quick: $0)}, encoding: .utf8)!: tab.rawValue,
                           //: "page": listPage,
                           String(bytes: kGiftMessage.map{$0^224}, encoding: .utf8)!: listPage,
                           //: "minAge": minAge,
                           String(bytes: k_modeMessage.map{statusTo(greet: $0)}, encoding: .utf8)!: minAge,
                           //: "maxAge": maxAge,
                           String(bytes: kLabFormat.reversed(), encoding: .utf8)!: maxAge,
                           //: "datingVideo": datingVideo]
                           String(bytes: k_frameSuccessStr.map{placeName(layer: $0)}, encoding: .utf8)!: datingVideo]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: var resultArr = result as! [Dictionary<String, Any>]
            var resultArr = result as! [[String: Any]]

            //: if self.listPage == 0 {
            if self.listPage == 0 {
                //: self.section0Data.removeAll()
                self.section0Data.removeAll()
                //: self.section1Data.removeAll()
                self.section1Data.removeAll()
                //: self.bolckRepetData.removeAll()
                self.bolckRepetData.removeAll()
            }

            /// 后台拉黑向上补齐返回数据，客户端拉取下页有重复数据过滤
            //: for uid in self.bolckRepetData {
            for uid in self.bolckRepetData {
                //: for (index, dict) in resultArr.enumerated() {
                for (index, dict) in resultArr.enumerated() {
                    //: let uidstr = dict["uid"] as? Int
                    let uidstr = dict[(k_equalData.replacingOccurrences(of: "kind", with: "d"))] as? Int
                    //: if uid == String(uidstr ?? 0) {
                    if uid == String(uidstr ?? 0) {
                        //: resultArr.remove(at: index)
                        resultArr.remove(at: index)
                    }
                }
            }

            //: for dict in resultArr {
            for dict in resultArr {
                //: if let model = SocialUserListModel.deserialize(from: dict as? Dictionary) {
                if let model = EqualModelType.deserialize(from: dict as? Dictionary) {
                    //: if self.section0Data.count < 4 {
                    if self.section0Data.count < 4 {
                        //: self.section0Data.append(model)
                        self.section0Data.append(model)
                        //: } else {
                    } else {
                        //: self.section1Data.append(model)
                        self.section1Data.append(model)
                    }
                    //: self.bolckRepetData.insert("\(model.uid)")
                    self.bolckRepetData.insert("\(model.uid)")
                }
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 请求巨星计划列表
    /// - Parameter completion: 回调
    //: func req_premiumStarList(completion: @escaping FinishBlock) {
    func superior(completion: @escaping FinishBlock) {
        //: if premiumStarIsLoading { return }
        if premiumStarIsLoading { return }

        //: premiumStarIsLoading = true
        premiumStarIsLoading = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/premiumStar/list"
        reqModel.requestPath = (String(kDoingName) + String(k_thanValue))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = ["page": premiumStarPage]
        reqModel.params = [String(bytes: kGiftMessage.map{$0^224}, encoding: .utf8)!: premiumStarPage]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: self.premiumStarIsLoading = false
            self.premiumStarIsLoading = false
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: if self.premiumStarPage == 0 {
            if self.premiumStarPage == 0 {
                //: self.premiumStarListData.removeAll()
                self.premiumStarListData.removeAll()
            }

            //: let arr = result as! [Dictionary<String, Any>]
            let arr = result as! [[String: Any]]
            //: for dict in arr {
            for dict in arr {
                //: if let model = PremiumStarListModel.deserialize(from: dict as? Dictionary) {
                if let model = CancelListModel.deserialize(from: dict as? Dictionary) {
                    //: self.premiumStarListData.append(model)
                    self.premiumStarListData.append(model)
                }
            }

            //: if arr.count < 20 {
            if arr.count < 20 {
                //: self.premiumStarCanLoadMore = false
                self.premiumStarCanLoadMore = false
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取广告位banner
    /// - Parameters:
    ///   - position: 广告位标识，1=首页，2=me,3:私聊
    ///   - completion: 回调
    //: func req_adBanner(position: Int, completion: @escaping FinishBlock) {
    func prolusion(position: Int, completion: @escaping FinishBlock) {
        //: premiumStarIsLoading = true
        premiumStarIsLoading = true
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/business/adBanner"
        reqModel.requestPath = (String(k_sizeMsg.suffix(4)) + "usines" + String(k_labelTitle.prefix(9)) + String(kBeautyPath))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["position": position]
        reqModel.params = [String(bytes: kNameUrl.map{hiddenWindow(cell: $0)}, encoding: .utf8)!: position]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: if position == 2 {
            if position == 2 {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }
            //: let array = JSON(result["bannerList"] ?? []).arrayValue
            let array = JSON(result[(String(kToMessage.suffix(7)) + k_menuPath.replacingOccurrences(of: "server", with: "t"))] ?? []).arrayValue
            //: for dict in array {
            for dict in array {
                //: if let model = SocialAdBannerModel.deserialize(from: dict.dictionaryObject) {
                if let model = AdMeasurable.deserialize(from: dict.dictionaryObject) {
                    //: self.adBannerListData.append(model)
                    self.adBannerListData.append(model)
                }
            }
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 首页榜单

    //: class func getRankListRequest(topName: String?, periodName: String?, completion: @escaping FinishBlock) {
    class func handleCompletion(topName: String?, periodName: String?, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/rank/list"
        reqModel.requestPath = (String(k_placeName) + String(kMakeUrl))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["name": topName ?? "", "period": periodName ?? ""]
        reqModel.params = [String(bytes: k_headStr.map{succeedShare(value: $0)}, encoding: .utf8)!: topName ?? "", String(bytes: kKitContent.reversed(), encoding: .utf8)!: periodName ?? ""]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - 上传定位

    //: class func req_uploadPosition(params: [String: Any], completion: @escaping FinishBlock) {
    class func requestCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "user/position"
        reqModel.requestPath = (String(kGiftId) + kIndexElementIfName.replacingOccurrences(of: "color", with: "n"))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - Lazy load

    //: lazy var section0Data: [SocialUserListModel] = {
    lazy var section0Data: [EqualModelType] = //: return Array<EqualModelType>()
        .init()
    //: }()

    //: lazy var section1Data: [SocialUserListModel] = {
    lazy var section1Data: [EqualModelType] = //: return Array<EqualModelType>()
        .init()
    //: }()

    //: lazy var bolckRepetData = Set<String>()
    lazy var bolckRepetData = Set<String>()

    //: lazy var premiumStarListData: [PremiumStarListModel] = {
    lazy var premiumStarListData: [CancelListModel] = //: return Array<CancelListModel>()
        .init()
    //: }()

    //: lazy var adBannerListData: [SocialAdBannerModel] = {
    lazy var adBannerListData: [AdMeasurable] = //: return Array<AdMeasurable>()
        .init()
    //: }()
}
