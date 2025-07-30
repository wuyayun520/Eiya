
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kMakeFilterTitle:[UInt8] = [0x3b,0x3c,0x3b,0x26,0x7a,0x31,0x3d,0x36,0x37,0x20,0x68,0x7b,0x72,0x3a,0x33,0x21,0x72,0x3c,0x3d,0x26,0x72,0x30,0x37,0x37,0x3c,0x72,0x3b,0x3f,0x22,0x3e,0x37,0x3f,0x37,0x3c,0x26,0x37,0x36]

private func faceValue(data num: UInt8) -> UInt8 {
    return num ^ 82
}

/*: "icon_home_v" :*/
fileprivate let k_mediaText:String = "index"
fileprivate let kMediumRefStr:[Character] = ["c","o","n","_","h","o","m","e","_","v"]

/*: "icon_lounge" :*/
fileprivate let kTableStr:[Character] = ["i","c","o","n","_"]
fileprivate let kModelLiveName:String = "LOUNGE"

/*: "icon_jianbian_back" :*/
fileprivate let k_floorSubPath:String = "icon_collection false gift view"
fileprivate let kMakeText:[Character] = ["_","b","a","c","k"]

/*: "Like&Chat" :*/
fileprivate let k_shareKey:String = "Like&Chmake insert gift"
fileprivate let k_effectData:String = "viewt"

/*: "#EFEDFF" :*/
fileprivate let kMenuId:String = "end let let label#EFED"
fileprivate let kLayerModelImportStr:[Character] = ["F","F"]

/*: "Quick Greeting" :*/
fileprivate let k_ofIndexPath:String = "Quickself image"
fileprivate let k_userName:String = "epoping"

/*: "Nope" :*/
fileprivate let k_fileContent:String = "action view enable image constraintNope"

/*: "icon_ender_boy" :*/
fileprivate let kSkinId:[Character] = ["i","c","o","n","_","e","n","d","e","r","_"]
fileprivate let kManagerShareStr:String = "laboy"

/*: "icon_ender_girl" :*/
fileprivate let k_toName:String = "icon_eapp corner popular"

/*: "   " :*/
fileprivate let k_appearId:String = "   "

/*: "crushId" :*/
fileprivate let kStyleId:String = "cwhiteush"
fileprivate let kPostText:String = "var randomId"

/*: "msg" :*/
fileprivate let kViewTitle:[UInt8] = [0xa6,0xb8,0xac]

/*: "her" :*/
fileprivate let kMediumKey:String = "hrequestr"

/*: "him" :*/
fileprivate let kStyleName:[Character] = ["h","i","m"]

/*: "content" :*/
fileprivate let k_beautifulValue:[Character] = ["c","o","n","t","e"]
fileprivate let kTitleUrl:String = "info"

/*: "Why don't you say hello to %@?" :*/
fileprivate let kDirectionShowId:String = "Why don\'"
fileprivate let kBackUrl:String = "t yodetail lab in"
fileprivate let kColorFormat:String = "helltext"

/*: "msgType" :*/
fileprivate let k_submitName:[Character] = ["m","s","g","T","y","p"]
fileprivate let kMakeMessage:[Character] = ["e"]

/*: "txt" :*/
fileprivate let kEqualUrl:String = "showt"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VideoTitleViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/13.
//

//: import UIKit
import UIKit

//: public protocol WhoLikeDelegate: NSObject {
public protocol DoingReactiveCompatible: NSObject {
    //: func quickGreetingSeleteIndex(_ index: IndexPath )
    func aLaCarte(_ index: IndexPath)
    //: func likeSeleteIndex(_ index: IndexPath )
    func groupIndex(_ index: IndexPath)
}

//: class TalkingWhoLikeCell: UITableViewCell {
class VideoTitleViewCell: UITableViewCell {
    //: var currenModel = TalkingWhoLikeMeModel()
    var currenModel = AppMeasurable()
    //: var seleteIndex: IndexPath?
    var seleteIndex: IndexPath?
    //: open weak var delegate: WhoLikeDelegate?
    open weak var delegate: DoingReactiveCompatible?

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
        //: contentView.addSubview(backView)
        contentView.addSubview(backView)
        //: backView.addSubview(IconImageV)
        backView.addSubview(IconImageV)
        //: backView.addSubview(iconBorder)
        backView.addSubview(iconBorder)
        //: backView.addSubview(nameLabel)
        backView.addSubview(nameLabel)
        //: backView.addSubview(cardImg)
        backView.addSubview(cardImg)
        //: backView.addSubview(sexBtn)
        backView.addSubview(sexBtn)
        //: backView.addSubview(loungeImgV)
        backView.addSubview(loungeImgV)
        //: backView.addSubview(timeLabel)
        backView.addSubview(timeLabel)
        //: backView.addSubview(messageLabel)
        backView.addSubview(messageLabel)
        //: backView.addSubview(quickGreetingBtn)
        backView.addSubview(quickGreetingBtn)
        //: backView.addSubview(chatBtn)
        backView.addSubview(chatBtn)
        //: layoutSubViewsConstraints()
        constraintsEnable()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kMakeFilterTitle.map{faceValue(data: $0)}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    }

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.shadowColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 0.5).cgColor
        view.layer.shadowColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 0.5).cgColor
        //: view.layer.shadowOffset = CGSize(width: 0, height: 1)
        view.layer.shadowOffset = CGSize(width: 0, height: 1)
        //: view.layer.shadowOpacity = 1
        view.layer.shadowOpacity = 1
        //: view.layer.shadowRadius = 4
        view.layer.shadowRadius = 4
        //: view.layer.cornerRadius = 9
        view.layer.cornerRadius = 9
        //: return view
        return view
        //: }()
    }()

    //: lazy var IconImageV: UIImageView = {
    lazy var IconImageV: UIImageView = {
        //: let imageV = UIImageView.init()
        let imageV = UIImageView()
        //: imageV.layer.cornerRadius = 40/2
        imageV.layer.cornerRadius = 40 / 2
        //: imageV.layer.masksToBounds = true
        imageV.layer.masksToBounds = true
        //: imageV.contentMode = .scaleAspectFill
        imageV.contentMode = .scaleAspectFill
        //: return imageV
        return imageV
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
        //: label.font = .fontChange(type: .Medium, fontSize: 16)
        label.font = .fontChange(type: .Medium, fontSize: 16)
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
        img.image = UIImage.submitGift(name: (k_mediaText.replacingOccurrences(of: "index", with: "i") + String(kMediumRefStr)))
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
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
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
        img.image = UIImage.submitGift(name: (String(kTableStr) + kModelLiveName.lowercased()))
        //: return img
        return img
        //: }()
    }()

    //: lazy var timeLabel: UILabel = {
    lazy var timeLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .fontChange(type: .Medium, fontSize: 14)
        label.font = .fontChange(type: .Medium, fontSize: 14)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .childMenu()
        //: return label
        return label
        //: }()
    }()

    //: lazy var chatBtn: UIButton = {
    lazy var chatBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = .fontChange(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = .fontChange(type: .Medium, fontSize: 16)
        //: btn.setBackgroundImage(UIImage.submitGift(name: "icon_jianbian_back"), for: .normal)
        btn.setBackgroundImage(UIImage.submitGift(name: (String(k_floorSubPath.prefix(5)) + "jianbian" + String(kMakeText))), for: .normal)
        //: btn.setTitle(" " + "Like&Chat".localized + " ", for: .normal)
        btn.setTitle(" " + (String(k_shareKey.prefix(7)) + k_effectData.replacingOccurrences(of: "view", with: "a")).localized + " ", for: .normal)
        //: btn.addTarget(self, action: #selector(ChatBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(imageDeadline), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var quickGreetingBtn: UIButton = {
    lazy var quickGreetingBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitleColor(UIColor.appThemeColor(), for: .normal)
        btn.setTitleColor(UIColor.increase(), for: .normal)
        //: btn.layer.cornerRadius = 37/2
        btn.layer.cornerRadius = 37 / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.titleLabel?.font = .fontChange(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = .fontChange(type: .Medium, fontSize: 16)
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#EFEDFF")!, forState: .normal)
        btn.languageUnitState(color: UIColor(hex: (String(kMenuId.suffix(5)) + String(kLayerModelImportStr)))!, forState: .normal)
        //: btn.addTarget(self, action: #selector(quickGreetingBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(subdivisionClick), for: .touchUpInside)
        //: if DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue {
        if DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue { // 女性
            //: btn.setTitle("Quick Greeting".localized, for: .normal)
            btn.setTitle((String(k_ofIndexPath.prefix(5)) + " Gre" + k_userName.replacingOccurrences(of: "pop", with: "t")).localized, for: .normal)
            //: } else {
        } else {
            //: btn.setTitle("Nope".localized, for: .normal)
            btn.setTitle((String(k_fileContent.suffix(4))).localized, for: .normal)
        }
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var messageLabel: UILabel = {
    lazy var messageLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .fontChange(type: .Medium, fontSize: 16)
        label.font = .fontChange(type: .Medium, fontSize: 16)
        //: label.textColor = .colorStatuteNameApp()
        label.textColor = .colorStatuteNameApp()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: return label
        return label
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingWhoLikeCell {
extension VideoTitleViewCell {
    //: func setCell(model: TalkingWhoLikeMeModel, index: IndexPath) {
    func putInsideMarginOfSafetyIndex(model: AppMeasurable, index: IndexPath) {
        //: currenModel = model
        currenModel = model
        //: seleteIndex = index
        seleteIndex = index
        //: IconImageV.setUrlImage(urlStr: model.headPic ?? "", placeImg: UIImage.placeHolderImage(sex: String(model.sex ?? 1 )))
        IconImageV.setUrlImage(urlStr: model.headPic ?? "", placeImg: UIImage.delay(sex: String(model.sex ?? 1)))
        //: if !model.headPicFrame.isEmptyString {
        if !model.headPicFrame.isEmptyString {
            //: IconImageV.snp.remakeConstraints { make in
            IconImageV.snp.remakeConstraints { make in
                //: make.leading.equalTo(backView).offset(12)
                make.leading.equalTo(backView).offset(12)
                //: make.top.equalTo(backView).offset(12)
                make.top.equalTo(backView).offset(12)
                //: make.width.height.equalTo(36)
                make.width.height.equalTo(36)
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
        //: if !(model.isTPAuth ?? false) {
        if !(model.isTPAuth ?? false) {
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
            sexBtn.setBackgroundImage(UIImage.submitGift(name: (String(kSkinId) + kManagerShareStr.replacingOccurrences(of: "lab", with: "b"))), for: .normal)
        //: break
        //: case 2:
        case 2:
            //: sexBtn.setBackgroundImage(UIImage.submitGift(name: "icon_ender_girl"), for: .normal)
            sexBtn.setBackgroundImage(UIImage.submitGift(name: (String(k_toName.prefix(6)) + "nder_girl")), for: .normal)
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: sexBtn.setTitle("   " + String(model.age ?? 0), for: .normal)
        sexBtn.setTitle("   " + String(model.age ?? 0), for: .normal)
        //: timeLabel.text = model.timeFormat
        timeLabel.text = model.timeFormat
        //: messageLabel.text = model.message
        messageLabel.text = model.message

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
                //: make.trailing.lessThanOrEqualToSuperview().offset(-10)
                make.trailing.lessThanOrEqualToSuperview().offset(-10)
            }
        }
    }

    /// quick Greeting 按钮点击事件（女性）
    //: @objc func quickGreetingBtnClick() {
    @objc func subdivisionClick() {
        //: let dict: [String: Any] = ["crushId": currenModel.likeId ?? ""]
        let dict: [String: Any] = [(kStyleId.replacingOccurrences(of: "white", with: "r") + String(kPostText.suffix(2))): currenModel.likeId ?? ""]
        //: if DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue {
        if DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue { // 女性
            //: TalkingPrivateChatManager.chat_sendQuickGreeting(toUserId: currenModel.uid) { errorCode, errorMsg, textDict, audioDict in
            JoinThen.outsidePhotoUser(toUserId: currenModel.uid) { errorCode, errorMsg, textDict, audioDict in
                //: if (textDict?.count ?? 0 > 0) || (audioDict?.count ?? 0 > 0) {
                if (textDict?.count ?? 0 > 0) || (audioDict?.count ?? 0 > 0) { // 跳转私聊，发送一键打招呼
                    //: AddReactiveCompatible.share.func__pushToPriveteChatVC(chatID: self.currenModel.uid) { vc in
                    AddReactiveCompatible.share.tincture(chatID: self.currenModel.uid) { vc in
                        //: vc.quickGreetingTextDict = textDict
                        vc.quickGreetingTextDict = textDict
                        //: vc.quickGreetingAudioDict = audioDict
                        vc.quickGreetingAudioDict = audioDict
                    }
                    //: } else {
                } else {
                    //: if errorMsg?.count ?? 0 > 0 {
                    if errorMsg?.count ?? 0 > 0 {
                        //: self.func__showStatusBarErrorMsg(showMsg: errorMsg!)
                        self.arcInfo(showMsg: errorMsg!)
                    }
                    //: if errorCode == 2 { return }
                    if errorCode == 2 { return }
                }

                // 删除当前cell
                //: PlayerRequestTool.req_whoLikeMeIgnore(params: dict) { succeed, result, errorModel in
                PlayerRequestTool.afterData(params: dict) { succeed, _, _ in
                    //: if succeed {
                    if succeed {
                        //: if self.delegate != nil {
                        if self.delegate != nil {
                            //: self.delegate?.quickGreetingSeleteIndex(self.seleteIndex!)
                            self.delegate?.aLaCarte(self.seleteIndex!)
                        }
                    }
                }
            }

            //: } else {
        } else { // 男性只有删除
            //: PlayerRequestTool.req_whoLikeMeIgnore(params: dict) { succeed, result, errorModel in
            PlayerRequestTool.afterData(params: dict) { succeed, _, _ in
                //: if succeed {
                if succeed {
                    //: if self.delegate != nil {
                    if self.delegate != nil {
                        //: self.delegate?.quickGreetingSeleteIndex(self.seleteIndex!)
                        self.delegate?.aLaCarte(self.seleteIndex!)
                    }
                }
            }
        }
    }

    /// Like&Chat 按钮点击事件
    //: @objc func ChatBtnClick() {
    @objc func imageDeadline() {
        //: if currenModel.status == 0 {
        if currenModel.status == 0 {
            //: AddReactiveCompatible.share.func__pushToPriveteChatVC(chatID: currenModel.uid)
            AddReactiveCompatible.share.tincture(chatID: currenModel.uid)
            //: var dict = Dictionary<String, Any>()
            var dict = [String: Any]()
            //: dict["crushId"] = currenModel.likeId
            dict[(kStyleId.replacingOccurrences(of: "white", with: "r") + String(kPostText.suffix(2)))] = currenModel.likeId
            //: ProgressHUD.show()
            EndProgressHUD.listHide()
            //: PlayerRequestTool.req_whoLikeMelike(params: dict) { succeed, result, errorModel in
            PlayerRequestTool.makeUp(params: dict) { succeed, _, _ in
                //: EndProgressHUD.popEnable()
                EndProgressHUD.popEnable()
                //: if succeed {
                if succeed {
                    //: self.currenModel.status = 1
                    self.currenModel.status = 1
                    //: if self.delegate != nil {
                    if self.delegate != nil {
                        //: self.delegate?.likeSeleteIndex(self.seleteIndex!)
                        self.delegate?.groupIndex(self.seleteIndex!)
                    }
                }
            }

            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+1) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                //: var msgInfo = self.getMsgInfo()
                var msgInfo = self.anyView()
                //: let message = TUISocialChatManager.insertTXMessage(withExtral: msgInfo,
                let message = IsoclinalThen.implantOfTip(withExtral: msgInfo,
                                                                //: toUid: self.currenModel.uid,
                                                                toUid: self.currenModel.uid,
                                                                //: isSender: true,
                                                                isSender: true,
                                                                //: isTip: true)
                                                                isTip: true)
                //: NotificationCenter.default.post(name: CHAT_TIPS_TEXT_NOTIFICATION, object: self, userInfo: ["msg": message])
                NotificationCenter.default.post(name: data_nameText, object: self, userInfo: [String(bytes: kViewTitle.map{$0^203}, encoding: .utf8)!: message])
            }
        }
    }

    //: private func getMsgInfo() -> [String: Any] {
    private func anyView() -> [String: Any] {
        //: var msgInfo = Dictionary<String, Any>()
        var msgInfo = [String: Any]()
        //: let gender = self.currenModel.sex == Int(Gender.female.rawValue) ? "her".localized:"him".localized
        let gender = self.currenModel.sex == Int(ManagerQuickLookable.female.rawValue) ? (kMediumKey.replacingOccurrences(of: "request", with: "e")).localized : (String(kStyleName)).localized
        //: msgInfo["content"] = "Why don't you say hello to %@?".localizedArguments(gender)
        msgInfo[(String(k_beautifulValue) + kTitleUrl.replacingOccurrences(of: "info", with: "nt"))] = (kDirectionShowId + String(kBackUrl.prefix(4)) + "u say " + kColorFormat.replacingOccurrences(of: "text", with: "o") + " to %@?").edgeDelay(gender)
        //: msgInfo["msgType"] = "txt"
        msgInfo[(String(k_submitName) + String(kMakeMessage))] = (kEqualUrl.replacingOccurrences(of: "show", with: "tx"))
        //: return msgInfo
        return msgInfo
    }
}

// MARK: - UI

//: extension TalkingWhoLikeCell {
extension VideoTitleViewCell {
    //: func layoutSubViewsConstraints() {
    func constraintsEnable() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.bottom.equalTo(-12)
            make.bottom.equalTo(-12)
        }
        //: IconImageV.snp.makeConstraints { make in
        IconImageV.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(10)
            make.leading.equalTo(backView).offset(10)
            //: make.top.equalTo(backView).offset(10)
            make.top.equalTo(backView).offset(10)
            //: make.width.height.equalTo(40)
            make.width.height.equalTo(40)
        }
        //: iconBorder.snp.makeConstraints { make in
        iconBorder.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(7)
            make.leading.equalTo(backView).offset(7)
            //: make.top.equalTo(backView).offset(7)
            make.top.equalTo(backView).offset(7)
            //: make.width.height.equalTo(46)
            make.width.height.equalTo(46)
        }

        //: nameLabel.snp.makeConstraints { make in
        nameLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(IconImageV.snp.trailing).offset(10)
            make.leading.equalTo(IconImageV.snp.trailing).offset(10)
            //: make.top.equalTo(IconImageV.snp.top)
            make.top.equalTo(IconImageV.snp.top)
        }
        //: cardImg.snp.makeConstraints { make in
        cardImg.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            make.leading.equalTo(nameLabel.snp.trailing).offset(4)
            //: make.centerY.equalTo(nameLabel)
            make.centerY.equalTo(nameLabel)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.equalTo(16)
            make.width.equalTo(16)
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
            //: make.trailing.lessThanOrEqualToSuperview().offset(-10)
            make.trailing.lessThanOrEqualToSuperview().offset(-10)
        }
        //: timeLabel.snp.makeConstraints { make in
        timeLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(IconImageV.snp.trailing).offset(10)
            make.leading.equalTo(IconImageV.snp.trailing).offset(10)
            //: make.top.equalTo(nameLabel.snp.bottom).offset(2)
            make.top.equalTo(nameLabel.snp.bottom).offset(2)
        }
        //: messageLabel.snp.makeConstraints { make in
        messageLabel.snp.makeConstraints { make in
            //: make.top.equalTo(IconImageV.snp.bottom).offset(10)
            make.top.equalTo(IconImageV.snp.bottom).offset(10)
            //: make.leading.equalTo(backView).offset(10)
            make.leading.equalTo(backView).offset(10)
            //: make.trailing.equalTo(backView.snp.trailing).offset(-10)
            make.trailing.equalTo(backView.snp.trailing).offset(-10)
        }

        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.top.equalTo(messageLabel.snp.bottom).offset(10)
            make.top.equalTo(messageLabel.snp.bottom).offset(10)
            //: make.trailing.equalTo(backView.snp.trailing).offset(-10)
            make.trailing.equalTo(backView.snp.trailing).offset(-10)
            //: make.height.equalTo(37)
            make.height.equalTo(37)
            //: make.bottom.equalTo(backView.snp.bottom).offset(-10)
            make.bottom.equalTo(backView.snp.bottom).offset(-10)
        }
        //: quickGreetingBtn.snp.makeConstraints { make in
        quickGreetingBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(chatBtn)
            make.centerY.equalTo(chatBtn)
            //: make.trailing.equalTo(chatBtn.snp.leading).offset(-12)
            make.trailing.equalTo(chatBtn.snp.leading).offset(-12)
            //: make.height.equalTo(37)
            make.height.equalTo(37)
            //: make.width.equalTo((DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue) ? 148:76)
            make.width.equalTo((DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue) ? 148 : 76)
        }
    }
}
