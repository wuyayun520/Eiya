
//: Declare String Begin

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ExaggerateHandyJSON.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/13.
//

//: import HandyJSON
import HandyJSON
//: import UIKit
import UIKit

//: @objcMembers class TalkingMsgBaseModel: NSObject, HandyJSON {
@objcMembers class ExaggerateHandyJSON: NSObject, HandyJSON {
    //: var msgInfo: TalkingMsgInfoModel?
    var msgInfo: RangeModelType?
    //: var gift: TalkingMsgGiftModel?
    var gift: PtolemaicSystemMeasurable?
    //: var user: TalkingMsgUserModel?
    var user: TwitchMeasurable?
    //: var toUser: TalkingMsgToUserModel?
    var toUser: PublishRemoteHandyJSON?

    //: required override init() {}
    override required init() {}
}

//: class TalkingMsgInfoModel: NSObject, HandyJSON {
class RangeModelType: NSObject, HandyJSON {
    //: var msgId = ""
    var msgId = ""
    //: var content = ""
    var content = ""
    //: var contentType = ""
    var contentType = ""
    //: var imageUri = ""
    var imageUri = ""
    //: var uid = ""
    var uid = ""
    //: var toUid = ""
    var toUid = ""
    //: var mfBean = ""
    var mfBean = ""

    //: required override init() {}
    override required init() {}
}

//: class TalkingMsgUserModel: NSObject, HandyJSON {
class TwitchMeasurable: NSObject, HandyJSON {
    //: var uid = ""
    var uid = ""
    //: var nickname = ""
    var nickname = ""
    //: var headPic = ""
    var headPic = ""
    //: var age = ""
    var age = ""
    //: required override init() {}
    override required init() {}
}

//: class TalkingMsgToUserModel: NSObject, HandyJSON {
class PublishRemoteHandyJSON: NSObject, HandyJSON {
    //: var uid = ""
    var uid = ""
    //: var nickname = ""
    var nickname = ""
    //: var headPic = ""
    var headPic = ""

    //: required override init() {}
    override required init() {}
}

//: class TalkingMsgGiftModel: NSObject, HandyJSON {
class PtolemaicSystemMeasurable: NSObject, HandyJSON {
    //: var iosEffect = ""
    var iosEffect = ""
    //: var animationTimes = ""
    var animationTimes = ""
    //: var price = ""
    var price = ""
    //: var imgPreview = ""
    var imgPreview = ""
    //: var giftNum = ""
    var giftNum = ""
    //: var sendNum = ""
    var sendNum = ""
    //: var showType = ""
    var showType = ""
    //: var name = ""
    var name = ""
    //: var num = ""
    var num = ""
    //: var iosVapEffect = ""
    var iosVapEffect = ""

    //: required override init() {}
    override required init() {}
}
