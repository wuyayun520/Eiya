
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_refuseControlKey:[UInt8] = [0x17,0x10,0x17,0xa,0x56,0x1d,0x11,0x1a,0x1b,0xc,0x44,0x57,0x5e,0x16,0x1f,0xd,0x5e,0x10,0x11,0xa,0x5e,0x1c,0x1b,0x1b,0x10,0x5e,0x17,0x13,0xe,0x12,0x1b,0x13,0x1b,0x10,0xa,0x1b,0x1a]

private func centerViewBack(title num: UInt8) -> UInt8 {
    return num ^ 126
}

/*: "icon_videoCall_translate_nor" :*/
fileprivate let kEmptyValue:String = "playcon"
fileprivate let k_sectionStr:String = "oCall_self import raw light false"
fileprivate let kHideName:String = "late_noself player"
fileprivate let k_viewByUrl:[Character] = ["r"]

/*: "icon_videoCall_translate_pre" :*/
fileprivate let kScaleData:String = "to return m foricon_v"
fileprivate let k_onValue:[Character] = ["i","d","e","o","C","a","l","l","_","t","r","a","n","s"]
fileprivate let k_statusSuiteStr:String = "late_premodel self view red"

/*: "targetText" :*/
fileprivate let k_showStrokeVarName:String = "equalargeequal"
fileprivate let k_placeText:[Character] = ["T","e","x","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CoverTextCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/10.
//

//: import UIKit
import UIKit

//: class TalkingVideoDanmuMsgTextCell: TalkingVideoDanmuMsgBassCell {
class CoverTextCell: PublishBassCell {
    //: override var msgModel: TalkingVideoCallDanmuModel {
    override var msgModel: StartMeasurable {
        //: get { return super.msgModel }
        get { return super.msgModel }
        //: set {
        set {
            //: super.msgModel = newValue
            super.msgModel = newValue
            //: setCell()
            reclineCell()
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
        //: self.contentView.addSubview(transBtn)
        self.contentView.addSubview(transBtn)
        //: self.transBtn.snp.makeConstraints { make in
        self.transBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(bgLb)
            make.centerY.equalTo(bgLb)
            //: make.leading.equalTo(bgLb.snp.trailing).offset(5)
            make.leading.equalTo(bgLb.snp.trailing).offset(5)
            //: make.size.equalTo(20)
            make.size.equalTo(20)
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_refuseControlKey.map{centerViewBack(title: $0)}, encoding: .utf8)!)
    }

    //: lazy var transBtn: UIButton = {
    lazy var transBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "icon_videoCall_translate_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (kEmptyValue.replacingOccurrences(of: "play", with: "i") + "_vide" + String(k_sectionStr.prefix(6)) + "trans" + String(kHideName.prefix(7)) + String(k_viewByUrl))), for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "icon_videoCall_translate_pre"), for: .selected)
        btn.setImage(UIImage.submitGift(name: (String(kScaleData.suffix(6)) + String(k_onValue) + String(k_statusSuiteStr.prefix(8)))), for: .selected)
        //: btn.addTarget(self, action: #selector(transBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(colorHolderClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingVideoDanmuMsgTextCell {
extension CoverTextCell {
    //: func setCell() {
    func reclineCell() {
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
        //: self.transBtn.isHidden = msgModel.isMySender
        self.transBtn.isHidden = msgModel.isMySender
    }

    //: @objc private func transBtnClick() {
    @objc private func colorHolderClick() {
        //: if !transBtn.isSelected {
        if !transBtn.isSelected {
            //: if self.msgModel.transContent.count > 0 {
            if self.msgModel.transContent.count > 0 {
                //: self.transBtn.isSelected = true
                self.transBtn.isSelected = true
                //: let celldata = TalkingVideoCallDammuCellData.init()
                let celldata = VideoCellData()
                //: self.msgModel = celldata.caculateTransMsgHeight(model: self.msgModel)
                self.msgModel = celldata.overEqual(model: self.msgModel)
                //: self.setCell()
                self.reclineCell()
                //: } else {
            } else {
                //: transBtn.isHidden = true
                transBtn.isHidden = true
                //: PlayerRequestTool.req_translateMsg(msgId: msgModel.msgId, type: 3) { succeed, result, errorCode in
                PlayerRequestTool.nearType(msgId: msgModel.msgId, type: 3) { succeed, result, _ in
                    //: self.transBtn.isHidden = false
                    self.transBtn.isHidden = false
                    //: if succeed {
                    if succeed {
                        //: let json = JSON(result )
                        let json = JSON(result)
                        //: let content = json["targetText"].stringValue
                        let content = json[(k_showStrokeVarName.replacingOccurrences(of: "equal", with: "t") + String(k_placeText))].stringValue
                        //: self.msgModel.transContent = content
                        self.msgModel.transContent = content
                        //: self.transBtn.isSelected = true
                        self.transBtn.isSelected = true
                        //: let celldata = TalkingVideoCallDammuCellData.init()
                        let celldata = VideoCellData()
                        //: self.msgModel = celldata.caculateTransMsgHeight(model: self.msgModel)
                        self.msgModel = celldata.overEqual(model: self.msgModel)
                        //: self.setCell()
                        self.reclineCell()
                    }
                }
            }
            //: } else {
        } else {
            //: self.transBtn.isSelected = false
            self.transBtn.isSelected = false
            //: let celldata = TalkingVideoCallDammuCellData.init()
            let celldata = VideoCellData()
            //: self.msgModel = celldata.caculateMsgHeight(model: self.msgModel)
            self.msgModel = celldata.deleteModel(model: self.msgModel)
            //: self.setCell()
            self.reclineCell()
        }
    }
}
