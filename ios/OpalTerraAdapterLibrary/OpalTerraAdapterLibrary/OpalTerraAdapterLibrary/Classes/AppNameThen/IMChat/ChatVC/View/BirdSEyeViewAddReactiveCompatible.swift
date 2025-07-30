
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_tapKey:[UInt8] = [0x31,0x36,0x31,0x2c,0x70,0x3b,0x37,0x3c,0x3d,0x2a,0x62,0x71,0x78,0x30,0x39,0x2b,0x78,0x36,0x37,0x2c,0x78,0x3a,0x3d,0x3d,0x36,0x78,0x31,0x35,0x28,0x34,0x3d,0x35,0x3d,0x36,0x2c,0x3d,0x3c]

private func topModel(background num: UInt8) -> UInt8 {
    return num ^ 88
}

/*: "icon_translation_go" :*/
fileprivate let k_fromHeadUrl:[Character] = ["i","c","o","n","_","t"]
fileprivate let k_finishFormat:String = "selectns"

/*: "#EAE8FE" :*/
fileprivate let k_fromSubmitFormat:String = "to extension self#EAE8F"
fileprivate let k_intimateGiftValue:String = "layer"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BirdSEyeViewAddReactiveCompatible.swift
//  OpalTerraAdapterLibrary
//
//  Created by DouXiu on 2024/11/21.
//

//: import UIKit
import UIKit

//: class PrivateChatNotesTopView: UIView {
class BirdSEyeViewAddReactiveCompatible: UIView {
    //: var tapBlock: (() -> Void)?
    var tapBlock: (() -> Void)?
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        languageSubviews()
        //: setupSubViewsConstraint()
        afterMap()
        //: bindInteraction()
        arrayMake()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_tapKey.map{topModel(background: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var contentLab: UILabel = {
    private lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.appThemeColor()
        lab.textColor = UIColor.increase()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 16)
        lab.font = UIFont.targetFor(fontSize: 16)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var imgV: UIImageView = {
    private lazy var imgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.submitGift(name: "icon_translation_go").withTintColor(.appThemeColor())
        img.image = UIImage.submitGift(name: (String(k_fromHeadUrl) + k_finishFormat.replacingOccurrences(of: "select", with: "ra") + "lation_go")).withTintColor(.increase())
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()
}

// MARK: - Event

//: extension PrivateChatNotesTopView {
extension BirdSEyeViewAddReactiveCompatible {
    /// 刷新视图
    //: func refresh(_ model: HumankindThen) {
    func soulRestore(_ model: HumankindThen) {
        //: self.isHidden = (model.top != 1)
        self.isHidden = (model.top != 1)
        //: contentLab.text = model.content
        contentLab.text = model.content
    }

    /// 点击事件
    //: @objc private func tapGestureRecognizer(_ tap: UITapGestureRecognizer) {
    @objc private func poking(_: UITapGestureRecognizer) {
        //: tapBlock?()
        tapBlock?()
    }
}

// MARK: - Layout

//: extension PrivateChatNotesTopView {
extension BirdSEyeViewAddReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func languageSubviews() {
        //: backgroundColor = UIColor(hex: "#EAE8FE")
        backgroundColor = UIColor(hex: (String(k_fromSubmitFormat.suffix(6)) + k_intimateGiftValue.replacingOccurrences(of: "layer", with: "E")))
        //: layer.borderWidth = 1
        layer.borderWidth = 1
        //: layer.borderColor = UIColor.appThemeColor().cgColor
        layer.borderColor = UIColor.increase().cgColor
        //: layer.cornerRadius = 8
        layer.cornerRadius = 8
        //: layer.masksToBounds = true
        layer.masksToBounds = true

        //: addSubview(contentLab)
        addSubview(contentLab)
        //: addSubview(imgV)
        addSubview(imgV)
    }

    /// 设置约束
    //: private func setupSubViewsConstraint() {
    private func afterMap() {
        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.trailing.equalTo(-25)
            make.trailing.equalTo(-25)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.width.equalTo(10)
            make.height.width.equalTo(10)
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func arrayMake() {
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(tapGestureRecognizer))
        let tap = UITapGestureRecognizer(target: self, action: #selector(poking))
        //: addGestureRecognizer(tap)
        addGestureRecognizer(tap)
    }
}
