
//: Declare String Begin

/*: "allowList" :*/
fileprivate let k_attributeData:String = "scale"
fileprivate let k_toolModePath:String = "lowListin in"

/*: "denyList" :*/
fileprivate let kNameButtonContent:String = "image"
fileprivate let kDeadlineTitle:[Character] = ["n","y","L","i","s","t"]

/*: "America" :*/
fileprivate let kServerValue:String = "Americato image false"

/*: "US" :*/
fileprivate let k_makeKey:[Character] = ["U","S"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EndLocationTool.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingLocationTool: NSObject {
class EndLocationTool: NSObject {
    //: var areaArr = [TalkingAreaModel]()
    var areaArr = [DataHandyJSON]() /// 注册允许国家列表（白名单）
    //: var blackListAreaArr = [TalkingAreaModel]()
    var blackListAreaArr = [DataHandyJSON]() /// 注册不允许国家列表（黑名单）

    //: static let share = TalkingLocationTool()
    static let share = EndLocationTool()
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: func__loadAreaCodeData()
        loadError()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: extension TalkingLocationTool {
extension EndLocationTool {
    //: private func func__loadAreaCodeData() {
    private func loadError() {
        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: TalkingLoginRequestTool.req_countryList {succeed, result, errorModel in
        IngatheringPullReactiveCompatible.developingTotalry { succeed, result, _ in
            //: EndProgressHUD.popEnable()
            EndProgressHUD.popEnable()
            //: if succeed {
            if succeed {
                //: let dict: Dictionary =  result as! Dictionary<String, Any>
                let dict: Dictionary = result as! [String: Any]
                //: let allowArray: Array =  dict["allowList"] as! Array<Any>
                let allowArray: Array = dict[(k_attributeData.replacingOccurrences(of: "scale", with: "al") + String(k_toolModePath.prefix(7)))] as! [Any]
                //: let denyListArray: Array =  dict["denyList"] as! Array<Any>
                let denyListArray: Array = dict[(kNameButtonContent.replacingOccurrences(of: "image", with: "de") + String(kDeadlineTitle))] as! [Any]

                //: if let datas = Array<TalkingAreaModel>.deserialize(from: allowArray as? Array) {
                if let datas = Array<DataHandyJSON>.deserialize(from: allowArray as? Array) {
                    //: self.areaArr.append(contentsOf: (datas as? [TalkingAreaModel])!)
                    self.areaArr.append(contentsOf: (datas as? [DataHandyJSON])!)
                }
                //: if let blackdatas = Array<TalkingAreaModel>.deserialize(from: denyListArray as? Array) {
                if let blackdatas = Array<DataHandyJSON>.deserialize(from: denyListArray as? Array) {
                    //: self.blackListAreaArr.append(contentsOf: (blackdatas as? [TalkingAreaModel])!)
                    self.blackListAreaArr.append(contentsOf: (blackdatas as? [DataHandyJSON])!)
                }
            }
        }
    }

    /// （注册风控使用）是否包含当前国家，包含则禁止注册
    /// - Returns: false: 不包含，true: 包含
    //: static func isIncludeBlackListCountry() -> Bool {
    static func telecasting() -> Bool {
        //: var include = false
        var include = false
        //: let simInfo = UIDevice.getDeviceSimInfo()
        let simInfo = UIDevice.magnitudelessness()
        //: let arr = TalkingLocationTool.share.blackListAreaArr
        let arr = EndLocationTool.share.blackListAreaArr
        //: for model in arr {
        for model in arr {
            //: if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
            if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
                //: include = true
                include = true
                //: break
                break
            }
        }

        //: return include
        return include
    }

    /// （注册流程选择）选择国家编号使用，白名单
    //: func getDefaltCountry() -> TalkingAreaModel {
    func mortification() -> DataHandyJSON {
        //: let simInfo = UIDevice.getDeviceSimInfo()
        let simInfo = UIDevice.magnitudelessness()
        //: let arr = TalkingLocationTool.share.areaArr
        let arr = EndLocationTool.share.areaArr
        //: for model in arr {
        for model in arr {
            //: if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
            if simInfo.contains(model.countryCode.uppercased()) || simInfo.contains(model.countryCode.lowercased()) {
                //: return model
                return model
            }
        }
        //: return TalkingAreaModel.init(areaCode: "1", areaName: "America", countryCode: "US", url: "")
        return DataHandyJSON(areaCode: "1", areaName: (String(kServerValue.prefix(7))), countryCode: "US", url: "")
    }
}

//: class TalkingAreaModel: HandyJSON {
class DataHandyJSON: HandyJSON {
    //: var areaCode = ""
    var areaCode = ""
    //: var countryCode = ""
    var countryCode = ""
    //: @objc var areaName = ""
    @objc var areaName = ""
    //: var url = ""
    var url = ""
    //: required init() {}
    required init() {}
    //: init(areaCode: String, areaName: String, countryCode: String, url:String) {
    init(areaCode: String, areaName: String, countryCode: String, url: String) {
        //: self.areaCode = areaCode
        self.areaCode = areaCode
        //: self.areaName = areaName
        self.areaName = areaName
        //: self.countryCode = countryCode
        self.countryCode = countryCode
        //: self.url = url
        self.url = url
    }
}
