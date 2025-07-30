
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kMessagePath:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleCellData.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/2.
//

//: import UIKit
import UIKit

//: @objcMembers public class TitleCellData: TalkingChatMsgBaseCellData {
@objcMembers public class TitleCellData: GroupReactiveCompatible {
    //: public override var msgModel: AbTalkingChatMsgBaseModel {
    override public var msgModel: ContentModel {
        //: get { return super.msgModel }
        get { return super.msgModel }
        //: set { super.msgModel = newValue }
        set { super.msgModel = newValue }
    }

    //: override public init(direction: TMsgDirection) {
    override public init(direction: UserAppMeasurable) {
        //: super.init(direction: direction)
        super.init(direction: direction)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kMessagePath.reversed(), encoding: .utf8)!)
    }

    //: public override func voiceOver() ->CGSize {
    override public func voiceOver() -> CGSize {
        //: let audioWidth = Float(self.voiceModel.audioLength)*2.4 + 90
        let audioWidth = Float(self.voiceModel.audioLength) * 2.4 + 90
        //: return CGSize.init(width: Int(audioWidth), height: 42)
        return CGSize(width: Int(audioWidth), height: 42)
    }

    //: @objc public lazy var voiceModel: TalkingVoiceMsgPlayModel = {
    public lazy var voiceModel: KeyPullReactiveCompatible = {
        //: var model = TalkingVoiceMsgPlayModel()
        var model = KeyPullReactiveCompatible()
        //: return model
        return model
        //: }()
    }()
}
