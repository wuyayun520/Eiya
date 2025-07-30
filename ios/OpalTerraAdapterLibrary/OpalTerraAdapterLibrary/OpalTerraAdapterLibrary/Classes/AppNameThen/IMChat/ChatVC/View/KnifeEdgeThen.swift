
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kViewText:[UInt8] = [0x35,0x32,0x35,0x28,0x74,0x3f,0x33,0x38,0x39,0x2e,0x66,0x75,0x7c,0x34,0x3d,0x2f,0x7c,0x32,0x33,0x28,0x7c,0x3e,0x39,0x39,0x32,0x7c,0x35,0x31,0x2c,0x30,0x39,0x31,0x39,0x32,0x28,0x39,0x38]

private func timeUnit(pic num: UInt8) -> UInt8 {
    return num ^ 92
}

/*: "group_someoneatme" :*/
fileprivate let kRestId:String = "gruser"
fileprivate let kLikeId:String = "segment"
fileprivate let kInfoName:String = "neatname"

/*: "Someone@ me" :*/
fileprivate let k_featureFormat:String = "method var modelSomeone@ "
fileprivate let kListRowName:String = "submite"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  KnifeEdgeThen.swift
//  AbroadTalking
//
//  Created by young on 2023/4/11.
//

//: import UIKit
import UIKit

//: class TalkingSomeoneAtMeView: UIView {
class KnifeEdgeThen: UIView {
    //: private override init(frame: CGRect) {
    override private init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        toTag()
        //: setupSubViewsConstraint()
        keyAfter()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kViewText.map{timeUnit(pic: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: lazy var mentionBtn: UIButton = {
    lazy var mentionBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 15)
        //: btn.setBackgroundImage(UIImage.submitGift(name: "group_someoneatme"), for: .normal)
        btn.setBackgroundImage(UIImage.submitGift(name: (kRestId.replacingOccurrences(of: "user", with: "ou") + "p_som" + kLikeId.replacingOccurrences(of: "segment", with: "eo") + kInfoName.replacingOccurrences(of: "name", with: "me"))), for: .normal)
        //: btn.setBackgroundImage(UIImage.submitGift(name: "group_someoneatme"), for: .highlighted)
        btn.setBackgroundImage(UIImage.submitGift(name: (kRestId.replacingOccurrences(of: "user", with: "ou") + "p_som" + kLikeId.replacingOccurrences(of: "segment", with: "eo") + kInfoName.replacingOccurrences(of: "name", with: "me"))), for: .highlighted)
        //: btn.setTitle("Someone@ me".localized, for: .normal)
        btn.setTitle((String(k_featureFormat.suffix(9)) + kListRowName.replacingOccurrences(of: "submit", with: "m")).localized, for: .normal)
        //: btn.setTitleColor(UIColor.msgTipsColor(), for: .normal)
        btn.setTitleColor(UIColor.tips(), for: .normal)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Layout

//: extension TalkingSomeoneAtMeView {
extension KnifeEdgeThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func toTag() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.addSubview(mentionBtn)
        self.addSubview(mentionBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func keyAfter() {
        //: mentionBtn.snp.makeConstraints { make in
        mentionBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
