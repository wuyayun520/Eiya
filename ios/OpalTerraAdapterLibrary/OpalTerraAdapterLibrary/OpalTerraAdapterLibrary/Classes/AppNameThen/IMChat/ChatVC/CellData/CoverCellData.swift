
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_topKey:[UInt8] = [0x89,0x8e,0x89,0x94,0x48,0x83,0x8f,0x84,0x85,0x92,0x5a,0x49,0x40,0x88,0x81,0x93,0x40,0x8e,0x8f,0x94,0x40,0x82,0x85,0x85,0x8e,0x40,0x89,0x8d,0x90,0x8c,0x85,0x8d,0x85,0x8e,0x94,0x85,0x84]

fileprivate func contentDataPrivacy(cell num: UInt8) -> UInt8 {
    let value = Int(num) + 224
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "My interests：%@" :*/
fileprivate let kLinkRouteTitle:String = "My infield custom text var"
fileprivate let kModelData:[Character] = ["s","t","s","：","%","@"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CoverCellData.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/2/28.
//

//: import UIKit
import UIKit

//: @objcMembers public class TalkingChatMatchMsgCellData: TalkingChatMsgBaseCellData {
@objcMembers public class CoverCellData: GroupReactiveCompatible {
    //: override public init(direction: TMsgDirection) {
    override public init(direction: UserAppMeasurable) {
        //: super.init(direction: direction)
        super.init(direction: direction)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_topKey.map{contentDataPrivacy(cell: $0)}, encoding: .utf8)!)
    }

    //: override public func voiceOver() -> CGSize {
    override public func voiceOver() -> CGSize {
        //: var contentHeight = 85
        var contentHeight = 85
        /// 为空时必须初始化
        //: let userInfoModel = self.msgModel.userInfoModel ?? HumankindThen.init()
        let userInfoModel = self.msgModel.userInfoModel ?? HumankindThen()
        //: if !userInfoModel.uid.isEmptyString {
        if !userInfoModel.uid.isEmptyString {
            //: contentHeight += 80
            contentHeight += 80
            //: if userInfoModel.interest.count > 0 {
            if userInfoModel.interest.count > 0 {
                //: let arr_1: NSArray = userInfoModel.interest as NSArray
                let arr_1: NSArray = userInfoModel.interest as NSArray
                //: let str_1 = arr_1.componentsJoined(by: "，") as String
                let str_1 = arr_1.componentsJoined(by: "，") as String
                //: let str: String = "My interests：%@".localizedArguments(str_1)
                let str: String = (String(kLinkRouteTitle.prefix(5)) + "tere" + String(kModelData)).edgeDelay(str_1)
                //: let attributes = [.font: UIFont.pingfangMediumFont(fontSize: 15)] as [NSAttributedString.Key: Any]
                let attributes = [.font: UIFont.tapShared(fontSize: 15)] as [NSAttributedString.Key: Any]

                //: let attributedStr = NSAttributedString(string: str, attributes: attributes)
                let attributedStr = NSAttributedString(string: str, attributes: attributes)
                //: let contentSize = attributedStr.boundingRect(with: CGSize.init(width: ScreenWidth-54, height: CGFloat(MAXFLOAT)), options: [.usesLineFragmentOrigin, .usesFontLeading], context: nil ).size
                let contentSize = attributedStr.boundingRect(with: CGSize(width: constFormalContent - 54, height: CGFloat(MAXFLOAT)), options: [.usesLineFragmentOrigin, .usesFontLeading], context: nil).size
                //: contentHeight += 8 + Int(contentSize.height)
                contentHeight += 8 + Int(contentSize.height)
            }
            //: if userInfoModel.picture.count > 0 {
            if userInfoModel.picture.count > 0 {
                //: contentHeight += 92
                contentHeight += 92
            }
        }
        //: return CGSize(width: ScreenWidth, height: CGFloat(contentHeight))
        return CGSize(width: constFormalContent, height: CGFloat(contentHeight))
    }
}
