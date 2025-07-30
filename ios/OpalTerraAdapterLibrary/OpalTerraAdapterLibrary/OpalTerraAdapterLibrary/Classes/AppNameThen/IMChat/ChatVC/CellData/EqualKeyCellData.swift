
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kMakeName:[UInt8] = [0xeb,0xec,0xeb,0xf6,0xaa,0xe1,0xed,0xe6,0xe7,0xf0,0xb8,0xab,0xa2,0xea,0xe3,0xf1,0xa2,0xec,0xed,0xf6,0xa2,0xe0,0xe7,0xe7,0xec,0xa2,0xeb,0xef,0xf2,0xee,0xe7,0xef,0xe7,0xec,0xf6,0xe7,0xe6]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EqualKeyCellData.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/2/28.
//

//: import UIKit
import UIKit

//: @objcMembers public class EqualKeyCellData: TalkingChatMsgBaseCellData {
@objcMembers public class EqualKeyCellData: GroupReactiveCompatible {
    //: override public init(direction: TMsgDirection) {
    override public init(direction: UserAppMeasurable) {
        //: super.init(direction: direction)
        super.init(direction: direction)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kMakeName.map{$0^130}, encoding: .utf8)!)
    }

    //: public override func voiceOver() -> CGSize {
    override public func voiceOver() -> CGSize {
        //: return CGSize(width: 120, height: 120)
        return CGSize(width: 120, height: 120)
    }
}
