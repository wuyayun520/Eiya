
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_intervalMsg:[UInt8] = [0x46,0x41,0x46,0x5b,0x7,0x4c,0x40,0x4b,0x4a,0x5d,0x15,0x6,0xf,0x47,0x4e,0x5c,0xf,0x41,0x40,0x5b,0xf,0x4d,0x4a,0x4a,0x41,0xf,0x46,0x42,0x5f,0x43,0x4a,0x42,0x4a,0x41,0x5b,0x4a,0x4b]

/*: "img_home_shadow_icon" :*/
fileprivate let kDateMakeMsg:String = "cell object oldimg_"
fileprivate let k_objectUrl:[Character] = ["_","s","h","a","d","o","w","_","i","c","o","n"]

/*: "icon_lounge" :*/
fileprivate let kNameShareYouUrl:[Character] = ["i","c","o","n","_","l","o","u","n","g","e"]

/*: "icon_home_v" :*/
fileprivate let k_fromValue:String = "icocover"

/*: "icon_home_position" :*/
fileprivate let k_viewMessage:String = "icgift"
fileprivate let k_nameGestureFormat:String = "with insert sign mic model_posi"

/*: "btn_dynamic_stop_nor" :*/
fileprivate let kUserUrl:[Character] = ["b","t","n","_","d","y","n","a","m","i","c","_","s","t","o","p","_","n","o","r"]

/*: "Block" :*/
fileprivate let kTopContent:String = "Blockline size text view"

/*: "btn_friends_block" :*/
fileprivate let k_mayText:String = "btn_fractual list frame height"
fileprivate let kHiddenTitle:String = "_blockerr party to in"

/*: "Cancel" :*/
fileprivate let kColorData:[Character] = ["C","a","n","c","e","l"]

/*: "btn_friends_block_cancel" :*/
fileprivate let kDataToId:String = "to videobtn_fr"
fileprivate let kCustomMsg:String = "momentlock"
fileprivate let k_messageToolValue:String = "text"

/*: "iv_home_game" :*/
fileprivate let k_tapName:String = "iv_hself at for"
fileprivate let kAppPath:[Character] = ["e"]

/*: "transform.scale" :*/
fileprivate let kGiftStr:String = "TRANSF"
fileprivate let kAboutContent:String = "makee"

/*: "zoom&shake" :*/
fileprivate let k_willNameValue:String = "zoom&scontent content let share return"

/*: "OK" :*/
fileprivate let k_constraintName:[Character] = ["O","K"]

/*: "get json error" :*/
fileprivate let k_whiteAddMessage:String = "get jnumber cell"
fileprivate let k_nameUrl:[Character] = ["s","o","n"," ","e","r","r","o","r"]

/*: "icon_popularhome_chat" :*/
fileprivate let kTargetFormat:String = "image mainicon_"
fileprivate let k_errorStr:String = "langlerho"
fileprivate let kTextPath:[Character] = ["h","a","t"]

/*: "#2DF2FF" :*/
fileprivate let kResponseTitle:[Character] = ["#","2","D","F","2","F"]
fileprivate let k_suiteVideoName:String = "block"

/*: "Live" :*/
fileprivate let kErrorViewText:String = "not gender view view importLive"

/*: "#48FF1E" :*/
fileprivate let k_sizeArrayContent:[Character] = ["#","4","8","F","F","1","E"]

/*: "Online" :*/
fileprivate let k_containerTitle:String = "Onlineelse away"

/*: "#FF4B7F" :*/
fileprivate let kKeyDeviceUrl:String = "lack text#FF4B7"
fileprivate let kTextMsg:[Character] = ["F"]

/*: "busy" :*/
fileprivate let k_stylePostData:[Character] = ["b","u","s","y"]

/*: "  :*/
fileprivate let k_layerSinceUrl:String = " "

/*:  " :*/
fileprivate let kViewWillMessage:String = " "

/*: "icon_popularhome_hi" :*/
fileprivate let kContainerUrl:String = "nameon"
fileprivate let k_sizeData:String = "larhoclear"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PopularThen.swift
//  AbroadTalking
//
//  Created by young on 2022/8/29.
//

//: import UIKit
import UIKit

//: protocol SocialPopularListCellDelegate: NSObject {
protocol ResumeCellDelegate: NSObject {
    //: func cellPlayerEnd()
    func soccerPlayerPath()
    //: func seleteShowBlock(model: SocialUserListModel)
    func appearStatus(model: EqualModelType)
    //: func seleteHideBlock()
    func decipherUp()
    //: func seleteBlockTool(model: SocialUserListModel)
    func bigModel(model: EqualModelType)
    /// 去私聊
    //: func chtToUser(model: SocialUserListModel)
    func analogDigitalConverterHandleContentTheory(model: EqualModelType)

    /// 快速打招呼
    //: func greetToUser(uid: String)
    func tableDownUid(uid: String)
}

//: class SocialPopularListCell: UICollectionViewCell {
class PopularThen: UICollectionViewCell {
    //: var currentModel: SocialUserListModel?
    var currentModel: EqualModelType? // 记录当前模型
    //: open weak var delegate: SocialPopularListCellDelegate?
    open weak var delegate: ResumeCellDelegate?

    //: var isPlaying = false
    var isPlaying = false
    //: var videoUrl = ""
    var videoUrl = ""
    //: var isListTableCell = true
    var isListTableCell = true

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_intervalMsg.map{$0^47}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.layer.cornerRadius = 5
        self.layer.cornerRadius = 5
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true
        //: self.setupSubviews()
        self.skull()
        //: self.setupSubViewsConstraint()
        self.slightContent()
    }

    // MARK: - Lazy load

    //: private lazy var headPicImgV: UIImageView = {
    private lazy var headPicImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: img.addGestureRecognizer(self.longGesture)
        img.addGestureRecognizer(self.longGesture)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var statusImgV: TalkingButton = {
    private lazy var statusImgV: ResumeControl = {
        //: let img = TalkingButton()
        let img = ResumeControl()
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: img.spaceBetweenTitleAndImage = 2
        img.spaceBetweenTitleAndImage = 2
        //: img.setBackgroundImage(UIImage.imageFillColor(color: UIColor.init(red: 9/255.0 , green: 9/255.0 , blue: 9/255.0 , alpha: 0.3)), for: .normal)
        img.setBackgroundImage(UIImage.beginLine(color: UIColor(red: 9 / 255.0, green: 9 / 255.0, blue: 9 / 255.0, alpha: 0.3)), for: .normal)
        //: img.layer.cornerRadius = 8
        img.layer.cornerRadius = 8
        //: img.layer.masksToBounds = true
        img.layer.masksToBounds = true
        //: img.setTitleColor(.white, for: .normal)
        img.setTitleColor(.white, for: .normal)
        //: img.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 12)
        img.titleLabel?.font = UIFont.tapShared(fontSize: 12)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var shadowImg: UIImageView = {
    private lazy var shadowImg: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.submitGift(name: "img_home_shadow_icon")
        img.image = UIImage.submitGift(name: (String(kDateMakeMsg.suffix(4)) + "home" + String(k_objectUrl)))
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.fontChange(type: .Medium, fontSize: 17)
        lab.font = UIFont.fontChange(type: .Medium, fontSize: 17)
        //: lab.textColor = .white
        lab.textColor = .white
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeLanguageManager.shared.direction == .rightToLeft {
            //: lab.textAlignment = .right
            lab.textAlignment = .right
            //: lab.lineBreakMode = .byTruncatingHead
            lab.lineBreakMode = .byTruncatingHead
        }
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var loungeImgV: UIImageView = {
    private lazy var loungeImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.submitGift(name: "icon_lounge")
        img.image = UIImage.submitGift(name: (String(kNameShareYouUrl)))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var attestationImgV: UIImageView = {
    private lazy var attestationImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.submitGift(name: "icon_home_v")
        img.image = UIImage.submitGift(name: (k_fromValue.replacingOccurrences(of: "cover", with: "n") + "_home_v"))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var locationBtn: TalkingButton = {
    private lazy var locationBtn: ResumeControl = {
        //: let btn = TalkingButton()
        let btn = ResumeControl()
        //: btn.spaceBetweenTitleAndImage = 2
        btn.spaceBetweenTitleAndImage = 2
        //: btn.setImage(UIImage.submitGift(name: "icon_home_position"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (k_viewMessage.replacingOccurrences(of: "gift", with: "on") + "_home" + String(k_nameGestureFormat.suffix(5)) + "tion")), for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 12)
        btn.titleLabel?.font = UIFont.targetFor(fontSize: 12)
        //: btn.contentHorizontalAlignment = LanguageManager.shared.direction == .rightToLeft ? .right:.left
        btn.contentHorizontalAlignment = MakeLanguageManager.shared.direction == .rightToLeft ? .right : .left
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var player: TalkingVideoPlayerManager = {
    private lazy var player: DecisionMakerThen = {
        //: var  player: TalkingVideoPlayerManager
        var player: DecisionMakerThen
        //: player = TalkingVideoPlayerManager.init()
        player = DecisionMakerThen()
        //: player.delegate = self
        player.delegate = self
        //: player.setMute(bEnable: true)
        player.setFor(bEnable: true)
        //: return player
        return player
        //: }()
    }()

    //: private lazy var playimageView: UIImageView = {
    private lazy var playimageView: UIImageView = {
        //: let  imag = UIImageView.init(image: UIImage.submitGift(name: "btn_dynamic_stop_nor"))
        let imag = UIImageView(image: UIImage.submitGift(name: (String(kUserUrl))))
        //: imag.isHidden = true
        imag.isHidden = true
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var longGesture: UILongPressGestureRecognizer = {
    private lazy var longGesture: UILongPressGestureRecognizer = {
        //: let long = UILongPressGestureRecognizer(target: self, action: #selector(handleLongPress(_:)))
        let long = UILongPressGestureRecognizer(target: self, action: #selector(clickManage(_:)))
        //: return long
        return long
        //: }()
    }()

    //: lazy var blockBackView: UIView = {
    lazy var blockBackView: UIView = {
        //: let  view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.init(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.6)
        view.backgroundColor = UIColor(red: 0 / 255.0, green: 0 / 255.0, blue: 0 / 255.0, alpha: 0.6)
        //: view.isHidden = true
        view.isHidden = true
        //: let blockBtn = TalkingButton.init()
        let blockBtn = ResumeControl()
        //: blockBtn.setTitle("Block".localized, for: .normal)
        blockBtn.setTitle((String(kTopContent.prefix(5))).localized, for: .normal)
        //: blockBtn.setTitleColor(UIColor.white, for: .normal)
        blockBtn.setTitleColor(UIColor.white, for: .normal)
        //: blockBtn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 17)
        blockBtn.titleLabel?.font = UIFont.tapShared(fontSize: 17)
        //: blockBtn.setImage(UIImage.submitGift(name: "btn_friends_block"), for: .normal)
        blockBtn.setImage(UIImage.submitGift(name: (String(k_mayText.prefix(6)) + "iends" + String(kHiddenTitle.prefix(6)))), for: .normal)
        //: blockBtn.spaceBetweenTitleAndImage = 4
        blockBtn.spaceBetweenTitleAndImage = 4
        //: blockBtn.addTarget(self, action: #selector(blockBtnClick), for: .touchUpInside)
        blockBtn.addTarget(self, action: #selector(photoClick), for: .touchUpInside)
        //: view.addSubview(blockBtn)
        view.addSubview(blockBtn)
        //: blockBtn.snp.remakeConstraints { make in
        blockBtn.snp.remakeConstraints { make in
            //: make.top.equalTo(view).offset(50)
            make.top.equalTo(view).offset(50)
            //: make.leading.equalTo(43)
            make.leading.equalTo(43)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: let cancelBtn = TalkingButton.init()
        let cancelBtn = ResumeControl()
        //: cancelBtn.setTitle("Cancel".localized, for: .normal)
        cancelBtn.setTitle((String(kColorData)).localized, for: .normal)
        //: cancelBtn.setTitleColor(UIColor.white, for: .normal)
        cancelBtn.setTitleColor(UIColor.white, for: .normal)
        //: cancelBtn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 17)
        cancelBtn.titleLabel?.font = UIFont.tapShared(fontSize: 17)
        //: cancelBtn.setImage(UIImage.submitGift(name: "btn_friends_block_cancel"), for: .normal)
        cancelBtn.setImage(UIImage.submitGift(name: (String(kDataToId.suffix(6)) + "iends_" + kCustomMsg.replacingOccurrences(of: "moment", with: "b") + "_cance" + k_messageToolValue.replacingOccurrences(of: "text", with: "l"))), for: .normal)
        //: cancelBtn.spaceBetweenTitleAndImage = 4
        cancelBtn.spaceBetweenTitleAndImage = 4
        //: cancelBtn.addTarget(self, action: #selector(cancelBtnClick), for: .touchUpInside)
        cancelBtn.addTarget(self, action: #selector(publicationClick), for: .touchUpInside)
        //: view.addSubview(cancelBtn)
        view.addSubview(cancelBtn)
        //: cancelBtn.snp.remakeConstraints { make in
        cancelBtn.snp.remakeConstraints { make in
            //: make.top.equalTo(blockBtn.snp.bottom).offset(28)
            make.top.equalTo(blockBtn.snp.bottom).offset(28)
            //: make.leading.equalTo(43)
            make.leading.equalTo(43)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: return view
        return view
        //: }()
    }()

    //: private lazy var gameImgV: UIImageView = {
    private lazy var gameImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.submitGift(name: "iv_home_game")
        img.image = UIImage.submitGift(name: (String(k_tapName.prefix(4)) + "ome_gam" + String(kAppPath)))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var callBtn: UIButton = {
    private lazy var callBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(callBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(userClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var svgaPlayer: SVGAPlayer = {
    lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 1
        player.loops = 1
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: player.isHidden = true
        player.isHidden = true
        //: player.delegate = self
        player.delegate = self

        //: return player
        return player
        //: }()
    }()
}

// tages
//: extension SocialPopularListCell {
extension PopularThen {
    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //: super.touchesBegan(touches, with: event)
        super.touchesBegan(touches, with: event)

        //: let zoom = CAKeyframeAnimation.init(keyPath: "transform.scale")
        let zoom = CAKeyframeAnimation(keyPath: (kGiftStr.lowercased() + "orm.sca" + kAboutContent.replacingOccurrences(of: "make", with: "l")))
        //: zoom.keyTimes = [(1.0)]
        zoom.keyTimes = [1.0]
        //: let groupAnnimation = CAAnimationGroup.init()
        let groupAnnimation = CAAnimationGroup()
        //: groupAnnimation.autoreverses = false
        groupAnnimation.autoreverses = false
        //: groupAnnimation.animations = [ zoom]
        groupAnnimation.animations = [zoom]
        //: groupAnnimation.duration = 0.1
        groupAnnimation.duration = 0.1
        //: groupAnnimation.repeatCount = 1
        groupAnnimation.repeatCount = 1
        //: groupAnnimation.isRemovedOnCompletion = false
        groupAnnimation.isRemovedOnCompletion = false
        //: groupAnnimation.fillMode = .forwards
        groupAnnimation.fillMode = .forwards
        //: zoom.values = [1.05]
        zoom.values = [1.05]
        //: self.layer.add(groupAnnimation, forKey: "zoom&shake")
        self.layer.add(groupAnnimation, forKey: (String(k_willNameValue.prefix(6)) + "hake"))
    }

    //: override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        //: super.touchesCancelled(touches, with: event)
        super.touchesCancelled(touches, with: event)
        //: endAnimation()
        anCan()
    }

    //: override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //: super.touchesEnded(touches, with: event)
        super.touchesEnded(touches, with: event)
        //: endAnimation()
        anCan()
    }

    //: func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
    func addWith(_: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith _: UIGestureRecognizer) -> Bool {
        //: return true
        return true
    }

    //: private func endAnimation() {
    private func anCan() {
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.2) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.2) {
            //: let zoom = CAKeyframeAnimation.init(keyPath: "transform.scale")
            let zoom = CAKeyframeAnimation(keyPath: (kGiftStr.lowercased() + "orm.sca" + kAboutContent.replacingOccurrences(of: "make", with: "l")))
            //: zoom.keyTimes = [(1.0)]
            zoom.keyTimes = [1.0]
            //: let groupAnnimation = CAAnimationGroup.init()
            let groupAnnimation = CAAnimationGroup()
            //: groupAnnimation.autoreverses = false
            groupAnnimation.autoreverses = false
            //: groupAnnimation.animations = [ zoom]
            groupAnnimation.animations = [zoom]
            //: groupAnnimation.duration = 0.1
            groupAnnimation.duration = 0.1
            //: groupAnnimation.repeatCount = 1
            groupAnnimation.repeatCount = 1
            //: groupAnnimation.isRemovedOnCompletion = false
            groupAnnimation.isRemovedOnCompletion = false
            //: groupAnnimation.fillMode = .forwards
            groupAnnimation.fillMode = .forwards
            //: zoom.values = [(1.0)]
            zoom.values = [1.0]
            //: self.layer.add(groupAnnimation, forKey: "zoom&shake")
            self.layer.add(groupAnnimation, forKey: (String(k_willNameValue.prefix(6)) + "hake"))
        }
    }

    /// 长按手势相应事件
    //: @objc private func handleLongPress(_ gesture: UILongPressGestureRecognizer) {
    @objc private func clickManage(_ gesture: UILongPressGestureRecognizer) {
        //: switch gesture.state {
        switch gesture.state {
        //: case .began:
        case .began:
            //: blockBackView.isHidden = false
            blockBackView.isHidden = false
            //: if currentModel != nil {
            if currentModel != nil {
                //: self.delegate?.seleteShowBlock(model: currentModel!)
                self.delegate?.appearStatus(model: currentModel!)
            }
        //: break
        //: case.ended:
        case .ended:
            //: endAnimation()
            anCan()
        //: break
        //: default:
        default:
            //: break
            break
        }
    }

    //: @objc private func blockBtnClick() {
    @objc private func photoClick() {
        //: TalkingAlertShow.alert(title: nil, message: kMessage_blocking, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized) {
        FrameHiddenReactiveCompatible.theory(title: nil, message: user_barQuantityervalTitle, leftBtnTitle: (String(kColorData)).localized, rightBtnTitle: "OK".localized) {
            //: TalkingAlertShow.hideAlert()
            FrameHiddenReactiveCompatible.middleText()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            FrameHiddenReactiveCompatible.middleText()
            //: if self.currentModel != nil {
            if self.currentModel != nil {
                //: self.delegate?.seleteBlockTool(model: self.currentModel!)
                self.delegate?.bigModel(model: self.currentModel!)
            }
        }
    }

    //: @objc private func cancelBtnClick() {
    @objc private func publicationClick() {
        //: blockBackView.isHidden = true
        blockBackView.isHidden = true
        //: endAnimation()
        anCan()
        //: self.delegate?.seleteHideBlock()
        self.delegate?.decipherUp()
    }

    //: @objc private func callBtnClick() {
    @objc private func userClick() {
        //: if let mdoel = self.currentModel {
        if let mdoel = self.currentModel {
            //: if mdoel.sendQuickMsg == 0 {
            if mdoel.sendQuickMsg == 0 {
                //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Home_Chat_hi)
                let url = VideoEffectTool.default.conType(type: .Home_Chat_hi)
                //: do {
                do {
                    //: let data = try Data(contentsOf: url)
                    let data = try Data(contentsOf: url)
                    //: let parser = SVGAParser.init()
                    let parser = SVGAParser()
                    //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                    parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                        //: guard let self = self else {return}
                        guard let self = self else { return }
                        //: self.callBtn.isHidden = true
                        self.callBtn.isHidden = true
                        //: self.svgaPlayer.isHidden = false
                        self.svgaPlayer.isHidden = false
                        //: self.svgaPlayer.videoItem = videoItem
                        self.svgaPlayer.videoItem = videoItem
                        //: self.svgaPlayer.startAnimation()
                        self.svgaPlayer.startAnimation()
                    }
                    //: } catch {
                } catch {
                    //: printLog(message: "get json error")
                    printLog(message: (String(k_whiteAddMessage.prefix(5)) + String(k_nameUrl)))
                }

                //: } else {
            } else {
                //: self.delegate?.chtToUser(model: mdoel)
                self.delegate?.analogDigitalConverterHandleContentTheory(model: mdoel)
            }
        }
    }
}

//: extension SocialPopularListCell: SVGAPlayerDelegate {
extension PopularThen: SVGAPlayerDelegate {
    //: func svgaPlayerDidFinishedAnimation(_ player: SVGAPlayer!) {
    func svgaPlayerDidFinishedAnimation(_: SVGAPlayer!) {
        //: if let mdoel = self.currentModel {
        if let mdoel = self.currentModel {
            //: self.callBtn.isHidden = false
            self.callBtn.isHidden = false
            //: self.callBtn.setImage(UIImage.submitGift(name: "icon_popularhome_chat"), for: .normal)
            self.callBtn.setImage(UIImage.submitGift(name: (String(kTargetFormat.suffix(5)) + "popu" + k_errorStr.replacingOccurrences(of: "angle", with: "a") + "me_c" + String(kTextPath))), for: .normal)
            //: self.delegate?.greetToUser(uid: "\(mdoel.uid)")
            self.delegate?.tableDownUid(uid: "\(mdoel.uid)")
        }
    }
}

// MARK: - Event

//: extension SocialPopularListCell {
extension PopularThen {
    // MARK: - Refresh

    //: func refreshCell(_ model: SocialUserListModel?) {
    func notComment(_ model: EqualModelType?) {
        //: guard let model = model else { return }
        guard let model = model else { return }
        //: currentModel = model
        currentModel = model
        //: headPicImgV.setUrlImage(urlStr: model.headPic, placeImg: UIImage.placeImgSquare())
        headPicImgV.setUrlImage(urlStr: model.headPic, placeImg: UIImage.rectangle())
        //: nameLab.text = model.nickname
        nameLab.text = model.nickname
        //: loungeImgV.isHidden = !model.loungePlus
        loungeImgV.isHidden = !model.loungePlus
        //: attestationImgV.isHidden = !model.isTPAuth
        attestationImgV.isHidden = !model.isTPAuth
        //: var right_offset = loungeImgV.isHidden == true ? -46 : -71
        var right_offset = loungeImgV.isHidden == true ? -46 : -71
        //: right_offset = attestationImgV.isHidden == true ? right_offset:right_offset-24
        right_offset = attestationImgV.isHidden == true ? right_offset : right_offset - 24
        //: nameLab.snp.updateConstraints { make in
        nameLab.snp.updateConstraints { make in
            //: make.trailing.lessThanOrEqualToSuperview().offset(right_offset)
            make.trailing.lessThanOrEqualToSuperview().offset(right_offset)
        }
        //: if loungeImgV.isHidden {
        if loungeImgV.isHidden {
            //: attestationImgV.snp.remakeConstraints { make in
            attestationImgV.snp.remakeConstraints { make in
                //: make.centerY.equalTo(nameLab)
                make.centerY.equalTo(nameLab)
                //: make.leading.equalTo(nameLab.snp.trailing).offset(4)
                make.leading.equalTo(nameLab.snp.trailing).offset(4)
                //: make.size.equalTo(CGSize(width: 16, height: 16))
                make.size.equalTo(CGSize(width: 16, height: 16))
            }
            //: } else {
        } else {
            //: attestationImgV.snp.remakeConstraints { make in
            attestationImgV.snp.remakeConstraints { make in
                //: make.centerY.equalTo(nameLab)
                make.centerY.equalTo(nameLab)
                //: make.leading.equalTo(loungeImgV.snp.trailing).offset(4)
                make.leading.equalTo(loungeImgV.snp.trailing).offset(4)
                //: make.size.equalTo(CGSize(width: 16, height: 16))
                make.size.equalTo(CGSize(width: 16, height: 16))
            }
        }
        //: gameImgV.isHidden = !(model.game && DistanceAppManager.share.loginUserMode.sex == Gender.male.rawValue && DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue)
        gameImgV.isHidden = !(model.game && DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.male.rawValue && DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue)
        //: if model.liveStatus {
        if model.liveStatus {
            //: statusImgV.isHidden = false
            statusImgV.isHidden = false
            //: let image = UIImage.imageFillColor(color: UIColor.init(hex: "#2DF2FF")!, size: CGSize.init(width: 8, height: 8))
            let image = UIImage.activeOf(color: UIColor(hex: (String(kResponseTitle) + k_suiteVideoName.replacingOccurrences(of: "block", with: "F")))!, size: CGSize(width: 8, height: 8))
            //: statusImgV.setImage(image.circle(), for: .normal)
            statusImgV.setImage(image.circle(), for: .normal)
            //: statusImgV.setTitle("Live".localized, for: .normal)
            statusImgV.setTitle((String(kErrorViewText.suffix(4))).localized, for: .normal)
            //: } else {
        } else {
            //: statusImgV.isHidden = (model.status == 1 || model.status == 2) ? false : true
            statusImgV.isHidden = (model.status == 1 || model.status == 2) ? false : true
            //: if model.status == 1 {
            if model.status == 1 { // 在线
                //: let image = UIImage.imageFillColor(color: UIColor.init(hex: "#48FF1E")!, size: CGSize.init(width: 8, height: 8))
                let image = UIImage.activeOf(color: UIColor(hex: (String(k_sizeArrayContent)))!, size: CGSize(width: 8, height: 8))
                //: statusImgV.setImage(image.circle(), for: .normal)
                statusImgV.setImage(image.circle(), for: .normal)
                //: statusImgV.setTitle("Online".localized, for: .normal)
                statusImgV.setTitle((String(k_containerTitle.prefix(6))).localized, for: .normal)
                //: } else if model.status == 2 {
            } else if model.status == 2 { // busy
                //: let image = UIImage.imageFillColor(color: UIColor.init(hex: "#FF4B7F")!, size: CGSize.init(width: 8, height: 8))
                let image = UIImage.activeOf(color: UIColor(hex: (String(kKeyDeviceUrl.suffix(6)) + String(kTextMsg)))!, size: CGSize(width: 8, height: 8))
                //: statusImgV.setImage(image.circle(), for: .normal)
                statusImgV.setImage(image.circle(), for: .normal)
                //: statusImgV.setTitle("busy".localized, for: .normal)
                statusImgV.setTitle((String(k_stylePostData)).localized, for: .normal)
            }
        }
        //: let text: NSString = statusImgV.titleLabel?.text as? NSString ?? ""
        let text: NSString = statusImgV.titleLabel?.text as? NSString ?? ""
        //: let rect = text.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.pingfangMediumFont(fontSize: 12)], context: nil)
        let rect = text.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.tapShared(fontSize: 12)], context: nil)
        //: statusImgV.snp.remakeConstraints { make in
        statusImgV.snp.remakeConstraints { make in
            //: make.leading.top.equalTo(6)
            make.leading.top.equalTo(6)
            //: make.width.equalTo(rect.width + 20)
            make.width.equalTo(rect.width + 20)
        }
        //: locationBtn.isHidden = model.location.count <= 0
        locationBtn.isHidden = model.location.count <= 0
        //: locationBtn.setTitle(" \(model.location) ", for: .normal)
        locationBtn.setTitle(" \(model.location) ", for: .normal)
        //: callBtn.isHidden = false
        callBtn.isHidden = false
        //: if model.sendQuickMsg == 0 {
        if model.sendQuickMsg == 0 {
            //: callBtn.setImage(UIImage.submitGift(name: "icon_popularhome_hi"), for: .normal)
            callBtn.setImage(UIImage.submitGift(name: (kContainerUrl.replacingOccurrences(of: "name", with: "ic") + "_popu" + k_sizeData.replacingOccurrences(of: "clear", with: "m") + "e_hi")), for: .normal)
            //: } else {
        } else {
            //: callBtn.setImage(UIImage.submitGift(name: "icon_popularhome_chat"), for: .normal)
            callBtn.setImage(UIImage.submitGift(name: (String(kTargetFormat.suffix(5)) + "popu" + k_errorStr.replacingOccurrences(of: "angle", with: "a") + "me_c" + String(kTextPath))), for: .normal)
        }
    }
}

//: extension SocialPopularListCell {
extension PopularThen {
    //: @objc private func enterBackgroundNotification() {
    @objc private func inheritanceDisk() {
        //: if self.player.isPlaying {
        if self.player.isPlaying {
            //: self.player.pause()
            self.player.imageThe()
        }
    }

    //: @objc private func enterForegroundNotification() {
    @objc private func nameAcross() {
        //: if self.currentViewController()!.isKind(of: TalkingMomentViewController.self) {
        if self.selectStart()!.isKind(of: EndNavigationDelegate.self) {
            //: self.player.resume()
            self.player.nearFileInfo()
        }
    }

    //: func configModel(videoUrl: String, imgUrl: String ) {
    func drawOn(videoUrl: String, imgUrl _: String) {
        //: self.videoUrl = videoUrl
        self.videoUrl = videoUrl
//        self.headPicImgV.setUrlImage(urlStr: imgUrl)
    }

    //: func setupPlayer() {
    func light() {
        //: self.contentView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.8)
        self.contentView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.8)
        //: UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear, animations: {
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear, animations: {
            //: self.headPicImgV.alpha = 0.2
            self.headPicImgV.alpha = 0.2
            //: }) { _ in
        }) { _ in
            //: self.headPicImgV.alpha = 1.0
            self.headPicImgV.alpha = 1.0
            //: self.contentView.backgroundColor = .white
            self.contentView.backgroundColor = .white
            //: self.player.playerWithUrlAndVideoView(url: self.videoUrl, view: self.headPicImgV)
            self.player.dataView(url: self.videoUrl, view: self.headPicImgV)
            //: self.player.setMute(bEnable: true)
            self.player.setFor(bEnable: true)
            //: self.isPlaying = true
            self.isPlaying = true
            //: self.player.delegate = self
            self.player.delegate = self
            //: if self.player.width() > self.player.height() {
            if self.player.bringNo() > self.player.toColor() {
                //: self.player.setRenderMode(renderMode: .FILL_EDGE)
                self.player.sharedMode(renderMode: .FILL_EDGE)
                //: } else {
            } else {
                //: self.player.setRenderMode(renderMode: .FILL_SCREEN)
                self.player.sharedMode(renderMode: .FILL_SCREEN)
            }
        }
    }

    //: func stopPlay() {
    func removePage() {
        //: self.player.stopPlay()
        self.player.halt()
        //: self.isPlaying = false
        self.isPlaying = false
        //: self.playimageView.isHidden = true
        self.playimageView.isHidden = true
        //: self.player.setMute(bEnable: true)
        self.player.setFor(bEnable: true)
    }

    //: func pausePlay() {
    func withPlay() {
        //: if self.player.isPlaying {
        if self.player.isPlaying {
            //: self.player.pause()
            self.player.imageThe()
        }
    }

    //: func resume() {
    func margin() {
        // 进入详情会改变播放模式会有声音
        //: self.player.setMute(bEnable: true)
        self.player.setFor(bEnable: true)
        //: self.player.resume()
        self.player.nearFileInfo()
    }
}

//: extension SocialPopularListCell: TalkingVideoPlayerDelegate {
extension PopularThen: PlayerMakeThen {
    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func menu(player _: DecisionMakerThen, status: ObjectPlayerStatus) {
        //: if (status == .Playing) {
        if status == .Playing {
            //: if self.player.isMute == false {
            if self.player.isMute == false {
                //: self.player.setMute(bEnable: true)
                self.player.setFor(bEnable: true)
            }
            //: self.playimageView.isHidden = true
            self.playimageView.isHidden = true
            //: if self.player.width() > self.player.height() {
            if self.player.bringNo() > self.player.toColor() {
                //: self.player.setRenderMode(renderMode: .FILL_EDGE)
                self.player.sharedMode(renderMode: .FILL_EDGE)
                //: } else {
            } else {
                //: self.player.setRenderMode(renderMode: .FILL_SCREEN)
                self.player.sharedMode(renderMode: .FILL_SCREEN)
            }

            //: } else if (status == .Pausing) {
        } else if status == .Pausing {
            //: self.playimageView.isHidden = false
            self.playimageView.isHidden = false
            //: } else if (status == .Finished) {
        } else if status == .Finished {
//            headPicImgV.setUrlImage(urlStr: self.currentModel!.headPic, placeImg: UIImage.placeImgSquare())
            //: self.delegate?.cellPlayerEnd()
            self.delegate?.soccerPlayerPath()
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {
    func decisionMaker(player _: DecisionMakerThen, duration _: Int, currentTime: Int) {
        //: if currentTime > 5 {
        if currentTime > 5 {
            //: self.playimageView.isHidden = true
            self.playimageView.isHidden = true
            //: self.stopPlay()
            self.removePage()
//            headPicImgV.setUrlImage(urlStr: self.currentModel!.headPic, placeImg: UIImage.placeImgSquare())
            //: self.delegate?.cellPlayerEnd()
            self.delegate?.soccerPlayerPath()
        }
    }

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {
    func playerAction(player _: DecisionMakerThen, progress _: CGFloat) {}
}

// MARK: - Layout

//: extension SocialPopularListCell {
extension PopularThen {
    // 添加视图
    //: private func setupSubviews() {
    private func skull() {
        //: self.contentView .addSubview(headPicImgV)
        self.contentView.addSubview(headPicImgV)
        //: self.contentView.addSubview(statusImgV)
        self.contentView.addSubview(statusImgV)
        //: self.contentView.addSubview(shadowImg)
        self.contentView.addSubview(shadowImg)
        //: self.contentView.addSubview(nameLab)
        self.contentView.addSubview(nameLab)
        //: self.contentView.addSubview(loungeImgV)
        self.contentView.addSubview(loungeImgV)
        //: self.contentView.addSubview(attestationImgV)
        self.contentView.addSubview(attestationImgV)
        //: self.contentView.addSubview(gameImgV)
        self.contentView.addSubview(gameImgV)
        //: self.contentView.addSubview(callBtn)
        self.contentView.addSubview(callBtn)
        //: self.contentView.addSubview(locationBtn)
        self.contentView.addSubview(locationBtn)
        //: headPicImgV.addSubview(playimageView)
        headPicImgV.addSubview(playimageView)
        //: self.contentView.addSubview(blockBackView)
        self.contentView.addSubview(blockBackView)
        //: self.contentView.addSubview(svgaPlayer)
        self.contentView.addSubview(svgaPlayer)

        //: NotificationCenter.default.addObserver(self, selector: #selector(enterBackgroundNotification), name: UIApplication.willResignActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(inheritanceDisk), name: UIApplication.willResignActiveNotification, object: nil)

        //: NotificationCenter.default.addObserver(self, selector: #selector(enterForegroundNotification), name: UIApplication.didBecomeActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(nameAcross), name: UIApplication.didBecomeActiveNotification, object: nil)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func slightContent() {
        //: headPicImgV.snp.makeConstraints { make in
        headPicImgV.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: statusImgV.snp.makeConstraints { make in
        statusImgV.snp.makeConstraints { make in
            //: make.leading.top.equalTo(6)
            make.leading.top.equalTo(6)
        }
        //: shadowImg.snp.makeConstraints { make in
        shadowImg.snp.makeConstraints { make in
            //: make.leading.trailing.equalTo(0)
            make.leading.trailing.equalTo(0)
            //: make.bottom.equalTo(headPicImgV.snp.bottom).offset(0)
            make.bottom.equalTo(headPicImgV.snp.bottom).offset(0)
            //: make.height.equalTo(46)
            make.height.equalTo(46)
        }
        //: locationBtn.snp.makeConstraints { make in
        locationBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.trailing.equalTo(callBtn.snp.leading).offset(-4)
            make.trailing.equalTo(callBtn.snp.leading).offset(-4)
            //: make.bottom.equalToSuperview().offset(-8)
            make.bottom.equalToSuperview().offset(-8)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }
        //: nameLab.snp.makeConstraints { make in
        nameLab.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.bottom.equalTo(locationBtn.snp.top).offset(-6)
            make.bottom.equalTo(locationBtn.snp.top).offset(-6)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.trailing.lessThanOrEqualToSuperview().offset(-70)
            make.trailing.lessThanOrEqualToSuperview().offset(-70)
        }
        //: loungeImgV.snp.makeConstraints { make in
        loungeImgV.snp.makeConstraints { make in
            //: make.centerY.equalTo(nameLab)
            make.centerY.equalTo(nameLab)
            //: make.leading.equalTo(nameLab.snp.trailing).offset(3)
            make.leading.equalTo(nameLab.snp.trailing).offset(3)
            //: make.size.equalTo(CGSize(width: 16, height: 16))
            make.size.equalTo(CGSize(width: 16, height: 16))
        }
        //: attestationImgV.snp.makeConstraints { make in
        attestationImgV.snp.makeConstraints { make in
            //: make.centerY.equalTo(nameLab)
            make.centerY.equalTo(nameLab)
            //: make.leading.equalTo(loungeImgV.snp.trailing).offset(3)
            make.leading.equalTo(loungeImgV.snp.trailing).offset(3)
            //: make.size.equalTo(CGSize(width: 16, height: 16))
            make.size.equalTo(CGSize(width: 16, height: 16))
        }
        //: callBtn.snp.makeConstraints { make in
        callBtn.snp.makeConstraints { make in
            //: make.trailing.bottom.equalTo(-6)
            make.trailing.bottom.equalTo(-6)
            //: make.size.equalTo(38)
            make.size.equalTo(38)
        }
        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.edges.equalTo(callBtn)
            make.edges.equalTo(callBtn)
        }
        //: gameImgV.snp.makeConstraints { make in
        gameImgV.snp.makeConstraints { make in
            //: make.top.equalTo(5)
            make.top.equalTo(5)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.size.equalTo(CGSize(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }

        //: playimageView.snp.remakeConstraints { make in
        playimageView.snp.remakeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 39, height: 39))
            make.size.equalTo(CGSize(width: 39, height: 39))
        }
        //: blockBackView.snp.remakeConstraints { make in
        blockBackView.snp.remakeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
