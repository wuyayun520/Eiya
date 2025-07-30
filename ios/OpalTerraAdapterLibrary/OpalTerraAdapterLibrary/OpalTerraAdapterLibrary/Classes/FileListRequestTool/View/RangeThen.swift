
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kLayerPath:[UInt8] = [0xb6,0xb1,0xb6,0xab,0xf7,0xbc,0xb0,0xbb,0xba,0xad,0xe5,0xf6,0xff,0xb7,0xbe,0xac,0xff,0xb1,0xb0,0xab,0xff,0xbd,0xba,0xba,0xb1,0xff,0xb6,0xb2,0xaf,0xb3,0xba,0xb2,0xba,0xb1,0xab,0xba,0xbb]

/*: "btn_me_edit" :*/
fileprivate let k_tingSelectValue:String = "if style image truebtn_m"
fileprivate let kShadowUrl:String = "to app con playere_edit"

/*: "%@ Gold coins / Message" :*/
fileprivate let kDataKey:[Character] = ["%","@"," ","G","o","l","d"," ","c","o","i"]
fileprivate let kModelCellFormat:String = "ns /gesture change mode ting"

/*: "To show sincere interest, The other party needs to pay to chat with you, and you will get redeemable points." :*/
fileprivate let kSelectedFormat:[UInt8] = [0x12,0x29,0x66,0x35,0x2e,0x29,0x31,0x66,0x35,0x2f,0x28,0x25,0x23,0x34,0x23,0x66,0x2f,0x28,0x32,0x23,0x34,0x23,0x35,0x32,0x6a,0x66,0x12,0x2e,0x23,0x66,0x29,0x32,0x2e,0x23,0x34,0x66,0x36,0x27,0x34,0x32,0x3f,0x66,0x28,0x23,0x23,0x22,0x35,0x66,0x32,0x29,0x66,0x36,0x27,0x3f,0x66,0x32,0x29,0x66,0x25,0x2e,0x27,0x32,0x66,0x31,0x2f,0x32,0x2e,0x66,0x3f,0x29,0x33,0x6a,0x66,0x27,0x28,0x22,0x66,0x3f,0x29,0x33,0x66,0x31,0x2f,0x2a,0x2a,0x66,0x21,0x23,0x32,0x66,0x34,0x23,0x22,0x23,0x23,0x2b,0x27,0x24,0x2a,0x23,0x66,0x36,0x29,0x2f,0x28,0x32,0x35,0x68]

/*: "%@ Gold coins / Min" :*/
fileprivate let k_nameValue:String = "%@ Golview true border view"
fileprivate let kAtInfoId:String = "s / Minselected lab message disabled"

/*: "The price setting for video calls does not work for the Random Video feature.If you hang up within 20 seconds of answering the phone, you will not get Points." :*/
fileprivate let k_labMsg:[UInt8] = [0xa9,0xbd,0xba,0x75,0xc5,0xc7,0xbe,0xb8,0xba,0x75,0xc8,0xba,0xc9,0xc9,0xbe,0xc3,0xbc,0x75,0xbb,0xc4,0xc7,0x75,0xcb,0xbe,0xb9,0xba,0xc4,0x75,0xb8,0xb6,0xc1,0xc1,0xc8,0x75,0xb9,0xc4,0xba,0xc8,0x75,0xc3,0xc4,0xc9,0x75,0xcc,0xc4,0xc7,0xc0,0x75,0xbb,0xc4,0xc7,0x75,0xc9,0xbd,0xba,0x75,0xa7,0xb6,0xc3,0xb9,0xc4,0xc2,0x75,0xab,0xbe,0xb9,0xba,0xc4,0x75,0xbb,0xba,0xb6,0xc9,0xca,0xc7,0xba,0x83,0x9e,0xbb,0x75,0xce,0xc4,0xca,0x75,0xbd,0xb6,0xc3,0xbc,0x75,0xca,0xc5,0x75,0xcc,0xbe,0xc9,0xbd,0xbe,0xc3,0x75,0x87,0x85,0x75,0xc8,0xba,0xb8,0xc4,0xc3,0xb9,0xc8,0x75,0xc4,0xbb,0x75,0xb6,0xc3,0xc8,0xcc,0xba,0xc7,0xbe,0xc3,0xbc,0x75,0xc9,0xbd,0xba,0x75,0xc5,0xbd,0xc4,0xc3,0xba,0x81,0x75,0xce,0xc4,0xca,0x75,0xcc,0xbe,0xc1,0xc1,0x75,0xc3,0xc4,0xc9,0x75,0xbc,0xba,0xc9,0x75,0xa5,0xc4,0xbe,0xc3,0xc9,0xc8,0x83]

fileprivate func languageLine(brow num: UInt8) -> UInt8 {
    let value = Int(num) - 85
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "You need to pay extra attention that if you hang up within 20 seconds of answering the phone, you will not get Points." :*/
fileprivate let k_objectFillFilterTitle:[UInt8] = [0x16,0x2c,0x32,0xdd,0x2b,0x22,0x22,0x21,0xdd,0x31,0x2c,0xdd,0x2d,0x1e,0x36,0xdd,0x22,0x35,0x31,0x2f,0x1e,0xdd,0x1e,0x31,0x31,0x22,0x2b,0x31,0x26,0x2c,0x2b,0xdd,0x31,0x25,0x1e,0x31,0xdd,0x26,0x23,0xdd,0x36,0x2c,0x32,0xdd,0x25,0x1e,0x2b,0x24,0xdd,0x32,0x2d,0xdd,0x34,0x26,0x31,0x25,0x26,0x2b,0xdd,0xef,0xed,0xdd,0x30,0x22,0x20,0x2c,0x2b,0x21,0x30,0xdd,0x2c,0x23,0xdd,0x1e,0x2b,0x30,0x34,0x22,0x2f,0x26,0x2b,0x24,0xdd,0x31,0x25,0x22,0xdd,0x2d,0x25,0x2c,0x2b,0x22,0xe9,0xdd,0x36,0x2c,0x32,0xdd,0x34,0x26,0x29,0x29,0xdd,0x2b,0x2c,0x31,0xdd,0x24,0x22,0x31,0xdd,0xd,0x2c,0x26,0x2b,0x31,0x30,0xeb]

fileprivate func pathLive(data num: UInt8) -> UInt8 {
    let value = Int(num) - 189
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "LV.%d" :*/
fileprivate let kStatusMsg:String = "self normal pressLV.%d"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RangeThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/12/15.
//

//: import UIKit
import UIKit

//: class TalkingFemalePriceSetCell: UITableViewCell {
class RangeThen: UITableViewCell {
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
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.setupSubviews()
        self.listSubviews()
        //: self.setupSubViewsConstraint()
        self.confinement()
        //: self.bindInteraction()
        self.stretchIntervaleraction()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kLayerPath.map{$0^223}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
    //: lazy var priceTitleLB: UILabel = {
    lazy var priceTitleLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.fontChange(type: .Medium, fontSize: 18)
        lb.font = UIFont.fontChange(type: .Medium, fontSize: 18)
        //: lb.textColor = .colorStatuteNameApp()
        lb.textColor = .colorStatuteNameApp()
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

    //: lazy var arrowsImageView: UIImageView = {
    lazy var arrowsImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.submitGift(name: "btn_me_edit")
        imgView.image = UIImage.submitGift(name: (String(k_tingSelectValue.suffix(5)) + String(kShadowUrl.suffix(6))))
        //: imgView.contentMode = .scaleAspectFit
        imgView.contentMode = .scaleAspectFit
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var messageLab: UILabel = {
    lazy var messageLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = .appValueColor()
        lb.textColor = .scaleValueTo()
        //: lb.font = .fontChange(type: .Regular, fontSize: 15)
        lb.font = .fontChange(type: .Regular, fontSize: 15)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()
}

//: extension TalkingFemalePriceSetCell {
extension RangeThen {
    //: func setCellData(index: Int, price: Int, leve: Int) {
    func actionName(index: Int, price: Int, leve: Int) {
        //: switch index {
        switch index {
        //: case 0:
        case 0:
            //: priceTitleLB.text = "%@ Gold coins / Message".localizedArguments(price)
            priceTitleLB.text = (String(kDataKey) + String(kModelCellFormat.prefix(4)) + " Message").edgeDelay(price)
            //: messageLab.text =  "To show sincere interest, The other party needs to pay to chat with you, and you will get redeemable points.".localized
            messageLab.text = String(bytes: kSelectedFormat.map{$0^70}, encoding: .utf8)!.localized
        //: break
        //: case 1:
        case 1:
            //: priceTitleLB.text = "%@ Gold coins / Min".localizedArguments(price)
            priceTitleLB.text = (String(k_nameValue.prefix(6)) + "d coin" + String(kAtInfoId.prefix(7))).edgeDelay(price)
            //: messageLab.text =  "The price setting for video calls does not work for the Random Video feature.If you hang up within 20 seconds of answering the phone, you will not get Points.".localized
            messageLab.text = String(bytes: k_labMsg.map{languageLine(brow: $0)}, encoding: .utf8)!.localized
        //: break
        //: case 2:
        case 2:
            //: priceTitleLB.text = "%@ Gold coins / Min".localizedArguments(price)
            priceTitleLB.text = (String(k_nameValue.prefix(6)) + "d coin" + String(kAtInfoId.prefix(7))).edgeDelay(price)
            //: messageLab.text =  "You need to pay extra attention that if you hang up within 20 seconds of answering the phone, you will not get Points.".localized
            messageLab.text = String(bytes: k_objectFillFilterTitle.map{pathLive(data: $0)}, encoding: .utf8)!.localized
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: levelLab.text = String(format: "LV.%d", leve)
        levelLab.text = String(format: "LV.%d", leve)
        //: levelView.isHidden = leve == 0
        levelView.isHidden = leve == 0
        //: levelLab.isHidden = leve == 0
        levelLab.isHidden = leve == 0
    }
}

//: extension TalkingFemalePriceSetCell {
extension RangeThen {
    // 添加视图
    //: private func setupSubviews() {
    private func listSubviews() {
        //: self.addSubview(priceTitleLB)
        self.addSubview(priceTitleLB)
        //: self.addSubview(levelView)
        self.addSubview(levelView)
        //: self.addSubview(levelLab)
        self.addSubview(levelLab)
        //: self.addSubview(arrowsImageView)
        self.addSubview(arrowsImageView)
        //: self.addSubview(messageLab)
        self.addSubview(messageLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func confinement() {
        //: priceTitleLB.snp.makeConstraints { make in
        priceTitleLB.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(20)
            make.top.equalTo(20)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: levelView.snp.makeConstraints { make in
        levelView.snp.makeConstraints { make in
            //: make.leading.equalTo(priceTitleLB.snp.trailing).offset(4)
            make.leading.equalTo(priceTitleLB.snp.trailing).offset(4)
            //: make.trailing.equalTo(levelLab.snp.trailing).offset(7)
            make.trailing.equalTo(levelLab.snp.trailing).offset(7)
            //: make.centerY.equalTo(priceTitleLB.snp.centerY)
            make.centerY.equalTo(priceTitleLB.snp.centerY)
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
        //: arrowsImageView.snp.makeConstraints { make in
        arrowsImageView.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.centerY.equalTo(priceTitleLB.snp.centerY)
            make.centerY.equalTo(priceTitleLB.snp.centerY)
            //: make.size.equalTo(CGSize(width: 12, height: 12))
            make.size.equalTo(CGSize(width: 12, height: 12))
        }
        //: messageLab.snp.makeConstraints { make in
        messageLab.snp.makeConstraints { make in
            //: make.top.equalTo(priceTitleLB.snp.bottom).offset(8)
            make.top.equalTo(priceTitleLB.snp.bottom).offset(8)
            //: make.leading.equalTo(priceTitleLB)
            make.leading.equalTo(priceTitleLB)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func stretchIntervaleraction() {}
}
