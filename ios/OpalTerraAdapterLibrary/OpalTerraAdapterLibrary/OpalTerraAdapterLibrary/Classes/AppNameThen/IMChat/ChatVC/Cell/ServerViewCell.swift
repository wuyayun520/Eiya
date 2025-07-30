
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kUserValue:[UInt8] = [0xe,0x13,0xe,0x19,0xcd,0x8,0x14,0x9,0xa,0x17,0xdf,0xce,0xc5,0xd,0x6,0x18,0xc5,0x13,0x14,0x19,0xc5,0x7,0xa,0xa,0x13,0xc5,0xe,0x12,0x15,0x11,0xa,0x12,0xa,0x13,0x19,0xa,0x9]

fileprivate func dateTable(color num: UInt8) -> UInt8 {
    let value = Int(num) - 165
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_intimate_send_bg_nor" :*/
fileprivate let k_recordStr:[Character] = ["b","t","n","_","i","n","t","i","m","a"]
fileprivate let kAtMsg:String = "with female ifte_sen"
fileprivate let kWithId:String = "_normid sex"

/*: "Send" :*/
fileprivate let kPopVideoPath:[Character] = ["S","e","n","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ServerViewCell.swift
//  OpalTerraAdapterLibrary
//
//  Created by Charlotte on 2024/7/29.
//

//: import UIKit
import UIKit

//: class TalkingChatAskForGiftMsgCell: TalkingChatBaseMsgCell {
class ServerViewCell: ObjectStreamMsgCell {
    //: typealias SendBlock = () -> Void
    typealias SendBlock = () -> Void
    //: var sendBlock: SendBlock?
    var sendBlock: SendBlock?
    //: var giftData: ModeReactiveCompatible?
    var giftData: ModeReactiveCompatible?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.bubbleImgView.isHidden = false
        self.bubbleImgView.isHidden = false
        //: self.bubbleImgView.isUserInteractionEnabled = true
        self.bubbleImgView.isUserInteractionEnabled = true
        //: self.bubbleImgView.addSubview(giftContentLab)
        self.bubbleImgView.addSubview(giftContentLab)
        //: self.bubbleImgView.addSubview(sendBtn)
        self.bubbleImgView.addSubview(sendBtn)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kUserValue.map{dateTable(color: $0)}, encoding: .utf8)!)
    }

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    //: private lazy var giftContentLab: YYLabel = {
    private lazy var giftContentLab: YYLabel = {
        //: let label = YYLabel.init()
        let label = YYLabel()
        //: label.textColor = UIColor.colorStatuteNameApp()
        label.textColor = UIColor.colorStatuteNameApp()
        //: label.font = UIFont.pingfangRugularFont(fontSize: 17)
        label.font = UIFont.targetFor(fontSize: 17)
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: return label
        return label
        //: }()
    }()

    /// 送礼
    //: private lazy var sendBtn: TalkingButton = {
    private lazy var sendBtn: ResumeControl = {
        //: let btn = TalkingButton.init()
        let btn = ResumeControl()
        //: btn.setBackgroundImage(UIImage.submitGift(name: "btn_intimate_send_bg_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.submitGift(name: (String(k_recordStr) + String(kAtMsg.suffix(6)) + "d_bg" + String(kWithId.prefix(4)))), for: .normal)
        //: btn.setTitle("Send".localized, for: .normal)
        btn.setTitle((String(kPopVideoPath)).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 14)
        btn.titleLabel?.font = UIFont.tapShared(fontSize: 14)
        //: btn.addTarget(self, action: #selector(sendBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(showTapClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingChatAskForGiftMsgCell {
extension ServerViewCell {
    //: @objc func sendBtnClick() {
    @objc func showTapClick() {
        //: self.sendBlock?()
        self.sendBlock?()
    }
}

//: extension TalkingChatAskForGiftMsgCell {
extension ServerViewCell {
    //: override func fill(with data: TCommonCellData) {
    override func afterMid(with data: DisappearReactiveCompatible) {
        //: super.fill(with: data)
        super.afterMid(with: data)
        //: self.indicator.stopAnimating()
        self.indicator.stopAnimating()
        //: self.giftData = data as? ModeReactiveCompatible
        self.giftData = data as? ModeReactiveCompatible
        //: guard let giftData = self.giftData else { return }
        guard let giftData = self.giftData else { return }
        //: self.giftContentLab.attributedText =  giftData.attributedString
        self.giftContentLab.attributedText = giftData.attributedString
        //: self.sendBtn.isHidden = (self.giftData?.msgModel.msgInfo.wantGift.sendStatus == 1 || self.giftData?.direction == .MsgDirectionOutgoing)
        self.sendBtn.isHidden = (self.giftData?.msgModel.msgInfo.wantGift.sendStatus == 1 || self.giftData?.direction == .MsgDirectionOutgoing)
    }

    //: override public func updateConstraints() {
    override public func updateConstraints() {
        //: super.updateConstraints()
        super.updateConstraints()
        //: guard let giftData = self.giftData else { return }
        guard let giftData = self.giftData else { return }
        //: self.giftContentLab.snp.remakeConstraints { make in
        self.giftContentLab.snp.remakeConstraints { make in
            //: make.leading.equalTo(giftData.textOrigin.x)
            make.leading.equalTo(giftData.textOrigin.x)
            //: make.top.equalTo(giftData.textOrigin.y)
            make.top.equalTo(giftData.textOrigin.y)
            //: make.size.equalTo(giftData.textSize)
            make.size.equalTo(giftData.textSize)
        }
        //: self.sendBtn.snp.remakeConstraints { make in
        self.sendBtn.snp.remakeConstraints { make in
            //: make.trailing.equalTo(-18)
            make.trailing.equalTo(-18)
            //: make.bottom.equalTo(-14)
            make.bottom.equalTo(-14)
            //: make.size.equalTo(CGSize.init(width: 58, height: 28))
            make.size.equalTo(CGSize(width: 58, height: 28))
        }
    }
}
