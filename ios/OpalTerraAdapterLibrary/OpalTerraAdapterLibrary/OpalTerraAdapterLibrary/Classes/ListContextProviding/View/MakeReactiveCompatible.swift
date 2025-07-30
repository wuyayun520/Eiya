
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_barId:[UInt8] = [0x64,0x63,0x64,0x79,0x25,0x6e,0x62,0x69,0x68,0x7f,0x37,0x24,0x2d,0x65,0x6c,0x7e,0x2d,0x63,0x62,0x79,0x2d,0x6f,0x68,0x68,0x63,0x2d,0x64,0x60,0x7d,0x61,0x68,0x60,0x68,0x63,0x79,0x68,0x69]

private func profileNet(item num: UInt8) -> UInt8 {
    return num ^ 13
}

/*: "Enter code" :*/
fileprivate let kMakeSucceedKey:[Character] = ["E"]
fileprivate let k_needFormat:String = "nter or at content to"

/*: "8075F5" :*/
fileprivate let kTableRenderKey:String = "8075F5at attention let data wrap"

/*: "F4F4F4" :*/
fileprivate let k_layerMessage:String = "imageimageimage"

/*: "Resent Code" :*/
fileprivate let kRequestUrl:String = "height button data nameResent"
fileprivate let kHighFormat:String = "in self model image Code"

/*: "Next" :*/
fileprivate let k_topContent:String = "Nextplace let make"

/*: "Tips: If you can't receive the verification code, please check whether the message is in spam or not" :*/
fileprivate let kTableData:[UInt8] = [0x18,0x2d,0x34,0x37,0xfe,0xe4,0xd,0x2a,0xe4,0x3d,0x33,0x39,0xe4,0x27,0x25,0x32,0xeb,0x38,0xe4,0x36,0x29,0x27,0x29,0x2d,0x3a,0x29,0xe4,0x38,0x2c,0x29,0xe4,0x3a,0x29,0x36,0x2d,0x2a,0x2d,0x27,0x25,0x38,0x2d,0x33,0x32,0xe4,0x27,0x33,0x28,0x29,0xf0,0xe4,0x34,0x30,0x29,0x25,0x37,0x29,0xe4,0x27,0x2c,0x29,0x27,0x2f,0xe4,0x3b,0x2c,0x29,0x38,0x2c,0x29,0x36,0xe4,0x38,0x2c,0x29,0xe4,0x31,0x29,0x37,0x37,0x25,0x2b,0x29,0xe4,0x2d,0x37,0xe4,0x2d,0x32,0xe4,0x37,0x34,0x25,0x31,0xe4,0x33,0x36,0xe4,0x32,0x33,0x38]

fileprivate func makePop(moment num: UInt8) -> UInt8 {
    let value = Int(num) - 196
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/25.
//

//: import UIKit
import UIKit

//: class TalkingLoginCodeView: UIView, UITextFieldDelegate {
class MakeReactiveCompatible: UIView, UITextFieldDelegate {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: self.setupSubviews()
        self.capacity()
        //: self.setupSubViewsConstraint()
        self.contribution()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_barId.map{profileNet(item: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: lazy var titleLabel: UILabel = {
    lazy var titleLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .fontChange(type: .Semibold, fontSize: 17)
        label.font = .fontChange(type: .Semibold, fontSize: 17)
        //: label.textColor = .colorStatuteNameApp()
        label.textColor = .colorStatuteNameApp()
        //: label.text = "Enter code".localized
        label.text = (String(kMakeSucceedKey) + String(k_needFormat.prefix(5)) + "code").localized
        //: return label
        return label
        //: }()
    }()

    //: lazy var phoneLabel: UILabel = {
    lazy var phoneLabel: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .fontChange(type: .Medium, fontSize: 22)
        label.font = .fontChange(type: .Medium, fontSize: 22)
        //: label.textColor = .colorStatuteNameApp()
        label.textColor = .colorStatuteNameApp()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: return label
        return label
        //: }()
    }()

    //: lazy var codeInputView: TalkingCodeInputView = {
    lazy var codeInputView: MenuEndReactiveCompatible = {
        //: let codeView = TalkingCodeInputView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: "8075F5")!, normalColor: UIColor(hex: "F4F4F4")!, margin: 12)
        let codeView = MenuEndReactiveCompatible(frame: CGRect(x: 0, y: 0, width: constFormalContent, height: 70), codeNumber: 6, labelTextColor: .white, mainColor: UIColor(hex: (String(kTableRenderKey.prefix(6))))!, normalColor: UIColor(hex: (k_layerMessage.replacingOccurrences(of: "image", with: "F4")))!, margin: 12)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeLanguageManager.shared.direction == .rightToLeft {
            //: codeView.layer.transform =  CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0)
            codeView.layer.transform = CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0) // 镜像
        }
        //: return codeView
        return codeView
        //: }()
    }()

    //: lazy var reSendButton: UIButton = {
    lazy var reSendButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(.appThemeColor(), for: .normal)
        btn.setTitleColor(.increase(), for: .normal)
        //: btn.setTitle("Resent Code".localized, for: .normal)
        btn.setTitle((String(kRequestUrl.suffix(6)) + String(kHighFormat.suffix(5))).localized, for: .normal)
        //: btn.titleLabel?.font = .fontChange(type: .Semibold, fontSize: 17)
        btn.titleLabel?.font = .fontChange(type: .Semibold, fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var commitButton: UIButton = {
    lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = UIFont.fontChange(type: .Regular, fontSize: 18)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle((String(k_topContent.prefix(4))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.makeEqual(colors: UIColor.georgiaHomeBoy(), size: CGSize(width: constFormalContent - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .fontChange(type: .Medium, fontSize: 12)
        label.font = .fontChange(type: .Medium, fontSize: 12)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .childMenu()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: let str = "Tips: If you can't receive the verification code, please check whether the message is in spam or not".localized
        let str = String(bytes: kTableData.map{makePop(moment: $0)}, encoding: .utf8)!.localized
        //: let range = NSRange(location: 5, length: str.count-5)
        let range = NSRange(location: 5, length: str.count - 5)
        //: let attributedString = NSMutableAttributedString(string: str)
        let attributedString = NSMutableAttributedString(string: str)
        //: attributedString.addAttribute(.font, value: UIFont.fontChange(type: .Regular, fontSize: 12), range: range)
        attributedString.addAttribute(.font, value: UIFont.fontChange(type: .Regular, fontSize: 12), range: range)
        //: label.attributedText = attributedString
        label.attributedText = attributedString
        //: return label
        return label
        //: }()
    }()
}

// MARK: - Layout

//: extension TalkingLoginCodeView {
extension MakeReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func capacity() {
        //: addSubview(titleLabel)
        addSubview(titleLabel)
        //: addSubview(phoneLabel)
        addSubview(phoneLabel)
        //: addSubview(codeInputView)
        addSubview(codeInputView)
        //: addSubview(reSendButton)
        addSubview(reSendButton)
        //: addSubview(commitButton)
        addSubview(commitButton)
        //: addSubview(desLab)
        addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func contribution() {
        //: titleLabel.snp.makeConstraints { make in
        titleLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.top.equalToSuperview().offset(10)
            make.top.equalToSuperview().offset(10)
        }

        //: phoneLabel.snp.makeConstraints { make in
        phoneLabel.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(titleLabel.snp.bottom).offset(44)
            make.top.equalTo(titleLabel.snp.bottom).offset(44)
        }

        //: codeInputView.snp.makeConstraints { make in
        codeInputView.snp.makeConstraints { make in
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(70)
            make.height.equalTo(70)
            //: make.top.equalTo(phoneLabel.snp.bottom).offset(14)
            make.top.equalTo(phoneLabel.snp.bottom).offset(14)
        }
        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(constFormalContent - 60)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(codeInputView.snp.bottom).offset(30)
            make.top.equalTo(codeInputView.snp.bottom).offset(30)
        }
        //: reSendButton.snp.makeConstraints { make in
        reSendButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(ScreenWidth-60)
            make.width.equalTo(constFormalContent - 60)
            //: make.height.equalTo(36)
            make.height.equalTo(36)
            //: make.top.equalTo(commitButton.snp.bottom).offset(10)
            make.top.equalTo(commitButton.snp.bottom).offset(10)
        }

        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(reSendButton.snp.bottom).offset(30)
            make.top.equalTo(reSendButton.snp.bottom).offset(30)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
        }
    }
}
