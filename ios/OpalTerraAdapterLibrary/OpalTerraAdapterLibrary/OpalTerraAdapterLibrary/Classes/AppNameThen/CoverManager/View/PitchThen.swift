
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_equalData:[UInt8] = [0xef,0xe8,0xef,0xf2,0xae,0xe5,0xe9,0xe2,0xe3,0xf4,0xbc,0xaf,0xa6,0xee,0xe7,0xf5,0xa6,0xe8,0xe9,0xf2,0xa6,0xe4,0xe3,0xe3,0xe8,0xa6,0xef,0xeb,0xf6,0xea,0xe3,0xeb,0xe3,0xe8,0xf2,0xe3,0xe2]

private func logMini(never num: UInt8) -> UInt8 {
    return num ^ 134
}

/*: "#7166F9" :*/
fileprivate let kVideoDataTitle:String = "#"
fileprivate let kHiddenName:[Character] = ["7","1","6","6","F","9"]

/*: "party_seat_mike_close" :*/
fileprivate let k_rawName:String = "pavaluety"
fileprivate let kMomentContent:String = "view bottom model in text_sea"
fileprivate let kDismissMessage:String = "true accept returnt_mike"

/*: "party_seat_host" :*/
fileprivate let kChangeId:String = "partbean"
fileprivate let k_menuName:String = "cell return returnt_host"

/*: "#FA9D33" :*/
fileprivate let kDataPushId:String = "#FA9D33view string data count type"

/*: "party_seat_heartvalue" :*/
fileprivate let kMagnitudeeractionId:String = "partlab"
fileprivate let k_onMsg:String = "hetort"

/*: "party_seat_lock" :*/
fileprivate let k_labelName:[UInt8] = [0xb4,0xa5,0xb6,0xb0,0xbd,0x9b,0xb7,0xa1,0xa5,0xb0,0x9b,0xa8,0xab,0xa7,0xaf]

/*: "party_seat_empty" :*/
fileprivate let k_showKey:[Character] = ["p","a","r","t","y","_","s","e"]
fileprivate let k_promptPath:[Character] = ["a","t","_","e","m","p","t","y"]

/*: "99999+" :*/
fileprivate let k_submitTitle:[UInt8] = [0x79,0x79,0x79,0x79,0x79,0x6b]

fileprivate func panContact(hide num: UInt8) -> UInt8 {
    let value = Int(num) - 64
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Unlock" :*/
fileprivate let k_mediumTitle:String = "index statute text edgeUnlock"

/*: "The seat is locked, click on the empty seat to play" :*/
fileprivate let k_appFormat:[UInt8] = [0xfd,0x11,0xe,0xc9,0x1c,0xe,0xa,0x1d,0xc9,0x12,0x1c,0xc9,0x15,0x18,0xc,0x14,0xe,0xd,0xd5,0xc9,0xc,0x15,0x12,0xc,0x14,0xc9,0x18,0x17,0xc9,0x1d,0x11,0xe,0xc9,0xe,0x16,0x19,0x1d,0x22,0xc9,0x1c,0xe,0xa,0x1d,0xc9,0x1d,0x18,0xc9,0x19,0x15,0xa,0x22]

fileprivate func snapSmooth(count num: UInt8) -> UInt8 {
    let value = Int(num) - 169
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Under mic" :*/
fileprivate let kCenterMakeId:[Character] = ["U","n","d","e","r"," "]
fileprivate let k_keyControlValue:String = "mgift"

/*: _ :*/
fileprivate let k_cellVideoKey:String = "detail"

/*: "male" :*/
fileprivate let k_voiceUrl:[UInt8] = [0x65,0x6c,0x61,0x6d]

/*: "female" :*/
fileprivate let kMessageStr:String = "fusermaluser"

/*: "On mic" :*/
fileprivate let kGiftData:String = "menu detailOn mic"

/*: "Lock" :*/
fileprivate let k_requestText:String = "Lockmodel status extension place"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PitchThen.swift
//  OpalTerraAdapterLibrary
//
//  Created by DouXiu on 2024/9/24.
//

//: import UIKit
import UIKit

/// 当前Item宽高
//: let MikePositionItemView_Size = CGSize(width: (ScreenWidth - 35) / 4, height: actualWidth(w: 102))
let showHalfContent = CGSize(width: (constFormalContent - 35) / 4, height: actualWidth(w: 102))

//: class TalkingMikePositionItemView: UIView {
class PitchThen: UIView {
    /// 用户资料卡block
    //: public var showUserCardBlock: ((_ uid: Int) -> Void)?
    public var showUserCardBlock: ((_ uid: Int) -> Void)?
    /// 麦位
    //: private var position = 0
    private var position = 0
    /// 麦位模型
    //: private var itemModel = TalkingMikeListItemModel()
    private var itemModel = ItemMeasurable()
    /// 是否正在动画
    //: private var isAnimation = false
    private var isAnimation = false
    /// 1s内最大音浪值
    //: private var maxAmplitude = 0.0
    private var maxAmplitude = 0.0

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        subviewsLab()
        //: setupSubViewsConstraint()
        sideEffect()
        //: bindInteraction()
        quantityeraction()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_equalData.map{logMini(never: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var animationV1: UIView = {
    private lazy var animationV1: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#7166F9")?.withAlphaComponent(0.15)
        v.backgroundColor = UIColor(hex: (kVideoDataTitle.capitalized + String(kHiddenName)))?.withAlphaComponent(0.15)
        //: v.layer.cornerRadius = 29
        v.layer.cornerRadius = 29
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var animationV2: UIView = {
    private lazy var animationV2: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#7166F9")?.withAlphaComponent(0.55)
        v.backgroundColor = UIColor(hex: (kVideoDataTitle.capitalized + String(kHiddenName)))?.withAlphaComponent(0.55)
        //: v.layer.cornerRadius = 25
        v.layer.cornerRadius = 25
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: v.layer.cornerRadius = 25
        v.layer.cornerRadius = 25
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var mikeCloseImgV: UIImageView = {
    private lazy var mikeCloseImgV: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.submitGift(name: "party_seat_mike_close")
        v.image = UIImage.submitGift(name: (k_rawName.replacingOccurrences(of: "value", with: "r") + String(kMomentContent.suffix(4)) + String(kDismissMessage.suffix(6)) + "_close"))
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var stackView: UIStackView = {
    private lazy var stackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .center
        v.alignment = .center
        //: v.spacing = 2
        v.spacing = 2
        //: return v
        return v
        //: }()
    }()

    //: private lazy var houseImgV: UIImageView = {
    private lazy var houseImgV: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage.submitGift(name: "party_seat_host")
        v.image = UIImage.submitGift(name: (kChangeId.replacingOccurrences(of: "bean", with: "y") + "_sea" + String(k_menuName.suffix(6))))
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var seatNumLab: UILabel = {
    private lazy var seatNumLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.backgroundColor = UIColor(hex: "#FA9D33")
        lab.backgroundColor = UIColor(hex: (String(kDataPushId.prefix(7))))
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 9)
        lab.font = UIFont.tapShared(fontSize: 9)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.layer.cornerRadius = actualWidth(w: 12) / 2
        lab.layer.cornerRadius = actualWidth(w: 12) / 2
        //: lab.layer.masksToBounds = true
        lab.layer.masksToBounds = true
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var nickNameLab: UILabel = {
    private lazy var nickNameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 12)
        lab.font = UIFont.targetFor(fontSize: 12)
        //: lab.textColor = .white
        lab.textColor = .white
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var heartCoinBtn: TalkingButton = {
    private lazy var heartCoinBtn: ResumeControl = {
        //: let btn = TalkingButton()
        let btn = ResumeControl()
        //: btn.setImage(UIImage.submitGift(name: "party_seat_heartvalue"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (kMagnitudeeractionId.replacingOccurrences(of: "lab", with: "y") + "_seat_" + k_onMsg.replacingOccurrences(of: "to", with: "a") + "value")), for: .normal)
        //: btn.titleLabel?.font = .fontChange(type: .Regular, fontSize: 8)
        btn.titleLabel?.font = .fontChange(type: .Regular, fontSize: 8)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("0", for: .normal)
        btn.setTitle("0", for: .normal)
        //: btn.spaceBetweenTitleAndImage = 2
        btn.spaceBetweenTitleAndImage = 2
        //: btn.backgroundColor = UIColor.white.withAlphaComponent(0.15)
        btn.backgroundColor = UIColor.white.withAlphaComponent(0.15)
        //: btn.layer.cornerRadius = actualWidth(w: 12) / 2
        btn.layer.cornerRadius = actualWidth(w: 12) / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMikePositionItemView {
extension PitchThen {
    /// 刷新视图
    /// - Parameters:
    ///   - seatNumber: 席位
    ///   - model: 模型
    //: func refreshMikeItemView(_ seatNumber: Int, model: TalkingMikeListItemModel) {
    func factor(_ seatNumber: Int, model: ItemMeasurable) {
        //: position = seatNumber
        position = seatNumber
        //: itemModel = model
        itemModel = model
        //: seatNumLab.text = "\(seatNumber + 1)"
        seatNumLab.text = "\(seatNumber + 1)"

        //: guard model.posStatus == 0, model.uid > 0 else {
        guard model.posStatus == 0, model.uid > 0 else {
            //: let imgStr = (itemModel.posStatus == 1) ? "party_seat_lock" : "party_seat_empty"
            let imgStr = (itemModel.posStatus == 1) ? String(bytes: k_labelName.map{$0^196}, encoding: .utf8)! : (String(k_showKey) + String(k_promptPath))
            //: icon.image = UIImage.submitGift(name: imgStr)
            icon.image = UIImage.submitGift(name: imgStr)
            //: mikeCloseImgV.isHidden = true
            mikeCloseImgV.isHidden = true
            //: houseImgV.isHidden = true
            houseImgV.isHidden = true
            //: nickNameLab.isHidden = true
            nickNameLab.isHidden = true
            //: heartCoinBtn.isHidden = true
            heartCoinBtn.isHidden = true
            //: return
            return
        }

        // 麦位开启，麦上有人
        //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 25)))]
        let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: actualWidth(w: 25)))]
        //: icon.setUrlImage(urlStr: model.headPic, options: optionsInfo)
        icon.setUrlImage(urlStr: model.headPic, options: optionsInfo)
        //: mikeCloseImgV.isHidden = (model.mikeStatus == 2)
        mikeCloseImgV.isHidden = (model.mikeStatus == 2)
        // 是否是主播
        //: houseImgV.isHidden = !(model.uid == TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid)
        houseImgV.isHidden = !(model.uid == CoverManager.byRest().partyModel.streamerInfo.uid)
        //: nickNameLab.text = model.nickname
        nickNameLab.text = model.nickname
        //: nickNameLab.isHidden = false
        nickNameLab.isHidden = false
        //: let heartValue = (model.coin > 99999) ? "99999+" : String(model.coin)
        let heartValue = (model.coin > 99999) ? String(bytes: k_submitTitle.map{panContact(hide: $0)}, encoding: .utf8)! : String(model.coin)
        //: heartCoinBtn.setTitle(heartValue, for: .normal)
        heartCoinBtn.setTitle(heartValue, for: .normal)
        //: heartCoinBtn.isHidden = false
        heartCoinBtn.isHidden = false
        //: let width = heartCoinBtn.titleLabel!.text!.size(withAttributes: [.font: heartCoinBtn.titleLabel!.font!]).width + actualWidth(w: 20)
        let width = heartCoinBtn.titleLabel!.text!.size(withAttributes: [.font: heartCoinBtn.titleLabel!.font!]).width + actualWidth(w: 20)
        //: heartCoinBtn.snp.updateConstraints { make in
        heartCoinBtn.snp.updateConstraints { make in
            //: make.width.equalTo(width)
            make.width.equalTo(width)
        }
    }

    /// 麦位点击事件
    //: @objc func tapGestureRecognizer(_ tap: UITapGestureRecognizer) {
    @objc func recognizer(_: UITapGestureRecognizer) {
        // 是否房主
        //: let isAnchor = (String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == DistanceAppManager.share.loginUid)
        let isAnchor = (String(CoverManager.byRest().partyModel.streamerInfo.uid) == DistanceAppManager.share.loginUid)
        //: guard itemModel.posStatus == 0 else {
        guard itemModel.posStatus == 0 else {
            //: if itemModel.posStatus == 1 {
            if itemModel.posStatus == 1 { // 麦位锁定
                //: if isAnchor {
                if isAnchor { // 房主
                    //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
                    let vc = LipogramViewDelegate(frame: UIScreen.main.bounds)
                    //: vc.initwithList(cellTitleList: ["Unlock".localized])
                    vc.listEffect(cellTitleList: [(String(k_mediumTitle.suffix(6))).localized])
                    //: vc.cancelColor = .colorStatuteNameApp()
                    vc.cancelColor = .colorStatuteNameApp()
                    //: vc.munuBlock = { [weak self] _, str in
                    vc.munuBlock = { [weak self] _, str in
                        //: guard let self = self else { return }
                        guard let self = self else { return }
                        //: if str == "Unlock".localized {
                        if str == (String(k_mediumTitle.suffix(6))).localized {
                            //: TalkingVoiceRoomManager.shared().voiceRoom_reqAdminChangeMike(uid: 0, type: 2, position: position)
                            CoverManager.byRest().drawRein(uid: 0, type: 2, position: position)
                        }
                    }

                    //: } else {
                } else {
                    //: func__showStatusBarErrorMsg(showMsg: "The seat is locked, click on the empty seat to play".localized)
                    arcInfo(showMsg: String(bytes: k_appFormat.map{snapSmooth(count: $0)}, encoding: .utf8)!.localized)
                }
            }
            //: return
            return
        }

        // 麦位开启
        //: if itemModel.uid > 0 {
        if itemModel.uid > 0 { // 麦上有人
            //: if String(itemModel.uid) == DistanceAppManager.share.loginUid {
            if String(itemModel.uid) == DistanceAppManager.share.loginUid { // 点击自己麦位
                // 用户主动下麦
                //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
                let vc = LipogramViewDelegate(frame: UIScreen.main.bounds)
                //: vc.initwithList(cellTitleList: ["Under mic".localized])
                vc.listEffect(cellTitleList: [(String(kCenterMakeId) + k_keyControlValue.replacingOccurrences(of: "gift", with: "ic")).localized])
                //: vc.cancelColor = .colorStatuteNameApp()
                vc.cancelColor = .colorStatuteNameApp()
                //: vc.munuBlock = { [weak self] _, str in
                vc.munuBlock = { [weak self] _, str in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: if str == "Under mic".localized {
                    if str == (String(kCenterMakeId) + k_keyControlValue.replacingOccurrences(of: "gift", with: "ic")).localized {
                        //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 2, position: position)
                        CoverManager.byRest().optionMatch(type: 2, position: position)
                        //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_underMic)_\(DistanceAppManager.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                        kSoundName.messUp(eventID: "\(user_pathTitle)_\(DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.male.rawValue ? String(bytes: k_voiceUrl.reversed(), encoding: .utf8)! : (kMessageStr.replacingOccurrences(of: "user", with: "e")))")
                    }
                }

                //: } else {
            } else { // 点击别人麦位, 查看资料卡
                //: showUserCardBlock?(itemModel.uid)
                showUserCardBlock?(itemModel.uid)
            }

            //: } else {
        } else { // 空位
            //: if isAnchor {
            if isAnchor { // 房主
                //: let vc = TalkingMunuPopView(frame: UIScreen.main.bounds)
                let vc = LipogramViewDelegate(frame: UIScreen.main.bounds)
                //: vc.initwithList(cellTitleList: ["On mic".localized, "Lock".localized])
                vc.listEffect(cellTitleList: [(String(kGiftData.suffix(6))).localized, (String(k_requestText.prefix(4))).localized])
                //: vc.cancelColor = .colorStatuteNameApp()
                vc.cancelColor = .colorStatuteNameApp()
                //: vc.munuBlock = { [weak self] _, str in
                vc.munuBlock = { [weak self] _, str in
                    //: guard let self = self else { return }
                    guard let self = self else { return }
                    //: if str == "On mic".localized {
                    if str == (String(kGiftData.suffix(6))).localized {
                        //: if TalkingVoiceRoomManager.shared().partyModel.position >= 0 {
                        if CoverManager.byRest().partyModel.position >= 0 { // 在麦位上切麦
                            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 3,
                            CoverManager.byRest().optionMatch(type: 3,
                                                                         //: position: TalkingVoiceRoomManager.shared().partyModel.position,
                                                                         position: CoverManager.byRest().partyModel.position,
                                                                         //: toPosition: position)
                                                                         toPosition: position)
                            //: } else {
                        } else {
                            //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 1, position: position)
                            CoverManager.byRest().optionMatch(type: 1, position: position)
                            //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_onMic)_\(DistanceAppManager.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                            kSoundName.messUp(eventID: "\(const_intervalData)_\(DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.male.rawValue ? String(bytes: k_voiceUrl.reversed(), encoding: .utf8)! : (kMessageStr.replacingOccurrences(of: "user", with: "e")))")
                        }

                        //: } else if str == "Lock".localized {
                    } else if str == (String(k_requestText.prefix(4))).localized {
                        //: TalkingVoiceRoomManager.shared().voiceRoom_reqAdminChangeMike(uid: 0, type: 1, position: position)
                        CoverManager.byRest().drawRein(uid: 0, type: 1, position: position)
                    }
                }

                //: } else {
            } else { // 观众在麦位上切麦，否则上麦
                //: if TalkingVoiceRoomManager.shared().partyModel.position >= 0 {
                if CoverManager.byRest().partyModel.position >= 0 {
                    //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 3,
                    CoverManager.byRest().optionMatch(type: 3,
                                                                 //: position: TalkingVoiceRoomManager.shared().partyModel.position,
                                                                 position: CoverManager.byRest().partyModel.position,
                                                                 //: toPosition: position)
                                                                 toPosition: position)
                    //: } else {
                } else {
                    //: TalkingVoiceRoomManager.shared().voiceRoom_reqChangeMike(type: 1, position: position)
                    CoverManager.byRest().optionMatch(type: 1, position: position)
                    //: uploadRecord.uploadRecordEvent(eventID: "\(click_partyDetail_onMic)_\(DistanceAppManager.share.loginUserMode.sex == Gender.male.rawValue ? "male" : "female")")
                    kSoundName.messUp(eventID: "\(const_intervalData)_\(DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.male.rawValue ? String(bytes: k_voiceUrl.reversed(), encoding: .utf8)! : (kMessageStr.replacingOccurrences(of: "user", with: "e")))")
                }
            }
        }
    }
}

// MARK: - 音浪动效

//: extension TalkingMikePositionItemView {
extension PitchThen {
    /// 播放音浪值动效
    /// - Parameter amplitude: 音浪值
    //: func animateCircle(withAmplitude amplitude: CGFloat) {
    func isEllipse(withAmplitude amplitude: CGFloat) {
        //: maxAmplitude = max(maxAmplitude, amplitude)
        maxAmplitude = max(maxAmplitude, amplitude)
        //: guard isAnimation == false else { return }
        guard isAnimation == false else { return }
        //: isAnimation = true
        isAnimation = true

        //: animationV1.isHidden = false
        animationV1.isHidden = false
        //: animationV2.isHidden = false
        animationV2.isHidden = false
        //: let scale1 = (25 + (maxAmplitude / 100) * 7) / 25
        let scale1 = (25 + (maxAmplitude / 100) * 7) / 25
        //: let scale2 = (29 + (maxAmplitude / 100) * 8) / 29
        let scale2 = (29 + (maxAmplitude / 100) * 8) / 29
        //: maxAmplitude = 0.0
        maxAmplitude = 0.0
        //: UIView.animate(withDuration: 1, animations: {
        UIView.animate(withDuration: 1, animations: {
            //: self.animationV1.transform = CGAffineTransform(scaleX: scale1, y: scale1)
            self.animationV1.transform = CGAffineTransform(scaleX: scale1, y: scale1)
            //: self.animationV2.transform = CGAffineTransform(scaleX: scale2, y: scale2)
            self.animationV2.transform = CGAffineTransform(scaleX: scale2, y: scale2)
            //: }) { _ in
        }) { _ in
            //: self.animationV1.transform = .identity
            self.animationV1.transform = .identity
            //: self.animationV2.transform = .identity
            self.animationV2.transform = .identity
            //: self.animationV1.isHidden = true
            self.animationV1.isHidden = true
            //: self.animationV2.isHidden = true
            self.animationV2.isHidden = true
            //: self.isAnimation = false
            self.isAnimation = false
        }
    }
}

// MARK: - Layout

//: extension TalkingMikePositionItemView {
extension PitchThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func subviewsLab() {
        //: addSubview(animationV1)
        addSubview(animationV1)
        //: addSubview(animationV2)
        addSubview(animationV2)
        //: addSubview(icon)
        addSubview(icon)
        //: addSubview(mikeCloseImgV)
        addSubview(mikeCloseImgV)
        //: addSubview(stackView)
        addSubview(stackView)
        //: stackView.addArrangedSubview(houseImgV)
        stackView.addArrangedSubview(houseImgV)
        //: stackView.addArrangedSubview(seatNumLab)
        stackView.addArrangedSubview(seatNumLab)
        //: stackView.addArrangedSubview(nickNameLab)
        stackView.addArrangedSubview(nickNameLab)
        //: addSubview(heartCoinBtn)
        addSubview(heartCoinBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func sideEffect() {
        //: animationV1.snp.makeConstraints { make in
        animationV1.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 8))
            make.top.equalTo(actualWidth(w: 8))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(58)
            make.width.height.equalTo(58)
        }

        //: animationV2.snp.makeConstraints { make in
        animationV2.snp.makeConstraints { make in
            //: make.center.equalTo(animationV1)
            make.center.equalTo(animationV1)
            //: make.width.height.equalTo(50)
            make.width.height.equalTo(50)
        }

        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.center.equalTo(animationV1)
            make.center.equalTo(animationV1)
            //: make.width.height.equalTo(50)
            make.width.height.equalTo(50)
        }

        //: mikeCloseImgV.snp.makeConstraints { make in
        mikeCloseImgV.snp.makeConstraints { make in
            //: make.trailing.bottom.equalTo(icon).offset(3)
            make.trailing.bottom.equalTo(icon).offset(3)
            //: make.width.height.equalTo(actualWidth(w: 18))
            make.width.height.equalTo(actualWidth(w: 18))
        }

        //: stackView.snp.makeConstraints { make in
        stackView.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 6))
            make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 6))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.lessThanOrEqualToSuperview()
            make.width.lessThanOrEqualToSuperview()
        }
        //: houseImgV.snp.makeConstraints { make in
        houseImgV.snp.makeConstraints { make in
            //: make.width.height.equalTo(actualWidth(w: 12))
            make.width.height.equalTo(actualWidth(w: 12))
        }
        //: seatNumLab.snp.makeConstraints { make in
        seatNumLab.snp.makeConstraints { make in
            //: make.width.height.equalTo(actualWidth(w: 12))
            make.width.height.equalTo(actualWidth(w: 12))
        }

        //: heartCoinBtn.snp.makeConstraints { make in
        heartCoinBtn.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 24))
            make.top.equalTo(icon.snp.bottom).offset(actualWidth(w: 24))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(actualWidth(w: 12))
            make.height.equalTo(actualWidth(w: 12))
            //: make.width.equalTo(actualWidth(w: 21))
            make.width.equalTo(actualWidth(w: 21))
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func quantityeraction() {
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(tapGestureRecognizer))
        let tap = UITapGestureRecognizer(target: self, action: #selector(recognizer))
        //: addGestureRecognizer(tap)
        addGestureRecognizer(tap)
    }
}
