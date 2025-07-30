
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_nextKey:[UInt8] = [0x7c,0x81,0x7c,0x87,0x3b,0x76,0x82,0x77,0x78,0x85,0x4d,0x3c,0x33,0x7b,0x74,0x86,0x33,0x81,0x82,0x87,0x33,0x75,0x78,0x78,0x81,0x33,0x7c,0x80,0x83,0x7f,0x78,0x80,0x78,0x81,0x87,0x78,0x77]

fileprivate func tableHiddenPhone(cell num: UInt8) -> UInt8 {
    let value = Int(num) - 19
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_home_v" :*/
fileprivate let kModelSizeUrl:[Character] = ["i","c","o","n","_","h","o","m","e","_","v"]

/*: "icon_lounge" :*/
fileprivate let kIndexValue:String = "height to leticon_"

/*: "#8A79F9" :*/
fileprivate let k_birthMessage:[Character] = ["#","8","A","7","9","F","9"]

/*: "#EAE8FE" :*/
fileprivate let k_tableStreamId:String = "cell sample finish model#EAE8FE"

/*: "Follow each other" :*/
fileprivate let k_toMessage:[Character] = ["F","o","l","l","o","w"]
fileprivate let kLayerMessageUserKey:[Character] = [" ","e"]
fileprivate let kPointData:String = "from letach o"

/*: "btn_message_favourite_following_nor" :*/
fileprivate let kPhotoName:[UInt8] = [0x7,0x11,0xb,0x3a,0x8,0x0,0x16,0x16,0x4,0x2,0x0,0x3a,0x3,0x4,0x13,0xa,0x10,0x17,0xc,0x11,0x0,0x3a,0x3,0xa,0x9,0x9,0xa,0x12,0xc,0xb,0x2,0x3a,0xb,0xa,0x17]

private func centerTo(view num: UInt8) -> UInt8 {
    return num ^ 101
}

/*: "icon_ender_boy" :*/
fileprivate let k_keyLabUrl:[Character] = ["i","c","o","n","_","e","n"]
fileprivate let k_textName:[Character] = ["d","e","r","_","b","o","y"]

/*: "icon_ender_girl" :*/
fileprivate let kLevelToFormat:[Character] = ["i","c","o","n","_","e","n","d","e","r","_","g","i","r","l"]

/*: "   " :*/
fileprivate let k_infoKey:[Character] = [" "," "," "]

/*: "btn_message_favourite_follow_nor" :*/
fileprivate let kViewEqualPath:[UInt8] = [0x2f,0x41,0x3b,0x2c,0x3a,0x32,0x40,0x40,0x2e,0x34,0x32,0x2c,0x33,0x2e,0x43,0x3c,0x42,0x3f,0x36,0x41,0x32,0x2c,0x33,0x3c,0x39,0x39,0x3c,0x44,0x2c,0x3b,0x3c,0x3f]

fileprivate func partValue(bottom num: UInt8) -> UInt8 {
    let value = Int(num) - 205
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Follow" :*/
fileprivate let k_modelActualId:[Character] = ["F","o","l","l","o"]
fileprivate let kViewValue:String = "crush"

/*: "removeAttentionUid" :*/
fileprivate let k_equalPartyValue:String = "rmomentove"
fileprivate let kColorName:String = "size to infoAtten"

/*: "attentionUid" :*/
fileprivate let k_itemIndexValue:[Character] = ["a","t","t","e","n","t","i","o","n"]
fileprivate let kFrameworkPath:String = "Uidview translation color"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StreamViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/14.
//

//: import UIKit
import UIKit

/// 类型
//: enum AtationType {
enum AssemblageAtationType {
    //: case attention
    case attention // 我关注的
    //: case beLike
    case beLike // 关注我的
}

//: public protocol AttentionDelegate: NSObject {
public protocol ResumeAttentionDelegate: NSObject {
    //: func cancelAtationSeleteIndex(_ index: IndexPath )
    func touchPoint(_ index: IndexPath)
    //: func belikeAtationSeleteIndex(_ index: IndexPath )
    func marginOfError(_ index: IndexPath)
}

//: class TalkingAttentionCell: UITableViewCell {
class StreamViewCell: UITableViewCell {
    //: var currenModel = TalkingAttentionModel()
    var currenModel = KeyHandyJSON()
    //: var seleteIndex: IndexPath?
    var seleteIndex: IndexPath?
    //: open weak var delegate: AttentionDelegate?
    open weak var delegate: ResumeAttentionDelegate?
    //: open var type: AtationType?
    open var type: AssemblageAtationType?

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
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
        //: self.contentView.addSubview(IconBtn)
        self.contentView.addSubview(IconBtn)
        //: self.contentView.addSubview(iconBorder)
        self.contentView.addSubview(iconBorder)
        //: self.contentView.addSubview(nameLabel)
        self.contentView.addSubview(nameLabel)
        //: self.contentView.addSubview(cardImg)
        self.contentView.addSubview(cardImg)
        //: self.contentView.addSubview(sexBtn)
        self.contentView.addSubview(sexBtn)
        //: self.contentView.addSubview(loungeImgV)
        self.contentView.addSubview(loungeImgV)
        //: self.contentView.addSubview(otherLB)
        self.contentView.addSubview(otherLB)
        //: self.contentView.addSubview(RemoveBtn)
        self.contentView.addSubview(RemoveBtn)
        //: layoutSubViewsConstraints()
        outUp()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_nextKey.map{tableHiddenPhone(cell: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var IconBtn: UIButton = {
    lazy var IconBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 60/2
        btn.layer.cornerRadius = 60 / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.addTarget(self, action: #selector(IconBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(serration), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var iconBorder: UIButton = {
    lazy var iconBorder: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var nameLabel: UILabel = {
    lazy var nameLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .fontChange(type: .Medium, fontSize: 18)
        label.font = .fontChange(type: .Medium, fontSize: 18)
        //: label.textColor = .colorStatuteNameApp()
        label.textColor = .colorStatuteNameApp()
        //: return label
        return label
        //: }()
    }()

    //: lazy var cardImg: UIImageView = {
    lazy var cardImg: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.image = UIImage.submitGift(name: "icon_home_v")
        img.image = UIImage.submitGift(name: (String(kModelSizeUrl)))
        //: return img
        return img
        //: }()
    }()

    //: lazy var sexBtn: UIButton = {
    lazy var sexBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = .fontChange(type: .Medium, fontSize: 10)
        btn.titleLabel?.font = .fontChange(type: .Medium, fontSize: 10)

        //: return btn
        return btn
        //: }()
    }()

    //: lazy var loungeImgV: UIImageView = {
    lazy var loungeImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.submitGift(name: "icon_lounge")
        img.image = UIImage.submitGift(name: (String(kIndexValue.suffix(5)) + "lounge"))
        //: return img
        return img
        //: }()
    }()

    //: lazy var otherLB: UILabel = {
    lazy var otherLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .fontChange(type: .Regular, fontSize: 10)
        label.font = .fontChange(type: .Regular, fontSize: 10)
        //: label.textColor = UIColor.init(hex: "#8A79F9")
        label.textColor = UIColor(hex: (String(k_birthMessage)))
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.backgroundColor = UIColor.init(hex: "#EAE8FE")
        label.backgroundColor = UIColor(hex: (String(k_tableStreamId.suffix(7))))
        //: label.layer.cornerRadius = 8
        label.layer.cornerRadius = 8
        //: label.layer.masksToBounds = true
        label.layer.masksToBounds = true
        //: label.isHidden = true
        label.isHidden = true
        //: label.text = "Follow each other".localized
        label.text = (String(k_toMessage) + String(kLayerMessageUserKey) + String(kPointData.suffix(5)) + "ther").localized
        //: return label
        return label
        //: }()
    }()

    //: lazy var RemoveBtn: UIButton = {
    lazy var RemoveBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.submitGift(name: "btn_message_favourite_following_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.submitGift(name: String(bytes: kPhotoName.map{centerTo(view: $0)}, encoding: .utf8)!), for: .normal)
        //: btn.addTarget(self, action: #selector(RemoveBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(tipClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingAttentionCell {
extension StreamViewCell {
    //: func setCell(model: TalkingAttentionModel, index: IndexPath, Atype: AtationType) {
    func showTo(model: KeyHandyJSON, index: IndexPath, Atype: AssemblageAtationType) {
        //: currenModel = model
        currenModel = model
        //: seleteIndex = index
        seleteIndex = index
        //: type = Atype
        type = Atype
        //: IconBtn.setUrlImage(urlStr: model.headPic ?? "")
        IconBtn.successOn(urlStr: model.headPic ?? "")
        //: if !model.headPicFrame.isEmptyString {
        if !model.headPicFrame.isEmptyString {
            //: IconBtn.layer.cornerRadius = 56/2
            IconBtn.layer.cornerRadius = 56 / 2
            //: IconBtn.snp.remakeConstraints { make in
            IconBtn.snp.remakeConstraints { make in
                //: make.leading.equalTo(self).offset(17)
                make.leading.equalTo(self).offset(17)
                //: make.top.equalTo(self).offset(10)
                make.top.equalTo(self).offset(10)
                //: make.width.height.equalTo(56)
                make.width.height.equalTo(56)
            }
            //: iconBorder.isHidden = false
            iconBorder.isHidden = false
            //: iconBorder.setHeadFrameUrlImage(urlStr: model.headPicFrame)
            iconBorder.templeVisualisationSetFrame(urlStr: model.headPicFrame)
            //: }else {
        } else {
            //: iconBorder.isHidden = true
            iconBorder.isHidden = true
        }

        //: nameLabel.textColor = model.loungePlus ? .userVipColor():.colorStatuteNameApp()
        nameLabel.textColor = model.loungePlus ? .usufructuaryHeadSkinColour() : .colorStatuteNameApp()
        //: nameLabel.text = model.nickname
        nameLabel.text = model.nickname
        //: if !model.isTPAuth {
        if !model.isTPAuth {
            //: cardImg.isHidden = true
            cardImg.isHidden = true
            //: cardImg.snp.updateConstraints { make in
            cardImg.snp.updateConstraints { make in
                //: make.width.equalTo(1)
                make.width.equalTo(1)
                //: make.leading.equalTo(nameLabel.snp.trailing).offset(0)
                make.leading.equalTo(nameLabel.snp.trailing).offset(0)
            }
            //: } else {
        } else {
            //: cardImg.isHidden = false
            cardImg.isHidden = false
            //: cardImg.snp.updateConstraints { make in
            cardImg.snp.updateConstraints { make in
                //: make.width.equalTo(16)
                make.width.equalTo(16)
                //: make.leading.equalTo(nameLabel.snp.trailing).offset(4)
                make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            }
        }

        //: switch model.sex {
        switch model.sex {
        //: case 1:
        case 1:
            //: sexBtn.setBackgroundImage(UIImage.submitGift(name: "icon_ender_boy"), for: .normal)
            sexBtn.setBackgroundImage(UIImage.submitGift(name: (String(k_keyLabUrl) + String(k_textName))), for: .normal)
        //: break
        //: case 2:
        case 2:
            //: sexBtn.setBackgroundImage(UIImage.submitGift(name: "icon_ender_girl"), for: .normal)
            sexBtn.setBackgroundImage(UIImage.submitGift(name: (String(kLevelToFormat))), for: .normal)
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: sexBtn.setTitle("   " + String(model.age!), for: .normal)
        sexBtn.setTitle("   " + String(model.age!), for: .normal)
        //: otherLB.isHidden = !model.mutualAtt!
        otherLB.isHidden = !model.mutualAtt!
        //: if type == .beLike && !model.mutualAtt! {
        if type == .beLike, !model.mutualAtt! {
            //: RemoveBtn.setBackgroundImage(UIImage.submitGift(name: "btn_message_favourite_follow_nor"), for: .normal)
            RemoveBtn.setBackgroundImage(UIImage.submitGift(name: String(bytes: kViewEqualPath.map{partValue(bottom: $0)}, encoding: .utf8)!), for: .normal)
            //: RemoveBtn.setTitle("Follow".localized, for: .normal)
            RemoveBtn.setTitle((String(k_modelActualId) + kViewValue.replacingOccurrences(of: "crush", with: "w")).localized, for: .normal)
            //: RemoveBtn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 15)
            RemoveBtn.titleLabel?.font = UIFont.tapShared(fontSize: 15)
            //: RemoveBtn.setTitleColor(.white, for: .normal)
            RemoveBtn.setTitleColor(.white, for: .normal)
            //: } else {
        } else {
            //: RemoveBtn.setBackgroundImage(UIImage.submitGift(name: "btn_message_favourite_following_nor"), for: .normal)
            RemoveBtn.setBackgroundImage(UIImage.submitGift(name: String(bytes: kPhotoName.map{centerTo(view: $0)}, encoding: .utf8)!), for: .normal)
            //: RemoveBtn.setTitle("", for: .normal)
            RemoveBtn.setTitle("", for: .normal)
        }

        //: loungeImgV.isHidden = !model.loungePlus
        loungeImgV.isHidden = !model.loungePlus
        //: if loungeImgV.isHidden == false {
        if loungeImgV.isHidden == false {
            //: loungeImgV.snp.makeConstraints { make in
            loungeImgV.snp.makeConstraints { make in
                //: make.centerY.equalTo(nameLabel)
                make.centerY.equalTo(nameLabel)
                //: make.leading.equalTo(sexBtn.snp.trailing).offset(3)
                make.leading.equalTo(sexBtn.snp.trailing).offset(3)
                //: make.size.equalTo(CGSize(width: 20, height: 20))
                make.size.equalTo(CGSize(width: 20, height: 20))
                //: make.trailing.lessThanOrEqualTo(RemoveBtn.snp.leading).offset(-10)
                make.trailing.lessThanOrEqualTo(RemoveBtn.snp.leading).offset(-10)
            }
        }
    }

    //: @objc func RemoveBtnClick() {
    @objc func tipClick() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: var isattion = false
        var isattion = false
        //: if type == .attention {
        if type == .attention {
            //: dict["removeAttentionUid"] = currenModel.uid
            dict[(k_equalPartyValue.replacingOccurrences(of: "moment", with: "em") + String(kColorName.suffix(5)) + "tionUid")] = currenModel.uid
            //: isattion = false
            isattion = false
            //: } else if type == .beLike {
        } else if type == .beLike {
            //: if currenModel.mutualAtt! {
            if currenModel.mutualAtt! {
                //: dict["removeAttentionUid"] = currenModel.uid
                dict[(k_equalPartyValue.replacingOccurrences(of: "moment", with: "em") + String(kColorName.suffix(5)) + "tionUid")] = currenModel.uid
                //: } else {
            } else {
                //: dict["attentionUid"] = currenModel.uid
                dict[(String(k_itemIndexValue) + String(kFrameworkPath.prefix(3)))] = currenModel.uid
            }
            //: isattion = !currenModel.mutualAtt!
            isattion = !currenModel.mutualAtt!
        }
        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: PlayerRequestTool.req_atationTool(isAttention: isattion, params: dict) { succeed, result, errorModel in
        PlayerRequestTool.appPath(isAttention: isattion, params: dict) { succeed, _, _ in
            //: EndProgressHUD.popEnable()
            EndProgressHUD.popEnable()
            //: guard succeed else { return }
            guard succeed else { return }
            //: if self.type == .attention {
            if self.type == .attention {
                //: if self.delegate != nil {
                if self.delegate != nil {
                    //: self.delegate?.cancelAtationSeleteIndex(self.seleteIndex!)
                    self.delegate?.touchPoint(self.seleteIndex!)
                }
                //: } else if self.type == .beLike {
            } else if self.type == .beLike {
                //: if self.delegate != nil {
                if self.delegate != nil {
                    //: self.currenModel.mutualAtt = !self.currenModel.mutualAtt!
                    self.currenModel.mutualAtt = !self.currenModel.mutualAtt!
                    //: self.otherLB.isHidden = !self.currenModel.mutualAtt!
                    self.otherLB.isHidden = !self.currenModel.mutualAtt!
                    //: if self.currenModel.mutualAtt! {
                    if self.currenModel.mutualAtt! {
                        //: self.RemoveBtn.setBackgroundImage(UIImage.submitGift(name: "btn_message_favourite_following_nor"), for: .normal)
                        self.RemoveBtn.setBackgroundImage(UIImage.submitGift(name: String(bytes: kPhotoName.map{centerTo(view: $0)}, encoding: .utf8)!), for: .normal)
                        //: self.RemoveBtn.setTitle("", for: .normal)
                        self.RemoveBtn.setTitle("", for: .normal)
                        //: } else {
                    } else {
                        //: self.RemoveBtn.setBackgroundImage(UIImage.submitGift(name: "btn_message_favourite_follow_nor"), for: .normal)
                        self.RemoveBtn.setBackgroundImage(UIImage.submitGift(name: String(bytes: kViewEqualPath.map{partValue(bottom: $0)}, encoding: .utf8)!), for: .normal)
                        //: self.RemoveBtn.setTitle("Follow".localized, for: .normal)
                        self.RemoveBtn.setTitle((String(k_modelActualId) + kViewValue.replacingOccurrences(of: "crush", with: "w")).localized, for: .normal)
                        //: self.RemoveBtn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 15)
                        self.RemoveBtn.titleLabel?.font = UIFont.tapShared(fontSize: 15)
                        //: self.RemoveBtn.setTitleColor(.white, for: .normal)
                        self.RemoveBtn.setTitleColor(.white, for: .normal)
                    }
                    //: self.delegate?.belikeAtationSeleteIndex(self.seleteIndex!)
                    self.delegate?.marginOfError(self.seleteIndex!)
                }
            }
        }
    }

    //: @objc func IconBtnClick() {
    @objc func serration() {
        //: AddReactiveCompatible.share.func__pushToUserDetailVC(uid: currenModel.uid)
        AddReactiveCompatible.share.afterTo(uid: currenModel.uid)
    }
}

// MARK: - UI

//: extension TalkingAttentionCell {
extension StreamViewCell {
    //: func layoutSubViewsConstraints() {
    func outUp() {
        //: IconBtn.snp.makeConstraints { make in
        IconBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(15)
            make.leading.equalTo(self).offset(15)
            //: make.top.equalTo(self).offset(8)
            make.top.equalTo(self).offset(8)
            //: make.width.height.equalTo(60)
            make.width.height.equalTo(60)
        }
        //: iconBorder.snp.makeConstraints { make in
        iconBorder.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(10)
            make.leading.equalTo(self).offset(10)
            //: make.top.equalTo(self).offset(3)
            make.top.equalTo(self).offset(3)
            //: make.width.height.equalTo(69.6)
            make.width.height.equalTo(69.6)
        }
        //: nameLabel.snp.makeConstraints { make in
        nameLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(IconBtn.snp.trailing).offset(10)
            make.leading.equalTo(IconBtn.snp.trailing).offset(10)
            //: make.top.equalTo(self).offset(15)
            make.top.equalTo(self).offset(15)
            //: make.height.equalTo(21)
            make.height.equalTo(21)
        }
        //: cardImg.snp.makeConstraints { make in
        cardImg.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            //: make.centerY.equalTo(nameLabel)
            make.centerY.equalTo(nameLabel)
            //: make.width.equalTo(16)
            make.width.equalTo(16)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
        }
        //: sexBtn.snp.makeConstraints { make in
        sexBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(cardImg.snp.trailing).offset(3)
            make.leading.equalTo(cardImg.snp.trailing).offset(3)
            //: make.centerY.equalTo(nameLabel)
            make.centerY.equalTo(nameLabel)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.equalTo(33)
            make.width.equalTo(33)
            //: make.trailing.lessThanOrEqualTo(RemoveBtn.snp.leading).offset(-10)
            make.trailing.lessThanOrEqualTo(RemoveBtn.snp.leading).offset(-10)
        }
        //: otherLB.snp.makeConstraints { make in
        otherLB.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLabel)
            make.leading.equalTo(nameLabel)
            //: make.top.equalTo(nameLabel.snp.bottom).offset(10)
            make.top.equalTo(nameLabel.snp.bottom).offset(10)
            //: make.size.equalTo(CGSize(width: 98, height: 16))
            make.size.equalTo(CGSize(width: 98, height: 16))
        }
        //: RemoveBtn.snp.makeConstraints { make in
        RemoveBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(self.snp.trailing).offset(-15)
            make.trailing.equalTo(self.snp.trailing).offset(-15)
            //: make.centerY.equalTo(self)
            make.centerY.equalTo(self)
            //: make.size.equalTo(CGSize(width: 74, height: 30))
            make.size.equalTo(CGSize(width: 74, height: 30))
        }
    }
}
