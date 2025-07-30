
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_progressMessage:[UInt8] = [0xa0,0xa7,0xa0,0xbd,0xe1,0xaa,0xa6,0xad,0xac,0xbb,0xf3,0xe0,0xe9,0xa1,0xa8,0xba,0xe9,0xa7,0xa6,0xbd,0xe9,0xab,0xac,0xac,0xa7,0xe9,0xa0,0xa4,0xb9,0xa5,0xac,0xa4,0xac,0xa7,0xbd,0xac,0xad]

private func administrativeDivision(index num: UInt8) -> UInt8 {
    return num ^ 201
}

/*: "female_bg_random" :*/
fileprivate let k_topUrl:String = "feappearl"
fileprivate let kNumberMessage:String = "RANDOM"

/*: "Random" :*/
fileprivate let kDataUrl:String = "label for name typeRandom"

/*: "get json error" :*/
fileprivate let kBirthLibraryStr:[Character] = ["g","e","t"," ","j","s","o"]
fileprivate let k_viewMessage:[Character] = ["n"," "]
fileprivate let kTrackSizeValue:String = "esquaresquareosquare"

/*: "btn_female_randomvideo_nor" :*/
fileprivate let kIndexTitle:String = "as message send make viewbtn_"
fileprivate let k_requestStopPath:String = "string equal to_rando"
fileprivate let k_labelShareId:[Character] = ["m","v","i","d","e","o","_","n","o","r"]

/*: "All" :*/
fileprivate let kCommonId:[Character] = ["A","l","l"]

/*: "Intimate" :*/
fileprivate let kThanKey:[Character] = ["I","n","t","i","m","a","t","e"]

/*: "randomVideo" :*/
fileprivate let k_sectionText:String = "bubble"
fileprivate let kMakeName:String = "ofndom"

/*: "#777777" :*/
fileprivate let kRefreshText:[Character] = ["#","7","7","7","7"]
fileprivate let kChangeValue:String = "77"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GibbetReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/2.
//

//: import UIKit
import UIKit

//: @objc enum ChatListTopItemType: Int {
@objc enum CaptureStrideable: Int {
    //: case All = 0
    case All = 0
    //: case intimate
    case intimate
}

//: @objc protocol TalkingChatListTopItemViewDelegate: NSObjectProtocol {
@objc protocol FirstViewDelegate: NSObjectProtocol {
    ///
    //: @objc func changeTopItem(type: ChatListTopItemType)
    @objc func viewEqualType(type: CaptureStrideable)
}

//: class TalkingChatListTopItemView: UIView {
class GibbetReactiveCompatible: UIView {
    //: var selectButton = UIButton()
    var selectButton = UIButton()
    //: var resetButton = UIButton()
    var resetButton = UIButton()
    //: weak var delegate: TalkingChatListTopItemViewDelegate?
    weak var delegate: FirstViewDelegate?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_progressMessage.map{administrativeDivision(index: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        appAt()
        //: bindInteraction()
        sizeAdd()
        //: addNotification()
        fortifyContact()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var sliderView: UIView = {
    private lazy var sliderView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.frame = CGRect(x: 0, y: 37, width: 12, height: 4)
        view.frame = CGRect(x: 0, y: 37, width: 12, height: 4)
        //: view.backgroundColor = .black
        view.backgroundColor = .black
        //: view.layer.cornerRadius = 2
        view.layer.cornerRadius = 2
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var femaleRandomBtn: UIImageView = {
    private lazy var femaleRandomBtn: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: addSubview(img)
        addSubview(img)
        //: let image = UIImage.submitGift(name: "female_bg_random")
        let image = UIImage.submitGift(name: (k_topUrl.replacingOccurrences(of: "appear", with: "ma") + "e_bg_" + kNumberMessage.lowercased()))
        //: let edgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 64)
        let edgeInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 64)
        //: let resizableImage = image.resizableImage(withCapInsets: edgeInsets, resizingMode: .stretch)
        let resizableImage = image.resizableImage(withCapInsets: edgeInsets, resizingMode: .stretch)
        //: img.image = image
        img.image = image
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(femaleRandomButtonClick))
        let tap = UITapGestureRecognizer(target: self, action: #selector(nowClick))
        //: img.addGestureRecognizer(tap)
        img.addGestureRecognizer(tap)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var randomLab: UILabel = {
    private lazy var randomLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Random".localized
        lab.text = (String(kDataUrl.suffix(6))).localized
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 14)
        lab.font = UIFont.tapShared(fontSize: 14)
        //: femaleRandomBtn.addSubview(lab)
        femaleRandomBtn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Female_Randomvideo_Enter)
        let url = VideoEffectTool.default.conType(type: .Female_Randomvideo_Enter)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: if DistanceAppManager.share.appUserConfigMode.randomVideo == "1" {
                if DistanceAppManager.share.appUserConfigMode.randomVideo == "1" {
                    //: player.startAnimation()
                    player.startAnimation()
                }
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(kBirthLibraryStr) + String(k_viewMessage) + kTrackSizeValue.replacingOccurrences(of: "square", with: "r")))
        }
        //: femaleRandomBtn.addSubview(player)
        femaleRandomBtn.addSubview(player)
        //: player.snp.makeConstraints { make in
        player.snp.makeConstraints { make in
            //: make.trailing.equalTo(randomLab.snp.leading).offset(-5)
            make.trailing.equalTo(randomLab.snp.leading).offset(-5)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.width.equalTo(55)
            make.width.equalTo(55)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
        }
        //: return player
        return player
        //: }()
    }()

    //: private lazy var stopRandomImgV: UIImageView = {
    private lazy var stopRandomImgV: UIImageView = {
        //: let img = UIImageView(image: UIImage.submitGift(name: "btn_female_randomvideo_nor"))
        let img = UIImageView(image: UIImage.submitGift(name: (String(kIndexTitle.suffix(4)) + "female" + String(k_requestStopPath.suffix(6)) + String(k_labelShareId))))
        //: femaleRandomBtn.addSubview(img)
        femaleRandomBtn.addSubview(img)
        //: img.snp.makeConstraints { make in
        img.snp.makeConstraints { make in
            //: make.trailing.equalTo(randomLab.snp.leading).offset(-6)
            make.trailing.equalTo(randomLab.snp.leading).offset(-6)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.width.height.equalTo(20)
            make.width.height.equalTo(20)
        }
        //: return img
        return img
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatListTopItemView {
extension GibbetReactiveCompatible {
    /// 进入随机视频页按钮事件
    //: @objc private func femaleRandomButtonClick() {
    @objc private func nowClick() {
        //: let vc = TalkingFemaleStaticRandomVideoVC()
        let vc = AtObjectRecognizerDelegate()
        //: getNavigationController()?.pushViewController(vc, animated: true)
        put()?.pushViewController(vc, animated: true)
    }

    //: func resetToSeleteAll() {
    func afterAll() {
        //: buttonItemChange(sender: resetButton)
        bitmap(sender: resetButton)
    }

    //: @objc private func buttonItemChange(sender: UIButton) {
    @objc private func bitmap(sender: UIButton) {
        //: if sender.isSelected {
        if sender.isSelected {
            //: return
            return
        }
        //: selectButton.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        selectButton.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        //: selectButton.isSelected = false
        selectButton.isSelected = false
        //: sender.isSelected = true
        sender.isSelected = true
        //: sender.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 15)
        sender.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 15)
        //: selectButton = sender
        selectButton = sender
        //: updateSliderViewFrame(btn: sender)
        startBtn(btn: sender)
        //: delegate?.changeTopItem(type: ChatListTopItemType(rawValue: sender.tag)!)
        delegate?.viewEqualType(type: CaptureStrideable(rawValue: sender.tag)!)
    }
}

// MARK: - Layout

//: extension TalkingChatListTopItemView {
extension GibbetReactiveCompatible {
    /// 创建视图
    //: private func setupSubviews() {
    private func appAt() {
        //: backgroundColor = .clear
        backgroundColor = .clear
        //: let items = ["All".localized, "Intimate".localized]
        let items = [(String(kCommonId)).localized, (String(kThanKey)).localized]
        //: var tag = ChatListTopItemType.All.rawValue
        var tag = CaptureStrideable.All.rawValue
        //: let buttonW = 70.0
        let buttonW = 70.0
        //: var buttonX: CGFloat = LanguageManager.shared.direction == .leftToRight ? -5:20
        var buttonX: CGFloat = MakeLanguageManager.shared.direction == .leftToRight ? -5 : 20
        //: for (i, item) in items.enumerated() {
        for (i, item) in items.enumerated() {
            //: let itemButton = creatButton(item: item, type: tag)
            let itemButton = giftTarget(item: item, type: tag)
            //: addSubview(itemButton)
            addSubview(itemButton)
            //: let x = LanguageManager.shared.direction == .leftToRight ? buttonX:(UserTextMacroDefine.getScreenWidth()-buttonX-buttonW)
            let x = MakeLanguageManager.shared.direction == .leftToRight ? buttonX : (UserTextMacroDefine.requestFor() - buttonX - buttonW)
            //: itemButton.frame = CGRect(x: x, y: 10, width: buttonW, height: 24)
            itemButton.frame = CGRect(x: x, y: 10, width: buttonW, height: 24)
            //: buttonX = buttonW + buttonX
            buttonX = buttonW + buttonX
            //: tag += 1
            tag += 1
            //: if i == 0 {
            if i == 0 {
                //: resetButton = itemButton
                resetButton = itemButton
                //: buttonItemChange(sender: itemButton)
                bitmap(sender: itemButton)
            }
        }
        //: addSubview(sliderView)
        addSubview(sliderView)
        //: updateSliderViewFrame(btn: resetButton)
        startBtn(btn: resetButton)

        // 随机视频入口
        //: if DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue {
        if DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue {
            //: femaleRandomBtn.isHidden = false
            femaleRandomBtn.isHidden = false
            //: } else {
        } else {
            //: femaleRandomBtn.isHidden = true
            femaleRandomBtn.isHidden = true
        }
    }

    /// 添加事件
    //: @objc private func bindInteraction() {
    @objc private func sizeAdd() {
        //: guard DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue else { return }
        //: DistanceAppManager.share.appUserConfigMode.rx
        DistanceAppManager.share.appUserConfigMode.rx
            //: .observeWeakly(String.self, "randomVideo")
            .observeWeakly(String.self, (k_sectionText.replacingOccurrences(of: "bubble", with: "r") + kMakeName.replacingOccurrences(of: "of", with: "a") + "Video"))
            //: .subscribe(onNext: { [weak self] value in
            .subscribe(onNext: { [weak self] value in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: if value == "1" { // 开启随机视频
                if value == "1" { // 开启随机视频
                    //: svgaPlayer.isHidden = false
                    svgaPlayer.isHidden = false
                    //: svgaPlayer.startAnimation()
                    svgaPlayer.startAnimation()
                    //: stopRandomImgV.isHidden = true
                    stopRandomImgV.isHidden = true
                    //: femaleRandomBtn.snp.remakeConstraints { make in
                    femaleRandomBtn.snp.remakeConstraints { make in
                        //: make.leading.equalTo(self.svgaPlayer.snp.leading).offset(-5)
                        make.leading.equalTo(self.svgaPlayer.snp.leading).offset(-5)
                        //: make.trailing.centerY.equalToSuperview()
                        make.trailing.centerY.equalToSuperview()
                        //: make.height.equalTo(32)
                        make.height.equalTo(32)
                    }
                    //: } else {
                } else {
                    //: svgaPlayer.isHidden = true
                    svgaPlayer.isHidden = true
                    //: svgaPlayer.stopAnimation()
                    svgaPlayer.stopAnimation()
                    //: stopRandomImgV.isHidden = false
                    stopRandomImgV.isHidden = false
                    //: femaleRandomBtn.snp.remakeConstraints { make in
                    femaleRandomBtn.snp.remakeConstraints { make in
                        //: make.leading.equalTo(self.stopRandomImgV.snp.leading).offset(-10)
                        make.leading.equalTo(self.stopRandomImgV.snp.leading).offset(-10)
                        //: make.trailing.centerY.equalToSuperview()
                        make.trailing.centerY.equalToSuperview()
                        //: make.height.equalTo(32)
                        make.height.equalTo(32)
                    }
                }
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }

    /// 添加通知
    //: private func addNotification() {
    private func fortifyContact() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(bindInteraction),
                                               selector: #selector(sizeAdd),
                                               //: name: UPDATE_INDEX_GETCONFIG_NOTIFICATION,
                                               name: dataShowContent,
                                               //: object: nil)
                                               object: nil)
    }

    //: private func creatButton(item: String, type: Int) -> UIButton {
    private func giftTarget(item: String, type: Int) -> UIButton {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle(item, for: .normal)
        btn.setTitle(item, for: .normal)
        //: btn.setTitleColor(UIColor(hex: "#777777"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(kRefreshText) + kChangeValue.capitalized)), for: .normal)
        //: btn.setTitleColor(UIColor.colorStatuteNameApp(), for: .selected)
        btn.setTitleColor(UIColor.colorStatuteNameApp(), for: .selected)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        //: btn.tag = type
        btn.tag = type
        //: btn.addTarget(self, action: #selector(buttonItemChange(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(bitmap(sender:)), for: .touchUpInside)
        //: return btn
        return btn
    }

    //: private func updateSliderViewFrame(btn: UIButton) {
    private func startBtn(btn: UIButton) {
        //: if sliderView.superview != nil {
        if sliderView.superview != nil {
            //: let transFormX = btn.frame.origin.x + (btn.frame.width-sliderView.frame.width) / 2
            let transFormX = btn.frame.origin.x + (btn.frame.width - sliderView.frame.width) / 2
            //: UIView.animate(withDuration: 0.25) {
            UIView.animate(withDuration: 0.25) {
                //: self.sliderView.transform = CGAffineTransformMakeTranslation(CGFloat(transFormX), 0)
                self.sliderView.transform = CGAffineTransformMakeTranslation(CGFloat(transFormX), 0)
            }
        }
    }
}
