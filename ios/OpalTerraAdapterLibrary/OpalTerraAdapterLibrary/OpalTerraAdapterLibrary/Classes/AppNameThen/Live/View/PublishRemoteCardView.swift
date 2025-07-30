
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_dataKey:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "Followers" :*/
fileprivate let kManagerStr:String = "Folloname if"

/*: "Following" :*/
fileprivate let kLeadingTitle:[Character] = ["F","o"]
fileprivate let k_selectedValue:String = "llowiequal"

/*: "#E6E6E6" :*/
fileprivate let k_firstUrl:String = "#"
fileprivate let k_effectStr:String = "EclickEclickEclick"

/*: "btn_message_more" :*/
fileprivate let k_waitKey:String = "btn_mevar screen"
fileprivate let kSucceedStr:String = "e_morefrom to busy remove make"

/*: "UID:  :*/
fileprivate let kMakeName:String = "UID: date extra input start view"

/*: "level_ :*/
fileprivate let k_arrayValue:String = "level_address make"

/*: "Follow" :*/
fileprivate let k_makeData:[Character] = ["F","o","l","l","o","w"]

/*: "Chat" :*/
fileprivate let k_atTitle:String = "Chatas send self"

/*: "attentionUid" :*/
fileprivate let kViewTitle:[Character] = ["a","t","t","e","n","t","i","o","n"]
fileprivate let k_normalId:[Character] = ["U","i","d"]

/*: "source" :*/
fileprivate let kShowCombineStr:String = "sourctitle"

/*: "Report" :*/
fileprivate let k_styleKey:String = "any for letReport"

/*: "Block" :*/
fileprivate let kMessageSucceedFormat:[Character] = ["B","l","o","c","k"]

/*: "Muted" :*/
fileprivate let k_mKey:[Character] = ["M","u","t","e","d"]

/*: "Mute" :*/
fileprivate let k_atViewId:[Character] = ["M","u","t","e"]

/*: "#F6F6F6" :*/
fileprivate let kSizeFormat:String = "#"
fileprivate let kBlockText:[Character] = ["F","6","F","6","F","6"]

/*: "Cancel" :*/
fileprivate let k_toId:[Character] = ["C","a","n","c","e","l"]

/*: "OK" :*/
fileprivate let k_sexStr:String = "fileK"

/*: "Kicked out of the live room" :*/
fileprivate let kValueStr:String = "Kickedview user edge"
fileprivate let kEqualToStr:String = " of return by lab label"
fileprivate let k_showKey:String = "name layerthe l"
fileprivate let k_contentPopSectionFormat:String = "ive roomreturn selected sound submit"

/*: "uid" :*/
fileprivate let k_addName:[UInt8] = [0x74,0x68,0x65]

/*: "Shielding Success" :*/
fileprivate let kMessageViewName:String = "Shierequired voice"
fileprivate let kBackgroundName:[Character] = [" ","S","u","c","c","e","s","s"]

/*: "Are you sure you want to cancel the mute?" :*/
fileprivate let k_modelMessage:[UInt8] = [0x21,0x12,0x5,0x40,0x19,0xf,0x15,0x40,0x13,0x15,0x12,0x5,0x40,0x19,0xf,0x15,0x40,0x17,0x1,0xe,0x14,0x40,0x14,0xf,0x40,0x3,0x1,0xe,0x3,0x5,0xc,0x40,0x14,0x8,0x5,0x40,0xd,0x15,0x14,0x5,0x5f]

private func pathText(view num: UInt8) -> UInt8 {
    return num ^ 96
}

/*: "Confirm" :*/
fileprivate let k_addPointData:String = "c"
fileprivate let kSystemValue:String = "onffilem"

/*: "The mute has been lifted~" :*/
fileprivate let kMatchMsg:String = "The mutpopular path self actual"
fileprivate let kLabId:[Character] = ["e"," ","h","a","s"," "]
fileprivate let kDataMessage:[Character] = ["b","e","e","n"," ","l","i","f","t","e","d","~"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PublishRemoteCardView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/12.
//

//: import UIKit
import UIKit

//: enum LiveUserCardType: Int {
enum MakeDefaultsSerializable: Int {
    //: case user_me = 0
    case user_me = 0 // 当前用户

    //: case user_other
    case user_other // 别人
}

//: @objc protocol TalkingLiveUserCardViewDelegate: NSObjectProtocol {
@objc protocol LiveViewDelegate: NSObjectProtocol {
    // @
    //: func func__atUserClick(uid: String, nickname: String)
    func nameHalogenNickname(uid: String, nickname: String)
}

//: class TalkingLiveUserCardView: UIView {
class PublishRemoteCardView: UIView {
    //: var popView: TalkingPopView?
    var popView: DataPopView?
    //: var data =  [String: Any]()
    var data = [String: Any]()
    //: var type: LiveUserCardType?
    var type: MakeDefaultsSerializable?
    //: var uid = ""
    var uid = ""
    //: var liveUserId = String(TalkingLiveManager.shared().liveRoomModel.streamerInfo.uid)
    var liveUserId = String(ValueThen.kindShared().liveRoomModel.streamerInfo.uid) // 主播ID
    //: var liveRoomDanmuID = TalkingLiveManager.shared().liveRoomModel.chatGroupId
    var liveRoomDanmuID = ValueThen.kindShared().liveRoomModel.chatGroupId
    //: var userModel = TalkingUserInfoModel.init()
    var userModel = GroupTransformable()

    //: open weak var delegate: TalkingLiveUserCardViewDelegate?
    open weak var delegate: LiveViewDelegate?

    //: init(frame: CGRect, uid: String) {
    init(frame: CGRect, uid: String) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: if uid == DistanceAppManager.share.loginUserMode.userID {
        if uid == DistanceAppManager.share.loginUserMode.userID {
            //: self.type = .user_me
            self.type = .user_me
            //: } else {
        } else {
            //: self.type = .user_other
            self.type = .user_other
        }
        //: self.uid = uid
        self.uid = uid
        //: setupSubviews()
        subviewsGreen()
        //: setupSubViewsConstraint()
        equalColor()
        //: reqUserCardInfo()
        physicalObjectInfo()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_dataKey.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: return view
        return view
        //: }()
    }()

    //: lazy var uidLb: UILabel = {
    lazy var uidLb: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .fontChange(type: .Regular, fontSize: 12)
        label.font = .fontChange(type: .Regular, fontSize: 12)
        //: label.textColor = UIColor.appValueDetailColor()
        label.textColor = UIColor.childMenu()
        //: return label
        return label
        //: }()
    }()

    //: lazy var topIcon: UIButton = {
    lazy var topIcon: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(iconBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(equalDown), for: .touchUpInside)
        //: btn.layer.cornerRadius = 40
        btn.layer.cornerRadius = 40
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.layer.borderWidth = 2
        btn.layer.borderWidth = 2
        //: btn.layer.borderColor = UIColor.white.cgColor
        btn.layer.borderColor = UIColor.white.cgColor
        //: return btn
        return btn

        //: }()
    }()

    //: lazy var nameLb: UILabel = {
    lazy var nameLb: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .fontChange(type: .Semibold, fontSize: 15)
        label.font = .fontChange(type: .Semibold, fontSize: 15)
        //: label.textColor = UIColor.colorStatuteNameApp()
        label.textColor = UIColor.colorStatuteNameApp()
        //: return label
        return label
        //: }()
    }()

    //: lazy var levelIcon: UIImageView = {
    lazy var levelIcon: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var signLb: UILabel = {
    lazy var signLb: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .fontChange(type: .Regular, fontSize: 13)
        label.font = .fontChange(type: .Regular, fontSize: 13)
        //: label.textColor = UIColor.appValueDetailColor()
        label.textColor = UIColor.childMenu()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.numberOfLines = 2
        label.numberOfLines = 2
        //: return label
        return label
        //: }()
    }()

    //: private lazy var followersLab: UILabel = {
    private lazy var followersLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appValueDetailColor()
        lab.textColor = .childMenu()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Followers".localized
        lab.text = (String(kManagerStr.prefix(5)) + "wers").localized
        //: lab.font = UIFont.fontChange(type: .Semibold, fontSize: 12)
        lab.font = UIFont.fontChange(type: .Semibold, fontSize: 12)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followersNum: UILabel = {
    private lazy var followersNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .colorStatuteNameApp()
        lab.textColor = .colorStatuteNameApp()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: lab.font = UIFont.fontChange(type: .Semibold, fontSize: 15)
        lab.font = UIFont.fontChange(type: .Semibold, fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followingLab: UILabel = {
    private lazy var followingLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .appValueDetailColor()
        lab.textColor = .childMenu()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Following".localized
        lab.text = (String(kLeadingTitle) + k_selectedValue.replacingOccurrences(of: "equal", with: "ng")).localized
        //: lab.font = UIFont.fontChange(type: .Semibold, fontSize: 12)
        lab.font = UIFont.fontChange(type: .Semibold, fontSize: 12)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var followingNum: UILabel = {
    private lazy var followingNum: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .colorStatuteNameApp()
        lab.textColor = .colorStatuteNameApp()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "0"
        lab.text = "0"
        //: lab.font = UIFont.fontChange(type: .Semibold, fontSize: 15)
        lab.font = UIFont.fontChange(type: .Semibold, fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var lineView: UIView = {
    private lazy var lineView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.init(hex: "#E6E6E6")
        view.backgroundColor = UIColor(hex: (k_firstUrl.capitalized + k_effectStr.replacingOccurrences(of: "click", with: "6")))
        //: return view
        return view
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .fill
        v.alignment = .fill
        //: v.distribution = .fillEqually
        v.distribution = .fillEqually
        //: return v
        return v
        //: }()
    }()

    //: private lazy var moreBtn: UIButton = {
    private lazy var moreBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.setImage(UIImage.submitGift(name: "btn_message_more"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(k_waitKey.prefix(6)) + "ssag" + String(kSucceedStr.prefix(6)))), for: .normal)
        //: btn.addTarget(self, action: #selector(moreBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(viewClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var muteView: TalkingLiveRoomMuteView = {
    private lazy var muteView: EqualView = {
        //: let v = TalkingLiveRoomMuteView()
        let v = EqualView()
        //: v.viewType  = .live
        v.viewType = .live
        //: return v
        return v
        //: }()
    }()
}

//: extension TalkingLiveUserCardView {
extension PublishRemoteCardView {
    //: func reqUserCardInfo() {
    func physicalObjectInfo() {
        //: TalkingLiveManager.req__userCardInfo(uid: self.uid, streamerUid: liveUserId) { succeed, result, errorModel in
        ValueThen.searchUse(uid: self.uid, streamerUid: liveUserId) { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }

            //: if let userModel = JSONDeserializer<TalkingUserInfoModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
            if let userModel = JSONDeserializer<GroupTransformable>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                //: self.userModel = userModel
                self.userModel = userModel
                //: self.setUserCardData()
                self.hideRemove()
            }
        }
    }

    //: func setUserCardData() {
    func hideRemove() {
        //: uidLb.text = "UID: \(self.userModel.uid)"
        uidLb.text = (String(kMakeName.prefix(5))) + "\(self.userModel.uid)"
        //: topIcon.setUrlImage(urlStr: self.userModel.headPic)
        topIcon.successOn(urlStr: self.userModel.headPic)
        //: nameLb.text = self.userModel.nickname
        nameLb.text = self.userModel.nickname
        //: levelIcon.image = UIImage.submitGift(name: "level_\(self.userModel.level)")
        levelIcon.image = UIImage.submitGift(name: (String(k_arrayValue.prefix(6))) + "\(self.userModel.level)")
        //: signLb.text = self.userModel.signature
        signLb.text = self.userModel.signature
        //: followersNum.text = self.userModel.attentionNum
        followersNum.text = self.userModel.attentionNum
        //: followingNum.text = self.userModel.fansNum
        followingNum.text = self.userModel.fansNum

        //: if self.type == .user_other {
        if self.type == .user_other {
            //: setBottomView(sex: self.userModel.sex)
            clapWithinHomosexuality(sex: self.userModel.sex)
        }
    }

    //: func setBottomView(sex: String) {
    func clapWithinHomosexuality(sex: String) {
        //: var dataSource = Array<String>()
        var dataSource = [String]()
        //: if DistanceAppManager.share.loginUserMode.sex == sex {
        if DistanceAppManager.share.loginUserMode.sex == sex {
            //: dataSource = ["@"]
            dataSource = ["@"]
            //: } else {
        } else {
            //: dataSource = ["Follow", "@", "Chat"]
            dataSource = [(String(k_makeData)), "@", (String(k_atTitle.prefix(4)))]
            //: if self.userModel.isAttention {
            if self.userModel.isAttention {
                //: dataSource.remove(at: 0)
                dataSource.remove(at: 0)
            }
        }

        //: for i in 0 ..< dataSource.count {
        for i in 0 ..< dataSource.count {
            //: let btn = UIButton()
            let btn = UIButton()
            //: btn.tag = 200 + i
            btn.tag = 200 + i
            //: btn.setTitleColor(UIColor.appThemeColor(), for: UIControl.State.normal)
            btn.setTitleColor(UIColor.increase(), for: UIControl.State.normal)
            //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 15)
            btn.titleLabel?.font = UIFont.tapShared(fontSize: 15)
            //: btn.setTitle(dataSource[i].localized, for: UIControl.State.normal)
            btn.setTitle(dataSource[i].localized, for: UIControl.State.normal)
            //: btn.addTarget(self, action: #selector(itemTouch(sender:)), for: UIControl.Event.touchUpInside)
            btn.addTarget(self, action: #selector(dataModel(sender:)), for: UIControl.Event.touchUpInside)
            //: self.stackView.addArrangedSubview(btn)
            self.stackView.addArrangedSubview(btn)

            //: if i != 0 {
            if i != 0 {
                //: let lineView = UIView.init()
                let lineView = UIView()
                //: lineView.backgroundColor = UIColor.init(hex: "#E6E6E6")
                lineView.backgroundColor = UIColor(hex: (k_firstUrl.capitalized + k_effectStr.replacingOccurrences(of: "click", with: "6")))
                //: btn.addSubview(lineView)
                btn.addSubview(lineView)
                //: lineView.snp.makeConstraints { make in
                lineView.snp.makeConstraints { make in
                    //: make.top.equalTo(10)
                    make.top.equalTo(10)
                    //: make.leading.equalToSuperview()
                    make.leading.equalToSuperview()
                    //: make.width.equalTo(1)
                    make.width.equalTo(1)
                    //: make.height.equalTo(24)
                    make.height.equalTo(24)
                }
            }
        }
    }

    //: @objc func itemTouch(sender: UIButton) {
    @objc func dataModel(sender: UIButton) {
        //: let tag = sender.tag - 200
        let tag = sender.tag - 200
        //: if DistanceAppManager.share.loginUserMode.sex == self.userModel.sex {
        if DistanceAppManager.share.loginUserMode.sex == self.userModel.sex {
            //: switch tag {
            switch tag {
            //: case 0:
            case 0:
                //: self.delegate?.func__atUserClick(uid: self.userModel.uid, nickname: self.userModel.nickname)
                self.delegate?.nameHalogenNickname(uid: self.userModel.uid, nickname: self.userModel.nickname)
                //: self.dismiss()
                self.bastardy()
            //: break
            //: default:
            default:
                //: break
                break
            }
            //: } else {
        } else {
            //: if self.userModel.isAttention {
            if self.userModel.isAttention {
                //: switch tag {
                switch tag {
                //: case 0:
                case 0:
                    //: self.delegate?.func__atUserClick(uid: self.userModel.uid, nickname: self.userModel.nickname)
                    self.delegate?.nameHalogenNickname(uid: self.userModel.uid, nickname: self.userModel.nickname)
                    //: self.dismiss()
                    self.bastardy()
                //: break
                //: case 1:
                case 1:
                    //: AddReactiveCompatible.share.func__pushToPriveteChatVC(chatID: self.userModel.uid, isFrom: .LiveRoom)
                    AddReactiveCompatible.share.tincture(chatID: self.userModel.uid, isFrom: .LiveRoom)
                    //: self.dismiss()
                    self.bastardy()
                //: break
                //: default:
                default:
                    //: break
                    break
                }
                //: } else {
            } else {
                //: switch tag {
                switch tag {
                //: case 0:
                case 0:
                    //: freshfollowUser(sender: sender)
                    packLikeMainSender(sender: sender)
                //: break
                //: case 1:
                case 1:
                    //: self.delegate?.func__atUserClick(uid: self.userModel.uid, nickname: self.userModel.nickname)
                    self.delegate?.nameHalogenNickname(uid: self.userModel.uid, nickname: self.userModel.nickname)
                    //: self.dismiss()
                    self.bastardy()
                //: break
                //: case 2:
                case 2:
                    //: AddReactiveCompatible.share.func__pushToPriveteChatVC(chatID: self.userModel.uid, isFrom: .LiveRoom)
                    AddReactiveCompatible.share.tincture(chatID: self.userModel.uid, isFrom: .LiveRoom)
                    //: self.dismiss()
                    self.bastardy()
                //: break
                //: default:
                default:
                    //: break
                    break
                }
            }
        }
    }

    //: func freshfollowUser(sender: UIButton) {
    func packLikeMainSender(sender: UIButton) {
        //: req_followUser(uid: self.userModel.uid) { succeed in
        spirit(uid: self.userModel.uid) { succeed in
            //: if succeed {
            if succeed {
                //: self.followingNum.text = "\((Int(self.userModel.fansNum ) ?? 0) + 1)"
                self.followingNum.text = "\((Int(self.userModel.fansNum) ?? 0) + 1)"
                //: self.stackView.removeArrangedSubview(sender)
                self.stackView.removeArrangedSubview(sender)
                //: sender.isHidden = true
                sender.isHidden = true
            }
        }
    }

    //: func req_followUser(uid: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
    func spirit(uid: String, completion: ((_ succeed: Bool) -> Void)? = nil) {
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: dict["attentionUid"] = uid
        dict[(String(kViewTitle) + String(k_normalId))] = uid
        //: dict["source"] = "1"
        dict[(kShowCombineStr.replacingOccurrences(of: "title", with: "e"))] = "1"
        //: PlayerRequestTool.req_atationTool(isAttention: true, params: dict) { succeed, result, errorModel in
        PlayerRequestTool.appPath(isAttention: true, params: dict) { succeed, _, _ in
            //: completion?(succeed)
            completion?(succeed)
        }
    }

    //: @objc private func iconBtnClick() {
    @objc private func equalDown() {
        //: AddReactiveCompatible.share.func__pushToUserDetailVC(uid: self.userModel.uid)
        AddReactiveCompatible.share.afterTo(uid: self.userModel.uid)
        //: self.dismiss()
        self.bastardy()
    }
}

//: extension TalkingLiveUserCardView {
extension PublishRemoteCardView {
    //: @objc func moreBtnClick() {
    @objc func viewClick() {
        //: var titleArray = ["Report".localized, "Block".localized]
        var titleArray = [(String(k_styleKey.suffix(6))).localized, (String(kMessageSucceedFormat)).localized]
        /// 主播
        //: if liveUserId == DistanceAppManager.share.loginUserMode.userID {
        if liveUserId == DistanceAppManager.share.loginUserMode.userID {
            //: if self.userModel.isMute {
            if self.userModel.isMute {
                //: titleArray.append("Muted".localized)
                titleArray.append((String(k_mKey)).localized)
                //: }else {
            } else {
                //: titleArray.append("Mute".localized)
                titleArray.append((String(k_atViewId)).localized)
            }
        }
        //: if self.userModel.inMyBlackList {
        if self.userModel.inMyBlackList {
            //: titleArray.remove(at: 1)
            titleArray.remove(at: 1)
        }
        //: Config.MenuCellConfig.menuCellHeight = 26
        Config.ValueContent.menuCellHeight = 26
        //: let dropMenu = DropDownMenuView.pullDropDrownMenu(anchorView: moreBtn, titleArray: titleArray, imageArray: [])
        let dropMenu = AddDataSource.following(anchorView: moreBtn, titleArray: titleArray, imageArray: [])
        //: dropMenu.menuBgColor = UIColor.init(hex: "#F6F6F6")!
        dropMenu.menuBgColor = UIColor(hex: (kSizeFormat.capitalized + String(kBlockText)))!
        //: dropMenu.menuDelegate = self
        dropMenu.menuDelegate = self
        //: dropMenu.menuStyle = .MenuCustStyle
        dropMenu.menuStyle = .MenuCustStyle
    }

    //: func show() {
    func setOut() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = DataPopView(frame: UIScreen.main.bounds)
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue)
        //: popView?.initWithView(view: self)
        popView?.smart(view: self)
        //: popView?.showInView(view: self.currentViewController()?.view ?? UserTextMacroDefine.getWindow())
        popView?.academePosition(view: self.selectStart()?.view ?? UserTextMacroDefine.clearstoryNo())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func bastardy() {
        //: popView?.dismissView()
        popView?.upView()
        //: popView = nil
        popView = nil
    }
}

//: extension TalkingLiveUserCardView: DropDownMenuViewDelegate {
extension PublishRemoteCardView: WillSizeViewDelegate {
    //: func didClickSelectedRow(index: Int, title: String) {
    func nonePlayer(index: Int, title _: String) {
        /// 举报
        //: if index == 0 {
        if index == 0 {
            //: let reportView = TalkingReportAlertView(frame: UIScreen.main.bounds, type: .reportUserType, rId: self.userModel.uid)
            let reportView = InformDataSource(frame: UIScreen.main.bounds, type: .reportUserType, rId: self.userModel.uid)
            //: reportView.showReportViewIn(view: nil)
            reportView.magnitudeeraction(view: nil)

            /// 拉黑
            //: } else if index == 1 {
        } else if index == 1 {
            //: TalkingAlertShow.alert(title: nil, message: kMessage_blocking, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized) {
            FrameHiddenReactiveCompatible.theory(title: nil, message: user_barQuantityervalTitle, leftBtnTitle: (String(k_toId)).localized, rightBtnTitle: "OK".localized) {
                //: TalkingAlertShow.hideAlert()
                FrameHiddenReactiveCompatible.middleText()
                //: } rightBlock: {
            } rightBlock: {
                //: TalkingAlertShow.hideAlert()
                FrameHiddenReactiveCompatible.middleText()
                //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: self.userModel.uid, isBlack: true) { succeed, result, errorModel in
                FrameThen.cagey(uid: self.userModel.uid, isBlack: true) { succeed, _, _ in
                    //: if succeed == true {
                    if succeed == true {
                        //: if self.liveUserId == DistanceAppManager.share.loginUserMode.userID {
                        if self.liveUserId == DistanceAppManager.share.loginUserMode.userID {
                            //: let toastStr = "Kicked out of the live room".localized
                            let toastStr = (String(kValueStr.prefix(6)) + " out" + String(kEqualToStr.prefix(4)) + String(k_showKey.suffix(5)) + String(k_contentPopSectionFormat.prefix(8))).localized
                            //: ProgressHUD.toast(toastStr)
                            EndProgressHUD.terraceToast(toastStr)

                            //: NotificationCenter.default.post(name: LIVE_BLOCK_USER_NOTIFICATION,
                            NotificationCenter.default.post(name: kMessageValue,
                                                            //: object: nil,
                                                            object: nil,
                                                            //: userInfo: ["uid": self.userModel.uid])
                                                            userInfo: [String(bytes: k_addName.map{$0^1}, encoding: .utf8)!: self.userModel.uid])

                            //: }else {
                        } else {
                            //: let toastStr = "Shielding Success".localized
                            let toastStr = (String(kMessageViewName.prefix(4)) + "lding" + String(kBackgroundName)).localized
                            //: ProgressHUD.toast(toastStr)
                            EndProgressHUD.terraceToast(toastStr)
                        }
                        //: self.dismiss()
                        self.bastardy()
                    }
                }
            }
            //: } else if index == 2 {
        } else if index == 2 {
            //: if self.userModel.isMute {
            if self.userModel.isMute {
                //: TalkingAlertShow.alert(title: nil, message: "Are you sure you want to cancel the mute?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Confirm".localized) {
                FrameHiddenReactiveCompatible.theory(title: nil, message: String(bytes: k_modelMessage.map{pathText(view: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(k_toId)).localized, rightBtnTitle: (k_addPointData.uppercased() + kSystemValue.replacingOccurrences(of: "file", with: "ir")).localized) {
                    //: TalkingAlertShow.hideAlert()
                    FrameHiddenReactiveCompatible.middleText()
                    //: } rightBlock: {
                } rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    FrameHiddenReactiveCompatible.middleText()
                    //: ProgressHUD.show()
                    EndProgressHUD.listHide()
                    //: TalkingAudienceManager().req_liveRoomUnmute(targetUid: self.userModel.uid, completion: { succeed, result, errorModel in
                    LimitReactiveCompatible().errorAll(targetUid: self.userModel.uid, completion: { succeed, _, _ in
                        //: EndProgressHUD.popEnable()
                        EndProgressHUD.popEnable()
                        //: if succeed {
                        if succeed {
                            //: self.func__showStatusBarSuccessMsg(showMsg: "The mute has been lifted~".localized)
                            self.rear(showMsg: (String(kMatchMsg.prefix(7)) + String(kLabId) + String(kDataMessage)).localized)
                        }
                        //: self.dismiss()
                        self.bastardy()
                        //: })
                    })
                }
                //: } else {
            } else {
                //: muteView.showView()
                muteView.pushAside()
                //: muteView.targetUid = self.userModel.uid
                muteView.targetUid = self.userModel.uid
                //: self.dismiss()
                self.bastardy()
            }
        }
    }
}

//: extension TalkingLiveUserCardView {
extension PublishRemoteCardView {
    // 添加视图
    //: private func setupSubviews() {
    private func subviewsGreen() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(uidLb)
        contentView.addSubview(uidLb)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(nameLb)
        contentView.addSubview(nameLb)
        //: contentView.addSubview(levelIcon)
        contentView.addSubview(levelIcon)
        //: contentView.addSubview(signLb)
        contentView.addSubview(signLb)
        //: contentView.addSubview(followersLab)
        contentView.addSubview(followersLab)
        //: contentView.addSubview(followersNum)
        contentView.addSubview(followersNum)
        //: contentView.addSubview(followingLab)
        contentView.addSubview(followingLab)
        //: contentView.addSubview(followingNum)
        contentView.addSubview(followingNum)

        //: contentView.layoutIfNeeded()
        contentView.layoutIfNeeded()

        //: if self.type == .user_other {
        if self.type == .user_other {
            //: contentView.addSubview(lineView)
            contentView.addSubview(lineView)
            //: contentView.addSubview(stackView)
            contentView.addSubview(stackView)
            //: contentView.addSubview(moreBtn)
            contentView.addSubview(moreBtn)
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func equalColor() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-44)
            make.bottom.equalToSuperview().offset(-44)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: if self.type == .user_me {
            if self.type == .user_me {
                //: make.height.equalTo(192)
                make.height.equalTo(192)
                //: }else {
            } else {
                //: make.height.equalTo(233)
                make.height.equalTo(233)
            }
        }
        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(-33)
            make.top.equalTo(-33)
            //: make.width.height.equalTo(80)
            make.width.height.equalTo(80)
        }
        //: uidLb.snp.makeConstraints { make in
        uidLb.snp.makeConstraints { make in
            //: make.leading.top.equalTo(12)
            make.leading.top.equalTo(12)
            //: make.trailing.equalTo(topIcon.snp.leading).offset(-10)
            make.trailing.equalTo(topIcon.snp.leading).offset(-10)
        }
        //: nameLb.snp.makeConstraints { make in
        nameLb.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom).offset(12)
            make.top.equalTo(topIcon.snp.bottom).offset(12)
            //: make.centerX.equalToSuperview().offset(-12)
            make.centerX.equalToSuperview().offset(-12)
            //: make.width.lessThanOrEqualTo(ScreenWidth/2)
            make.width.lessThanOrEqualTo(constFormalContent / 2)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
        //: levelIcon.snp.makeConstraints { make in
        levelIcon.snp.makeConstraints { make in
            //: make.leading.equalTo(nameLb.snp.trailing).offset(5)
            make.leading.equalTo(nameLb.snp.trailing).offset(5)
            //: make.centerY.equalTo(nameLb)
            make.centerY.equalTo(nameLb)
            //: make.size.equalTo(CGSize(width: 32, height: 14))
            make.size.equalTo(CGSize(width: 32, height: 14))
        }
        //: signLb.snp.makeConstraints { make in
        signLb.snp.makeConstraints { make in
            //: make.top.equalTo(nameLb.snp.bottom).offset(12)
            make.top.equalTo(nameLb.snp.bottom).offset(12)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(38)
            make.height.equalTo(38)
        }
        //: followersNum.snp.makeConstraints { make in
        followersNum.snp.makeConstraints { make in
            //: make.top.equalTo(signLb.snp.bottom).offset(12)
            make.top.equalTo(signLb.snp.bottom).offset(12)
            //: make.centerX.equalTo(contentView).offset(-ScreenWidth/4+10)
            make.centerX.equalTo(contentView).offset(-constFormalContent / 4 + 10)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
        //: followingNum.snp.makeConstraints { make in
        followingNum.snp.makeConstraints { make in
            //: make.top.equalTo(signLb.snp.bottom).offset(12)
            make.top.equalTo(signLb.snp.bottom).offset(12)
            //: make.centerX.equalTo(contentView).offset(ScreenWidth/4-10)
            make.centerX.equalTo(contentView).offset(constFormalContent / 4 - 10)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
        //: followersLab.snp.makeConstraints { make in
        followersLab.snp.makeConstraints { make in
            //: make.top.equalTo(followersNum.snp.bottom).offset(5)
            make.top.equalTo(followersNum.snp.bottom).offset(5)
            //: make.centerX.equalTo(followersNum)
            make.centerX.equalTo(followersNum)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }
        //: followingLab.snp.makeConstraints { make in
        followingLab.snp.makeConstraints { make in
            //: make.top.equalTo(followingNum.snp.bottom).offset(5)
            make.top.equalTo(followingNum.snp.bottom).offset(5)
            //: make.centerX.equalTo(followingNum)
            make.centerX.equalTo(followingNum)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }

        //: if self.type == .user_other {
        if self.type == .user_other {
            //: lineView.snp.makeConstraints { make in
            lineView.snp.makeConstraints { make in
                //: make.top.equalTo(followersLab.snp.bottom).offset(12)
                make.top.equalTo(followersLab.snp.bottom).offset(12)
                //: make.leading.equalTo(7)
                make.leading.equalTo(7)
                //: make.trailing.equalTo(-7)
                make.trailing.equalTo(-7)
                //: make.height.equalTo(1)
                make.height.equalTo(1)
            }
            //: stackView.snp.makeConstraints { make in
            stackView.snp.makeConstraints { make in
                //: make.top.equalTo(lineView)
                make.top.equalTo(lineView)
                //: make.leading.trailing.equalToSuperview()
                make.leading.trailing.equalToSuperview()
                //: make.height.equalTo(44)
                make.height.equalTo(44)
            }
            //: moreBtn.snp.makeConstraints { make in
            moreBtn.snp.makeConstraints { make in
                //: make.trailing.equalToSuperview()
                make.trailing.equalToSuperview()
                //: make.top.equalTo(12)
                make.top.equalTo(12)
                //: make.size.equalTo(CGSize(width: 44, height: 20))
                make.size.equalTo(CGSize(width: 44, height: 20))
            }
        }
    }

    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_ touches: Set<UITouch>, with _: UIEvent?) {
        //: let touch = touches.first!
        let touch = touches.first!
        //: var point = touch.location(in: self.currentViewController()?.view)
        var point = touch.location(in: self.selectStart()?.view)
        //: point = contentView.layer.convert(point, from: self.currentViewController()?.view.layer)
        point = contentView.layer.convert(point, from: self.selectStart()?.view.layer)
        //: if !contentView.layer.contains(point) {
        if !contentView.layer.contains(point) {
            //: self.dismiss()
            self.bastardy()
        }
    }
}
