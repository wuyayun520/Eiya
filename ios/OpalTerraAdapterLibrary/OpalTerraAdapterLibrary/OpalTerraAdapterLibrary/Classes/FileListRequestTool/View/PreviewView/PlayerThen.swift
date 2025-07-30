
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kHiddenMessage:[UInt8] = [0x41,0x46,0x41,0x4c,0x0,0x3b,0x47,0x3c,0x3d,0x4a,0x12,0x1,0xf8,0x40,0x39,0x4b,0xf8,0x46,0x47,0x4c,0xf8,0x3a,0x3d,0x3d,0x46,0xf8,0x41,0x45,0x48,0x44,0x3d,0x45,0x3d,0x46,0x4c,0x3d,0x3c]

fileprivate func successMatch(text num: UInt8) -> UInt8 {
    let value = Int(num) + 40
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PlayerThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/12.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class TPreviewCommentView: UIView {
class PlayerThen: UIView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.willSubviews()
        //: self.setupSubViewsConstraint()
        self.writeUp()
        //: self.bindInteraction()
        self.userBy()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kHiddenMessage.map{successMatch(text: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var contentLabel = UILabel().then {
    lazy var contentLabel = UILabel().then {
        //: $0.textColor = .white
        $0.textColor = .white
        //: $0.font = .fontChange(type: .Regular, fontSize: 16)
        $0.font = .fontChange(type: .Regular, fontSize: 16)
    }
}

// MARK: - Bind && Event

//: extension TPreviewCommentView {
extension PlayerThen {
    //: private func bindInteraction() {
    private func userBy() {}
}

// MARK: - update

//: extension TPreviewCommentView {
extension PlayerThen {
    //: func updateCommentContent(content: String) {
    func mic(content: String) {
        //: if content.isEmptyString {
        if content.isEmptyString {
            //: self.isHidden = true
            self.isHidden = true
            //: } else {
        } else {
            //: self.isHidden = false
            self.isHidden = false

            //: let attributes = [.foregroundColor: UIColor.white, .font: UIFont.fontChange(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            let attributes = [.foregroundColor: UIColor.white, .font: UIFont.fontChange(type: .Regular, fontSize: 16)] as [NSAttributedString.Key: Any]
            //: let attributeStr = NSMutableAttributedString(string: content)
            let attributeStr = NSMutableAttributedString(string: content)
            //: attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))
            attributeStr.addAttributes(attributes, range: NSRange(location: 0, length: attributeStr.length))

            //: let paragraph = NSMutableParagraphStyle()
            let paragraph = NSMutableParagraphStyle()
            //: paragraph.lineSpacing = 3
            paragraph.lineSpacing = 3
            //: attributeStr.addAttribute(.paragraphStyle, value: paragraph, range: NSRange(location: 0, length: attributeStr.length))
            attributeStr.addAttribute(.paragraphStyle, value: paragraph, range: NSRange(location: 0, length: attributeStr.length))

            //: contentLabel.attributedText = attributeStr
            contentLabel.attributedText = attributeStr
        }
    }
}

// MARK: Layout

//: extension TPreviewCommentView {
extension PlayerThen {
    //: private func setupSubviews() {
    private func willSubviews() {
        //: self.addSubview(contentLabel)
        self.addSubview(contentLabel)
    }

    //: private func setupSubViewsConstraint() {
    private func writeUp() {
        //: contentLabel.snp.makeConstraints { make in
        contentLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(actualHeight(h: 12))
            make.top.equalTo(actualHeight(h: 12))
            //: make.bottom.equalTo(actualHeight(h: -12))
            make.bottom.equalTo(actualHeight(h: -12))
        }
    }
}
