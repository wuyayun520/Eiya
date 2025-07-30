
//: Declare String Begin

/*: "^([a-zA-Z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$" :*/
fileprivate let kLeadingMessage:[UInt8] = [0x24,0x29,0x7d,0x36,0x2c,0x32,0x7b,0x5d,0x2e,0x5c,0x7a,0x2d,0x61,0x5b,0x28,0x2e,0x5c,0x29,0x2b,0x5d,0x2d,0x2e,0x5c,0x7a,0x2d,0x61,0x64,0x5c,0x5b,0x28,0x40,0x29,0x2b,0x5d,0x2d,0x2e,0x5c,0x5f,0x39,0x2d,0x30,0x5a,0x2d,0x41,0x7a,0x2d,0x61,0x5b,0x28,0x5e]

/*: "^((1[34578][0-9]{9})|((0\\d{2}-\\d{8})|(0\\d{3}-\\d{7,8})|(0\\d{10,11}))$" :*/
fileprivate let kErrorFlushTitle:[UInt8] = [0x2d,0x5b,0x5b,0x42,0x28,0x40,0x47,0x46,0x44,0x4b,0x2e,0x28,0x43,0x5e,0x4a,0x2e,0x8,0x4a,0xe,0x5a,0xf,0x5b,0x5b,0x43,0x2f,0x17,0x8,0x41,0xe,0x5e,0x2f,0x17,0x8,0x4b,0xe,0x5a,0xf,0x5b,0x43,0x2f,0x17,0x8,0x40,0xe,0x5e,0x2f,0x17,0x8,0x44,0x5f,0x4b,0xe,0x5a,0xf,0x5b,0x43,0x2f,0x17,0x8,0x42,0x43,0x5f,0x42,0x42,0xe,0x5a,0x5a,0x57]

/*: "^([\\u4E00-\\u9FA5A-Za-z0-9_]{2,10}$)" :*/
fileprivate let kAddUrl:[UInt8] = [0xc5,0x8f,0xc2,0xc3,0xdc,0x9b,0xac,0x97,0x97,0x94,0xc3,0xdc,0xa0,0xad,0xa8,0x9c,0xa8,0x94,0xc1,0xc8,0x94,0xe1,0x97,0x94,0xa0,0xc6,0xc4,0xe2,0x99,0x93,0x98,0x97,0xe4,0x8b,0x90]

fileprivate func objectRead(insert num: UInt8) -> UInt8 {
    let value = Int(num) - 103
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "^[0-8]\\d{5}(?!\\d)$" :*/
fileprivate let k_userData:String = "^[0-8"
fileprivate let kCardSumPath:String = "}(?!\\d)$"

/*: "^[a-zA-Z0-9]{6,20}+$" :*/
fileprivate let k_modelGameName:[Character] = ["^","[","a","-","z","A","-","Z","0"]
fileprivate let k_thenTitle:[Character] = ["-","9","]"]
fileprivate let kTextPath:String = "{session,2"

/*: "^(https?:\\/\\/)?([\\da-z\\.-]+)\\.([a-z\\.]{2,6})([\\/\\w \\.-]*)*\\/?$" :*/
fileprivate let kSinceStr:[UInt8] = [0xcb,0xbd,0xfd,0xe1,0xe1,0xe5,0xe6,0xaa,0xaf,0xc9,0xba,0xc9,0xba,0xbc,0xaa,0xbd,0xce,0xc9,0xf1,0xf4,0xb8,0xef,0xc9,0xbb,0xb8,0xc8,0xbe,0xbc,0xc9,0xbb,0xbd,0xce,0xf4,0xb8,0xef,0xc9,0xbb,0xc8,0xee,0xa7,0xb9,0xa3,0xe8,0xbc,0xbd,0xce,0xc9,0xba,0xc9,0xe2,0xb5,0xc9,0xbb,0xb8,0xc8,0xbf,0xbc,0xbf,0xc9,0xba,0xaa,0xb1]

private func actualSucceed(text num: UInt8) -> UInt8 {
    return num ^ 149
}

/*: "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.) {3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$" :*/
fileprivate let k_cellViewUrl:[UInt8] = [0x13,0x65,0x72,0x77,0x65,0x72,0x77,0x7f,0x78,0x16,0x7d,0x60,0x78,0x10,0x31,0x7f,0x16,0x7d,0x60,0x79,0x10,0x16,0x7d,0x60,0x74,0x10,0x31,0x16,0x7d,0x7c,0x10,0x72,0x16,0x7d,0x60,0x74,0x10,0x16,0x7d,0x60,0x74,0x10,0x72,0x64,0x11,0x63,0x64,0x6d,0x36,0x7e,0x30,0x65,0x72,0x77,0x7f,0x78,0x16,0x7d,0x60,0x78,0x10,0x31,0x7f,0x16,0x7d,0x60,0x79,0x10,0x16,0x7d,0x60,0x74,0x10,0x31,0x16,0x7d,0x7c,0x10,0x72,0x16,0x7d,0x60,0x74,0x10,0x16,0x7d,0x60,0x74,0x10,0x72,0x64,0x69]

private func makeIf(frame num: UInt8) -> UInt8 {
    return num ^ 77
}

/*: "(^[0-9]{15}$)|([0-9]{17}([0-9]|[xX])$)" :*/
fileprivate let kArrayMsg:[UInt8] = [0x6a,0x1c,0x19,0x72,0x6f,0x7b,0x1f,0x39,0x73,0x77,0x3f,0x66,0x6b,0x3e,0x6a,0x19,0x72,0x6f,0x7b,0x1f,0x39,0x73,0x75,0x3f,0x6a,0x19,0x72,0x6f,0x7b,0x1f,0x3e,0x19,0x3a,0x1a,0x1f,0x6b,0x66,0x6b]

/*: "SELF MATCHES %@" :*/
fileprivate let k_tapValue:String = "SELF MAstart share content if gift"
fileprivate let k_sizeTouchContent:String = "load"
fileprivate let kJumpId:String = "CHES %@name layer formal view"

/*: "Feedback" :*/
fileprivate let k_mainFormat:String = "gift type m backFeedba"
fileprivate let k_userSourceTableName:String = "CK"

/*: "Enter your feedback…" :*/
fileprivate let kShadowFormat:String = "make info requestEnter "
fileprivate let k_objectValue:String = "equal self manager fee"
fileprivate let k_pathUrl:[Character] = ["d","b","a","c","k","\u{2026}"]

/*: "#999999" :*/
fileprivate let kKitName:String = "#bottom"
fileprivate let kArrayName:[Character] = ["9","9","9","9","9"]

/*: "0/ :*/
fileprivate let kViewMessage:String = "more/"

/*: "Your email (Required) " :*/
fileprivate let k_fileKey:String = "Your eas background equal"
fileprivate let k_imageValue:String = "eqcontent"
fileprivate let kMediumMsg:[Character] = ["r","e","d",")"," "]

/*: "icon_me_feelback_star" :*/
fileprivate let kSectionData:String = "icon_agent self cookie key to"
fileprivate let k_listKey:String = "me_feto error info data group"
fileprivate let kByPageReturnText:String = "_starreturn image"

/*: "#CCCCCC" :*/
fileprivate let k_numberOfText:[Character] = ["#","C","C","C","C","C","C"]

/*: "Send" :*/
fileprivate let k_modeText:[Character] = ["S","e","n","d"]

/*: "#D0D0D0" :*/
fileprivate let kTopUserFormat:String = "#"
fileprivate let kUpSizeText:[Character] = ["D","0","D","0","D","0"]

/*: "Please fill in the content" :*/
fileprivate let k_statusStr:[Character] = ["P","l","e","a","s","e"," ","f","i","l","l"," ","i","n"," ","t","h","e"," ","c","o","n","t","e","n","t"]

/*: "Please enter the correct email address" :*/
fileprivate let kTitleId:[UInt8] = [0x10,0x2c,0x25,0x21,0x33,0x25,0x60,0x25,0x2e,0x34,0x25,0x32,0x60,0x34,0x28,0x25,0x60,0x23,0x2f,0x32,0x32,0x25,0x23,0x34,0x60,0x25,0x2d,0x21,0x29,0x2c,0x60,0x21,0x24,0x24,0x32,0x25,0x33,0x33]

private func colorArray(content num: UInt8) -> UInt8 {
    return num ^ 64
}

/*: "content" :*/
fileprivate let kIconStartName:String = "CONTE"
fileprivate let k_makeTitle:String = "nview"

/*: "contactWay" :*/
fileprivate let k_tabPlayerPath:String = "bottomont"
fileprivate let k_startFormat:String = "from"

/*: "platform" :*/
fileprivate let kVideoUrl:[Character] = ["p","l","a","t","f","o","r","m"]

/*: "iphone" :*/
fileprivate let kMakeFormat:String = "ipcolorone"

/*: "version" :*/
fileprivate let k_blockStr:[Character] = ["v","e","r","s","i","o"]
fileprivate let k_labelData:String = "item"

/*: "type" :*/
fileprivate let k_singlePath:String = "tymanager"

/*: "Operation succeeded" :*/
fileprivate let kUserMsg:String = "Operatself nor type collection"
fileprivate let kCornerFormat:String = "uccvalue"

/*: / :*/
fileprivate let kVideoText:String = "/"

/*: "\n" :*/
fileprivate let k_modelUrl:[Character] = ["\n"]

/*: "Problem statements" :*/
fileprivate let kEqualUrl:String = "self voice color disableProblem "
fileprivate let k_norUrl:String = "stitlet"
fileprivate let kKitMessage:String = "eclickents"

/*: "Feature advice" :*/
fileprivate let kFlowId:[Character] = ["F","e","a","t","u","r","e"," ","a","d","v","i"]
fileprivate let kToKey:String = "devicee"

/*: "Operation questions" :*/
fileprivate let kPendingKey:String = "Operadata view house make label"
fileprivate let kTitleContentModelUrl:String = "self time view opention "
fileprivate let kValueName:[Character] = ["t","i","o","n","s"]

/*: "Others" :*/
fileprivate let k_insideUrl:[Character] = ["O","t","h","e","r","s"]

/*: "#EFEDFF" :*/
fileprivate let k_defineInfoFormat:String = "else true next#EFEDFF"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/15.
//

//: import UIKit
import UIKit

//: enum Validate {
enum ValueValidate {
    //: case email(_: String)
    case email(_: String) //  邮箱
    //: case phoneNumber(_: String)
    case phoneNumber(_: String) //  手机号
    //: case userName(_: String)
    case userName(_: String) //  用户名
    //: case password(_: String)
    case password(_: String) //  密码
    //: case nickName(_: String)
    case nickName(_: String) //  昵称
    //: case postalCode(_: String)
    case postalCode(_: String) //  邮编
    //: case URL(_: String)
    case URL(_: String) //  URL
    //: case IP(_: String)
    case IP(_: String) //  IP
    //: case isChinese(_: String)
    case isChinese(_: String) //  是否全是中文字符
    //: case idNumber(_: String)
    case idNumber(_: String) //  身份证号

    //: var isRight: Bool {
    var isRight: Bool {
        //: var predicateStr: String!
        var predicateStr: String!
        //: var currentObject: String!
        var currentObject: String!
        //: switch self {
        switch self {
        //: case let .email(str):
        case let .email(str):
            //: predicateStr = "^([a-zA-Z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"
            predicateStr = String(bytes: kLeadingMessage.reversed(), encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .phoneNumber(str):
        case let .phoneNumber(str):
            //: predicateStr = "^((1[34578][0-9]{9})|((0\\d{2}-\\d{8})|(0\\d{3}-\\d{7,8})|(0\\d{10,11}))$"
            predicateStr = String(bytes: kErrorFlushTitle.map{$0^115}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .userName(str):
        case let .userName(str):
            //: predicateStr = "^([\\u4E00-\\u9FA5A-Za-z0-9_]{2,10}$)"
            predicateStr = String(bytes: kAddUrl.map{objectRead(insert: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .postalCode(str):
        case let .postalCode(str):
            //: predicateStr = "^[0-8]\\d{5}(?!\\d)$"
            predicateStr = (k_userData.capitalized + "]\\d{5" + kCardSumPath)
            //: currentObject = str
            currentObject = str
        //: case let .password(str):
        case let .password(str):
            //: predicateStr = "^[a-zA-Z0-9]{6,20}+$"
            predicateStr = (String(k_modelGameName) + String(k_thenTitle) + kTextPath.replacingOccurrences(of: "session", with: "6") + "0}+$")
            //: currentObject = str
            currentObject = str
        //: case let .nickName(str):
        case let .nickName(str):
            //: predicateStr = "^([\\u4E00-\\u9FA5A-Za-z0-9_]{2,10}$)"
            predicateStr = String(bytes: kAddUrl.map{objectRead(insert: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .URL(str):
        case let .URL(str):
            //: predicateStr = "^(https?:\\/\\/)?([\\da-z\\.-]+)\\.([a-z\\.]{2,6})([\\/\\w \\.-]*)*\\/?$"
            predicateStr = String(bytes: kSinceStr.map{actualSucceed(text: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let .IP(str):
        case let .IP(str):
            //: predicateStr = "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.) {3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"
            predicateStr = String(bytes: k_cellViewUrl.map{makeIf(frame: $0)}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        //: case let . isChinese(str):
        case let .isChinese(str):
            //: predicateStr = "(^[\u{4e00}-\u{9fa5}]$)"
            predicateStr = "(^[\u{4e00}-\u{9fa5}]$)"
            //: currentObject = str
            currentObject = str
        //: case let . idNumber(str):
        case let .idNumber(str):
            //: predicateStr = "(^[0-9]{15}$)|([0-9]{17}([0-9]|[xX])$)"
            predicateStr = String(bytes: kArrayMsg.map{$0^66}, encoding: .utf8)!
            //: currentObject = str
            currentObject = str
        }
        //: let predicate =  NSPredicate(format: "SELF MATCHES %@", predicateStr)
        let predicate = NSPredicate(format: (String(k_tapValue.prefix(7)) + k_sizeTouchContent.replacingOccurrences(of: "load", with: "T") + String(kJumpId.prefix(7))), predicateStr)
        //: return predicate.evaluate(with: currentObject)
        return predicate.evaluate(with: currentObject)
    }
}

//: class TalkingFeedbackVC: TalkingBaseViewController {
class MakeThen: StartThen {
    //: let limitCount = 300
    let limitCount = 300
    //: let EmialCount = 50
    let EmialCount = 50
    //: var seleteBtn: UIButton?
    var seleteBtn: UIButton?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: self.title = "Feedback".localized
        self.title = (String(k_mainFormat.suffix(6)) + k_userSourceTableName.lowercased()).localized
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: designView()
        image()
        //: addTapGestureRecognizer()
        viewRecognizer()
        //: addKeyboardNotification()
        equalAdd()
    }

    // MARK: - Lazy load

    //: lazy var backView: UIScrollView = {
    lazy var backView: UIScrollView = {
        //: let view = UIScrollView.init()
        let view = UIScrollView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.showsHorizontalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        //: view.showsVerticalScrollIndicator = false
        view.showsVerticalScrollIndicator = false
        //: return view
        return view
        //: }()
    }()

    //: lazy var contView: UIView = {
    lazy var contView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: lazy var inputTView: UIView = {
    lazy var inputTView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.clipsToBounds = true
        view.clipsToBounds = true
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.backgroundColor = .postColor()
        view.backgroundColor = .postColor()
        //: return view
        return view
        //: }()
    }()

    //: lazy var textView: TalkingTextView = {
    lazy var textView: BreakUpTextView = {
        //: let textView = TalkingTextView.init()
        let textView = BreakUpTextView()
        //: textView.placeholder = "Enter your feedback…".localized
        textView.placeholder = (String(kShadowFormat.suffix(6)) + "your" + String(k_objectValue.suffix(4)) + String(k_pathUrl)).localized
        //: textView.placeholderColor = UIColor.init(hex: "#999999")!
        textView.placeholderColor = UIColor(hex: (kKitName.replacingOccurrences(of: "bottom", with: "9") + String(kArrayName)))!
        //: textView.font = UIFont.fontChange(type: .Regular, fontSize: 15)
        textView.font = UIFont.fontChange(type: .Regular, fontSize: 15)
        //: textView.textColor = UIColor.colorStatuteNameApp()
        textView.textColor = UIColor.colorStatuteNameApp()
        //: textView.PlaceholderInsets = UIEdgeInsets(top: 16, left: 16, bottom: 10, right: 16)
        textView.PlaceholderInsets = UIEdgeInsets(top: 16, left: 16, bottom: 10, right: 16)

        //: textView.textContainer.maximumNumberOfLines = 0
        textView.textContainer.maximumNumberOfLines = 0
        //: textView.textContainer.lineBreakMode = .byTruncatingTail
        textView.textContainer.lineBreakMode = .byTruncatingTail
        //: textView.delegate = self
        textView.delegate = self
        //: textView.returnKeyType = UIReturnKeyType.done
        textView.returnKeyType = UIReturnKeyType.done
        //: textView.bounces = false
        textView.bounces = false
        //: textView.backgroundColor = .postColor()
        textView.backgroundColor = .postColor()
        //: numberLB.text =  "0/\(limitCount)"
        numberLB.text = "0/\(limitCount)"
        //: return textView
        return textView
        //: }()
    }()

    //: lazy var numberLB: UILabel = {
    lazy var numberLB: UILabel = {
        //: let LB = UILabel.init()
        let LB = UILabel()
        //: LB.textColor = UIColor.init(hex: "#999999")
        LB.textColor = UIColor(hex: (kKitName.replacingOccurrences(of: "bottom", with: "9") + String(kArrayName)))
        //: LB.font = UIFont.fontChange(type: .Regular, fontSize: 14)
        LB.font = UIFont.fontChange(type: .Regular, fontSize: 14)
        //: LB.text = "0/\(limitCount)"
        LB.text = "0/\(limitCount)"
        //: LB.textAlignment = .right
        LB.textAlignment = .right
        //: return LB
        return LB
        //: }()
    }()

    //: lazy var emailTF: UITextField = {
    lazy var emailTF: UITextField = {
        //: let tf = UITextField.init()
        let tf = UITextField()
        //: tf.backgroundColor = .postColor()
        tf.backgroundColor = .postColor()
        //: tf.textColor = UIColor.colorStatuteNameApp()
        tf.textColor = UIColor.colorStatuteNameApp()
        //: tf.font = UIFont.fontChange(type: .Regular, fontSize: 16)
        tf.font = UIFont.fontChange(type: .Regular, fontSize: 16)
        //: tf.delegate = self
        tf.delegate = self
        //: tf.returnKeyType = UIReturnKeyType.done
        tf.returnKeyType = UIReturnKeyType.done
        //: tf.attributedPlaceholder = NSAttributedString.init(string: "Your email (Required) ".localized, attributes: [
        tf.attributedPlaceholder = NSAttributedString(string: (String(k_fileKey.prefix(6)) + "mail (R" + k_imageValue.replacingOccurrences(of: "content", with: "ui") + String(kMediumMsg)).localized, attributes: [
            //: NSAttributedString.Key.foregroundColor: UIColor.init(hex: "#999999")!])
            NSAttributedString.Key.foregroundColor: UIColor(hex: (kKitName.replacingOccurrences(of: "bottom", with: "9") + String(kArrayName)))!])
        //: tf.clipsToBounds = true
        tf.clipsToBounds = true
        //: tf.layer.cornerRadius = 8
        tf.layer.cornerRadius = 8
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeLanguageManager.shared.direction == .rightToLeft {
            //: tf.textAlignment = .right
            tf.textAlignment = .right
        }
        //: let leftView = UIView()
        let leftView = UIView()
        //: leftView.frame = CGRect(origin: .zero, size: CGSize(width: 30, height: 49))
        leftView.frame = CGRect(origin: .zero, size: CGSize(width: 30, height: 49))

        //: let leftImgView = UIImageView.init()
        let leftImgView = UIImageView()
        //: leftImgView.frame = CGRect(x: 16, y: 20, width: 9, height: 9)
        leftImgView.frame = CGRect(x: 16, y: 20, width: 9, height: 9)
        //: leftImgView.image = UIImage.submitGift(name: "icon_me_feelback_star")
        leftImgView.image = UIImage.submitGift(name: (String(kSectionData.prefix(5)) + String(k_listKey.prefix(5)) + "elback" + String(kByPageReturnText.prefix(5))))
        //: leftView.addSubview(leftImgView)
        leftView.addSubview(leftImgView)
        //: tf.leftView = leftView
        tf.leftView = leftView
        //: tf.leftViewMode = .always
        tf.leftViewMode = .always
        //: return tf
        return tf
        //: }()
    }()

    //: lazy var doneBtn: UIButton = {
    lazy var doneBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.setBackgroundColor(color: UIColor.init(hex: "#CCCCCC")!, forState: .disabled)
        btn.languageUnitState(color: UIColor(hex: (String(k_numberOfText)))!, forState: .disabled)
        //: btn.setBackgroundColor(color: UIColor.appThemeColor(), forState: .normal)
        btn.languageUnitState(color: UIColor.increase(), forState: .normal)
        //: btn.setTitle("Send".localized, for: .normal)
        btn.setTitle((String(k_modeText)).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 17)
        //: btn.addTarget(self, action: #selector(doneBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(handle), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFeedbackVC {
extension MakeThen {
    //: @objc func TagBtnClick(sender: UIButton) {
    @objc func buttonSender(sender: UIButton) {
        //: seleteBtn?.isSelected = false
        seleteBtn?.isSelected = false
        //: seleteBtn?.layer.borderColor = UIColor.init(hex: "#D0D0D0")?.cgColor
        seleteBtn?.layer.borderColor = UIColor(hex: (kTopUserFormat.capitalized + String(kUpSizeText)))?.cgColor
        //: sender.isSelected = !sender.isSelected
        sender.isSelected = !sender.isSelected
        //: seleteBtn = sender
        seleteBtn = sender
        //: seleteBtn!.layer.borderColor = UIColor.clear.cgColor
        seleteBtn!.layer.borderColor = UIColor.clear.cgColor
    }

    //: @objc func doneBtnClick() {
    @objc func handle() {
        //: if seleteBtn == nil || textView.text.count<=0 || emailTF.text!.count<=0 {
        if seleteBtn == nil || textView.text.count <= 0 || emailTF.text!.count <= 0 {
            //: self.func__showStatusBarErrorMsg(showMsg: "Please fill in the content".localized)
            self.arcInfo(showMsg: (String(k_statusStr)).localized)
            //: return
            return
        }

        //: if LanguageManager.shared.direction == .leftToRight {
        if MakeLanguageManager.shared.direction == .leftToRight {
            //: if !Validate.email(emailTF.text!).isRight {
            if !ValueValidate.email(emailTF.text!).isRight {
                //: self.func__showStatusBarErrorMsg(showMsg: "Please enter the correct email address".localized)
                self.arcInfo(showMsg: String(bytes: kTitleId.map{colorArray(content: $0)}, encoding: .utf8)!.localized)
                //: return
                return
            }
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["content"] = textView.text
        dict[(kIconStartName.lowercased() + k_makeTitle.replacingOccurrences(of: "view", with: "t"))] = textView.text
        //: dict["contactWay"] = emailTF.text
        dict[(k_tabPlayerPath.replacingOccurrences(of: "bottom", with: "c") + "actWa" + k_startFormat.replacingOccurrences(of: "from", with: "y"))] = emailTF.text
        //: dict["platform"] = "iphone"
        dict[(String(kVideoUrl))] = (kMakeFormat.replacingOccurrences(of: "color", with: "h"))
        //: dict["version"] = AppVersion
        dict[(String(k_blockStr) + k_labelData.replacingOccurrences(of: "item", with: "n"))] = userFileContent
        //: dict["type"] = String((seleteBtn?.tag ?? 100)-100)
        dict[(k_singlePath.replacingOccurrences(of: "manager", with: "pe"))] = String((seleteBtn?.tag ?? 100) - 100)

        //: ProgressHUD.show()
        EndProgressHUD.listHide()

        //: TalkingMeRequestTool.req_Feedback(params: dict) { succeed, result, errorModel in
        FileListRequestTool.toolCompletion(params: dict) { succeed, _, _ in
            //: EndProgressHUD.popEnable()
            EndProgressHUD.popEnable()
            //: if succeed {
            if succeed {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Operation succeeded".localized)
                self.rear(showMsg: (String(kUserMsg.prefix(6)) + "ion s" + kCornerFormat.replacingOccurrences(of: "value", with: "e") + "eded").localized)
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
            }
        }
    }

    //: func addKeyboardNotification() {
    func equalAdd() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(keyboardWillShow(notification:)),
                                               selector: #selector(clever(notification:)),
                                               //: name: UIResponder.keyboardWillShowNotification,
                                               name: UIResponder.keyboardWillShowNotification,
                                               //: object: nil)
                                               object: nil)
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(keyboardWillHide(notification:)),
                                               selector: #selector(imageThen(notification:)),
                                               //: name: UIResponder.keyboardWillHideNotification,
                                               name: UIResponder.keyboardWillHideNotification,
                                               //: object: nil)
                                               object: nil)
    }

    //: @objc func keyboardWillShow(notification: Notification) {
    @objc func clever(notification: Notification) {
        //: guard emailTF.isFirstResponder else { return }
        guard emailTF.isFirstResponder else { return }
        //: guard let info = notification.userInfo else { return }
        guard let info = notification.userInfo else { return }
        //: let value = info[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue
        let value = info[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue
        //: let frame = value?.cgRectValue ?? .zero
        let frame = value?.cgRectValue ?? .zero
        //: let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25
        let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25
        //: guard (emailTF.bottom + StatusBarNavigationBarHeight) > frame.minY else { return }
        guard (emailTF.bottom + appTurnName) > frame.minY else { return }

        //: let y = (emailTF.bottom + StatusBarNavigationBarHeight) - frame.minY
        let y = (emailTF.bottom + appTurnName) - frame.minY
        //: UIView.animate(withDuration: duration) {
        UIView.animate(withDuration: duration) {
            //: self.backView.transform = CGAffineTransform(translationX: 0, y: -y)
            self.backView.transform = CGAffineTransform(translationX: 0, y: -y)
        }
    }

    //: @objc func keyboardWillHide(notification: Notification) {
    @objc func imageThen(notification: Notification) {
        //: guard let info = notification.userInfo else { return }
        guard let info = notification.userInfo else { return }
        //: let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25
        let duration = info[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0.25

        //: UIView.animate(withDuration: duration) {
        UIView.animate(withDuration: duration) {
            //: self.backView.transform = .identity
            self.backView.transform = .identity
        }
    }
}

// MARK: - UITextViewDelegate, UITextFieldDelegate

//: extension TalkingFeedbackVC: UITextViewDelegate, UITextFieldDelegate {
extension MakeThen: UITextViewDelegate, UITextFieldDelegate {
    //: public func textViewDidChange(_ textView: UITextView) {
    public func textViewDidChange(_ textView: UITextView) {
        //: if textView.text.count > limitCount {
        if textView.text.count > limitCount {
            // 获得已输出字数与正输入字母数
            //: let selectRange = textView.markedTextRange
            let selectRange = textView.markedTextRange

            // 获取高亮部分 － 如果有联想词则解包成功
            //: if let selectRange = selectRange {
            if let selectRange = selectRange {
                //: let position =  textView.position(from: (selectRange.start), offset: 0)
                let position = textView.position(from: selectRange.start, offset: 0)
                //: if (position != nil) {
                if position != nil {
                    //: return
                    return
                }
            }

            //: let textContent = textView.text ?? ""
            let textContent = textView.text ?? ""
            //: let textNum = textContent.count
            let textNum = textContent.count

            // 截取
            //: if textNum > limitCount && limitCount > 0 {
            if textNum > limitCount && limitCount > 0 {
                //: textView.text = string_prefix(index: limitCount, text: textContent)
                textView.text = self.from(index: limitCount, text: textContent)
            }
        }
        //: numberLB.text =  "\(textView.text.count)/\(limitCount)"
        numberLB.text = "\(textView.text.count)/\(limitCount)"
    }

    //: public func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
    public func textViewShouldBeginEditing(_: UITextView) -> Bool {
        //: numberLB.isHidden = false
        numberLB.isHidden = false
        //: return true
        return true
    }

    //: public func textViewDidEndEditing(_ textView: UITextView) {
    public func textViewDidEndEditing(_ textView: UITextView) {
        //: if textView.text.isEmpty {
        if textView.text.isEmpty {
            //: numberLB.isHidden = false
            numberLB.isHidden = false
            //: } else {
        } else {
            //: numberLB.isHidden = true
            numberLB.isHidden = true
        }
    }

    //: public func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
    public func textView(_ textView: UITextView, shouldChangeTextIn _: NSRange, replacementText text: String) -> Bool {
        //: if textView.returnKeyType == .done {
        if textView.returnKeyType == .done {
            //: if text == "\n" {
            if text == "\n" {
                //: textView.resignFirstResponder()
                textView.resignFirstResponder()
            }
            //: return true
            return true
        }
        //: return true
        return true
    }

    // 字符串的截取 从头截取到指定index
    //: private func string_prefix(index: Int,text:String) -> String {
    private func from(index: Int, text: String) -> String {
        //: if text.count <= index {
        if text.count <= index {
            //: return text
            return text
            //: } else {
        } else {
            //: let index = text.index(text.startIndex, offsetBy: index)
            let index = text.index(text.startIndex, offsetBy: index)
            //: let str = text.prefix(upTo: index)
            let str = text.prefix(upTo: index)
            //: return String(str)
            return String(str)
        }
    }

    //: func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //: textField.resignFirstResponder()
        textField.resignFirstResponder()

        //: return true
        return true
    }

    //: func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    func textField(_ textField: UITextField, shouldChangeCharactersIn _: NSRange, replacementString string: String) -> Bool {
        //: if textField.text!.count+string.count>EmialCount || textField.text!.count+string.count <= 0 {
        if textField.text!.count + string.count > EmialCount || textField.text!.count + string.count <= 0 {
            //: return false
            return false
        }
        //: return true
        return true
    }
}

// MARK: - UI

//: extension TalkingFeedbackVC {
extension MakeThen {
    //: func designView() {
    func image() {
        //: self.view.addSubview(backView)
        self.view.addSubview(backView)
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
        //: backView.addSubview(contView)
        backView.addSubview(contView)
        //: contView.snp.makeConstraints { make in
        contView.snp.makeConstraints { make in
            //: make.leading.trailing.top.bottom.equalTo(backView)
            make.leading.trailing.top.bottom.equalTo(backView)
        }

        //: contView.addSubview(inputTView)
        contView.addSubview(inputTView)
        //: inputTView.snp.makeConstraints { make in
        inputTView.snp.makeConstraints { make in
            //: make.leading.equalTo(contView).offset(15)
            make.leading.equalTo(contView).offset(15)
            //: make.trailing.equalTo(contView.snp.trailing).offset(-15)
            make.trailing.equalTo(contView.snp.trailing).offset(-15)
            //: make.top.equalTo(contView).offset(128)
            make.top.equalTo(contView).offset(128)
            //: make.height.equalTo(210)
            make.height.equalTo(210)
        }

        //: inputTView.addSubview(textView)
        inputTView.addSubview(textView)
        //: inputTView.addSubview(numberLB)
        inputTView.addSubview(numberLB)
        //: textView.snp.makeConstraints { make in
        textView.snp.makeConstraints { make in
            //: make.leading.trailing.top.equalTo(inputTView)
            make.leading.trailing.top.equalTo(inputTView)
            //: make.bottom.equalTo(inputTView.snp.bottom).offset(-40)
            make.bottom.equalTo(inputTView.snp.bottom).offset(-40)
        }
        //: numberLB.snp.makeConstraints { make in
        numberLB.snp.makeConstraints { make in
            //: make.trailing.equalTo(inputTView.snp.trailing).offset(-16)
            make.trailing.equalTo(inputTView.snp.trailing).offset(-16)
            //: make.bottom.equalTo(inputTView.snp.bottom).offset(-12)
            make.bottom.equalTo(inputTView.snp.bottom).offset(-12)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
        //: contView.addSubview(emailTF)
        contView.addSubview(emailTF)
        //: emailTF.snp.makeConstraints { make in
        emailTF.snp.makeConstraints { make in
            //: make.leading.equalTo(contView).offset(15)
            make.leading.equalTo(contView).offset(15)
            //: make.trailing.equalTo(contView.snp.trailing).offset(-15)
            make.trailing.equalTo(contView.snp.trailing).offset(-15)
            //: make.top.equalTo(inputTView.snp.bottom).offset(16)
            make.top.equalTo(inputTView.snp.bottom).offset(16)
            //: make.height.equalTo(49)
            make.height.equalTo(49)
        }

        //: contView.addSubview(doneBtn)
        contView.addSubview(doneBtn)
        //: doneBtn.snp.makeConstraints { make in
        doneBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(contView).offset(54)
            make.leading.equalTo(contView).offset(54)
            //: make.trailing.equalTo(contView.snp.trailing).offset(-54)
            make.trailing.equalTo(contView.snp.trailing).offset(-54)
            //: make.top.equalTo(emailTF.snp.bottom).offset(111)
            make.top.equalTo(emailTF.snp.bottom).offset(111)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }

        //: let arr = ["Problem statements".localized,
        let arr = [(String(kEqualUrl.suffix(8)) + k_norUrl.replacingOccurrences(of: "title", with: "ta") + kKitMessage.replacingOccurrences(of: "click", with: "m")).localized,
                   //: "Feature advice".localized,
                   (String(kFlowId) + kToKey.replacingOccurrences(of: "device", with: "c")).localized,
                   //: "Operation questions".localized,
                   (String(kPendingKey.prefix(5)) + String(kTitleContentModelUrl.suffix(5)) + "ques" + String(kValueName)).localized,
                   //: "Others".localized]
                   (String(k_insideUrl)).localized]

        //: for i in 0..<arr.count {
        for i in 0 ..< arr.count {
            //: let xz = 15
            let xz = 15
            //: let yz = 16
            let yz = 16
            //: let Width = (Int(ScreenWidth)-xz*3)/2
            let Width = (Int(constFormalContent) - xz * 3) / 2
            //: let height = 38
            let height = 38
            //: let X = xz+(xz + Width)*(i%2)
            let X = xz + (xz + Width) * (i % 2)
            //: let Y = yz+(yz+height)*(i/2)
            let Y = yz + (yz + height) * (i / 2)

            //: let btn = UIButton.init()
            let btn = UIButton()
            //: btn.frame =  CGRect.init(x: X, y: Y , width: Width, height: height)
            btn.frame = CGRect(x: X, y: Y, width: Width, height: height)
            //: btn.setTitle(arr[i], for: .normal)
            btn.setTitle(arr[i], for: .normal)
            //: btn.setTitleColor(.black, for: .normal)
            btn.setTitleColor(.black, for: .normal)
            //: btn.setTitleColor(.appThemeColor(), for: .selected)
            btn.setTitleColor(.increase(), for: .selected)

            //: btn.titleLabel?.font = UIFont.fontChange(type: .Regular, fontSize: 15)
            btn.titleLabel?.font = UIFont.fontChange(type: .Regular, fontSize: 15)
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue || TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
            if UserViewToolThen.share.interfaceLang == PlayerSubqueryConvertible.es.rawValue || UserViewToolThen.share.interfaceLang == PlayerSubqueryConvertible.pt.rawValue {
                //: btn.titleLabel?.font = UIFont.fontChange(type: .Regular, fontSize: 13)
                btn.titleLabel?.font = UIFont.fontChange(type: .Regular, fontSize: 13)
            }
            //: btn.layer.cornerRadius = 19
            btn.layer.cornerRadius = 19
            //: btn.layer.borderWidth = 1
            btn.layer.borderWidth = 1
            //: btn.layer.borderColor = UIColor.init(hex: "#D0D0D0")?.cgColor
            btn.layer.borderColor = UIColor(hex: (kTopUserFormat.capitalized + String(kUpSizeText)))?.cgColor
            //: btn.setBackgroundColor(color: UIColor.init(hex: "#EFEDFF")!, forState: .selected)
            btn.languageUnitState(color: UIColor(hex: (String(k_defineInfoFormat.suffix(7))))!, forState: .selected)
            //: btn.setBackgroundColor(color: .white, forState: .normal)
            btn.languageUnitState(color: .white, forState: .normal)
            //: btn.tag = 100+i
            btn.tag = 100 + i
            //: btn.addTarget( self, action: #selector(TagBtnClick(sender:)), for: .touchUpInside)
            btn.addTarget(self, action: #selector(buttonSender(sender:)), for: .touchUpInside)
            //: contView.addSubview(btn)
            contView.addSubview(btn)
        }

        //: contView.snp.remakeConstraints { make in
        contView.snp.remakeConstraints { make in
            //: make.bottom.equalTo(doneBtn.snp.bottom).offset(50)
            make.bottom.equalTo(doneBtn.snp.bottom).offset(50)
            //: make.width.equalTo(backView)
            make.width.equalTo(backView)
        }
    }
}
