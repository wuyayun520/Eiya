
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kIntervalerestedTitle:[UInt8] = [0xa3,0xa4,0xa3,0xbe,0xe2,0xa9,0xa5,0xae,0xaf,0xb8,0xf0,0xe3,0xea,0xa2,0xab,0xb9,0xea,0xa4,0xa5,0xbe,0xea,0xa8,0xaf,0xaf,0xa4,0xea,0xa3,0xa7,0xba,0xa6,0xaf,0xa7,0xaf,0xa4,0xbe,0xaf,0xae]

private func viewDraw(moment num: UInt8) -> UInt8 {
    return num ^ 202
}

/*: "What would you like to share with others? (Free)" :*/
fileprivate let kOriginKitId:[UInt8] = [0x54,0x6b,0x62,0x77,0x23,0x74,0x6c,0x76,0x6f,0x67,0x23,0x7a,0x6c,0x76,0x23,0x6f,0x6a,0x68,0x66,0x23,0x77,0x6c,0x23,0x70,0x6b,0x62,0x71,0x66,0x23,0x74,0x6a,0x77,0x6b,0x23,0x6c,0x77,0x6b,0x66,0x71,0x70,0x3c,0x23,0x2b,0x45,0x71,0x66,0x66,0x2a]

private func toTable(hidden num: UInt8) -> UInt8 {
    return num ^ 3
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  JoinReusableView.swift
//  AbroadTalking
//
//  Created by young on 2022/9/21.
//

//: import UIKit
import UIKit

// 限制长度
//: let kFreeTextLengthLimit = 300
let data_videoValue = 300

//: class FreeCollectionHeaderView: UICollectionReusableView {
class JoinReusableView: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kIntervalerestedTitle.map{viewDraw(moment: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        setupPendingSubviewsTable()
        //: setupSubViewsConstraint()
        monetaryValue()
    }

    // MARK: - Lazy load

    //: lazy var textView: YYTextView = {
    lazy var textView: YYTextView = {
        //: let tv = YYTextView()
        let tv = YYTextView()
        //: tv.textColor = UIColor.colorStatuteNameApp()
        tv.textColor = UIColor.colorStatuteNameApp()
        //: tv.font = UIFont.fontChange(type: .Regular, fontSize: 16)
        tv.font = UIFont.fontChange(type: .Regular, fontSize: 16)
        //: tv.placeholderText = "What would you like to share with others? (Free)".localized
        tv.placeholderText = String(bytes: kOriginKitId.map{toTable(hidden: $0)}, encoding: .utf8)!.localized
        //: tv.placeholderFont = UIFont.fontChange(type: .Regular, fontSize: 15)
        tv.placeholderFont = UIFont.fontChange(type: .Regular, fontSize: 15)
        //: tv.placeholderTextColor = UIColor.appValueDetailColor()
        tv.placeholderTextColor = UIColor.childMenu()
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeLanguageManager.shared.direction == .rightToLeft {
            //: tv.textAlignment = .right
            tv.textAlignment = .right
        }
        //: tv.delegate = self
        tv.delegate = self
        //: return tv
        return tv
        //: }()
    }()

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - ParagraphBlockOutTask

//: extension FreeCollectionHeaderView: YYTextViewDelegate {
extension JoinReusableView: YYTextViewDelegate {
    func textView(_ textView: YYTextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        //: let string = textView.text + text
        let string = textView.text + text
        //: guard string.count < kFreeTextLengthLimit else {
        guard string.count < data_videoValue else {
            //: return false
            return false
        }

        //: return true
        return true
    }
}

// MARK: - LayoutUI

//: extension FreeCollectionHeaderView {
extension JoinReusableView {
    // 添加视图
    //: private func setupSubviews() {
    private func setupPendingSubviewsTable() {
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(textView)
        backView.addSubview(textView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func monetaryValue() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.equalTo(6)
            make.top.equalTo(6)
            //: make.bottom.equalTo(-16)
            make.bottom.equalTo(-16)
        }
        //: textView.snp.makeConstraints { make in
        textView.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.top.equalTo(20)
            make.top.equalTo(20)
            //: make.bottom.equalTo(-20)
            make.bottom.equalTo(-20)
        }
    }
}
