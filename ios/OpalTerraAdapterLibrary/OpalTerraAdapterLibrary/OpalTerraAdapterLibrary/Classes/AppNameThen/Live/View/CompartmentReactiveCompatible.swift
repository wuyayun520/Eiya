
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kIndexFormat:[UInt8] = [0x95,0x9a,0x95,0xa0,0x54,0x8f,0x9b,0x90,0x91,0x9e,0x66,0x55,0x4c,0x94,0x8d,0x9f,0x4c,0x9a,0x9b,0xa0,0x4c,0x8e,0x91,0x91,0x9a,0x4c,0x95,0x99,0x9c,0x98,0x91,0x99,0x91,0x9a,0xa0,0x91,0x90]

fileprivate func centerStage(end num: UInt8) -> UInt8 {
    let value = Int(num) - 44
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
//  CompartmentReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/10.
//

//: import UIKit
import UIKit

//: class TalkingDanmuMsgTextCell: TalkingDanmuMsgBassCell {
class CompartmentReactiveCompatible: ValueView {
    //: override var msgModel: TalkingLiveRoomDanmuModel {
    override var msgModel: MakeDanmuModel {
        //: get { return super.msgModel }
        get { return super.msgModel }
        //: set {
        set {
            //: super.msgModel = newValue
            super.msgModel = newValue
            //: setCell()
            messageCell()
        }
    }

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kIndexFormat.map{centerStage(end: $0)}, encoding: .utf8)!)
    }
}

//: extension TalkingDanmuMsgTextCell {
extension CompartmentReactiveCompatible {
    //: func setCell() {
    func messageCell() {
        //: self.msgLabel.attributedText = msgModel.msgAttribText
        self.msgLabel.attributedText = msgModel.msgAttribText
        //: self.msgLabel.snp.updateConstraints { make in
        self.msgLabel.snp.updateConstraints { make in
            //: make.width.equalTo(msgModel.msgWidth)
            make.width.equalTo(msgModel.msgWidth)
        }
        //: self.bgLb.image = nil
        self.bgLb.image = nil
        //: self.bgLb.backgroundColor = msgModel.bgColor
        self.bgLb.backgroundColor = msgModel.bgColor
        //: self.bgLb.layer.borderColor = UIColor.clear.cgColor
        self.bgLb.layer.borderColor = UIColor.clear.cgColor
        //: self.bgLb.layer.borderWidth = 0.0
        self.bgLb.layer.borderWidth = 0.0
    }
}
