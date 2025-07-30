
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kMatchByKey:[UInt8] = [0xb0,0xb7,0xb0,0xad,0xf1,0xba,0xb6,0xbd,0xbc,0xab,0xe3,0xf0,0xf9,0xb1,0xb8,0xaa,0xf9,0xb7,0xb6,0xad,0xf9,0xbb,0xbc,0xbc,0xb7,0xf9,0xb0,0xb4,0xa9,0xb5,0xbc,0xb4,0xbc,0xb7,0xad,0xbc,0xbd]

/*: "icon_cz_nor" :*/
fileprivate let k_skinTitle:String = "iclayern"
fileprivate let k_toUrl:String = "let multiple user var_cz_nor"

/*: "Face" :*/
fileprivate let kOpenRefreshUrl:String = "Facemake main"

/*: "Eyes" :*/
fileprivate let kValidStr:String = "appear to content dataEyes"

/*: "Nose" :*/
fileprivate let k_rowId:String = "make lab type tableNose"

/*: "Lip" :*/
fileprivate let kMakeId:[Character] = ["L","i","p"]

/*: "Filter" :*/
fileprivate let kImageUrl:String = "Filtertop else"

/*: "#C3BDB9" :*/
fileprivate let kSizePath:[Character] = ["#","C","3","B","D","B","9"]

/*: "Restore to default Beautify Settings" :*/
fileprivate let k_titlePath:[UInt8] = [0x2e,0x19,0xf,0x8,0x13,0xe,0x19,0x5c,0x8,0x13,0x5c,0x18,0x19,0x1a,0x1d,0x9,0x10,0x8,0x5c,0x3e,0x19,0x1d,0x9,0x8,0x15,0x1a,0x5,0x5c,0x2f,0x19,0x8,0x8,0x15,0x12,0x1b,0xf]

private func heightGift(info num: UInt8) -> UInt8 {
    return num ^ 124
}

/*: "Cancel" :*/
fileprivate let k_currentContent:[Character] = ["C","a","n","c","e","l"]

/*: "OK" :*/
fileprivate let k_pingText:String = "succeed"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleHighlightItemView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/31.
//

//: import UIKit
import UIKit

//: @objc public enum BeautyItemType: Int {
@objc public enum JoinHashableRepresentation: Int {
    //: case Face = 100
    case Face = 100 /// 脸部
    //: case Eyes = 101
    case Eyes = 101 /// 眼部
    //: case Nose = 102
    case Nose = 102 /// 鼻部
    //: case Lip = 103
    case Lip = 103 /// 嘴部

    //: case Filter = 104
    case Filter = 104 /// 滤镜
}

//: @objc protocol STBeautyTopItemViewDelegate: NSObjectProtocol {
@objc protocol ChapiterObjectProtocol: NSObjectProtocol {
    ///
    //: @objc func changeTopItem(senderTag: Int)
    @objc func pastTag(senderTag: Int)
    //: @objc func ResetBeauty()
    @objc func toBeauty()
}

//: class STBeautyTopItemView: UIView {
class TitleHighlightItemView: UIView {
    //: var selectButton = UIButton.init()
    var selectButton = UIButton()

    //: var delegate: STBeautyTopItemViewDelegate?
    var delegate: ChapiterObjectProtocol?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kMatchByKey.map{$0^217}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        careFor()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: private lazy var sliderView: UIView = {
    private lazy var sliderView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var resetBtn: UIButton = {
    private lazy var resetBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "icon_cz_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (k_skinTitle.replacingOccurrences(of: "layer", with: "o") + String(k_toUrl.suffix(7)))), for: .normal)
        //: btn.addTarget(self, action: #selector(resetBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(appEnablee), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension STBeautyTopItemView {
extension TitleHighlightItemView {
    //: func setupSubviews() {
    func careFor() {
        //: self.addSubview(sliderView)
        self.addSubview(sliderView)
        //: sliderView.bounds = CGRect(x: 0, y: 0, width: 10, height: 2)
        sliderView.bounds = CGRect(x: 0, y: 0, width: 10, height: 2)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: let items = ["Face", "Eyes", "Nose", "Lip", "Filter"]
        let items = [(String(kOpenRefreshUrl.prefix(4))), (String(kValidStr.suffix(4))), (String(k_rowId.suffix(4))), (String(kMakeId)), (String(kImageUrl.prefix(6)))]
        //: var tag = BeautyItemType.Face.rawValue
        var tag = JoinHashableRepresentation.Face.rawValue
        //: let buttonW = 56
        let buttonW = 56
        //: var buttonX = 6
        var buttonX = 6
        //: for (i, item) in items.enumerated() {
        for (i, item) in items.enumerated() {
            //: let itemButton = creatButton(item: item.localized, type: tag)
            let itemButton = showAdd(item: item.localized, type: tag)
            //: self.addSubview(itemButton)
            self.addSubview(itemButton)
            //: itemButton.snp.makeConstraints { make in
            itemButton.snp.makeConstraints { make in
                //: make.leading.equalTo(buttonX)
                make.leading.equalTo(buttonX)
                //: make.top.equalToSuperview()
                make.top.equalToSuperview()
                //: make.width.equalTo(buttonW)
                make.width.equalTo(buttonW)
                //: make.height.equalTo(50)
                make.height.equalTo(50)
            }
            //: itemButton.layoutIfNeeded()
            itemButton.layoutIfNeeded()
            //: buttonX = buttonW + buttonX
            buttonX = buttonW + buttonX
            //: tag += 1
            tag += 1
            //: if i == 0 {
            if i == 0 {
                //: buttonItemChange(sender: itemButton)
                iconWork(sender: itemButton)
                //: let startX = LanguageManager.shared.direction == .rightToLeft ? (Int(ScreenWidth)-6-buttonW/2):6+buttonW/2
                let startX = MakeLanguageManager.shared.direction == .rightToLeft ? (Int(constFormalContent) - 6 - buttonW / 2) : 6 + buttonW / 2
                //: sliderView.center = CGPoint(x: startX, y: 40)
                sliderView.center = CGPoint(x: startX, y: 40)
            }
        }

        //: self.addSubview(resetBtn)
        self.addSubview(resetBtn)
        //: resetBtn.snp.makeConstraints { make in
        resetBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(ScreenWidth-10-30)
            make.leading.equalTo(constFormalContent - 10 - 30)
            //: make.top.equalTo(10)
            make.top.equalTo(10)
            //: make.width.height.equalTo(30)
            make.width.height.equalTo(30)
        }
    }

    //: func creatButton(item: String, type: Int) -> UIButton {
    func showAdd(item: String, type: Int) -> UIButton {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitle(item, for: .normal)
        btn.setTitle(item, for: .normal)
        //: btn.setTitleColor(UIColor.init(hex: "#C3BDB9"), for: .normal)
        btn.setTitleColor(UIColor(hex: (String(kSizePath))), for: .normal)
        //: btn.setTitleColor(UIColor.white, for: .selected)
        btn.setTitleColor(UIColor.white, for: .selected)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.fontChange(type: .Regular, fontSize: 14)
        //: btn.tag = type
        btn.tag = type
        //: btn.addTarget(self, action: #selector(buttonItemChange(sender:)), for: .touchUpInside)
        btn.addTarget(self, action: #selector(iconWork(sender:)), for: .touchUpInside)
        //: return btn
        return btn
    }

    //: @objc func buttonItemChange(sender: UIButton) {
    @objc func iconWork(sender: UIButton) {
        //: setButtonStatus(sender: sender)
        self.sender(sender: sender)
        //: self.delegate?.changeTopItem(senderTag: sender.tag)
        self.delegate?.pastTag(senderTag: sender.tag)
    }

    //: func setButtonStatus(sender: UIButton) {
    func sender(sender: UIButton) {
        //: if sender.isSelected {
        if sender.isSelected {
            //: return
            return
        }
        //: self.selectButton.titleLabel?.font = UIFont.fontChange(type: .Semibold, fontSize: 14)
        self.selectButton.titleLabel?.font = UIFont.fontChange(type: .Semibold, fontSize: 14)
        //: self.selectButton.isSelected = false
        self.selectButton.isSelected = false
        //: sender.isSelected = true
        sender.isSelected = true
        //: self.selectButton = sender
        self.selectButton = sender
        //: if (self.sliderView.superview != nil) {
        if self.sliderView.superview != nil {
            //: UIView.animate(withDuration: 0.25) {
            UIView.animate(withDuration: 0.25) {
                //: self.sliderView.center = CGPoint(x: sender.centerX, y: 40)
                self.sliderView.center = CGPoint(x: sender.centerX, y: 40)
            }
        }
    }

    //: @objc func resetBtnClick() {
    @objc func appEnablee() {
        //: let config = ShowAlertConfig()
        let config = VideoAlertConfig()
        //: config.alignment = .center
        config.alignment = .center
        //: config.textFont = UIFont.fontChange(type: .Medium, fontSize: 18)
        config.textFont = UIFont.fontChange(type: .Medium, fontSize: 18)
        //: TalkingAlertShow.customAlert(message: "Restore to default Beautify Settings".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, leftBlock: {
        FrameHiddenReactiveCompatible.systemToConfig(message: String(bytes: k_titlePath.map{heightGift(info: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(k_currentContent)).localized, rightBtnTitle: "OK".localized, leftBlock: {
            //: TalkingAlertShow.hideAlert()
            FrameHiddenReactiveCompatible.middleText()
            //: }, rightBlock: { [weak self] in
        }, rightBlock: { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: TalkingAlertShow.hideAlert()
            FrameHiddenReactiveCompatible.middleText()
            //: let btn: UIButton =  self.viewWithTag(BeautyItemType.Face.rawValue) as! UIButton
            let btn: UIButton = self.viewWithTag(JoinHashableRepresentation.Face.rawValue) as! UIButton
            //: self.buttonItemChange(sender: btn)
            self.iconWork(sender: btn)
            //: self.delegate?.ResetBeauty()
            self.delegate?.toBeauty()
            //: }, config: config)
        }, config: config)
    }
}
