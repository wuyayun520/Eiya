
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kLeaveData:[UInt8] = [0x5c,0x61,0x5c,0x67,0x1b,0x56,0x62,0x57,0x58,0x65,0x2d,0x1c,0x13,0x5b,0x54,0x66,0x13,0x61,0x62,0x67,0x13,0x55,0x58,0x58,0x61,0x13,0x5c,0x60,0x63,0x5f,0x58,0x60,0x58,0x61,0x67,0x58,0x57]

fileprivate func rivetLine(lab num: UInt8) -> UInt8 {
    let value = Int(num) + 13
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "MF:LiveChatWelMsg" :*/
fileprivate let kModelTitle:String = "MF:Lvoice task hidden"
fileprivate let kSharedValue:String = "change result lab viewatWelMs"
fileprivate let k_objectPhoneKey:String = "G"

/*: "MF:LiveChatPrizeMsg" :*/
fileprivate let k_fileName:String = "if enable put signMF:Liv"
fileprivate let k_delayStr:String = "rizeMsgformal finish lab voice if"

/*: "MF:LiveChatAttentionMsg" :*/
fileprivate let kTempTitleId:String = "MF:Livvideo like put random view"
fileprivate let kModelValue:String = "name present layertAtten"
fileprivate let kSizeSucceedTitle:String = "log"

/*: "MF:PartyChatWelMsg" :*/
fileprivate let k_videoPath:[Character] = ["M","F",":","P","a","r","t","y"]
fileprivate let k_positionKey:String = "file varChat"

/*: "MF:PartyChatPrizeMsg" :*/
fileprivate let kShowDataValue:String = "MF:Pin status gift top"
fileprivate let kSeatDraftMessage:String = "max button equalhatPr"

/*: "MF:PartyChatAttentionMsg" :*/
fileprivate let kNatureEqualName:String = "MF:Patype equal make if"
fileprivate let k_labelPingButtonStr:String = "color min extension viewhatA"
fileprivate let k_tempValueFormat:String = "view viewionMs"
fileprivate let kItemBackgroundStr:String = "publish"

/*: _ :*/
fileprivate let k_nameTitle:String = "_"

/*: "UITableViewCell" :*/
fileprivate let kToMsg:String = "UITalayer view event up text"
fileprivate let k_modelMsg:String = "plain modeliewCell"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ValueView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/10.
//

//: import UIKit
import UIKit

//: class TalkingDanmuMsgBassCell: UITableViewCell {
class ValueView: UITableViewCell {
    //: var msgModel = TalkingLiveRoomDanmuModel.init()
    var msgModel = MakeDanmuModel()

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

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        //: self.accessoryType = .none
        self.accessoryType = .none
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle  = .none
        self.selectionStyle = .none

        //: self.contentView.addSubview(bgLb)
        self.contentView.addSubview(bgLb)
        //: self.contentView.addSubview(msgLabel)
        self.contentView.addSubview(msgLabel)

        //: self.msgLabel.snp.makeConstraints { make in
        self.msgLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.top.equalTo(cellLineSpeing+2)
            make.top.equalTo(const_marginValue + 2)
            //: make.bottom.equalTo(-2)
            make.bottom.equalTo(-2)
//            make.trailing.lessThanOrEqualTo(-6)
            //: make.width.equalTo(10)
            make.width.equalTo(10)
        }
        //: self.bgLb.snp.makeConstraints { make in
        self.bgLb.snp.makeConstraints { make in
            //: make.top.equalTo(cellLineSpeing)
            make.top.equalTo(const_marginValue)
            //: make.leading.bottom.equalTo(0)
            make.leading.bottom.equalTo(0)
            //: make.trailing.equalTo(self.msgLabel.snp.trailing).offset(6)
            make.trailing.equalTo(self.msgLabel.snp.trailing).offset(6)
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kLeaveData.map{rivetLine(lab: $0)}, encoding: .utf8)!)
    }

    //: lazy var bgLb: UIImageView = {
    lazy var bgLb: UIImageView = {
        //: let view = UIImageView.init()
        let view = UIImageView()
        //: view.layer.cornerRadius = 13
        view.layer.cornerRadius = 13
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var msgLabel: YYLabel = {
    lazy var msgLabel: YYLabel = {
        //: let lb = YYLabel.init()
        let lb = YYLabel()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.backgroundColor = .clear
        lb.backgroundColor = .clear
        //: lb.clipsToBounds = true
        lb.clipsToBounds = true
        //: lb.textVerticalAlignment = .center
        lb.textVerticalAlignment = .center
        //: lb.isUserInteractionEnabled = true
        lb.isUserInteractionEnabled = true
        //: lb.semanticContentAttribute = .forceLeftToRight
        lb.semanticContentAttribute = .forceLeftToRight
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeLanguageManager.shared.direction == .rightToLeft {
            //: lb.semanticContentAttribute = .forceRightToLeft
            lb.semanticContentAttribute = .forceRightToLeft
        }
        //: return lb
        return lb
        //: }()
    }()
}

//: extension TalkingDanmuMsgBassCell {
extension ValueView {
    //: class func initTableView(tableView: UITableView, msg: TalkingLiveRoomDanmuModel, indexPath: IndexPath ) -> TalkingDanmuMsgBassCell {
    class func rowProgress(tableView: UITableView, msg: MakeDanmuModel, indexPath _: IndexPath) -> ValueView {
        //: var cell: TalkingDanmuMsgBassCell?
        var cell: ValueView?

        //: if msg.msgInfo?.messageType == 1 ||
        if msg.msgInfo?.messageType == 1 ||
            //: msg.msgInfo?.messageType == 2 ||
            msg.msgInfo?.messageType == 2 ||
            //: msg.msgInfo?.messageType == 3 ||
            msg.msgInfo?.messageType == 3 ||
            //: msg.MsgExtension == "MF:LiveChatWelMsg" ||
            msg.MsgExtension == (String(kModelTitle.prefix(4)) + "iveCh" + String(kSharedValue.suffix(7)) + k_objectPhoneKey.lowercased()) ||
            //: msg.MsgExtension == "MF:LiveChatPrizeMsg" ||
            msg.MsgExtension == (String(k_fileName.suffix(6)) + "eChatP" + String(k_delayStr.prefix(7))) ||
            //: msg.MsgExtension == "MF:LiveChatAttentionMsg" ||
            msg.MsgExtension == (String(kTempTitleId.prefix(6)) + "eCha" + String(kModelValue.suffix(6)) + "tionMs" + kSizeSucceedTitle.replacingOccurrences(of: "log", with: "g")) ||
            //: msg.MsgExtension == "MF:PartyChatWelMsg" ||
            msg.MsgExtension == (String(k_videoPath) + String(k_positionKey.suffix(4)) + "WelMsg") ||
            //: msg.MsgExtension == "MF:PartyChatPrizeMsg" ||
            msg.MsgExtension == (String(kShowDataValue.prefix(4)) + "artyC" + String(kSeatDraftMessage.suffix(5)) + "izeMsg") ||
            //: msg.MsgExtension == "MF:PartyChatAttentionMsg" {
            msg.MsgExtension == (String(kNatureEqualName.prefix(5)) + "rtyC" + String(k_labelPingButtonStr.suffix(4)) + "ttent" + String(k_tempValueFormat.suffix(5)) + kItemBackgroundStr.replacingOccurrences(of: "publish", with: "g"))
        {
            //: let identifier = "\(TalkingDanmuMsgTextCell.className())_\(msg.msgInfo?.messageType ?? 0)"
            let identifier = "\(CompartmentReactiveCompatible.className())_\(msg.msgInfo?.messageType ?? 0)"
            //: tableView.register(TalkingDanmuMsgTextCell.self, forCellReuseIdentifier: identifier)
            tableView.register(CompartmentReactiveCompatible.self, forCellReuseIdentifier: identifier)
            //: cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingDanmuMsgTextCell
            cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? CompartmentReactiveCompatible
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingDanmuMsgTextCell(style: .default, reuseIdentifier: identifier)
                cell = CompartmentReactiveCompatible(style: .default, reuseIdentifier: identifier)
            }
            //: }else {
        } else {
            //: let identifier = "UITableViewCell"
            let identifier = (String(kToMsg.prefix(4)) + "bleV" + String(k_modelMsg.suffix(7)))
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingDanmuMsgBassCell(style: .default, reuseIdentifier: identifier)
                cell = ValueView(style: .default, reuseIdentifier: identifier)
            }
            //: return cell as! TalkingDanmuMsgBassCell
            return cell as! ValueView
        }

        //: cell?.msgModel = msg
        cell?.msgModel = msg

        //: return cell!
        return cell!
    }
}
