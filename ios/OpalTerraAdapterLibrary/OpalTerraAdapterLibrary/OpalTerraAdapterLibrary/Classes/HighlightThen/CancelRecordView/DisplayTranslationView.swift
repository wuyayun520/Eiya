
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_nameMsg:[UInt8] = [0x35,0x3a,0x35,0x40,0xf4,0x2f,0x3b,0x30,0x31,0x3e,0x6,0xf5,0xec,0x34,0x2d,0x3f,0xec,0x3a,0x3b,0x40,0xec,0x2e,0x31,0x31,0x3a,0xec,0x35,0x39,0x3c,0x38,0x31,0x39,0x31,0x3a,0x40,0x31,0x30]

fileprivate func informationLog(color num: UInt8) -> UInt8 {
    let value = Int(num) - 204
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_translation" :*/
fileprivate let kGreenPath:[Character] = ["i","c","o","n","_","t","r","a","n","s","l"]
fileprivate let kToolMessage:String = "ATION"

/*: "English" :*/
fileprivate let kViewUrl:String = "close type equalEngli"
fileprivate let kOriginValue:[Character] = ["s","h"]

/*: "icon_translation_go" :*/
fileprivate let k_itemFormat:String = "add nameicon_tr"
fileprivate let kCellStr:String = "ansshowt"

/*: "Trans" :*/
fileprivate let kToolData:String = "text appTrans"

/*: "targetText" :*/
fileprivate let kUserData:[Character] = ["t","a","r","g","e","t","T"]
fileprivate let kFrameMessage:[Character] = ["e","x","t"]

/*: "en" :*/
fileprivate let kFatalName:[Character] = ["e","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DisplayTranslationView.swift
//  AbroadTalking
//
//  Created by young on 2023/7/4.
//

//: import NaturalLanguage
import NaturalLanguage
//: import UIKit
import UIKit

//: class TalkingSelectTranslationView: UIView {
class DisplayTranslationView: UIView {
    //: var transBlock: ((_ succeed: Bool, _ text: String) -> Void)?
    var transBlock: ((_ succeed: Bool, _ text: String) -> Void)? // 翻译结果Block
    //: private var checkTransStr = ""                                // 需要翻译的文本
    private var checkTransStr = "" // 需要翻译的文本

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: backgroundColor = .white
        backgroundColor = .white
        //: setupSubviews()
        littleness()
        //: setupSubViewsConstraint()
        publishReply()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_nameMsg.map{informationLog(color: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var leftBtn: TalkingButton = {
    private lazy var leftBtn: ResumeControl = {
        //: let btn = TalkingButton()
        let btn = ResumeControl()
        //: btn.setImage(UIImage.submitGift(name: "icon_translation"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kGreenPath) + kToolMessage.lowercased())), for: .normal)
        //: btn.titleLabel?.font = .fontChange(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = .fontChange(type: .Regular, fontSize: 14)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.scaleValueTo(), for: .normal)
        //: btn.setTitle("English".localized, for: .normal)
        btn.setTitle((String(kViewUrl.suffix(5)) + String(kOriginValue)).localized, for: .normal)
        //: btn.imageAlignment = .left
        btn.imageAlignment = .left
        //: btn.spaceBetweenTitleAndImage = 5
        btn.spaceBetweenTitleAndImage = 5
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rightBtn: TalkingButton = {
    private lazy var rightBtn: ResumeControl = {
        //: let btn = TalkingButton()
        let btn = ResumeControl()
        //: let image = UIImage.submitGift(name: "icon_translation_go").withTintColor(.appThemeColor())
        let image = UIImage.submitGift(name: (String(k_itemFormat.suffix(7)) + kCellStr.replacingOccurrences(of: "show", with: "la") + "ion_go")).withTintColor(.increase())
        //: btn.setImage(image, for: .normal)
        btn.setImage(image, for: .normal)
        //: btn.titleLabel?.font = .fontChange(type: .Medium, fontSize: 14)
        btn.titleLabel?.font = .fontChange(type: .Medium, fontSize: 14)
        //: btn.setTitleColor(UIColor.appThemeColor(), for: .normal)
        btn.setTitleColor(UIColor.increase(), for: .normal)
        //: btn.setTitle("Trans".localized, for: .normal)
        btn.setTitle((String(kToolData.suffix(5))).localized, for: .normal)
        //: btn.imageAlignment = .right
        btn.imageAlignment = .right
        //: btn.spaceBetweenTitleAndImage = 3
        btn.spaceBetweenTitleAndImage = 3
        //: btn.addTarget(self, action: #selector(transButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(conversation), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - 请求数据

//: extension TalkingSelectTranslationView {
extension DisplayTranslationView {
    /// 翻译文本内容
    //: private func req_translateText() {
    private func latinize() {
        //: PlayerRequestTool.req_translateText(text: checkTransStr) { succeed, result, errorModel in
        PlayerRequestTool.fromShowUser(text: checkTransStr) { succeed, result, _ in
            //: guard succeed else {
            guard succeed else {
                //: self.transBlock?(succeed, "")
                self.transBlock?(succeed, "")
                //: return
                return
            }

            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: let content = json["targetText"].stringValue
            let content = json[(String(kUserData) + String(kFrameMessage))].stringValue
            //: self.transBlock?(succeed, content)
            self.transBlock?(succeed, content)
        }
    }
}

// MARK: - Event

//: extension TalkingSelectTranslationView {
extension DisplayTranslationView {
    /// 检测输入内容是否为英文
    /// - Parameter inputText: 输入内容
    /// - Returns: 结果
    //: func checkInputLanguage(_ inputText: String) -> Bool {
    func afterInput(_ inputText: String) -> Bool {
        //: checkTransStr = inputText.trimmingCharacters(in: .whitespaces)
        checkTransStr = inputText.trimmingCharacters(in: .whitespaces)
        //: guard checkTransStr.count > 0 else {
        guard checkTransStr.count > 0 else {
            //: return true
            return true
        }
        //: let languageRecognizer = NLLanguageRecognizer()
        let languageRecognizer = NLLanguageRecognizer()
        //: languageRecognizer.processString(inputText)
        languageRecognizer.processString(inputText)
        //: let language = languageRecognizer.dominantLanguage?.rawValue
        let language = languageRecognizer.dominantLanguage?.rawValue
        //: return language == "en"
        return language == "en"
    }

    /// 翻译按钮点击事件
    //: @objc private func transButtonClick() {
    @objc private func conversation() {
        //: self.req_translateText()
        self.latinize()
    }
}

// MARK: - Layout

//: extension TalkingSelectTranslationView {
extension DisplayTranslationView {
    /// 添加视图
    //: private func setupSubviews() {
    private func littleness() {
        //: self.addSubview(leftBtn)
        self.addSubview(leftBtn)
        //: self.addSubview(rightBtn)
        self.addSubview(rightBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func publishReply() {
        //: leftBtn.snp.makeConstraints { make in
        leftBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(8)
            make.leading.equalTo(8)
            //: make.top.equalTo(9)
            make.top.equalTo(9)
            //: make.height.equalTo(17)
            make.height.equalTo(17)
            //: make.width.equalTo(70)
            make.width.equalTo(70)
        }
        //: rightBtn.snp.makeConstraints { make in
        rightBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.centerY.height.equalTo(leftBtn)
            make.centerY.height.equalTo(leftBtn)
        }
    }
}
