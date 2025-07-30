
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_sizeMsg:[UInt8] = [0x1c,0x1b,0x1c,0x1,0x5d,0x16,0x1a,0x11,0x10,0x7,0x4f,0x5c,0x55,0x1d,0x14,0x6,0x55,0x1b,0x1a,0x1,0x55,0x17,0x10,0x10,0x1b,0x55,0x1c,0x18,0x5,0x19,0x10,0x18,0x10,0x1b,0x1,0x10,0x11]

/*: "icon_lounge" :*/
fileprivate let kRawStr:[Character] = ["i","c","o","n","_","l","o"]
fileprivate let kAtText:String = "donnge"

/*: "icon_home_v" :*/
fileprivate let k_directionMessage:[Character] = ["i","c","o","n","_","h","o","m","e","_"]
fileprivate let kMiniToolKey:String = "count"

/*: "My album" :*/
fileprivate let k_timeId:[Character] = ["M","y"," ","a","l","b","u","m"]

/*: "0A071F" :*/
fileprivate let kIconEndData:[Character] = ["0","A","0","7","1","F"]

/*: "#C5BEFF" :*/
fileprivate let kRowName:[Character] = ["#","C","5","B","E","F","F"]

/*: "🎉congratulations! She may be very interested in you. She's not far from you. \nWhy don't you say hello to her?" :*/
fileprivate let k_countValue:[UInt8] = [0x5,0xb4,0xa3,0x9e,0x78,0x84,0x83,0x7c,0x87,0x76,0x89,0x8a,0x81,0x76,0x89,0x7e,0x84,0x83,0x88,0x36,0x35,0x68,0x7d,0x7a,0x35,0x82,0x76,0x8e,0x35,0x77,0x7a,0x35,0x8b,0x7a,0x87,0x8e,0x35,0x7e,0x83,0x89,0x7a,0x87,0x7a,0x88,0x89,0x7a,0x79,0x35,0x7e,0x83,0x35,0x8e,0x84,0x8a,0x43,0x35,0x68,0x7d,0x7a,0x3c,0x88,0x35,0x83,0x84,0x89,0x35,0x7b,0x76,0x87,0x35,0x7b,0x87,0x84,0x82,0x35,0x8e,0x84,0x8a,0x43,0x35,0x1f,0x6c,0x7d,0x8e,0x35,0x79,0x84,0x83,0x3c,0x89,0x35,0x8e,0x84,0x8a,0x35,0x88,0x76,0x8e,0x35,0x7d,0x7a,0x81,0x81,0x84,0x35,0x89,0x84,0x35,0x7d,0x7a,0x87,0x54]

fileprivate func modelLabel(background num: UInt8) -> UInt8 {
    let value = Int(num) - 21
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Why don't you say hello to her?" :*/
fileprivate let kImageHiddenFormat:[UInt8] = [0x19,0x26,0x37,0x6e,0x2a,0x21,0x20,0x69,0x3a,0x6e,0x37,0x21,0x3b,0x6e,0x3d,0x2f,0x37,0x6e,0x26,0x2b,0x22,0x22,0x21,0x6e,0x3a,0x21,0x6e,0x26,0x2b,0x3c,0x71]

private func forIf(data num: UInt8) -> UInt8 {
    return num ^ 78
}

/*: "🎉congratulations! He may be very interested in you. He's not far from you. \nWhy don't you say hello to him?" :*/
fileprivate let kDuringData:[UInt8] = [0x3f,0x6d,0x69,0x68,0x20,0x6f,0x74,0x20,0x6f,0x6c,0x6c,0x65,0x68,0x20,0x79,0x61,0x73,0x20,0x75,0x6f,0x79,0x20,0x74,0x27,0x6e,0x6f,0x64,0x20,0x79,0x68,0x57,0xa,0x20,0x2e,0x75,0x6f,0x79,0x20,0x6d,0x6f,0x72,0x66,0x20,0x72,0x61,0x66,0x20,0x74,0x6f,0x6e,0x20,0x73,0x27,0x65,0x48,0x20,0x2e,0x75,0x6f,0x79,0x20,0x6e,0x69,0x20,0x64,0x65,0x74,0x73,0x65,0x72,0x65,0x74,0x6e,0x69,0x20,0x79,0x72,0x65,0x76,0x20,0x65,0x62,0x20,0x79,0x61,0x6d,0x20,0x65,0x48,0x20,0x21,0x73,0x6e,0x6f,0x69,0x74,0x61,0x6c,0x75,0x74,0x61,0x72,0x67,0x6e,0x6f,0x63,0x89,0x8e,0x9f,0xf0]

/*: "Why don't you say hello to him?" :*/
fileprivate let k_toKey:[UInt8] = [0x65,0x76,0x87,0x2e,0x72,0x7d,0x7c,0x35,0x82,0x2e,0x87,0x7d,0x83,0x2e,0x81,0x6f,0x87,0x2e,0x76,0x73,0x7a,0x7a,0x7d,0x2e,0x82,0x7d,0x2e,0x76,0x77,0x7b,0x4d]

fileprivate func blockError(normal num: UInt8) -> UInt8 {
    let value = Int(num) - 14
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "#FFD13A" :*/
fileprivate let k_positionStr:[Character] = ["#","F","F","D","1","3","A"]

/*: "icon_male_default" :*/
fileprivate let k_nameId:[UInt8] = [0x74,0x6c,0x75,0x61,0x66,0x65,0x64,0x5f,0x65,0x6c,0x61,0x6d,0x5f,0x6e,0x6f,0x63,0x69]

/*: "icon_female_default" :*/
fileprivate let k_editValue:[Character] = ["i","c","o","n","_","f"]
fileprivate let k_contentModeValue:String = "medium"
fileprivate let k_leadingPath:String = "ale_deresult var"

/*: "   " :*/
fileprivate let k_rawStr:String = "texttexttext"

/*: "My interests：" :*/
fileprivate let k_pathName:String = "My intdetail gift"
fileprivate let k_fileContent:String = "var toperests："

/*: "btn_me_edit" :*/
fileprivate let k_nameMsg:String = "btn_if sure back male view"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HiddenDisplayMessageCell.swift
//  AbroadTalking
//
//  Created by Hemming on 2023/3/1.
//

//: import UIKit
import UIKit

//: class TalkingChatMatchMsgCell: TalkingChatBaseMsgCell {
class HiddenDisplayMessageCell: ObjectStreamMsgCell {
    //: var matchData: TalkingChatMatchMsgCellData?
    var matchData: CoverCellData?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: setupSubviews()
        tableBySubviews()
        //: bindInteraction()
        underAdd()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_sizeMsg.map{$0^117}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var infoView: UIView = {
    private lazy var infoView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 12
        view.layer.cornerRadius = 12
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var vipBgView: UIImageView = {
    private lazy var vipBgView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.isHidden = true
        img.isHidden = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var headImgView: UIImageView = {
    private lazy var headImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.layer.cornerRadius = 54/2
        imgV.layer.cornerRadius = 54 / 2
        //: imgV.layer.masksToBounds = true
        imgV.layer.masksToBounds = true
        //: imgV.contentMode = .scaleAspectFill
        imgV.contentMode = .scaleAspectFill
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var infoNameLab: UILabel = {
    private lazy var infoNameLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.textColor = UIColor.colorStatuteNameApp()
        label.textColor = UIColor.colorStatuteNameApp()
        //: label.font = UIFont.pingfangMediumFont(fontSize: 18)
        label.font = UIFont.tapShared(fontSize: 18)
        //: return label
        return label
        //: }()
    }()

    //: private lazy var loungeImgV: UIImageView = {
    private lazy var loungeImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.submitGift(name: "icon_lounge")
        img.image = UIImage.submitGift(name: (String(kRawStr) + kAtText.replacingOccurrences(of: "don", with: "u")))
        //: img.isHidden = true
        img.isHidden = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var authImgview: UIImageView = {
    private lazy var authImgview: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.submitGift(name: "icon_home_v")
        imgV.image = UIImage.submitGift(name: (String(k_directionMessage) + kMiniToolKey.replacingOccurrences(of: "count", with: "v")))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var sexBtn: UIButton = {
    private lazy var sexBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: btn.titleLabel?.font = .fontChange(type: .Medium, fontSize: 10)
        btn.titleLabel?.font = .fontChange(type: .Medium, fontSize: 10)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var interestsLab: UILabel = {
    private lazy var interestsLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: return label
        return label
        //: }()
    }()

    //: private lazy var imgTitleLab: UILabel = {
    private lazy var imgTitleLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = UIFont.pingfangMediumFont(fontSize: 15)
        label.font = UIFont.tapShared(fontSize: 15)
        //: label.textColor = UIColor.colorStatuteNameApp()
        label.textColor = UIColor.colorStatuteNameApp()
        //: label.text = "My album".localized
        label.text = (String(k_timeId)).localized
        //: return label
        return label
        //: }()
    }()

    //: private lazy var pictureView: UIView = {
    private lazy var pictureView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: return view
        return view
        //: }()
    }()

    //: private lazy var bgView: UIView = {
    private lazy var bgView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor(hex: "0A071F")?.withAlphaComponent(0.3)
        view.backgroundColor = UIColor(hex: (String(kIconEndData)))?.withAlphaComponent(0.3)
        //: view.layer.cornerRadius = 12
        view.layer.cornerRadius = 12
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.layer.borderWidth = 1
        view.layer.borderWidth = 1
        //: view.layer.borderColor = UIColor(hex: "#C5BEFF")?.cgColor
        view.layer.borderColor = UIColor(hex: (String(kRowName)))?.cgColor
        //: return view
        return view
        //: }()
    }()

    //: private lazy var matchLab: UILabel = {
    private lazy var matchLab: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: var str = "🎉congratulations! She may be very interested in you. She's not far from you. \nWhy don't you say hello to her?".localized
        var str = String(bytes: k_countValue.map{modelLabel(background: $0)}, encoding: .utf8)!.localized
        //: var matchStr = "Why don't you say hello to her?".localized
        var matchStr = String(bytes: kImageHiddenFormat.map{forIf(data: $0)}, encoding: .utf8)!.localized

        //: if DistanceAppManager.share.loginUserMode.sex == "2" {
        if DistanceAppManager.share.loginUserMode.sex == "2" {
            //: str = "🎉congratulations! He may be very interested in you. He's not far from you. \nWhy don't you say hello to him?".localized
            str = String(bytes: kDuringData.reversed(), encoding: .utf8)!.localized
            //: matchStr = "Why don't you say hello to him?".localized
            matchStr = String(bytes: k_toKey.map{blockError(normal: $0)}, encoding: .utf8)!.localized
        }
        //: var attriString = NSMutableAttributedString.init(string: str as String, attributes: [.font: UIFont.pingfangMediumFont(fontSize: 15), .foregroundColor: UIColor.white])
        var attriString = NSMutableAttributedString(string: str as String, attributes: [.font: UIFont.tapShared(fontSize: 15), .foregroundColor: UIColor.white])
        //: if let range = str.range(of: matchStr) {
        if let range = str.range(of: matchStr) {
            //: let nsRange = NSRange(range, in: str)
            let nsRange = NSRange(range, in: str)
            //: attriString.addAttributes([NSAttributedString.Key.foregroundColor: UIColor(hex: "#FFD13A")!], range: nsRange)
            attriString.addAttributes([NSAttributedString.Key.foregroundColor: UIColor(hex: (String(k_positionStr)))!], range: nsRange)
        }
        //: label.attributedText = attriString
        label.attributedText = attriString
        //: return label
        return label
        //: }()
    }()
}

// MARK: - 刷新

//: extension TalkingChatMatchMsgCell {
extension HiddenDisplayMessageCell {
    //: override func fill(with data: TCommonCellData) {
    override func afterMid(with data: DisappearReactiveCompatible) {
        //: super.fill(with: data)
        super.afterMid(with: data)
        //: self.matchData = data as? TalkingChatMatchMsgCellData
        self.matchData = data as? CoverCellData
        //: self.avatarView.isHidden = true
        self.avatarView.isHidden = true
        //: self.isReadImg.isHidden = true
        self.isReadImg.isHidden = true
        //: self.coinIconImg.isHidden = true
        self.coinIconImg.isHidden = true
        //: self.coinLabel.isHidden = true
        self.coinLabel.isHidden = true
        //: self.retryView.isHidden = true
        self.retryView.isHidden = true
        //: self.iconBorder.isHidden = true
        self.iconBorder.isHidden = true
        //: self.bubbleImgView.isHidden = true
        self.bubbleImgView.isHidden = true
        //: self.imgTitleLab.isHidden = true
        self.imgTitleLab.isHidden = true
        //: self.pictureView.isHidden = true
        self.pictureView.isHidden = true

        // 为空时必须初始化
        //: let userInfoModel = self.matchData?.msgModel.userInfoModel ?? HumankindThen.init()
        let userInfoModel = self.matchData?.msgModel.userInfoModel ?? HumankindThen()
        //: guard userInfoModel.uid.isEmpty == false else {
        guard userInfoModel.uid.isEmpty == false else {
            //: self.bubbleImgView.isHidden = true
            self.bubbleImgView.isHidden = true
            //: return
            return
        }

        //: self.vipBgView.isHidden = !userInfoModel.loungePlus
        self.vipBgView.isHidden = !userInfoModel.loungePlus
        //: if self.vipBgView.isHidden == false {
        if self.vipBgView.isHidden == false {
            //: if let vipModel = DistanceAppManager.share.appUserConfigMode.vipSetting.filter({$0.vipSkinId == userInfoModel.vipSkinId}).first {
            if let vipModel = DistanceAppManager.share.appUserConfigMode.vipSetting.filter({ $0.vipSkinId == userInfoModel.vipSkinId }).first {
                //: self.vipBgView.setUrlImage(urlStr: vipModel.vipChatSkin, placeImg: nil)
                self.vipBgView.setUrlImage(urlStr: vipModel.vipChatSkin, placeImg: nil)
            }
        }
        //: self.headImgView.setUrlImage(urlStr: userInfoModel.headPic)
        self.headImgView.setUrlImage(urlStr: userInfoModel.headPic)
        //: self.infoNameLab.textColor = userInfoModel.loungePlus ? .userVipColor():.colorStatuteNameApp()
        self.infoNameLab.textColor = userInfoModel.loungePlus ? .usufructuaryHeadSkinColour() : .colorStatuteNameApp()
        //: self.infoNameLab.text = userInfoModel.nickname
        self.infoNameLab.text = userInfoModel.nickname
        //: self.loungeImgV.isHidden = !userInfoModel.loungePlus
        self.loungeImgV.isHidden = !userInfoModel.loungePlus
        //: self.authImgview.isHidden = !userInfoModel.tpAuth
        self.authImgview.isHidden = !userInfoModel.tpAuth
        //: let imgStr = userInfoModel.sex == Gender.male.rawValue ? "icon_male_default" : "icon_female_default"
        let imgStr = userInfoModel.sex == ManagerQuickLookable.male.rawValue ? String(bytes: k_nameId.reversed(), encoding: .utf8)! : (String(k_editValue) + k_contentModeValue.replacingOccurrences(of: "medium", with: "em") + String(k_leadingPath.prefix(6)) + "fault")
        //: sexBtn.setBackgroundImage(UIImage.submitGift(name: imgStr), for: .normal)
        sexBtn.setBackgroundImage(UIImage.submitGift(name: imgStr), for: .normal)
        //: sexBtn.setTitle("   " + String(userInfoModel.age), for: .normal)
        sexBtn.setTitle("   " + String(userInfoModel.age), for: .normal)

        //: if (userInfoModel.interest.count > 0) {
        if userInfoModel.interest.count > 0 {
            //: self.interestsLab.isHidden = false
            self.interestsLab.isHidden = false
            //: let matchStr = "My interests：".localized
            let matchStr = (String(k_pathName.prefix(6)) + String(k_fileContent.suffix(7))).localized
            //: let arr_1: NSArray = userInfoModel.interest as NSArray
            let arr_1: NSArray = userInfoModel.interest as NSArray
            //: let str_1 = arr_1.componentsJoined(by: "，")
            let str_1 = arr_1.componentsJoined(by: "，")
            //: let str: NSString = "\(matchStr)\(str_1 as String)" as NSString
            let str: NSString = "\(matchStr)\(str_1 as String)" as NSString
            //: let attributes = [.font: UIFont.pingfangMediumFont(fontSize: 15), .foregroundColor: UIColor.appThemeColor()] as [NSAttributedString.Key: Any]
            let attributes = [.font: UIFont.tapShared(fontSize: 15), .foregroundColor: UIColor.increase()] as [NSAttributedString.Key: Any]
            //: let attrString = NSMutableAttributedString.init(string: str as String, attributes: attributes)
            let attrString = NSMutableAttributedString(string: str as String, attributes: attributes)
            //: attrString.addAttributes([NSAttributedString.Key.foregroundColor: UIColor.colorStatuteNameApp()], range: str.range(of: matchStr))
            attrString.addAttributes([NSAttributedString.Key.foregroundColor: UIColor.colorStatuteNameApp()], range: str.range(of: matchStr))
            //: self.interestsLab.attributedText = attrString
            self.interestsLab.attributedText = attrString
            //: } else {
        } else {
            //: self.interestsLab.isHidden = true
            self.interestsLab.isHidden = true
        }
        //: if userInfoModel.picture.count > 0 {
        if userInfoModel.picture.count > 0 {
            //: self.imgTitleLab.isHidden = false
            self.imgTitleLab.isHidden = false
            //: self.pictureView.isHidden = false
            self.pictureView.isHidden = false
            //: self.updateUserImgView()
            self.perspectiveView()
        }
    }

    /// 布局相册
    //: func updateUserImgView() {
    func perspectiveView() {
        //: self.pictureView.subviews.forEach { $0.removeFromSuperview() }
        self.pictureView.subviews.forEach { $0.removeFromSuperview() }
        //: guard let matchData = self.matchData else { return }
        guard let matchData = self.matchData else { return }

        //: let maxCount = Int((ScreenWidth-60) / 62)
        let maxCount = Int((constFormalContent - 60) / 62)
        //: for index in 0 ..< min(maxCount, matchData.msgModel.userInfoModel.picture.count) {
        for index in 0 ..< min(maxCount, matchData.msgModel.userInfoModel.picture.count) {
            //: let imgV = UIImageView()
            let imgV = UIImageView()
            //: imgV.layer.cornerRadius = 5
            imgV.layer.cornerRadius = 5
            //: imgV.layer.masksToBounds = true
            imgV.layer.masksToBounds = true
            //: imgV.contentMode = .scaleAspectFill
            imgV.contentMode = .scaleAspectFill
            //: imgV.setUrlImage(urlStr: matchData.msgModel.userInfoModel.picture[index])
            imgV.setUrlImage(urlStr: matchData.msgModel.userInfoModel.picture[index])
            //: self.pictureView.addSubview(imgV)
            self.pictureView.addSubview(imgV)
            //: imgV.snp.remakeConstraints { make in
            imgV.snp.remakeConstraints { make in
                //: make.leading.equalTo(index*62)
                make.leading.equalTo(index * 62)
                //: make.top.equalToSuperview()
                make.top.equalToSuperview()
                //: make.width.height.equalTo(54)
                make.width.height.equalTo(54)
            }
        }
        //: if matchData.msgModel.userInfoModel.picture.count > maxCount {
        if matchData.msgModel.userInfoModel.picture.count > maxCount {
            //: let imgV = UIImageView()
            let imgV = UIImageView()
            //: imgV.image = UIImage.submitGift(name: "btn_me_edit")
            imgV.image = UIImage.submitGift(name: (String(k_nameMsg.prefix(4)) + "me_edit"))
            //: self.pictureView.addSubview(imgV)
            self.pictureView.addSubview(imgV)
            //: imgV.snp.remakeConstraints { make in
            imgV.snp.remakeConstraints { make in
                //: make.leading.equalTo(self.pictureView.snp.trailing).offset(-12)
                make.leading.equalTo(self.pictureView.snp.trailing).offset(-12)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.width.equalTo(8)
                make.width.equalTo(8)
                //: make.height.equalTo(12)
                make.height.equalTo(12)
            }
        }
    }

    //: override public func updateConstraints() {
    override public func updateConstraints() {
        //: super.updateConstraints()
        super.updateConstraints()
        //: self.container.snp.remakeConstraints { make in
        self.container.snp.remakeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: let userInfoModel = self.matchData?.msgModel.userInfoModel ?? HumankindThen.init()
        let userInfoModel = self.matchData?.msgModel.userInfoModel ?? HumankindThen()
        //: if userInfoModel.uid.isEmptyString {
        if userInfoModel.uid.isEmptyString {
            //: self.infoView.isHidden = true
            self.infoView.isHidden = true
            //: self.infoView.snp.remakeConstraints { make in
            self.infoView.snp.remakeConstraints { make in
                //: make.leading.equalTo(15)
                make.leading.equalTo(15)
                //: make.top.width.height.equalTo(0)
                make.top.width.height.equalTo(0)
            }

            //: } else {
        } else {
            //: self.infoView.isHidden = false
            self.infoView.isHidden = false
            //: self.infoView.snp.remakeConstraints { make in
            self.infoView.snp.remakeConstraints { make in
                //: make.leading.equalTo(15)
                make.leading.equalTo(15)
                //: make.top.equalTo(5)
                make.top.equalTo(5)
                //: make.width.equalTo(ScreenWidth-30)
                make.width.equalTo(constFormalContent - 30)
                //: make.height.equalTo(100)
                make.height.equalTo(100)
            }

            //: vipBgView.snp.remakeConstraints { make in
            vipBgView.snp.remakeConstraints { make in
                //: make.leading.top.width.equalToSuperview()
                make.leading.top.width.equalToSuperview()
                //: make.height.equalTo(actualWidth(w: 78))
                make.height.equalTo(actualWidth(w: 78))
            }

            //: headImgView.snp.remakeConstraints { make in
            headImgView.snp.remakeConstraints { make in
                //: make.leading.top.equalTo(12)
                make.leading.top.equalTo(12)
                //: make.width.height.equalTo(54)
                make.width.height.equalTo(54)
            }

            //: infoNameLab.snp.remakeConstraints { make in
            infoNameLab.snp.remakeConstraints { make in
                //: make.leading.equalTo(headImgView.snp.trailing).offset(12)
                make.leading.equalTo(headImgView.snp.trailing).offset(12)
                //: make.top.equalTo(12)
                make.top.equalTo(12)
                //: make.height.equalTo(30)
                make.height.equalTo(30)
            }
            //: loungeImgV.snp.remakeConstraints { make in
            loungeImgV.snp.remakeConstraints { make in
                //: make.leading.equalTo(infoNameLab.snp.trailing).offset(4)
                make.leading.equalTo(infoNameLab.snp.trailing).offset(4)
                //: make.centerY.equalTo(infoNameLab)
                make.centerY.equalTo(infoNameLab)
                //: make.width.height.equalTo(20)
                make.width.height.equalTo(20)
                //: make.trailing.lessThanOrEqualToSuperview().offset(-12)
                make.trailing.lessThanOrEqualToSuperview().offset(-12)
            }

            //: authImgview.snp.remakeConstraints { make in
            authImgview.snp.remakeConstraints { make in
                //: make.leading.equalTo(infoNameLab)
                make.leading.equalTo(infoNameLab)
                //: make.top.equalTo(infoNameLab.snp.bottom)
                make.top.equalTo(infoNameLab.snp.bottom)
                //: make.width.equalTo(16)
                make.width.equalTo(16)
                //: make.height.equalTo(16)
                make.height.equalTo(16)
            }
            //: sexBtn.snp.remakeConstraints { make in
            sexBtn.snp.remakeConstraints { make in
                //: if userInfoModel.tpAuth {
                if userInfoModel.tpAuth {
                    //: make.leading.equalTo(authImgview.snp.trailing).offset(4)
                    make.leading.equalTo(authImgview.snp.trailing).offset(4)
                    //: } else {
                } else {
                    //: make.leading.equalTo(self.authImgview)
                    make.leading.equalTo(self.authImgview)
                }
                //: make.top.equalTo(authImgview)
                make.top.equalTo(authImgview)
                //: make.width.equalTo(34)
                make.width.equalTo(34)
                //: make.height.equalTo(16)
                make.height.equalTo(16)
            }

            //: var YHeight: CGFloat = 80
            var YHeight: CGFloat = 80
            //: if userInfoModel.interest.count > 0 {
            if userInfoModel.interest.count > 0 {
                //: let inTheight = self.interestsLab.sizeThatFits(CGSize(width: ScreenWidth-54, height: CGFLOAT_MAX)).height
                let inTheight = self.interestsLab.sizeThatFits(CGSize(width: constFormalContent - 54, height: CGFLOAT_MAX)).height
                //: self.interestsLab.snp.remakeConstraints { make in
                self.interestsLab.snp.remakeConstraints { make in
                    //: make.leading.equalTo(12)
                    make.leading.equalTo(12)
                    //: make.top.equalTo(YHeight)
                    make.top.equalTo(YHeight)
                    //: make.width.equalTo(ScreenWidth-54)
                    make.width.equalTo(constFormalContent - 54)
                    //: make.height.equalTo(inTheight)
                    make.height.equalTo(inTheight)
                }
                //: YHeight += (inTheight + 8)
                YHeight += (inTheight + 8)
            }
            //: if userInfoModel.picture.count > 0 {
            if userInfoModel.picture.count > 0 {
                //: self.imgTitleLab.snp.remakeConstraints { make in
                self.imgTitleLab.snp.remakeConstraints { make in
                    //: make.leading.equalTo(12)
                    make.leading.equalTo(12)
                    //: make.top.equalTo(YHeight)
                    make.top.equalTo(YHeight)
                    //: make.width.equalTo(ScreenWidth-54)
                    make.width.equalTo(constFormalContent - 54)
                    //: make.height.equalTo(18)
                    make.height.equalTo(18)
                }
                //: self.pictureView.snp.remakeConstraints { make in
                self.pictureView.snp.remakeConstraints { make in
                    //: make.leading.width.equalTo(imgTitleLab)
                    make.leading.width.equalTo(imgTitleLab)
                    //: make.top.equalTo(imgTitleLab.snp.bottom).offset(6)
                    make.top.equalTo(imgTitleLab.snp.bottom).offset(6)
                    //: make.height.equalTo(54)
                    make.height.equalTo(54)
                }
                //: YHeight += 92
                YHeight += 92
            }
            //: self.infoView.snp.updateConstraints { make in
            self.infoView.snp.updateConstraints { make in
                //: make.height.equalTo(YHeight)
                make.height.equalTo(YHeight)
            }
        }

        //: self.bgView.snp.remakeConstraints { make in
        self.bgView.snp.remakeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(self.infoView.snp.bottom).offset(10)
            make.top.equalTo(self.infoView.snp.bottom).offset(10)
            //: make.width.equalTo(ScreenWidth-30)
            make.width.equalTo(constFormalContent - 30)
            //: make.height.equalTo(70)
            make.height.equalTo(70)
        }
        //: let labelSize = self.matchLab.sizeThatFits(CGSize(width: (ScreenWidth-30-24), height: CGFLOAT_MAX))
        let labelSize = self.matchLab.sizeThatFits(CGSize(width: constFormalContent - 30 - 24, height: CGFLOAT_MAX))
        //: self.matchLab.snp.remakeConstraints { make in
        self.matchLab.snp.remakeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(labelSize)
            make.size.equalTo(labelSize)
        }
    }
}

// MARK: - 布局

//: extension TalkingChatMatchMsgCell {
extension HiddenDisplayMessageCell {
    // 添加视图
    //: private func setupSubviews() {
    private func tableBySubviews() {
        //: self.container.addSubview(infoView)
        self.container.addSubview(infoView)
        //: self.infoView.addSubview(vipBgView)
        self.infoView.addSubview(vipBgView)
        //: self.infoView.addSubview(headImgView)
        self.infoView.addSubview(headImgView)
        //: self.infoView.addSubview(infoNameLab)
        self.infoView.addSubview(infoNameLab)
        //: self.infoView.addSubview(loungeImgV)
        self.infoView.addSubview(loungeImgV)
        //: self.infoView.addSubview(authImgview)
        self.infoView.addSubview(authImgview)
        //: self.infoView.addSubview(sexBtn)
        self.infoView.addSubview(sexBtn)
        //: self.infoView.addSubview(interestsLab)
        self.infoView.addSubview(interestsLab)
        //: self.infoView.addSubview(imgTitleLab)
        self.infoView.addSubview(imgTitleLab)
        //: self.infoView.addSubview(pictureView)
        self.infoView.addSubview(pictureView)
        //: self.container.addSubview(bgView)
        self.container.addSubview(bgView)
        //: self.bgView.addSubview(matchLab)
        self.bgView.addSubview(matchLab)
    }

    //: private func bindInteraction() {
    private func underAdd() {
        //: for  ges in self.container.gestureRecognizers! {
        for ges in self.container.gestureRecognizers! {
            //: self.container.removeGestureRecognizer(ges)
            self.container.removeGestureRecognizer(ges)
        }

        //: let tapGes = UITapGestureRecognizer(target: self, action: #selector(tapCellMessage(_:)))
        let tapGes = UITapGestureRecognizer(target: self, action: #selector(modelExecute(_:)))
        //: tapGes.numberOfTapsRequired = 1
        tapGes.numberOfTapsRequired = 1
        //: tapGes.numberOfTouchesRequired = 1
        tapGes.numberOfTouchesRequired = 1
        //: self.infoView.addGestureRecognizer(tapGes)
        self.infoView.addGestureRecognizer(tapGes)
        //: self.infoView.isUserInteractionEnabled = true
        self.infoView.isUserInteractionEnabled = true
        //: self.bgView.isUserInteractionEnabled = false
        self.bgView.isUserInteractionEnabled = false
    }

    //: @objc func tapCellMessage(_ tapGes: UITapGestureRecognizer) {
    @objc func modelExecute(_: UITapGestureRecognizer) {
        //: if self.delegate != nil {
        if self.delegate != nil {
            //: self.delegate?.onSelectMessage(cell: self)
            self.delegate?.equilateral(cell: self)
        }
    }
}
