
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kShareFormat:[UInt8] = [0x3,0x4,0x3,0x1e,0x42,0x9,0x5,0xe,0xf,0x18,0x50,0x43,0x4a,0x2,0xb,0x19,0x4a,0x4,0x5,0x1e,0x4a,0x8,0xf,0xf,0x4,0x4a,0x3,0x7,0x1a,0x6,0xf,0x7,0xf,0x4,0x1e,0xf,0xe]

private func titleSendShould(change num: UInt8) -> UInt8 {
    return num ^ 106
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BreakUpTextView.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/10/7.
//

//: import UIKit
import UIKit

//: class TalkingTextView: UITextView {
class BreakUpTextView: UITextView {
    /// 占位文字
    //: var placeholder: String?
    var placeholder: String?
    /// 占位文字颜色
    //: var placeholderColor: UIColor? = UIColor.appValueDetailColor()
    var placeholderColor: UIColor? = UIColor.childMenu()

//    var PlaceholderInsets: UIEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)

    //: var PlaceholderInsets: UIEdgeInsets? {
    var PlaceholderInsets: UIEdgeInsets? {
        //: willSet {
        willSet {}
        //: didSet {
        didSet {
            //: self.textContainerInset = self.PlaceholderInsets!
            self.textContainerInset = self.PlaceholderInsets!
        }
    }

    //: override init(frame: CGRect, textContainer: NSTextContainer?) {
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        //: super.init(frame: frame, textContainer: textContainer)
        super.init(frame: frame, textContainer: textContainer)
        // 设置默认字体
        //: self.font = UIFont.systemFont(ofSize: 15)
        self.font = UIFont.systemFont(ofSize: 15)
        // 使用通知监听文字改变
        //: NotificationCenter.default.addObserver(self, selector: #selector(textDidChange(_:)), name: UITextView.textDidChangeNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(mottleChange(_:)), name: UITextView.textDidChangeNotification, object: nil)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kShareFormat.map{titleSendShould(change: $0)}, encoding: .utf8)!)
    }

    //: override func draw(_ rect: CGRect) {
    override func draw(_ rect: CGRect) {
        // 如果有文字,就直接返回,不需要画占位文字
        //: if self.hasText {
        if self.hasText {
            //: return
            return
        }
        // 属性
        //: let attrs: [NSAttributedString.Key: Any] = [NSAttributedString.Key.foregroundColor: self.placeholderColor as Any, NSAttributedString.Key.font: self.font!]
        let attrs: [NSAttributedString.Key: Any] = [NSAttributedString.Key.foregroundColor: self.placeholderColor as Any, NSAttributedString.Key.font: self.font!]

        // 文字
        //: var rect1 = rect
        var rect1 = rect
        //: rect1.origin.x = self.PlaceholderInsets!.left
        rect1.origin.x = self.PlaceholderInsets!.left
        //: rect1.origin.y = self.PlaceholderInsets!.top
        rect1.origin.y = self.PlaceholderInsets!.top
        //: rect1.size.width -= 2*rect1.origin.x
        rect1.size.width -= 2 * rect1.origin.x
        //: (self.placeholder! as NSString).draw(in: rect1, withAttributes: attrs)
        (self.placeholder! as NSString).draw(in: rect1, withAttributes: attrs)
    }

    //: @objc func textDidChange(_ note: Notification) {
    @objc func mottleChange(_: Notification) {
        // 会重新调用drawRect:方法
        //: self.setNeedsDisplay()
        self.setNeedsDisplay()
    }
}
