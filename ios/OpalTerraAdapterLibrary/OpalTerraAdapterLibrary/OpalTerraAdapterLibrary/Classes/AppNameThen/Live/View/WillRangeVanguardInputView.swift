
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kPlayerPath:[UInt8] = [0x5b,0x5c,0x5b,0x46,0x1a,0x51,0x5d,0x56,0x57,0x40,0x8,0x1b,0x12,0x5a,0x53,0x41,0x12,0x5c,0x5d,0x46,0x12,0x50,0x57,0x57,0x5c,0x12,0x5b,0x5f,0x42,0x5e,0x57,0x5f,0x57,0x5c,0x46,0x57,0x56]

/*: "btn_chat_send_nor" :*/
fileprivate let kMethodTitle:String = "btn_false self"
fileprivate let k_areaMsg:String = "color moment if name_sen"

/*: "btn_chat_send_dis" :*/
fileprivate let k_sectionValue:String = "model icon color letbtn_ch"
fileprivate let k_blockData:String = "index as height letd_dis"

/*: "Send" :*/
fileprivate let kColorUrl:[Character] = ["S","e","n","d"]

/*: "Say something...     " :*/
fileprivate let kStateFrameKey:[Character] = ["S","a","y"," ","s","o","m","e","t","h","i","n","g","."]
fileprivate let kBackgroundText:String = "..     "

/*: "Can't send blank message" :*/
fileprivate let kShowId:String = "Can\'t "
fileprivate let kGestureStr:String = "indexan"
fileprivate let kInsideMessage:[Character] = ["k"," ","m","e","s","s","a","g","e"]

/*: "uid" :*/
fileprivate let kTextKey:[UInt8] = [0x2b,0x1f,0x1a]

fileprivate func clearLet(success num: UInt8) -> UInt8 {
    let value = Int(num) + 74
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "name" :*/
fileprivate let kLightMessage:String = "namtitle"

/*: "@ :*/
fileprivate let k_listObserveId:String = "@"

/*:  " :*/
fileprivate let kModelMsg:String = " "

/*: "length" :*/
fileprivate let kNextName:String = "LENGTH"

/*: "<at>@ :*/
fileprivate let kFileStatusStr:[Character] = ["<","a","t",">","@"]

/*: </at> " :*/
fileprivate let k_dismissMsg:[Character] = ["<","/","a","t",">"," "]

/*: "\n" :*/
fileprivate let k_addTapId:String = "\n"

/*: "contentSize" :*/
fileprivate let kItemFormat:[Character] = ["c","o","n","t","e","n"]
fileprivate let k_cellContent:[Character] = ["t","S","i","z","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WillRangeVanguardInputView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/7/7.
//

//: import UIKit
import UIKit

//: protocol TalkingLiveRoomInputViewDelegate: NSObject {
protocol FileReactiveCompatible: NSObject {
    //: func func__sendTextMsg(msgStr: String, atUid: String?)
    func ironed(msgStr: String, atUid: String?)

    //: func heightToBottomChanged(heightToBottom: CGFloat)
    func modeAddName(heightToBottom: CGFloat)

    //: func inputViewHeightChanged(height: CGFloat)
    func tallness(height: CGFloat)
}

//: class TalkingLiveRoomInputView: UIView {
class WillRangeVanguardInputView: UIView {
    //: open weak var delegate: TalkingLiveRoomInputViewDelegate?
    open weak var delegate: FileReactiveCompatible?
    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()
    //: private var inputAttr = [NSAttributedString.Key: Any]()
    private var inputAttr = [NSAttributedString.Key: Any]()
    //: private var atDic: [String: Any]?
    private var atDic: [String: Any]?
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        subviewsCard()
        //: setupSubViewsConstraint()
        dataInstance()
        //: bindInteraction()
        chapiter()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kPlayerPath.map{$0^50}, encoding: .utf8)!)
    }

    //: lazy var sendBtn: UIButton = {
    lazy var sendBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.submitGift(name: "btn_chat_send_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.submitGift(name: (String(kMethodTitle.prefix(4)) + "chat" + String(k_areaMsg.suffix(4)) + "d_nor")), for: .normal)
        //: btn.setBackgroundImage(UIImage.submitGift(name: "btn_chat_send_nor"), for: .highlighted)
        btn.setBackgroundImage(UIImage.submitGift(name: (String(kMethodTitle.prefix(4)) + "chat" + String(k_areaMsg.suffix(4)) + "d_nor")), for: .highlighted)
        //: btn.setBackgroundImage(UIImage.submitGift(name: "btn_chat_send_dis"), for: .disabled)
        btn.setBackgroundImage(UIImage.submitGift(name: (String(k_sectionValue.suffix(6)) + "at_sen" + String(k_blockData.suffix(5)))), for: .disabled)
        //: btn.addTarget(self, action: #selector(commentBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(detect), for: .touchUpInside)
        //: btn.setTitle("Send".localized, for: .normal)
        btn.setTitle((String(kColorUrl)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 15)
        btn.titleLabel?.font = UIFont.tapShared(fontSize: 15)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view

        //: }()
    }()

    //: lazy var inputTextView: InputTextView = {
    lazy var inputTextView: SignalingScrollView = {
        //: let input = InputTextView()
        let input = SignalingScrollView()
        //: input.font = UIFont.fontChange(type: .Regular, fontSize: 15)
        input.font = UIFont.fontChange(type: .Regular, fontSize: 15)
        //: input.placeholderColor = UIColor.appValueDetailColor()
        input.placeholderColor = UIColor.childMenu()
        //: input.placeholder = "Say something...     ".localized
        input.placeholder = (String(kStateFrameKey) + kBackgroundText.capitalized).localized
        //: input.returnKeyType = .send
        input.returnKeyType = .send
        //: input.scrollsToTop = false
        input.scrollsToTop = false
        //: input.delegate = self
        input.delegate = self
        //: input.backgroundColor = UIColor.white
        input.backgroundColor = UIColor.white
        //: input.textColor = UIColor.colorStatuteNameApp()
        input.textColor = UIColor.colorStatuteNameApp()
        //: self.inputAttr = [NSAttributedString.Key.foregroundColor: UIColor.colorStatuteNameApp(), .font: UIFont.fontChange(type: .Regular, fontSize: 15)]
        self.inputAttr = [NSAttributedString.Key.foregroundColor: UIColor.colorStatuteNameApp(), .font: UIFont.fontChange(type: .Regular, fontSize: 15)]
        //: input.typingAttributes = self.inputAttr
        input.typingAttributes = self.inputAttr
        //: input.layer.cornerRadius = 5
        input.layer.cornerRadius = 5
        //: contentView.addSubview(input)
        contentView.addSubview(input)
        //: return input
        return input
        //: }()
    }()
}

//: extension TalkingLiveRoomInputView {
extension WillRangeVanguardInputView {
    /// 拉起输入框
    //: func updatePlaceholder() {
    func atMember() {
        //: self.isHidden = false
        self.isHidden = false
        //: inputTextView.becomeFirstResponder()
        inputTextView.becomeFirstResponder()
    }

    //: @objc func commentBtnClick() {
    @objc func detect() {
        //: let textstr = self.handleSendText(text: inputTextView.attributedText)
        let textstr = self.acrossWindow(text: inputTextView.attributedText)
        //: let temStr = textstr.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let temStr = textstr.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        //: if temStr.count == 0 {
        if temStr.count == 0 {
            //: func__showStatusBarErrorMsg(showMsg: "Can't send blank message".localized)
            arcInfo(showMsg: (kShowId + "send " + kGestureStr.replacingOccurrences(of: "index", with: "bl") + String(kInsideMessage)).localized)
            //: return
            return
        }
        //: let atStr: String = atDic?["uid"] as? String ?? ""
        let atStr: String = atDic?[String(bytes: kTextKey.map{clearLet(success: $0)}, encoding: .utf8)!] as? String ?? ""
        //: self.delegate?.func__sendTextMsg(msgStr: textstr, atUid: atStr)
        self.delegate?.ironed(msgStr: textstr, atUid: atStr)
        //: atDic = nil
        atDic = nil
        //: sendBtn.isEnabled = false
        sendBtn.isEnabled = false
        //: resignkeyBoard()
        quit()
    }

    //: func resignkeyBoard() {
    func quit() {
        //: inputTextView.resignFirstResponder()
        inputTextView.resignFirstResponder()
        //: if (inputTextView.text.count == 0) {
        if inputTextView.text.count == 0 {
            //: inputTextView.placeholder = "Say something...     ".localized
            inputTextView.placeholder = (String(kStateFrameKey) + kBackgroundText.capitalized).localized
        }
    }

    //: func func__updateInputContentView() {
    func priceView() {
        //: let textSize = inputTextView.contentSize
        let textSize = inputTextView.contentSize
        //: let textHeight = max(30, min(100, textSize.height))
        let textHeight = max(30, min(100, textSize.height))
        //: inputTextView.snp.updateConstraints { make in
        inputTextView.snp.updateConstraints { make in
            //: make.height.equalTo(textHeight)
            make.height.equalTo(textHeight)
        }
        //: self.delegate?.inputViewHeightChanged(height: textHeight+16)
        self.delegate?.tallness(height: textHeight + 16)
    }

    //: @objc func keyboardWasShown(notification: NSNotification) {
    @objc func coatButtonNotification(notification: NSNotification) {
        //: let info = notification.userInfo!
        let info = notification.userInfo!
        //: var kbRect = (info[UIResponder.keyboardFrameEndUserInfoKey]! as! NSValue).cgRectValue
        var kbRect = (info[UIResponder.keyboardFrameEndUserInfoKey]! as! NSValue).cgRectValue
        //: kbRect = self.convert(kbRect, from: nil)
        kbRect = self.convert(kbRect, from: nil)
        //: let height = kbRect.size.height
        let height = kbRect.size.height
        //: self.delegate?.heightToBottomChanged(heightToBottom: height)
        self.delegate?.modeAddName(heightToBottom: height)
    }

    //: @objc func keyboardWillBeHidden(notification: NSNotification) {
    @objc func squareForSub(notification _: NSNotification) {
        //: self.isHidden = true
        self.isHidden = true
        //: atDic = nil
        atDic = nil
        //: inputTextView.attributedText = nil
        inputTextView.attributedText = nil
        //: self.delegate?.heightToBottomChanged(heightToBottom: 0)
        self.delegate?.modeAddName(heightToBottom: 0)
    }

    //: func callUserText(toUid: String, nickName: String) {
    func flag(toUid: String, nickName: String) {
        //: updatePlaceholder()
        atMember()
        //: atDic = ["uid": toUid, "name": nickName]
        atDic = [String(bytes: kTextKey.map{clearLet(success: $0)}, encoding: .utf8)!: toUid, (kLightMessage.replacingOccurrences(of: "title", with: "e")): nickName]
        //: self.receiveAtInfotoUser(range: nil, dict: atDic!)
        self.mediumText(range: nil, dict: atDic!)
    }
}

//: extension TalkingLiveRoomInputView {
extension WillRangeVanguardInputView {
    /// 替换@ 消息为富文本
    //: func receiveAtInfotoUser(range: NSRange?, dict: [String: Any]) {
    func mediumText(range: NSRange?, dict: [String: Any]) {
        //: var atRange = range
        var atRange = range
        //: if atRange != nil {
        if atRange != nil { // 输入框@
            //: if atRange!.location > 0 && (atRange!.length + atRange!.location > self.inputTextView.text.count) {
            if atRange!.location > 0, atRange!.length + atRange!.location > self.inputTextView.text.count {
                //: atRange!.location -= 1
                atRange!.location -= 1
            }
            //: } else {
        } else { // 操作面板@ Ta
            //: atRange = NSRange(location: self.inputTextView.attributedText.length, length: 0)
            atRange = NSRange(location: self.inputTextView.attributedText.length, length: 0)
        }

        //: let atStr: String = "@\(dict["name"] ?? "") "
        let atStr = "@\(dict[(kLightMessage.replacingOccurrences(of: "title", with: "e"))] ?? "") "
        //: let label = UILabel()
        let label = UILabel()
        //: label.textColor = UIColor.RGBA(0, 132, 255, 1)
        label.textColor = UIColor.behindVoice(0, 132, 255, 1)
        //: label.font = UIFont.systemFont(ofSize: 16)
        label.font = UIFont.systemFont(ofSize: 16)
        //: label.text = atStr
        label.text = atStr
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: label.sizeToFit()
        label.sizeToFit()
        //: let renderer = UIGraphicsImageRenderer(size: label.bounds.size)
        let renderer = UIGraphicsImageRenderer(size: label.bounds.size)
        //: let image = renderer.image { context in
        let image = renderer.image { context in
            //: label.layer.render(in: context.cgContext)
            label.layer.render(in: context.cgContext)
        }

        //: let textAtta = TalkingTextAttachment()
        let textAtta = IsochronalThen()
        //: textAtta.bounds = CGRect(x: 0, y: label.font.descender,
        textAtta.bounds = CGRect(x: 0, y: label.font.descender,
                                 //: width: image.size.width,
                                 width: image.size.width,
                                 //: height: image.size.height)
                                 height: image.size.height)
        //: textAtta.image = image
        textAtta.image = image
        //: var atInfo = dict
        var atInfo = dict
        //: atInfo["length"] = atStr.count
        atInfo[(kNextName.lowercased())] = atStr.count
        //: textAtta.atInfo = atInfo
        textAtta.atInfo = atInfo

        //: let attaImage = NSAttributedString(attachment: textAtta)
        let attaImage = NSAttributedString(attachment: textAtta)
        //: let attrText = NSMutableAttributedString(attributedString: self.inputTextView.attributedText)
        let attrText = NSMutableAttributedString(attributedString: self.inputTextView.attributedText)
        //: attrText.replaceCharacters(in: atRange!, with: attaImage)
        attrText.replaceCharacters(in: atRange!, with: attaImage)
        //: self.inputTextView.attributedText = attrText
        self.inputTextView.attributedText = attrText
    }

    /// 发送消息处理富文本
    //: private func handleSendText(text: NSAttributedString?) -> String {
    private func acrossWindow(text: NSAttributedString?) -> String {
        //: var mText: NSMutableAttributedString!
        var mText: NSMutableAttributedString!
        //: if text == nil {
        if text == nil {
            //: mText = NSMutableAttributedString(string: "")
            mText = NSMutableAttributedString(string: "")
            //: } else {
        } else {
            //: mText = NSMutableAttributedString(attributedString: text!)
            mText = NSMutableAttributedString(attributedString: text!)
        }

        //: var string = String()
        var string = String()
        //: mText.enumerateAttributes(in: NSRange(location: 0, length: mText.length)) { attrs, range, stop in
        mText.enumerateAttributes(in: NSRange(location: 0, length: mText.length)) { attrs, range, _ in
            //: let atta = attrs[NSAttributedString.Key.attachment] as? TalkingTextAttachment
            let atta = attrs[NSAttributedString.Key.attachment] as? IsochronalThen
            //: if atta != nil && range.length == 1 {
            if atta != nil && range.length == 1 {
                //: if let name = atta!.atInfo["name"] {
                if let name = atta!.atInfo[(kLightMessage.replacingOccurrences(of: "title", with: "e"))] {
                    //: let str = "<at>@\(name)</at> "
                    let str = "<at>@\(name)</at> "
                    //: string.append(str)
                    string.append(str)
                }
                //: } else {
            } else {
                //: let str = mText.attributedSubstring(from: range).string
                let str = mText.attributedSubstring(from: range).string
                //: string.append(str)
                string.append(str)
            }
        }

        //: return string
        return string
    }
}

// MARK: - UITextViewDelegate

//: extension TalkingLiveRoomInputView: UITextViewDelegate {
extension WillRangeVanguardInputView: UITextViewDelegate {
    //: func textViewDidEndEditing(_ textView: UITextView) {
    func textViewDidEndEditing(_: UITextView) {}

    //: func textViewDidChange(_ textView: UITextView) {
    func textViewDidChange(_ textView: UITextView) {
        //: if textView.text.count>0 {
        if textView.text.count > 0 {
            //: sendBtn.isEnabled = true
            sendBtn.isEnabled = true
            //: } else {
        } else {
            //: sendBtn.isEnabled = false
            sendBtn.isEnabled = false
        }
    }

    //: func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
    func textView(_ textView: UITextView, shouldChangeTextIn _: NSRange, replacementText text: String) -> Bool {
        //: if textView.text.count == 0 {
        if textView.text.count == 0 {
            //: atDic = nil
            atDic = nil
        }
        //: self.inputTextView.typingAttributes = self.inputAttr
        self.inputTextView.typingAttributes = self.inputAttr

        //: if (text == "\n") {
        if text == "\n" {
            //: commentBtnClick()
            detect()
            //: textView.resignFirstResponder()
            textView.resignFirstResponder()
        }
        //: return true
        return true
    }
}

// MARK: - LayoutUI

//: extension TalkingLiveRoomInputView {
extension WillRangeVanguardInputView {
    // 添加视图
    //: private func setupSubviews() {
    private func subviewsCard() {
        //: backgroundColor = .clear
        backgroundColor = .clear
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(sendBtn)
        contentView.addSubview(sendBtn)
        //: contentView.addSubview(inputTextView)
        contentView.addSubview(inputTextView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func dataInstance() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.leading.trailing.bottom.equalTo(self)
            make.top.leading.trailing.bottom.equalTo(self)
        }
        //: sendBtn.snp.makeConstraints { make in
        sendBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-8)
            make.trailing.equalTo(-8)
            //: make.height.equalTo(30)
            make.height.equalTo(30)
            //: make.width.equalTo(66)
            make.width.equalTo(66)
        }
        //: inputTextView.snp.makeConstraints { make in
        inputTextView.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(contentView.snp.leading).offset(15)
            make.leading.equalTo(contentView.snp.leading).offset(15)
            //: make.trailing.equalTo(sendBtn.snp.leading).offset(-10)
            make.trailing.equalTo(sendBtn.snp.leading).offset(-10)
            //: make.height.equalTo(40)
            make.height.equalTo(40)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func chapiter() {
        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWasShown(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(coatButtonNotification(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(squareForSub(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)

        //: inputTextView.rx.observeWeakly(UITextView.self, "contentSize").subscribe(onNext: { [weak self] (change) in
        inputTextView.rx.observeWeakly(UITextView.self, (String(kItemFormat) + String(k_cellContent))).subscribe(onNext: { [weak self] _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.func__updateInputContentView()
            self.priceView()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
