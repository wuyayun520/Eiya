
//: Declare String Begin

/*: "mf/user/recommendUser" :*/
fileprivate let kCardMsg:[Character] = ["m","f","/","u","s","e","r","/","r","e","c","o","m","m","e","n","d","U","s","e"]
fileprivate let kLengthMatchId:[Character] = ["r"]

/*: "page" :*/
fileprivate let k_burnMsg:[UInt8] = [0xd8,0xc9,0xcf,0xcd]

private func thumbBack(view num: UInt8) -> UInt8 {
    return num ^ 168
}

/*: "mf/user/singleUser" :*/
fileprivate let kLabData:String = "mf/uself indicator place string"
fileprivate let kEmptyId:String = "item if image makengleUser"

/*: "uid" :*/
fileprivate let kToolKey:[UInt8] = [0x64,0x69,0x75]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HiddenThen.swift
//  AbroadTalking
//
//  Created by young on 2023/1/11.
//

//: import UIKit
import UIKit

//: class TalkingSearchManager: NSObject {
class HiddenThen: NSObject {
    // 列表分页
    //: var recommendListPage = 0
    var recommendListPage = 0

    /// 推荐用户列表
    /// - Parameter completion: 回调
    //: func req_recommendUser(completion: @escaping FinishBlock) {
    func personRecommendCompletion(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/user/recommendUser"
        reqModel.requestPath = (String(kCardMsg) + String(kLengthMatchId))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["page": recommendListPage]
        reqModel.params = [String(bytes: k_burnMsg.map{thumbBack(view: $0)}, encoding: .utf8)!: recommendListPage]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: guard succeed == true else {
            guard succeed == true else {
                //: completion(succeed, result, errorModel)
                completion(succeed, result, errorModel)
                //: return
                return
            }

            //: if self.recommendListPage == 0 {
            if self.recommendListPage == 0 {
                //: self.recommendDataArr.removeAll()
                self.recommendDataArr.removeAll()
            }

            //: for dict in result as! [Dictionary<String, Any>] {
            for dict in result as! [[String: Any]] {
                //: if let model = TalkingRecommendUserModel.deserialize(from: dict as? Dictionary) {
                if let model = PerformanceHandyJSON.deserialize(from: dict as? Dictionary) {
                    //: self.recommendDataArr.append(model)
                    self.recommendDataArr.append(model)
                }
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 搜索uid
    /// - Parameters:
    ///   - uid: 用户ID
    ///   - completion: 回调
    //: func req_singleUser(uid: String, completion: @escaping FinishBlock) {
    func safety(uid: String, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/user/singleUser"
        reqModel.requestPath = (String(kLabData.prefix(4)) + "ser/si" + String(kEmptyId.suffix(8)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: reqModel.params = ["uid": uid]
        reqModel.params = [String(bytes: kToolKey.reversed(), encoding: .utf8)!: uid]
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: self.searchListDataArr.removeAll()
            self.searchListDataArr.removeAll()
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

            //: if let model = TalkingRecommendUserModel.deserialize(from: result) {
            if let model = PerformanceHandyJSON.deserialize(from: result) {
                //: self.searchListDataArr.append(model)
                self.searchListDataArr.append(model)
            }

            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    // MARK: - Lazy Load

    //: lazy var recommendDataArr: [TalkingRecommendUserModel] = {
    lazy var recommendDataArr: [PerformanceHandyJSON] = //: return Array<PerformanceHandyJSON>()
        .init()
    //: }()

    //: lazy var searchListDataArr: [TalkingRecommendUserModel] = {
    lazy var searchListDataArr: [PerformanceHandyJSON] = //: return Array<PerformanceHandyJSON>()
        .init()
    //: }()
}
