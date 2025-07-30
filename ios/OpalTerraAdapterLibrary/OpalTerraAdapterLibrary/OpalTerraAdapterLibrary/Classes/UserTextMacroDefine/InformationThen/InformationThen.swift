
//: Declare String Begin

/*: "APPLE_IAP_PAY_SUCCEED_NOTIFICATION" :*/
fileprivate let k_photoValue:[UInt8] = [0x62,0x73,0x73,0x6f,0x66,0x7c,0x6a,0x62,0x73,0x7c,0x73,0x62,0x7a,0x7c,0x70,0x76,0x60,0x60,0x66,0x66,0x67,0x7c,0x6d,0x6c,0x77,0x6a,0x65,0x6a,0x60,0x62,0x77,0x6a,0x6c,0x6d]

private func labelTool(app num: UInt8) -> UInt8 {
    return num ^ 35
}

/*: "APPLE_IAP_SUBSCRIBE_SUCCEED_NOTIFICATION" :*/
fileprivate let kSubKey:[UInt8] = [0xc2,0xd1,0xd1,0xcd,0xc6,0xe0,0xca,0xc2,0xd1,0xe0,0xd4,0xd6,0xc3,0xd4,0xc4,0xd3,0xca,0xc3,0xc6,0xe0,0xd4,0xd6,0xc4,0xc4,0xc6,0xc6,0xc5,0xe0,0xcf,0xd0,0xd5,0xca,0xc7,0xca,0xc4,0xc2,0xd5,0xca,0xd0,0xcf]

fileprivate func popUser(conversation num: UInt8) -> UInt8 {
    let value = Int(num) + 127
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "mf/recharge/createApplePay" :*/
fileprivate let kFromData:[Character] = ["m","f","/","r","e","c","h","a","r","g","e","/","c","r","e","a","t","e","A"]
fileprivate let k_viewPath:String = "system var heightpplePay"

/*: "productId" :*/
fileprivate let k_submitFormat:String = "title"
fileprivate let k_modelKey:String = "rgiftu"

/*: "source" :*/
fileprivate let kAllowTitle:String = "SOURCE"

/*: "IAP充值创建订单失败: :*/
fileprivate let k_unitName:String = "IAP充\u{503c}"

/*: , 参数: :*/
fileprivate let k_cellVideoId:String = ", \u{53c2}数:"

/*: ." :*/
fileprivate let k_mCameraPath:String = "gift"

/*: "orderNum" :*/
fileprivate let k_makeStr:String = "tool openorderNum"

/*: "mf/recharge/applePayNotify" :*/
fileprivate let k_selectedValue:[Character] = ["m","f","/","r","e","c","h","a","r","g"]
fileprivate let kTempFormat:String = "error hidee/ap"
fileprivate let k_giftFormat:String = "yNotifyerror arc response"

/*: "IAP充值校验失败: :*/
fileprivate let kSharedMsg:[Character] = ["I","A","P","充","值","校","验","失","\u{8d25}",":"]

/*: "transactionId" :*/
fileprivate let kWithBlackText:[Character] = ["t","r","a","n","s","a","c","t","i","o","n","I","d"]

/*: "reportMoney" :*/
fileprivate let kNoticeValue:String = "countepo"

/*: "mf/AutoSub/AppleCreateOrder" :*/
fileprivate let kTopData:String = "selected true view tomf/Au"
fileprivate let kImageUrl:String = "user"
fileprivate let k_hiddenMsg:[Character] = ["l","e","C","r","e","a","t","e","O","r","d","e","r"]

/*: "IAP订阅创建订单失败: :*/
fileprivate let k_currencyKey:String = "IAP订阅data in icon"

/*: "orderId" :*/
fileprivate let k_viewLastMsg:[UInt8] = [0x74,0x69,0x7f,0x7e,0x69,0x52,0x7f]

private func countEvent(value num: UInt8) -> UInt8 {
    return num ^ 27
}

/*: "mf/AutoSub/ApplePaySuccess" :*/
fileprivate let k_appPath:[Character] = ["m","f","/","A","u","t","o","S","u","b","/","A","p","p","l","e","P","a","y","S","u","c","c"]
fileprivate let k_iconStr:[Character] = ["e","s","s"]

/*: "IAP订阅校验失败: :*/
fileprivate let k_targetBlockButtonTitle:[Character] = ["I","A","P","订","\u{9605}","校","验","失","败",":"]

/*: "App" :*/
fileprivate let k_succeedName:[Character] = ["A","p","p"]

/*: "OrderTransactionInfo_ :*/
fileprivate let k_pathFormat:String = "Ordmodel interval system then"
fileprivate let kPriceStr:String = "guard new cell bodyerTra"
fileprivate let k_nameContent:String = "tinfon"

/*: "OrderTransactionInfo_Subscribe_ :*/
fileprivate let kDataPath:[UInt8] = [0x8c,0xb1,0xa7,0xa6,0xb1,0x97,0xb1,0xa2,0xad,0xb0,0xa2,0xa0,0xb7,0xaa,0xac,0xad,0x8a,0xad,0xa5,0xac,0x9c,0x90,0xb6,0xa1,0xb0,0xa0,0xb1,0xaa,0xa1,0xa6,0x9c]

private func filterKey(observer num: UInt8) -> UInt8 {
    return num ^ 195
}

/*: "verifyData" :*/
fileprivate let kUserMsg:[UInt8] = [0x7f,0x6c,0x7b,0x60,0x6f,0x70,0x4d,0x68,0x7d,0x68]

private func currentToVideo(make num: UInt8) -> UInt8 {
    return num ^ 9
}

/*: "IAP查询内购商品失败, productId: :*/
fileprivate let kViewMessage:[Character] = ["I","A","P","查","询","内","购"]
fileprivate let kMomentTitle:String = "商品失败, "
fileprivate let k_halfName:String = "view viewtId:"

/*: "IAP查询内购商品失败, products.count为0." :*/
fileprivate let kTooValue:[Character] = ["I","A","P","查","询","内","购","\u{5546}","品","\u{5931}","败",","," ","p","r","o","d","u","c","t","s",".","c","o","u","n","t","\u{4e3a}","0","."]

/*: "IAP查询内购商品失败, Error: :*/
fileprivate let kActualFormat:[Character] = ["I","A","P","\u{67e5}","询","内","购","商","品","失","败",","," ","E","r","r","o","r"]
fileprivate let kAvailableViewContentUrl:[Character] = [":"]

/*: "IAP-purchased: :*/
fileprivate let k_extraStr:String = "IAP-pucurrent let select"
fileprivate let k_titleContent:[Character] = ["r"]
fileprivate let k_countPath:String = "chased:true inside record let"

/*: , 订单号: :*/
fileprivate let k_appViewData:[Character] = [","," ","\u{8ba2}","单","号",":"]

/*: , 商品Id: :*/
fileprivate let kGiftUrl:[Character] = [","," ","商","品","I","d",":"]

/*: , 苹果transId: :*/
fileprivate let k_listFormat:String = ", icon果"
fileprivate let kMakeMsg:[Character] = ["I","d",":"]

/*: "IAP-failed: :*/
fileprivate let kItemTitle:String = "IAP-fsize make data moment"
fileprivate let k_backPath:[Character] = ["a","i","l","e","d",":"]

/*: "IAP-deferred: :*/
fileprivate let k_dataFormat:[Character] = ["I","A","P","-","d","e","f","e","r","r","e","d",":"]

/*: "IAP未知交易类型: :*/
fileprivate let k_wordStr:[Character] = ["I","A","P","未","知","\u{4ea4}","易","类","型",":"]

/*: " 未知的交易类型" :*/
fileprivate let k_curveUrl:String = " 未知"

/*: "IAP获取本地收据数据失败, transactionId: :*/
fileprivate let kSizeUrl:String = "IAP获\u{53d6}"
fileprivate let k_itemImageUrl:String = "数据失败,"
fileprivate let kSignText:String = "actionIraw case let data"
fileprivate let k_waitUrl:[Character] = ["d",":"]

/*: , orderId: :*/
fileprivate let kPushPath:[Character] = [","," ","o","r","d","e"]
fileprivate let kSumKey:[Character] = ["r","I","d",":"]

/*: , payType: :*/
fileprivate let kMakeFormat:String = "frame user daily price, payT"
fileprivate let k_homeStr:[Character] = ["y","p","e",":"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  InformationThen.swift
//  AbroadTalking
//
//  Created by young on 2022/9/2.
//

//: import StoreKit
import StoreKit
//: import SwiftyJSON
import SwiftyJSON
//: import UIKit
import UIKit

// 苹果支付成功通知
//: public let APPLE_IAP_PAY_SUCCEED_NOTIFICATION = NSNotification.Name(rawValue: "APPLE_IAP_PAY_SUCCEED_NOTIFICATION")
public let const_onBottomTitle = NSNotification.Name(rawValue: String(bytes: k_photoValue.map{labelTool(app: $0)}, encoding: .utf8)!)
// 苹果订阅成功通知
//: public let APPLE_IAP_SUBSCRIBE_SUCCEED_NOTIFICATION = NSNotification.Name(rawValue: "APPLE_IAP_SUBSCRIBE_SUCCEED_NOTIFICATION")
public let data_scaleValue = NSNotification.Name(rawValue: String(bytes: kSubKey.map{popUser(conversation: $0)}, encoding: .utf8)!)
// 最大失败重试次数
//: let APPLE_IAP_MAX_RETRY_COUNT = 9
let dataKeyValue = 9

/// 支付类型
//: enum ApplePayType {
enum EndType {
    //: case Pay
    case Pay // 支付
    //: case Subscribe
    case Subscribe // 订阅
}

/// 支付状态
//: enum AppleIAPStatus: String {
enum SizeUserReplaceableCollection: String {
    //: case unknow            = "未知类型"
    case unknow = "未知类型"
    //: case createOrderFail   = "创建订单失败"
    case createOrderFail = "创建订单失败"
    //: case notArrow          = "设备不允许"
    case notArrow = "设备不允许"
    //: case noProductId       = "缺少产品Id"
    case noProductId = "缺少产品Id"
    //: case failed            = "交易失败/取消"
    case failed = "交易失败/取消"
    //: case restored          = "已购买过该商品"
    case restored = "已购买过该商品"
    //: case deferred          = "交易延期"
    case deferred = "交易延期"
    //: case verityFail        = "服务器验证失败"
    case verityFail = "服务器验证失败"
    //: case veritySucceed     = "服务器验证成功"
    case veritySucceed = "服务器验证成功"
    //: case renewSucceed      = "自动续订成功"
    case renewSucceed = "自动续订成功"
}

//: typealias IAPcompletionHandle = (AppleIAPStatus, Double, ApplePayType) -> Void
typealias IAPcompletionHandle = (SizeUserReplaceableCollection, Double, EndType) -> Void

//: class AppleIAPManager: NSObject {
class InformationThen: NSObject {
    //: var completionHandle: IAPcompletionHandle?
    var completionHandle: IAPcompletionHandle?
    //: private var productInfoReq: SKProductsRequest?
    private var productInfoReq: SKProductsRequest?
    //: private var reqRetryCountDict = [String: Int]()
    private var reqRetryCountDict = [String: Int]() // 记录每个交易请求重试次数
    //: private var payCacheList = [[String: String]]()
    private var payCacheList = [[String: String]]() // 【购买】缓存数据
    //: private var subscribeCacheList = [[String: String]]()
    private var subscribeCacheList = [[String: String]]() // 【订阅】缓存数据
    //: private var createOrderId: String?
    private var createOrderId: String? // 当前支付服务端创建的订单id
    //: private var currentPayType: ApplePayType = .Pay
    private var currentPayType: EndType = .Pay // 当前支付类型

    // singleton
    //: static let shared = AppleIAPManager()
    static let shared = InformationThen()
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: SKPaymentQueue.default().add(self as SKPaymentTransactionObserver)
        SKPaymentQueue.default().add(self as SKPaymentTransactionObserver)
        // 监听应用将要销毁
        //: NotificationCenter.default.addObserver(self, selector: #selector(appWillTerminate),
        NotificationCenter.default.addObserver(self, selector: #selector(backColor),
                                               //: name: UIApplication.willTerminateNotification,
                                               name: UIApplication.willTerminateNotification,
                                               //: object: nil)
                                               object: nil)
    }

    // MARK: - NotificationCenter

    //: @objc func appWillTerminate() {
    @objc func backColor() {
        //: SKPaymentQueue.default().remove(self as SKPaymentTransactionObserver)
        SKPaymentQueue.default().remove(self as SKPaymentTransactionObserver)
    }
}

// MARK: - 【苹果购买】业务接口

//: extension AppleIAPManager {
private extension InformationThen {
    /// 【购买】创建业务订单
    /// - Parameters:
    ///   - productId: 产品Id
    ///   - block: 回调
    //: fileprivate func req_pay_createAppleOrder(productId: String, source: Int, handle: @escaping (String?, Bool) -> Void) {
    func generateModel(productId: String, source: Int, handle: @escaping (String?, Bool) -> Void) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/recharge/createApplePay"
        reqModel.requestPath = (String(kFromData) + String(k_viewPath.suffix(7)))
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["productId"] = productId
        dict[(k_submitFormat.replacingOccurrences(of: "title", with: "p") + k_modelKey.replacingOccurrences(of: "gift", with: "od") + "ctId")] = productId
        //: dict["source"] = source
        dict[(kAllowTitle.lowercased())] = source
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: UploadLogTool.writeLog(msg: "IAP充值创建订单失败:\(String(describing: errorModel?.errorMsg)), 参数:\(dict).")
                UploadDisplayThen.makeSelected(msg: (k_unitName + "创建订单失败:") + "\(String(describing: errorModel?.errorMsg)), 参数:\(dict).")
                //: handle(nil, succeed)
                handle(nil, succeed)
                //: return
                return
            }

            //: let json = JSON(result!)
            let json = JSON(result!)
            //: let orderId = json["orderNum"].string
            let orderId = json[(String(k_makeStr.suffix(8)))].string
            //: handle(orderId, succeed)
            handle(orderId, succeed)
        }
    }

    /// 【购买】上传支付信息到服务器验证
    /// - Parameters:
    ///   - transaction: 交易信息
    ///   - params: 接口参数
    //: fileprivate func req_pay_uploadAppletransaction(_ transactionId: String, params: [String: String]) {
    func lowliness(_ transactionId: String, params: [String: String]) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/recharge/applePayNotify"
        reqModel.requestPath = (String(k_selectedValue) + String(kTempFormat.suffix(4)) + "plePa" + String(k_giftFormat.prefix(7)))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true || errorModel?.errorCode == 405 else {
            guard succeed == true || errorModel?.errorCode == 405 else { // 验证接口失败，重试接口
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
                    //: UploadLogTool.writeLog(msg: "IAP充值校验失败:\(String(describing: errorModel?.errorCode)), 参数:\(params).")
                    UploadDisplayThen.makeSelected(msg: (String(kSharedMsg)) + "\(String(describing: errorModel?.errorCode)), 参数:\(params).")
                    //: self.transcationPurchasedToCheck(transactionId, .Pay)
                    self.isothermal(transactionId, .Pay)
                }
                //: return
                return
            }

            //: let result = JSON(result ?? [:])
            let result = JSON(result ?? [:])

            // 过滤已验证成功的订单数据
            //: let newPayCacheList = self.payCacheList.filter({$0["transactionId"] != transactionId})
            let newPayCacheList = self.payCacheList.filter { $0[(String(kWithBlackText))] != transactionId }
            //: let diskPath = self.getPayCachePath()
            let diskPath = self.partakeAfterPath()
            //: NSKeyedArchiver.archiveRootObject(newPayCacheList, toFile: diskPath)
            NSKeyedArchiver.archiveRootObject(newPayCacheList, toFile: diskPath)

            // 成功通知
            //: NotificationCenter.default.post(name: APPLE_IAP_PAY_SUCCEED_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: const_onBottomTitle, object: nil)
            // 成功回调
            //: self.completionHandle?(.veritySucceed, result["reportMoney"].doubleValue, .Pay)
            self.completionHandle?(.veritySucceed, result[(kNoticeValue.replacingOccurrences(of: "count", with: "r") + "rtMoney")].doubleValue, .Pay)
        }
    }
}

// MARK: - 【苹果订阅】业务接口

//: extension AppleIAPManager {
private extension InformationThen {
    /// 【订阅】创建业务订单
    /// - Parameters:
    ///   - productId: 产品Id
    ///   - block: 回调
    //: fileprivate func req_subscribe_createAppleOrder(productId: String, source: Int, handle: @escaping (String?, Bool) -> Void) {
    func atCapture(productId: String, source: Int, handle: @escaping (String?, Bool) -> Void) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/AutoSub/AppleCreateOrder"
        reqModel.requestPath = (String(kTopData.suffix(5)) + "toSub/A" + kImageUrl.replacingOccurrences(of: "user", with: "pp") + String(k_hiddenMsg))
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["productId"] = productId
        dict[(k_submitFormat.replacingOccurrences(of: "title", with: "p") + k_modelKey.replacingOccurrences(of: "gift", with: "od") + "ctId")] = productId
        //: dict["source"] = source
        dict[(kAllowTitle.lowercased())] = source
        //: reqModel.params = dict
        reqModel.params = dict
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: UploadLogTool.writeLog(msg: "IAP订阅创建订单失败:\(String(describing: errorModel?.errorMsg)), 参数:\(dict).")
                UploadDisplayThen.makeSelected(msg: (String(k_currencyKey.prefix(5)) + "创建订单失败:") + "\(String(describing: errorModel?.errorMsg)), 参数:\(dict).")
                //: handle(nil, succeed)
                handle(nil, succeed)
                //: return
                return
            }

            //: let json = JSON(result!)
            let json = JSON(result!)
            //: let orderId = json["orderId"].string
            let orderId = json[String(bytes: k_viewLastMsg.map{countEvent(value: $0)}, encoding: .utf8)!].string
            //: handle(orderId, succeed)
            handle(orderId, succeed)
        }
    }

    /// 【订阅】上传支付信息到服务器验证
    /// - Parameters:
    ///   - transaction: 交易信息
    ///   - params: 接口参数
    //: fileprivate func req_subscribe_uploadAppletransaction(_ transactionId: String, params: [String: String]) {
    func titleToInvite(_ transactionId: String, params: [String: String]) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.requestPath = "mf/AutoSub/ApplePaySuccess"
        reqModel.requestPath = (String(k_appPath) + String(k_iconStr))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.showErrorStatusBar = false
        reqModel.showErrorStatusBar = false
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true || errorModel?.errorCode == 405 else {
            guard succeed == true || errorModel?.errorCode == 405 else { // 验证接口失败，重试接口
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
                    //: UploadLogTool.writeLog(msg: "IAP订阅校验失败:\(String(describing: errorModel?.errorCode)), 参数:\(params).")
                    UploadDisplayThen.makeSelected(msg: (String(k_targetBlockButtonTitle)) + "\(String(describing: errorModel?.errorCode)), 参数:\(params).")
                    //: self.transcationPurchasedToCheck(transactionId, .Subscribe)
                    self.isothermal(transactionId, .Subscribe)
                }
                //: return
                return
            }

            //: let result = JSON(result ?? [:])
            let result = JSON(result ?? [:])

            // 过滤已验证成功的订单数据
            //: let newSubscribeCacheList = self.subscribeCacheList.filter({$0["transactionId"] != transactionId})
            let newSubscribeCacheList = self.subscribeCacheList.filter { $0[(String(kWithBlackText))] != transactionId }
            //: let diskPath = self.getSubscribeCachePath()
            let diskPath = self.plungePath()
            //: NSKeyedArchiver.archiveRootObject(newSubscribeCacheList, toFile: diskPath)
            NSKeyedArchiver.archiveRootObject(newSubscribeCacheList, toFile: diskPath)

            // 成功通知
            //: NotificationCenter.default.post(name: APPLE_IAP_SUBSCRIBE_SUCCEED_NOTIFICATION, object: nil)
            NotificationCenter.default.post(name: data_scaleValue, object: nil)
            // 成功回调
            //: self.completionHandle?(.veritySucceed, result["reportMoney"].doubleValue, .Subscribe)
            self.completionHandle?(.veritySucceed, result[(kNoticeValue.replacingOccurrences(of: "count", with: "r") + "rtMoney")].doubleValue, .Subscribe)
        }
    }
}

// MARK: - Event

//: extension AppleIAPManager {
extension InformationThen {
    /// 初始化数据
    //: private func iap_initData() {
    private func rangeAssemblage() {
        //: self.payCacheList = getLocalPayCacheList(payType: .Pay)
        self.payCacheList = removeView(payType: .Pay)
        //: self.subscribeCacheList = getLocalPayCacheList(payType: .Subscribe)
        self.subscribeCacheList = removeView(payType: .Subscribe)
        //: self.createOrderId = nil
        self.createOrderId = nil
    }

    /// 获取缓存列表
    /// - Parameter payType: 支付类型
    /// - Returns: 缓存列表
    //: private func getLocalPayCacheList(payType: ApplePayType) -> [[String: String]] {
    private func removeView(payType: EndType) -> [[String: String]] {
        //: var list: [[String: String]]?
        var list: [[String: String]]?
        //: var diskPath = ""
        var diskPath = ""
        //: if payType == .Pay {
        if payType == .Pay {
            //: diskPath = getPayCachePath()
            diskPath = partakeAfterPath()
            //: } else {
        } else {
            //: diskPath = getSubscribeCachePath()
            diskPath = plungePath()
        }

        //: if FileManager.default.fileExists(atPath: diskPath) {
        if FileManager.default.fileExists(atPath: diskPath) {
            //: list = NSKeyedUnarchiver.unarchiveObject(withFile: diskPath) as? [[String: String]]
            list = NSKeyedUnarchiver.unarchiveObject(withFile: diskPath) as? [[String: String]]
            //: if list == nil {
            if list == nil {
                //: try? FileManager.default.removeItem(atPath: diskPath)
                try? FileManager.default.removeItem(atPath: diskPath)
            }
        }
        //: if list == nil {
        if list == nil {
            //: list = [[String: String]]()
            list = [[String: String]]()
        }
        //: return list!
        return list!
    }

    /// 获取【购买】缓存路径【和uid关联】
    /// - Returns: 缓存路径
    //: private func getPayCachePath() -> String {
    private func partakeAfterPath() -> String {
        //: let documentDirectoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentDirectoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let appDirectoryPath = (documentDirectoryPath as NSString).appendingPathComponent("App")
        let appDirectoryPath = (documentDirectoryPath as NSString).appendingPathComponent((String(k_succeedName)))

        //: let fileManager = FileManager.default
        let fileManager = FileManager.default
        //: if fileManager.fileExists(atPath: appDirectoryPath) == false {
        if fileManager.fileExists(atPath: appDirectoryPath) == false {
            //: try? fileManager.createDirectory(atPath: appDirectoryPath, withIntermediateDirectories: true)
            try? fileManager.createDirectory(atPath: appDirectoryPath, withIntermediateDirectories: true)
        }

        //: let uid = Defaults.string(forKey: TalkingLoginUidCacheKey) ?? ""
        let uid = show_blockText.string(forKey: kVoiceData) ?? ""
        //: let filePath = (appDirectoryPath as NSString).appendingPathComponent("OrderTransactionInfo_\(uid)")
        let filePath = (appDirectoryPath as NSString).appendingPathComponent((String(k_pathFormat.prefix(3)) + String(kPriceStr.suffix(5)) + "nsac" + k_nameContent.replacingOccurrences(of: "info", with: "io") + "Info_") + "\(uid)")
        //: return filePath
        return filePath
    }

    /// 获取【订阅】缓存路径【和uid关联】
    /// - Returns: 缓存路径
    //: private func getSubscribeCachePath() -> String {
    private func plungePath() -> String {
        //: let documentDirectoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentDirectoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let appDirectoryPath = (documentDirectoryPath as NSString).appendingPathComponent("App")
        let appDirectoryPath = (documentDirectoryPath as NSString).appendingPathComponent((String(k_succeedName)))

        //: let fileManager = FileManager.default
        let fileManager = FileManager.default
        //: if fileManager.fileExists(atPath: appDirectoryPath) == false {
        if fileManager.fileExists(atPath: appDirectoryPath) == false {
            //: try? fileManager.createDirectory(atPath: appDirectoryPath, withIntermediateDirectories: true)
            try? fileManager.createDirectory(atPath: appDirectoryPath, withIntermediateDirectories: true)
        }

        //: let uid = Defaults.string(forKey: TalkingLoginUidCacheKey) ?? ""
        let uid = show_blockText.string(forKey: kVoiceData) ?? ""
        //: let filePath = (appDirectoryPath as NSString).appendingPathComponent("OrderTransactionInfo_Subscribe_\(uid)")
        let filePath = (appDirectoryPath as NSString).appendingPathComponent(String(bytes: kDataPath.map{filterKey(observer: $0)}, encoding: .utf8)! + "\(uid)")
        //: return filePath
        return filePath
    }

    /// 获取本地收据数据
    /// - Parameters:
    ///   - transactionId: 收据标识符
    ///   - payType: 支付类型
    /// - Returns: 收据数据
    //: fileprivate func getVerifyData(_ transactionId: String, _ payType: ApplePayType) -> String? {
    fileprivate func equalDataVoice(_ transactionId: String, _ payType: EndType) -> String? {
        // 有未完成的订单，先取缓存
        //: var paramsArr = [[String: String]]()
        var paramsArr = [[String: String]]()
        //: switch(payType) {
        switch payType {
        //: case .Pay:
        case .Pay:
            //: paramsArr = self.payCacheList.filter({$0["transactionId"] == transactionId})
            paramsArr = self.payCacheList.filter { $0[(String(kWithBlackText))] == transactionId }
        //: case .Subscribe:
        case .Subscribe:
            //: paramsArr = self.subscribeCacheList.filter({$0["transactionId"] == transactionId})
            paramsArr = self.subscribeCacheList.filter { $0[(String(kWithBlackText))] == transactionId }
        }
        //: if paramsArr.count > 0 && paramsArr.first!["verifyData"] != nil {
        if paramsArr.count > 0, paramsArr.first![String(bytes: kUserMsg.map{currentToVideo(make: $0)}, encoding: .utf8)!] != nil {
            //: return paramsArr.first!["verifyData"]
            return paramsArr.first![String(bytes: kUserMsg.map{currentToVideo(make: $0)}, encoding: .utf8)!]
        }

        // 取本地
        //: guard let receiptUrl = Bundle.main.appStoreReceiptURL else { return nil }
        guard let receiptUrl = Bundle.main.appStoreReceiptURL else { return nil }
        //: let data = NSData(contentsOf: receiptUrl)
        let data = NSData(contentsOf: receiptUrl)
        //: let receiptStr = data?.base64EncodedString(options: NSData.Base64EncodingOptions(rawValue: 0))
        let receiptStr = data?.base64EncodedString(options: NSData.Base64EncodingOptions(rawValue: 0))
        //: return receiptStr
        return receiptStr
    }
}

// MARK: - 失败重试流程

//: extension AppleIAPManager {
extension InformationThen {
    /// 检测未完成的苹果支付【只会重试当前登录用户】
    //: func iap_checkUnfinishedTransactions() {
    func cellTo() {
        //: iap_initData()
        rangeAssemblage()

        // 【购买】失败重试
        //: for dict in self.payCacheList {
        for dict in self.payCacheList {
            //: iap_failedRetry(dict["transactionId"], .Pay)
            evokeRetry(dict[(String(kWithBlackText))], .Pay)
        }

        // 【订阅】失败重试
        //: for dict in self.subscribeCacheList {
        for dict in self.subscribeCacheList {
            //: iap_failedRetry(dict["transactionId"], .Subscribe)
            evokeRetry(dict[(String(kWithBlackText))], .Subscribe)
        }
    }

    /// 失败重试
    /// - Parameters:
    ///   - transactionId: Id
    ///   - payType: 支付类型
    //: private func iap_failedRetry(_ transactionId: String?, _ payType: ApplePayType) {
    private func evokeRetry(_ transactionId: String?, _ payType: EndType) {
        //: guard let transactionId = transactionId else { return }
        guard let transactionId = transactionId else { return }
        // 初始化每个交易请求次数
        //: reqRetryCountDict[transactionId] = 0
        reqRetryCountDict[transactionId] = 0
        // 3. 服务端校验流程
        //: transcationPurchasedToCheck(transactionId, payType)
        isothermal(transactionId, payType)
    }
}

// MARK: - 苹果正常支付流程

//: extension AppleIAPManager {
extension InformationThen {
    /// 发起苹果支付【1.创建订单； 2.发起苹果支付； 3.服务端校验】
    /// - Parameters:
    ///   - purchID: 产品ID
    ///   - payType: 支付类型
    ///   - handle: 回调
    ///   - source: 0 常规充值 1 观看视频后充值或订阅
    //: func iap_startPurchase(productId: String, payType: ApplePayType, source: Int = 0, handle: @escaping IAPcompletionHandle) {
    func roundLeaf(productId: String, payType: EndType, source: Int = 0, handle: @escaping IAPcompletionHandle) {
        //: iap_initData()
        rangeAssemblage()
        //: self.completionHandle = handle
        self.completionHandle = handle
        //: self.currentPayType = payType
        self.currentPayType = payType

        // 1. 根据类型创建订单
        //: switch(payType) {
        switch payType {
        //: case .Pay:
        case .Pay:
            //: req_pay_createAppleOrder(productId: productId, source: source) { [weak self] orderId, succeed in
            generateModel(productId: productId, source: source) { [weak self] orderId, succeed in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: guard succeed == true && orderId != nil else {
                guard succeed == true && orderId != nil else { // 订单创建失败
                    //: self.completionHandle?(.createOrderFail, 0, .Pay)
                    self.completionHandle?(.createOrderFail, 0, .Pay)
                    //: return
                    return
                }

                //: self.createOrderId = orderId
                self.createOrderId = orderId
                //: self.requestProductInfo(productId)
                self.allowConsignment(productId)
            }

        //: case .Subscribe:
        case .Subscribe:
            //: req_subscribe_createAppleOrder(productId: productId, source: source) { [weak self] orderId, succeed in
            atCapture(productId: productId, source: source) { [weak self] orderId, succeed in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: guard succeed == true && orderId != nil else {
                guard succeed == true && orderId != nil else { // 订单创建失败
                    //: self.completionHandle?(.createOrderFail, 0, .Subscribe)
                    self.completionHandle?(.createOrderFail, 0, .Subscribe)
                    //: return
                    return
                }

                //: self.createOrderId = orderId
                self.createOrderId = orderId
                //: self.requestProductInfo(productId)
                self.allowConsignment(productId)
            }
        }
    }

    // 2 发起苹果支付，查询apple内购商品
    //: fileprivate func requestProductInfo(_ productId: String) {
    fileprivate func allowConsignment(_ productId: String) {
        //: guard SKPaymentQueue.canMakePayments() else {
        guard SKPaymentQueue.canMakePayments() else {
            //: UploadLogTool.writeLog(msg: "IAP查询内购商品失败, productId:\(productId).")
            UploadDisplayThen.makeSelected(msg: (String(kViewMessage) + kMomentTitle.capitalized + "produc" + String(k_halfName.suffix(4))) + "\(productId).")
            //: self.completionHandle?(.notArrow, 0, currentPayType)
            self.completionHandle?(.notArrow, 0, currentPayType)
            //: return
            return
        }

        // 销毁当前请求
        //: self.clearProductInfoRequest()
        self.detailRequest()
        // 查询apple内购商品
        //: let identifiers: Set<String> = [productId]
        let identifiers: Set<String> = [productId]
        //: productInfoReq = SKProductsRequest(productIdentifiers: identifiers)
        productInfoReq = SKProductsRequest(productIdentifiers: identifiers)
        //: productInfoReq?.delegate = self
        productInfoReq?.delegate = self
        //: productInfoReq?.start()
        productInfoReq?.start()
    }

    // 销毁当前请求
    //: fileprivate func clearProductInfoRequest() {
    fileprivate func detailRequest() {
        //: guard productInfoReq != nil else { return }
        guard productInfoReq != nil else { return }
        //: productInfoReq?.delegate = nil
        productInfoReq?.delegate = nil
        //: productInfoReq?.cancel()
        productInfoReq?.cancel()
        //: productInfoReq = nil
        productInfoReq = nil
    }
}

// MARK: - SKProductsRequestDelegate【商品查询】

//: extension AppleIAPManager: SKProductsRequestDelegate {
extension InformationThen: SKProductsRequestDelegate {
    // 查询apple内购商品成功回调
    //: func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
    func productsRequest(_: SKProductsRequest, didReceive response: SKProductsResponse) {
        //: guard response.products.count > 0 else {
        guard response.products.count > 0 else {
            //: UploadLogTool.writeLog(msg: "IAP查询内购商品失败, products.count为0.")
            UploadDisplayThen.makeSelected(msg: (String(kTooValue)))
            //: self.completionHandle?( .noProductId, 0, currentPayType)
            self.completionHandle?(.noProductId, 0, currentPayType)
            //: return
            return
        }

        //: let payment = SKPayment(product: response.products.first!)
        let payment = SKPayment(product: response.products.first!)
        //: SKPaymentQueue.default().add(payment)
        SKPaymentQueue.default().add(payment)
    }

    // 查询apple内购商品失败
    //: func request(_ request: SKRequest, didFailWithError error: Error) {
    func request(_: SKRequest, didFailWithError error: Error) {
        //: UploadLogTool.writeLog(msg: "IAP查询内购商品失败, Error:\(error).")
        UploadDisplayThen.makeSelected(msg: (String(kActualFormat) + String(kAvailableViewContentUrl)) + "\(error).")
        //: self.completionHandle?( .noProductId, 0, currentPayType)
        self.completionHandle?(.noProductId, 0, currentPayType)
    }

    // 查询apple内购商品完成
    //: func requestDidFinish(_ request: SKRequest) {
    func requestDidFinish(_: SKRequest) {}
}

// MARK: - SKPaymentTransactionObserver【支付回调】

//: extension AppleIAPManager: SKPaymentTransactionObserver {
extension InformationThen: SKPaymentTransactionObserver {
    /// 2.2 apple内购完成回调
    //: func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
    func paymentQueue(_: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        //: for transaction in transactions {
        for transaction in transactions {
            //: switch transaction.transactionState {
            switch transaction.transactionState {
            //: case .purchasing:
            case .purchasing: // 交易中
                //: break
                break
            //: case .purchased:
            case .purchased: // 交易成功
                /**
                 original.transactionIdentifier 首次订阅时为nil，transaction.transactionIdentifier有值；
                 后续自动订阅、续订时，original.transactionIdentifier为首次订阅时生成的transaction.transactionIdentifier，值固定不变；
                 每次订阅transaction.transactionIdentifier都不一样，为当前交易的标识；
                 */
                //: if transaction.original != nil && createOrderId == nil {
                if transaction.original != nil && createOrderId == nil { // 启动自动续订时，不需要调用服务端验证接口
                    //: self.completionHandle?(.renewSucceed, 0, currentPayType)
                    self.completionHandle?(.renewSucceed, 0, currentPayType)
                    //: } else {
                } else { // 普通购买和订阅
                    //: UploadLogTool.writeLog(msg: "IAP-purchased:\(currentPayType), 订单号:\(String(describing: createOrderId)), 商品Id:\(transaction.payment.productIdentifier), 苹果transId:\(String(describing: transaction.transactionIdentifier)).")
                    UploadDisplayThen.makeSelected(msg: (String(k_extraStr.prefix(6)) + String(k_titleContent) + String(k_countPath.prefix(7))) + "\(currentPayType)" + (String(k_appViewData)) + "\(String(describing: createOrderId))" + (String(kGiftUrl)) + "\(transaction.payment.productIdentifier)" + (k_listFormat.replacingOccurrences(of: "icon", with: "苹") + "trans" + String(kMakeMsg)) + "\(String(describing: transaction.transactionIdentifier)).")
                    // 初始化每个交易请求次数
                    //: reqRetryCountDict[transaction.transactionIdentifier!] = 0
                    reqRetryCountDict[transaction.transactionIdentifier!] = 0
                    // 3. 服务端校验流程
                    //: transcationPurchasedToCheck(transaction.transactionIdentifier!, self.currentPayType)
                    isothermal(transaction.transactionIdentifier!, self.currentPayType)
                }
                // 移除苹果支付系统缓存
                //: SKPaymentQueue.default().finishTransaction(transaction)
                SKPaymentQueue.default().finishTransaction(transaction)
                //: createOrderId = nil
                createOrderId = nil
            //: case .failed:
            case .failed: // 交易失败/取消
                //: SKPaymentQueue.default().finishTransaction(transaction)
                SKPaymentQueue.default().finishTransaction(transaction)
                //: UploadLogTool.writeLog(msg: "IAP-failed:\(currentPayType), 订单号:\(String(describing: createOrderId)), 商品Id:\(transaction.payment.productIdentifier), 苹果transId:\(String(describing: transaction.transactionIdentifier)).")
                UploadDisplayThen.makeSelected(msg: (String(kItemTitle.prefix(5)) + String(k_backPath)) + "\(currentPayType)" + (String(k_appViewData)) + "\(String(describing: createOrderId))" + (String(kGiftUrl)) + "\(transaction.payment.productIdentifier)" + (k_listFormat.replacingOccurrences(of: "icon", with: "苹") + "trans" + String(kMakeMsg)) + "\(String(describing: transaction.transactionIdentifier)).")
                //: self.completionHandle?(.failed, 0, currentPayType)
                self.completionHandle?(.failed, 0, currentPayType)
                //: createOrderId = nil
                createOrderId = nil
            //: case .restored:
            case .restored: // 已购买过该商品
                //: SKPaymentQueue.default().finishTransaction(transaction)
                SKPaymentQueue.default().finishTransaction(transaction)
                //: self.completionHandle?(.restored, 0, currentPayType)
                self.completionHandle?(.restored, 0, currentPayType)
                //: createOrderId = nil
                createOrderId = nil
            //: case .deferred:
            case .deferred: // 交易延期
                //: SKPaymentQueue.default().finishTransaction(transaction)
                SKPaymentQueue.default().finishTransaction(transaction)
                //: UploadLogTool.writeLog(msg: "IAP-deferred:\(currentPayType), 订单号:\(String(describing: createOrderId)), 商品Id:\(transaction.payment.productIdentifier), 苹果transId:\(String(describing: transaction.transactionIdentifier)).")
                UploadDisplayThen.makeSelected(msg: (String(k_dataFormat)) + "\(currentPayType)" + (String(k_appViewData)) + "\(String(describing: createOrderId))" + (String(kGiftUrl)) + "\(transaction.payment.productIdentifier)" + (k_listFormat.replacingOccurrences(of: "icon", with: "苹") + "trans" + String(kMakeMsg)) + "\(String(describing: transaction.transactionIdentifier)).")
                //: self.completionHandle?(.deferred, 0, currentPayType)
                self.completionHandle?(.deferred, 0, currentPayType)
                //: createOrderId = nil
                createOrderId = nil
            //: @unknown default:
            @unknown default:
                //: SKPaymentQueue.default().finishTransaction(transaction)
                SKPaymentQueue.default().finishTransaction(transaction)
                //: self.completionHandle?(.unknow, 0, currentPayType)
                self.completionHandle?(.unknow, 0, currentPayType)
                //: createOrderId = nil
                createOrderId = nil
                //: UploadLogTool.writeLog(msg: "IAP未知交易类型:\(currentPayType), 订单号:\(String(describing: createOrderId)), 商品Id:\(transaction.payment.productIdentifier), 苹果transId:\(String(describing: transaction.transactionIdentifier)).")
                UploadDisplayThen.makeSelected(msg: (String(k_wordStr)) + "\(currentPayType)" + (String(k_appViewData)) + "\(String(describing: createOrderId))" + (String(kGiftUrl)) + "\(transaction.payment.productIdentifier)" + (k_listFormat.replacingOccurrences(of: "icon", with: "苹") + "trans" + String(kMakeMsg)) + "\(String(describing: transaction.transactionIdentifier)).")
                //: fatalError(" 未知的交易类型")
                fatalError((k_curveUrl.capitalized + "的交易类\u{578b}"))
            }
        }
    }

    /// 3. 服务端校验流程
    /// - Parameters:
    ///   - transactionId: 交易唯一标识符
    ///   - payType: 支付类型
    //: fileprivate func transcationPurchasedToCheck(_ transactionId: String, _ payType: ApplePayType) {
    fileprivate func isothermal(_ transactionId: String, _ payType: EndType) {
        //: guard let receiptStr = getVerifyData(transactionId, payType) else {
        guard let receiptStr = equalDataVoice(transactionId, payType) else {
            //: UploadLogTool.writeLog(msg: "IAP获取本地收据数据失败, transactionId:\(transactionId), orderId:\(String(describing: createOrderId)), payType:\(payType).")
            UploadDisplayThen.makeSelected(msg: (kSizeUrl + "\u{672c}地收据" + k_itemImageUrl.capitalized + " trans" + String(kSignText.prefix(7)) + String(k_waitUrl)) + "\(transactionId)" + (String(kPushPath) + String(kSumKey)) + "\(String(describing: createOrderId))" + (String(kMakeFormat.suffix(6)) + String(k_homeStr)) + "\(payType).")
            //: self.completionHandle?(.verityFail, 0, payType)
            self.completionHandle?(.verityFail, 0, payType)
            //: return
            return
        }

        // 缓存支付成功信息，防止接口校验失败
        //: if createOrderId != nil {
        if createOrderId != nil { // 正常支付流程
            //: switch(payType) {
            switch payType {
            //: case .Pay:
            case .Pay:
                //: if self.payCacheList.filter({$0["transactionId"] == transactionId || $0["orderId"] == createOrderId}).count == 0 {  // 防止重复添加缓存数据
                if self.payCacheList.filter({ $0[(String(kWithBlackText))] == transactionId || $0[String(bytes: k_viewLastMsg.map{countEvent(value: $0)}, encoding: .utf8)!] == createOrderId }).count == 0 { // 防止重复添加缓存数据
                    //: let cacheDict = ["transactionId": transactionId,
                    let cacheDict = [(String(kWithBlackText)): transactionId,
                                     //: "orderId": createOrderId!,
                                     String(bytes: k_viewLastMsg.map{countEvent(value: $0)}, encoding: .utf8)!: createOrderId!,
                                     //: "verifyData": receiptStr]
                                     String(bytes: kUserMsg.map{currentToVideo(make: $0)}, encoding: .utf8)!: receiptStr]
                    //: self.payCacheList.append(cacheDict)
                    self.payCacheList.append(cacheDict)
                    //: let diskPath = self.getPayCachePath()
                    let diskPath = self.partakeAfterPath()
                    //: NSKeyedArchiver.archiveRootObject(self.payCacheList, toFile: diskPath)
                    NSKeyedArchiver.archiveRootObject(self.payCacheList, toFile: diskPath)
                }

            //: case .Subscribe:
            case .Subscribe:
                //: if self.subscribeCacheList.filter({$0["transactionId"] == transactionId || $0["orderId"] == createOrderId}).count == 0 { // 防止重复添加缓存数据
                if self.subscribeCacheList.filter({ $0[(String(kWithBlackText))] == transactionId || $0[String(bytes: k_viewLastMsg.map{countEvent(value: $0)}, encoding: .utf8)!] == createOrderId }).count == 0 { // 防止重复添加缓存数据
                    //: let cacheDict = ["transactionId": transactionId,
                    let cacheDict = [(String(kWithBlackText)): transactionId,
                                     //: "orderId": createOrderId!,
                                     String(bytes: k_viewLastMsg.map{countEvent(value: $0)}, encoding: .utf8)!: createOrderId!,
                                     //: "verifyData": receiptStr]
                                     String(bytes: kUserMsg.map{currentToVideo(make: $0)}, encoding: .utf8)!: receiptStr]
                    //: self.subscribeCacheList.append(cacheDict)
                    self.subscribeCacheList.append(cacheDict)
                    //: let diskPath = self.getSubscribeCachePath()
                    let diskPath = self.plungePath()
                    //: NSKeyedArchiver.archiveRootObject(self.subscribeCacheList, toFile: diskPath)
                    NSKeyedArchiver.archiveRootObject(self.subscribeCacheList, toFile: diskPath)
                }
            }
        }

        // 限制交易重试最大次数
        //: var reqCount = reqRetryCountDict[transactionId] ?? 0
        var reqCount = reqRetryCountDict[transactionId] ?? 0
        //: reqCount += 1
        reqCount += 1
        //: reqRetryCountDict[transactionId] = reqCount
        reqRetryCountDict[transactionId] = reqCount
        //: if reqCount > APPLE_IAP_MAX_RETRY_COUNT {
        if reqCount > dataKeyValue {
            //: self.completionHandle?(.verityFail, 0, payType)
            self.completionHandle?(.verityFail, 0, payType)
            //: return
            return
        }

        // 3.服务端校验，根据transactionId从缓存中取
        //: switch(payType) {
        switch payType {
        //: case .Pay:
        case .Pay:
            //: let paramsArr = self.payCacheList.filter({$0["transactionId"] == transactionId})
            let paramsArr = self.payCacheList.filter { $0[(String(kWithBlackText))] == transactionId }
            //: guard paramsArr.count > 0 else { return }
            guard paramsArr.count > 0 else { return }
            //: req_pay_uploadAppletransaction(transactionId, params: paramsArr.first!)
            lowliness(transactionId, params: paramsArr.first!)

        //: case .Subscribe:
        case .Subscribe:
            //: let paramsArr = self.subscribeCacheList.filter({$0["transactionId"] == transactionId})
            let paramsArr = self.subscribeCacheList.filter { $0[(String(kWithBlackText))] == transactionId }
            //: guard paramsArr.count > 0 else { return }
            guard paramsArr.count > 0 else { return }
            //: req_subscribe_uploadAppletransaction(transactionId, params: paramsArr.first!)
            titleToInvite(transactionId, params: paramsArr.first!)
        }
    }
}
