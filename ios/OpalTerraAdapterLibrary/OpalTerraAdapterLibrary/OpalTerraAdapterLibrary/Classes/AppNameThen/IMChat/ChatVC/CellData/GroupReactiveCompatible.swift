
//: Declare String Begin

/*: "bg_talk_other" :*/
fileprivate let kActiveMsg:String = "var view track letbg_t"

/*: "bg_talk_me" :*/
fileprivate let kListKey:String = "bg_tavideo string"
fileprivate let k_myValue:[Character] = ["e"]

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_viewColorData:[UInt8] = [0x1d,0x22,0x1d,0x28,0xdc,0x17,0x23,0x18,0x19,0x26,0xee,0xdd,0xd4,0x1c,0x15,0x27,0xd4,0x22,0x23,0x28,0xd4,0x16,0x19,0x19,0x22,0xd4,0x1d,0x21,0x24,0x20,0x19,0x21,0x19,0x22,0x28,0x19,0x18]

fileprivate func succeedMode(sign num: UInt8) -> UInt8 {
    let value = Int(num) - 180
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GroupReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/1.
//

//: import UIKit
import UIKit

//: @objcMembers public class TalkingChatMsgBaseCellData: InscriptionThen {
@objcMembers public class GroupReactiveCompatible: InscriptionThen {
    //: var bubbleTop: CGFloat = 10
    var bubbleTop: CGFloat = 10
    //: var bubbleImg: UIImage?
    var bubbleImg: UIImage?

    //: override public init(direction: TMsgDirection) {
    override public init(direction: UserAppMeasurable) {
        //: super.init(direction: direction)
        super.init(direction: direction)
        //: if direction == .MsgDirectionIncoming {
        if direction == .MsgDirectionIncoming {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_talk_other")
            self.bubbleImg = UIImage.beforeImaginationImage(name: (String(kActiveMsg.suffix(4)) + "alk_other"))
            //: self.cellLayout = MessageCellLayout.incommingTextMessageLayout()
            self.cellLayout = RemoteThen.cipherPostStatus()
            //: } else {
        } else {
            //: self.bubbleImg = UIImage.resizedInImageWithName(name: "bg_talk_me")
            self.bubbleImg = UIImage.beforeImaginationImage(name: (String(kListKey.prefix(5)) + "lk_m" + String(k_myValue)))
            //: self.cellLayout = MessageCellLayout.outgoingTextMessageLayout()
            self.cellLayout = RemoteThen.shimmerService()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_viewColorData.map{succeedMode(sign: $0)}, encoding: .utf8)!)
    }
}
