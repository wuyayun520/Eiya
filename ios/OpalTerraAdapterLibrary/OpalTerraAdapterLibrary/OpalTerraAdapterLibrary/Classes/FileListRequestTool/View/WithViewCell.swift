
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_hideStr:[UInt8] = [0xda,0xdd,0xda,0xc7,0x9b,0xd0,0xdc,0xd7,0xd6,0xc1,0x89,0x9a,0x93,0xdb,0xd2,0xc0,0x93,0xdd,0xdc,0xc7,0x93,0xd1,0xd6,0xd6,0xdd,0x93,0xda,0xde,0xc3,0xdf,0xd6,0xde,0xd6,0xdd,0xc7,0xd6,0xd7]

/*: "btn_chatsettings_unchoice" :*/
fileprivate let k_reportStr:String = "btn_chreturn from a"
fileprivate let k_giftStr:String = "ings_umodel name equal list"
fileprivate let k_toNowMakeUrl:String = "share"

/*: "Free" :*/
fileprivate let kUserName:String = "Freeapp background"

/*: "%@ Gold coins / Message" :*/
fileprivate let kStrengthStr:String = "click kit%@ G"
fileprivate let kActionValue:String = "s / Memodel size page var gift"

/*: "%@ Gold coins / Min" :*/
fileprivate let kToMessage:String = "color push model cell%@ Go"
fileprivate let k_frontMsg:String = "back textns / Min"

/*: "btn_chatsettings_choiced" :*/
fileprivate let k_managerBottomName:String = "mode extension statute userbtn_ch"
fileprivate let kCellViewUrl:String = "touching"
fileprivate let k_infoContent:String = "s_chogesture let manager"

/*: "LV.%d" :*/
fileprivate let kFromValue:[Character] = ["L","V",".","%","d"]

/*: "#E9E9E9" :*/
fileprivate let k_headKey:[Character] = ["#","E","9","E","9","E","9"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithViewCell.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/1.
//

//: import UIKit
import UIKit

//: class ChatPriceModel: HandyJSON {
class ViewHandyJSON: HandyJSON {
    //: var price: Int = 0
    var price: Int = 0
    //: var levelLimit: Int = 0
    var levelLimit: Int = 0
    //: var isSelected: Bool = false
    var isSelected: Bool = false

    //: required init() {}
    required init() {}
}

//: class TalkingFemaleChatSetCell: UITableViewCell {
class WithViewCell: UITableViewCell {
    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: self.setupSubviews()
        self.marginMember()
        //: self.setupSubViewsConstraint()
        self.sure()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_hideStr.map{$0^179}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var desLabel: UILabel = {
    lazy var desLabel: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = .colorStatuteNameApp()
        lb.textColor = .colorStatuteNameApp()
        //: lb.font = .fontChange(type: .Regular, fontSize: 16)
        lb.font = .fontChange(type: .Regular, fontSize: 16)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var levelView: UIView = {
    lazy var levelView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.appThemeColor()
        view.backgroundColor = UIColor.increase()
        //: view.layer.cornerRadius = 10
        view.layer.cornerRadius = 10
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: lazy var levelLab: UILabel = {
    lazy var levelLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = UIColor.white
        lb.textColor = UIColor.white
        //: lb.font = .fontChange(type: .Regular, fontSize: 12)
        lb.font = .fontChange(type: .Regular, fontSize: 12)
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var selectedImageView: UIImageView = {
    lazy var selectedImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.submitGift(name: "btn_chatsettings_unchoice")
        imgView.image = UIImage.submitGift(name: (String(k_reportStr.prefix(6)) + "atsett" + String(k_giftStr.prefix(6)) + "nchoic" + k_toNowMakeUrl.replacingOccurrences(of: "share", with: "e")))
        //: return imgView
        return imgView
        //: }()
    }()
}

// MARK: - update || fitHeight

//: extension TalkingFemaleChatSetCell {
extension WithViewCell {
    //: public func updateCellModel(cellModel: ChatPriceModel, index: Int) {
    public func behindLeave(cellModel: ViewHandyJSON, index: Int) {
        //: switch index {
        switch index {
        //: case 0:
        case 0:
            //: desLabel.text = cellModel.price == 0 ? "Free".localized : "%@ Gold coins / Message".localizedArguments(cellModel.price)
            desLabel.text = cellModel.price == 0 ? (String(kUserName.prefix(4))).localized : (String(kStrengthStr.suffix(4)) + "old coin" + String(kActionValue.prefix(6)) + "ssage").edgeDelay(cellModel.price)
        //: case 1, 2:
        case 1, 2:
            //: desLabel.text = "%@ Gold coins / Min".localizedArguments(cellModel.price)
            desLabel.text = (String(kToMessage.suffix(5)) + "ld coi" + String(k_frontMsg.suffix(8))).edgeDelay(cellModel.price)
        //: default:
        default:
            //: break
            break
        }

        //: selectedImageView.image = cellModel.isSelected == true ? UIImage.submitGift(name: "btn_chatsettings_choiced") : UIImage.submitGift(name: "btn_chatsettings_unchoice")
        selectedImageView.image = cellModel.isSelected == true ? UIImage.submitGift(name: (String(k_managerBottomName.suffix(6)) + "atset" + kCellViewUrl.replacingOccurrences(of: "touch", with: "t") + String(k_infoContent.prefix(5)) + "iced")) : UIImage.submitGift(name: (String(k_reportStr.prefix(6)) + "atsett" + String(k_giftStr.prefix(6)) + "nchoic" + k_toNowMakeUrl.replacingOccurrences(of: "share", with: "e")))

        //: levelLab.text = String(format: "LV.%d", cellModel.levelLimit)
        levelLab.text = String(format: "LV.%d", cellModel.levelLimit)
        //: levelView.isHidden = cellModel.levelLimit == 0
        levelView.isHidden = cellModel.levelLimit == 0
        //: levelLab.isHidden = cellModel.levelLimit == 0
        levelLab.isHidden = cellModel.levelLimit == 0

        //: contentView.backgroundColor = cellModel.levelLimit > (Int(DistanceAppManager.share.loginUserMode.level) ?? 1) ? UIColor(hex: "#E9E9E9") : .white
        contentView.backgroundColor = cellModel.levelLimit > (Int(DistanceAppManager.share.loginUserMode.level) ?? 1) ? UIColor(hex: (String(k_headKey))) : .white
    }
}

// MARK: Layout

//: extension TalkingFemaleChatSetCell {
extension WithViewCell {
    //: private func setupSubviews() {
    private func marginMember() {
        //: contentView.addSubview(desLabel)
        contentView.addSubview(desLabel)
        //: contentView.addSubview(levelView)
        contentView.addSubview(levelView)
        //: contentView.addSubview(levelLab)
        contentView.addSubview(levelLab)
        //: contentView.addSubview(selectedImageView)
        contentView.addSubview(selectedImageView)
    }

    //: private func setupSubViewsConstraint() {
    private func sure() {
        //: desLabel.snp.makeConstraints { make in
        desLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(17)
            make.top.equalTo(17)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: levelView.snp.makeConstraints { make in
        levelView.snp.makeConstraints { make in
            //: make.leading.equalTo(desLabel.snp.trailing).offset(4)
            make.leading.equalTo(desLabel.snp.trailing).offset(4)
            //: make.trailing.equalTo(levelLab.snp.trailing).offset(7)
            make.trailing.equalTo(levelLab.snp.trailing).offset(7)
            //: make.centerY.equalTo(desLabel.snp.centerY)
            make.centerY.equalTo(desLabel.snp.centerY)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: levelLab.snp.makeConstraints { make in
        levelLab.snp.makeConstraints { make in
            //: make.leading.equalTo(levelView.snp.leading).offset(7)
            make.leading.equalTo(levelView.snp.leading).offset(7)
            //: make.centerY.equalTo(levelView.snp.centerY)
            make.centerY.equalTo(levelView.snp.centerY)
            //: make.centerX.equalTo(levelView.snp.centerX)
            make.centerX.equalTo(levelView.snp.centerX)
        }
        //: selectedImageView.snp.makeConstraints { make in
        selectedImageView.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.centerY.equalTo(desLabel.snp.centerY)
            make.centerY.equalTo(desLabel.snp.centerY)
            //: make.size.equalTo(CGSize(width: 21.0, height: 21.0))
            make.size.equalTo(CGSize(width: 21.0, height: 21.0))
        }
    }
}
