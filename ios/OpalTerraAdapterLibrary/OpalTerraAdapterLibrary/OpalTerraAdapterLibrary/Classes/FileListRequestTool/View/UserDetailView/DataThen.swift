
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kEqualIndexPath:[UInt8] = [0x40,0x47,0x40,0x5d,0x1,0x4a,0x46,0x4d,0x4c,0x5b,0x13,0x0,0x9,0x41,0x48,0x5a,0x9,0x47,0x46,0x5d,0x9,0x4b,0x4c,0x4c,0x47,0x9,0x40,0x44,0x59,0x45,0x4c,0x44,0x4c,0x47,0x5d,0x4c,0x4d]

/*: "icon_ziliao_id_default" :*/
fileprivate let kViewUrl:String = "icon_edit info"
fileprivate let kItemFormat:[Character] = ["a","o","_","i","d"]
fileprivate let kJoinGiftLayerMsg:String = "_defaultstack middle show"

/*: "icon_ziliao_xingzuo_default" :*/
fileprivate let kHiddenValue:String = "to share view pageicon_"
fileprivate let kShareTextMessage:String = "_xingcomment in equal self"
fileprivate let k_labelPath:[Character] = ["z"]
fileprivate let kChangeName:String = "make list submit textuo_de"

/*: "icon_ziliao_qianming_default" :*/
fileprivate let k_extraFormat:String = "icmaken"
fileprivate let kTapName:String = "iao_qifalse value"
fileprivate let kSourceStr:String = "change shared attentiong_def"
fileprivate let k_contentPath:[Character] = ["a","u","l","t"]

/*: "btn_me_copy" :*/
fileprivate let kLineName:String = "btn_instance add view input"

/*: "icon_data_man" :*/
fileprivate let k_equalName:[Character] = ["i","c","o","n","_","d","a","t","a","_","m","a"]
fileprivate let kEndFormat:String = "task"

/*: "icon_data_position" :*/
fileprivate let kEdgeTableMessage:String = "icon_davar mode tap color daily"
fileprivate let kObjectStr:[Character] = ["t","a"]
fileprivate let k_modelKey:String = "_positionshadow true"

/*: "UID Copied" :*/
fileprivate let kReplyContentFormat:[Character] = ["U","I","D"," ","C","o","p","i","e","d"]

/*: "icon_data_woman" :*/
fileprivate let k_centerTitle:[UInt8] = [0x6e,0x61,0x6d,0x6f,0x77,0x5f,0x61,0x74,0x61,0x64,0x5f,0x6e,0x6f,0x63,0x69]

/*: "  :*/
fileprivate let kAcceptViewStr:[Character] = [" "]

/*: "666666" :*/
fileprivate let k_colorStr:String = "666666"

/*: "No personal signature was completed" :*/
fileprivate let kPushUrl:[UInt8] = [0x58,0x79,0x36,0x66,0x73,0x64,0x65,0x79,0x78,0x77,0x7a,0x36,0x65,0x7f,0x71,0x78,0x77,0x62,0x63,0x64,0x73,0x36,0x61,0x77,0x65,0x36,0x75,0x79,0x7b,0x66,0x7a,0x73,0x62,0x73,0x72]

private func ofImport(direction num: UInt8) -> UInt8 {
    return num ^ 22
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DataThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/6.
//

//: import UIKit
import UIKit

//: class TalkingUserDetailProfileCell: UITableViewCell {
class DataThen: UITableViewCell {
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
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.contentView.backgroundColor = .clear
        self.contentView.backgroundColor = .clear

        //: self.setupSubviews()
        self.doingSubviews()
        //: self.setupSubViewsConstraint()
        self.compartmentConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kEqualIndexPath.map{$0^41}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var uidImgView: UIImageView = {
    private lazy var uidImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.submitGift(name: "icon_ziliao_id_default")
        imgV.image = UIImage.submitGift(name: (String(kViewUrl.prefix(5)) + "zili" + String(kItemFormat) + String(kJoinGiftLayerMsg.prefix(8))))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var constellationImgView: UIImageView = {
    private lazy var constellationImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.submitGift(name: "icon_ziliao_xingzuo_default")
        imgV.image = UIImage.submitGift(name: (String(kHiddenValue.suffix(5)) + "ziliao" + String(kShareTextMessage.prefix(5)) + String(k_labelPath) + String(kChangeName.suffix(5)) + "fault"))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var signImgView: UIImageView = {
    private lazy var signImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.submitGift(name: "icon_ziliao_qianming_default")
        imgV.image = UIImage.submitGift(name: (k_extraFormat.replacingOccurrences(of: "make", with: "o") + "_zil" + String(kTapName.prefix(6)) + "anmin" + String(kSourceStr.suffix(5)) + String(k_contentPath)))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var uidLab: UILabel = {
    private lazy var uidLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .fontChange(type: .Regular, fontSize: 15)
        lb.font = .fontChange(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .scaleValueTo()
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var constellationLab: UILabel = {
    private lazy var constellationLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .fontChange(type: .Regular, fontSize: 15)
        lb.font = .fontChange(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .scaleValueTo()
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var signLab: UILabel = {
    lazy var signLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .fontChange(type: .Regular, fontSize: 15)
        lb.font = .fontChange(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .scaleValueTo()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var copyButton: UIButton = {
    private lazy var copyButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.submitGift(name: "btn_me_copy"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kLineName.prefix(4)) + "me_copy")), for: .normal)
        //: btn.addTarget(self, action: #selector(clickCopyButtonAction), for: .touchUpInside)
        btn.addTarget(self, action: #selector(untilFirst), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var sexIcon: UIImageView = {
    private lazy var sexIcon: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.submitGift(name: "icon_data_man")
        imgV.image = UIImage.submitGift(name: (String(k_equalName) + kEndFormat.replacingOccurrences(of: "task", with: "n")))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var ageLab: UILabel = {
    private lazy var ageLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .fontChange(type: .Regular, fontSize: 15)
        lb.font = .fontChange(type: .Regular, fontSize: 15)
        //: lb.textColor = .appValueColor()
        lb.textColor = .scaleValueTo()
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var locationButton: TalkingButton = {
    private lazy var locationButton: ResumeControl = {
        //: let btn = TalkingButton(type: .custom)
        let btn = ResumeControl(type: .custom)
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.setImage(UIImage.submitGift(name: "icon_data_position"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kEdgeTableMessage.prefix(7)) + String(kObjectStr) + String(k_modelKey.prefix(9)))), for: .normal)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.scaleValueTo(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 15)
        btn.titleLabel?.font = UIFont.targetFor(fontSize: 15)
        //: btn.titleLabel?.lineBreakMode = .byTruncatingTail
        btn.titleLabel?.lineBreakMode = .byTruncatingTail
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingUserDetailProfileCell {
extension DataThen {
    //: @objc func clickCopyButtonAction() {
    @objc func untilFirst() {
        //: UIPasteboard.general.string = uidLab.text
        UIPasteboard.general.string = uidLab.text
        //: ProgressHUD.toast("UID Copied".localized)
        EndProgressHUD.terraceToast((String(kReplyContentFormat)).localized)
    }
}

// MARK: - update

//: extension TalkingUserDetailProfileCell {
extension DataThen {
    /// 刷新个人资料cell
    /// - Parameter userModel: 用户模型
    //: func configWithDataModel(userModel: TalkingUserInfoModel) {
    func ribbon(userModel: GroupTransformable) {
        //: uidLab.text = userModel.uid
        uidLab.text = userModel.uid
        //: constellationLab.text = userModel.constellation
        constellationLab.text = userModel.constellation
        //: let sexImgStr = (userModel.sex == Gender.female.rawValue) ? "icon_data_woman":"icon_data_man"
        let sexImgStr = (userModel.sex == ManagerQuickLookable.female.rawValue) ? String(bytes: k_centerTitle.reversed(), encoding: .utf8)! : (String(k_equalName) + kEndFormat.replacingOccurrences(of: "task", with: "n"))
        //: sexIcon.image = UIImage.submitGift(name: sexImgStr)
        sexIcon.image = UIImage.submitGift(name: sexImgStr)
        //: ageLab.text = "\(userModel.age)"
        ageLab.text = "\(userModel.age)"
        //: locationButton.isHidden = userModel.location.count <= 0
        locationButton.isHidden = userModel.location.count <= 0
        //: locationButton.setTitle(" \(userModel.location)", for: .normal)
        locationButton.setTitle(" \(userModel.location)", for: .normal)
        //: if userModel.signature?.isEmptyString == false {
        if userModel.signature?.isEmptyString == false {
            //: let attributes = [.foregroundColor: UIColor(hex: "666666")!, .font: UIFont.fontChange(type: .Regular, fontSize: 15)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor(hex: (k_colorStr.capitalized))!, .font: UIFont.fontChange(type: .Regular, fontSize: 15)] as [NSAttributedString.Key: Any]
            //: let attributeStr = NSMutableAttributedString(string: userModel.signature ?? "No personal signature was completed".localized)
            let attributeStr = NSMutableAttributedString(string: userModel.signature ?? String(bytes: kPushUrl.map{ofImport(direction: $0)}, encoding: .utf8)!.localized)
            //: attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
            attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
            //: let paragraph = NSMutableParagraphStyle()
            let paragraph = NSMutableParagraphStyle()
            //: paragraph.lineSpacing = 2
            paragraph.lineSpacing = 2
            //: attributeStr.addAttribute(.paragraphStyle, value: paragraph, range: NSRange(location: 0, length: attributeStr.length))
            attributeStr.addAttribute(.paragraphStyle, value: paragraph, range: NSRange(location: 0, length: attributeStr.length))

            //: signLab.isHidden = false
            signLab.isHidden = false
            //: signImgView.isHidden = false
            signImgView.isHidden = false
            //: signLab.attributedText = attributeStr
            signLab.attributedText = attributeStr
            //: } else {
        } else {
            //: signLab.isHidden = true
            signLab.isHidden = true
            //: signImgView.isHidden = true
            signImgView.isHidden = true
        }
        //: if locationButton.isHidden && userModel.uid.count > 0 {
        if locationButton.isHidden, userModel.uid.count > 0 {
            //: sexIcon.snp.remakeConstraints { make in
            sexIcon.snp.remakeConstraints { make in
                //: make.top.equalTo(uidImgView.snp.bottom).offset(10)
                make.top.equalTo(uidImgView.snp.bottom).offset(10)
                //: make.leading.size.equalTo(uidImgView)
                make.leading.size.equalTo(uidImgView)
            }
        }
    }
}

// MARK: Layout

//: extension TalkingUserDetailProfileCell {
extension DataThen {
    //: private func setupSubviews() {
    private func doingSubviews() {
        //: contentView.addSubview(uidImgView)
        contentView.addSubview(uidImgView)
        //: contentView.addSubview(uidLab)
        contentView.addSubview(uidLab)
        //: contentView.addSubview(copyButton)
        contentView.addSubview(copyButton)
        //: contentView.addSubview(constellationImgView)
        contentView.addSubview(constellationImgView)
        //: contentView.addSubview(constellationLab)
        contentView.addSubview(constellationLab)
        //: contentView.addSubview(sexIcon)
        contentView.addSubview(sexIcon)
        //: contentView.addSubview(ageLab)
        contentView.addSubview(ageLab)
        //: contentView.addSubview(signImgView)
        contentView.addSubview(signImgView)
        //: contentView.addSubview(signLab)
        contentView.addSubview(signLab)
        //: contentView.addSubview(locationButton)
        contentView.addSubview(locationButton)
    }

    //: private func setupSubViewsConstraint() {
    private func compartmentConstraint() {
        //: uidImgView.snp.makeConstraints { make in
        uidImgView.snp.makeConstraints { make in
            //: make.top.leading.equalTo(15)
            make.top.leading.equalTo(15)
            //: make.size.equalTo(CGSize(width: 22, height: 22))
            make.size.equalTo(CGSize(width: 22, height: 22))
        }
        //: uidLab.snp.makeConstraints { make in
        uidLab.snp.makeConstraints { make in
            //: make.leading.equalTo(uidImgView.snp.trailing).offset(6)
            make.leading.equalTo(uidImgView.snp.trailing).offset(6)
            //: make.centerY.equalTo(uidImgView)
            make.centerY.equalTo(uidImgView)
        }
        //: copyButton.snp.makeConstraints { make in
        copyButton.snp.makeConstraints { make in
            //: make.leading.equalTo(uidLab.snp.trailing).offset(4)
            make.leading.equalTo(uidLab.snp.trailing).offset(4)
            //: make.centerY.equalTo(uidImgView)
            make.centerY.equalTo(uidImgView)
            //: make.size.equalTo(CGSize(width: 22, height: 22))
            make.size.equalTo(CGSize(width: 22, height: 22))
        }
        //: locationButton.snp.makeConstraints { make in
        locationButton.snp.makeConstraints { make in
            //: make.leading.equalTo(uidImgView)
            make.leading.equalTo(uidImgView)
            //: make.top.equalTo(uidImgView.snp.bottom).offset(9)
            make.top.equalTo(uidImgView.snp.bottom).offset(9)
            //: make.height.equalTo(22)
            make.height.equalTo(22)
        }
        //: sexIcon.snp.makeConstraints { make in
        sexIcon.snp.makeConstraints { make in
            //: make.leading.size.equalTo(uidImgView)
            make.leading.size.equalTo(uidImgView)
            //: make.top.equalTo(locationButton.snp.bottom).offset(10)
            make.top.equalTo(locationButton.snp.bottom).offset(10)
        }
        //: ageLab.snp.makeConstraints { make in
        ageLab.snp.makeConstraints { make in
            //: make.leading.equalTo(sexIcon.snp.trailing).offset(6)
            make.leading.equalTo(sexIcon.snp.trailing).offset(6)
            //: make.centerY.equalTo(sexIcon)
            make.centerY.equalTo(sexIcon)
        }
        //: constellationImgView.snp.makeConstraints { make in
        constellationImgView.snp.makeConstraints { make in
            //: make.leading.size.equalTo(uidImgView)
            make.leading.size.equalTo(uidImgView)
            //: make.top.equalTo(sexIcon.snp.bottom).offset(10)
            make.top.equalTo(sexIcon.snp.bottom).offset(10)
        }
        //: constellationLab.snp.makeConstraints { make in
        constellationLab.snp.makeConstraints { make in
            //: make.leading.equalTo(constellationImgView.snp.trailing).offset(6)
            make.leading.equalTo(constellationImgView.snp.trailing).offset(6)
            //: make.centerY.equalTo(constellationImgView)
            make.centerY.equalTo(constellationImgView)
        }
        //: signImgView.snp.makeConstraints { make in
        signImgView.snp.makeConstraints { make in
            //: make.leading.size.equalTo(uidImgView)
            make.leading.size.equalTo(uidImgView)
            //: make.top.equalTo(constellationImgView.snp.bottom).offset(10)
            make.top.equalTo(constellationImgView.snp.bottom).offset(10)
        }
        //: signLab.snp.makeConstraints { make in
        signLab.snp.makeConstraints { make in
            //: make.leading.equalTo(signImgView.snp.trailing).offset(6)
            make.leading.equalTo(signImgView.snp.trailing).offset(6)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.equalTo(constellationLab.snp.bottom).offset(12)
            make.top.equalTo(constellationLab.snp.bottom).offset(12)
        }
    }
}
