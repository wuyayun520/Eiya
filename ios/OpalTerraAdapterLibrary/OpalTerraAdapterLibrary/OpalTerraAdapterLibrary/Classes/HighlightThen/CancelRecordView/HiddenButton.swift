
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kKeyFormat:[UInt8] = [0x2,0x7,0x2,0xd,0xc1,0xfc,0x8,0xfd,0xfe,0xb,0xd3,0xc2,0xb9,0x1,0xfa,0xc,0xb9,0x7,0x8,0xd,0xb9,0xfb,0xfe,0xfe,0x7,0xb9,0x2,0x6,0x9,0x5,0xfe,0x6,0xfe,0x7,0xd,0xfe,0xfd]

fileprivate func imageCenter(model num: UInt8) -> UInt8 {
    let value = Int(num) + 103
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "#DCDCD" :*/
fileprivate let k_beautyText:[Character] = ["#","D","C","D","C","D"]

/*: "Reply" :*/
fileprivate let k_needValue:String = "regular read view containerReply"

/*: "btn_delete" :*/
fileprivate let kEqualData:String = "btn_delscene return content nor"
fileprivate let k_menuKey:[Character] = ["e","t","e"]

/*: "text" :*/
fileprivate let kTopHostActionValue:String = "tmt"

/*: "gift" :*/
fileprivate let kPlusActionMessage:String = "gipush"

/*: "Sent " :*/
fileprivate let k_deviceMsg:String = "Sent var empty inner live add"

/*: " x :*/
fileprivate let k_arrayVoiceStr:[Character] = [" ","x"]

/*: "audio" :*/
fileprivate let k_groupTitle:String = "AUDIO"

/*: "[Audio]" :*/
fileprivate let kPointTitle:[Character] = ["[","A","u","d","i","o","]"]

/*: "img" :*/
fileprivate let kShowListMessage:[Character] = ["i","m","g"]

/*: "[Image]" :*/
fileprivate let kCloseId:[Character] = ["["]
fileprivate let kReportSubmitMakeMsg:String = "Image]var app show"

/*: "video" :*/
fileprivate let k_makeId:String = "vitexteo"

/*: ": [" :*/
fileprivate let k_instanceData:String = ": color"

/*: "Video" :*/
fileprivate let k_actualKey:String = "voice trueVideo"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HiddenButton.swift
//  OpalTerraAdapterLibrary
//
//  Created by Hemming on 2024/7/29.
//

//: import UIKit
import UIKit

//: class InputQuoteView: UIButton {
class HiddenButton: UIButton {
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: var closeBtnBlock: (() -> Void)?
    var closeBtnBlock: (() -> Void)?

    //: private override init(frame: CGRect) {
    override private init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        launch()
        //: setupSubViewsConstraint()
        participantConstraint()
        //: bindInteraction()
        constraintOn()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kKeyFormat.map{imageCenter(model: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    //: lazy var lineView: UIView = {
    lazy var lineView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor(hex: "#DCDCD")
        view.backgroundColor = UIColor(hex: (String(k_beautyText)))
        //: return view
        return view
        //: }()
    }()

    //: lazy var titleLab: UILabel = {
    lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.targetFor(fontSize: 14)
        //: lab.textColor = .appValueColor()
        lab.textColor = .scaleValueTo()
        //: lab.text = "Reply".localized
        lab.text = (String(k_needValue.suffix(5))).localized
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var contentLab: UILabel = {
    lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.targetFor(fontSize: 14)
        //: lab.textColor = .appValueDetailColor()
        lab.textColor = .childMenu()
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var closeBtn: UIButton = {
    lazy var closeBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setImage(UIImage.submitGift(name: "btn_delete"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kEqualData.prefix(7)) + String(k_menuKey))), for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: var quoteModel: AbTalkingChatMsgQuoteModel? {
    var quoteModel: LockModel? {
        //: didSet {
        didSet {
            //: guard let quoteModel = quoteModel else { return }
            guard let quoteModel = quoteModel else { return }
            //: if quoteModel.renderType == "text" {
            if quoteModel.renderType == (kTopHostActionValue.replacingOccurrences(of: "m", with: "ex")) {
                //: self.contentLab.text = quoteModel.sendName + ":" + quoteModel.renderData.content
                self.contentLab.text = quoteModel.sendName + ":" + quoteModel.renderData.content
                //: } else if quoteModel.renderType == "gift" {
            } else if quoteModel.renderType == (kPlusActionMessage.replacingOccurrences(of: "push", with: "ft")) {
                //: self.contentLab.text = quoteModel.sendName + ":" + "Sent ".localized + quoteModel.renderData.giftNameLocal() + " x\(quoteModel.renderData.giftNum)"
                self.contentLab.text = quoteModel.sendName + ":" + (String(k_deviceMsg.prefix(5))).localized + quoteModel.renderData.giftNameLocal() + " x\(quoteModel.renderData.giftNum)"
                //: } else if quoteModel.renderType == "audio" {
            } else if quoteModel.renderType == (k_groupTitle.lowercased()) {
                //: self.contentLab.text = quoteModel.sendName + ":" + "[Audio]".localized
                self.contentLab.text = quoteModel.sendName + ":" + (String(kPointTitle)).localized
                //: } else if quoteModel.renderType == "img" {
            } else if quoteModel.renderType == (String(kShowListMessage)) {
                //: self.contentLab.text = quoteModel.sendName + ":" + "[Image]".localized
                self.contentLab.text = quoteModel.sendName + ":" + (String(kCloseId) + String(kReportSubmitMakeMsg.prefix(6))).localized
                //: } else if quoteModel.renderType == "video" {
            } else if quoteModel.renderType == (k_makeId.replacingOccurrences(of: "text", with: "d")) {
                //: self.contentLab.text = quoteModel.sendName + ": [" + "Video".localized + "]"
                self.contentLab.text = quoteModel.sendName + ": [" + (String(k_actualKey.suffix(5))).localized + "]"
            }
        }
    }
}

// MARK: - Layout

//: extension InputQuoteView {
extension HiddenButton {
    /// 添加视图
    //: private func setupSubviews() {
    private func launch() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.addSubview(titleLab)
        self.addSubview(titleLab)
        //: self.addSubview(contentLab)
        self.addSubview(contentLab)
        //: self.addSubview(lineView)
        self.addSubview(lineView)
        //: self.addSubview(closeBtn)
        self.addSubview(closeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func participantConstraint() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(9)
            make.leading.equalTo(9)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.leading.equalTo(titleLab.snp.trailing).offset(6)
            make.leading.equalTo(titleLab.snp.trailing).offset(6)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.lessThanOrEqualTo(-42)
            make.trailing.lessThanOrEqualTo(-42)
        }
        //: lineView.snp.makeConstraints { make in
        lineView.snp.makeConstraints { make in
            //: make.trailing.equalToSuperview().offset(-32)
            make.trailing.equalToSuperview().offset(-32)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
            //: make.width.equalTo(1)
            make.width.equalTo(1)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(lineView.snp.trailing)
            make.leading.equalTo(lineView.snp.trailing)
            //: make.trailing.equalToSuperview()
            make.trailing.equalToSuperview()
            //: make.height.equalTo(28)
            make.height.equalTo(28)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func constraintOn() {
        //: closeBtn.rx.controlEvent(.touchUpInside)
        closeBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.closeBtnBlock?()
                self.closeBtnBlock?()
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
