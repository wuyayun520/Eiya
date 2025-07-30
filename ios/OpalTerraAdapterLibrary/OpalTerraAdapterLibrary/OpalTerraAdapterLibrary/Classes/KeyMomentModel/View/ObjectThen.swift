
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kFirstMessage:[UInt8] = [0x93,0x98,0x93,0x9e,0x52,0x8d,0x99,0x8e,0x8f,0x9c,0x64,0x53,0x4a,0x92,0x8b,0x9d,0x4a,0x98,0x99,0x9e,0x4a,0x8c,0x8f,0x8f,0x98,0x4a,0x93,0x97,0x9a,0x96,0x8f,0x97,0x8f,0x98,0x9e,0x8f,0x8e]

fileprivate func deleteRef(ret num: UInt8) -> UInt8 {
    let value = Int(num) + 214
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "#F0F0F0" :*/
fileprivate let kControlContent:String = "do from make start temp#F0F0F"
fileprivate let k_rowMessage:[Character] = ["0"]

/*: "icon_fbmoments_notice" :*/
fileprivate let kKitStr:String = "label"
fileprivate let kSectionValue:String = "con_fmodel answer"
fileprivate let kNameModelValue:String = "intimate m if let afterts_notice"

/*: "Don’t post content that induces others to send gifts or other money-related cintent." :*/
fileprivate let kSharedData:[UInt8] = [0xe5,0xce,0xcf,0x43,0x21,0x38,0xd5,0x81,0xd1,0xce,0xd2,0xd5,0x81,0xc2,0xce,0xcf,0xd5,0xc4,0xcf,0xd5,0x81,0xd5,0xc9,0xc0,0xd5,0x81,0xc8,0xcf,0xc5,0xd4,0xc2,0xc4,0xd2,0x81,0xce,0xd5,0xc9,0xc4,0xd3,0xd2,0x81,0xd5,0xce,0x81,0xd2,0xc4,0xcf,0xc5,0x81,0xc6,0xc8,0xc7,0xd5,0xd2,0x81,0xce,0xd3,0x81,0xce,0xd5,0xc9,0xc4,0xd3,0x81,0xcc,0xce,0xcf,0xc4,0xd8,0x8c,0xd3,0xc4,0xcd,0xc0,0xd5,0xc4,0xc5,0x81,0xc2,0xc8,0xcf,0xd5,0xc4,0xcf,0xd5,0x8f]

private func giftLab(leading num: UInt8) -> UInt8 {
    return num ^ 161
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ObjectThen.swift
//  AbroadTalking
//
//  Created by young on 2022/9/21.
//

//: import UIKit
import UIKit

//: class FreeCollectionFooterView: UICollectionReusableView {
class ObjectThen: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kFirstMessage.map{deleteRef(ret: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        awake()
        //: setupSubViewsConstraint()
        goThrough()
    }

    // MARK: - Lazy load

    //: private lazy var noticeView: UIView = {
    private lazy var noticeView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#F0F0F0")
        v.backgroundColor = UIColor(hex: (String(kControlContent.suffix(6)) + String(k_rowMessage)))
        //: v.layer.cornerRadius = 6
        v.layer.cornerRadius = 6
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var iconImgView: UIImageView = {
    private lazy var iconImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.submitGift(name: "icon_fbmoments_notice"))
        let imgV = UIImageView(image: UIImage.submitGift(name: (kKitStr.replacingOccurrences(of: "label", with: "i") + String(kSectionValue.prefix(5)) + "bmomen" + String(kNameModelValue.suffix(9)))))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var tipLabel: UILabel = {
    private lazy var tipLabel: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Don’t post content that induces others to send gifts or other money-related cintent.".localized
        lab.text = String(bytes: kSharedData.map{giftLab(leading: $0)}, encoding: .utf8)!.localized
        //: lab.font = UIFont.fontChange(type: .Regular, fontSize: 13)
        lab.font = UIFont.fontChange(type: .Regular, fontSize: 13)
        //: lab.textColor = UIColor.appValueColor()
        lab.textColor = UIColor.scaleValueTo()
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - LayoutUI

//: extension FreeCollectionFooterView {
extension ObjectThen {
    // 添加视图
    //: private func setupSubviews() {
    private func awake() {
        //: self.addSubview(noticeView)
        self.addSubview(noticeView)
        //: noticeView.addSubview(iconImgView)
        noticeView.addSubview(iconImgView)
        //: noticeView.addSubview(tipLabel)
        noticeView.addSubview(tipLabel)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func goThrough() {
        //: noticeView.snp.makeConstraints { make in
        noticeView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(10)
            make.top.equalTo(10)
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue ||
            if UserViewToolThen.share.interfaceLang == PlayerSubqueryConvertible.es.rawValue ||
                //: TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
                UserViewToolThen.share.interfaceLang == PlayerSubqueryConvertible.pt.rawValue
            {
                //: make.size.equalTo(CGSize(width: ScreenWidth-30, height: 56))
                make.size.equalTo(CGSize(width: constFormalContent - 30, height: 56))
                //: } else {
            } else {
                //: make.size.equalTo(CGSize(width: ScreenWidth-30, height: 46))
                make.size.equalTo(CGSize(width: constFormalContent - 30, height: 46))
            }
        }
        //: iconImgView.snp.makeConstraints { make in
        iconImgView.snp.makeConstraints { make in
            //: make.leading.equalTo(9)
            make.leading.equalTo(9)
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.size.equalTo(CGSize(width: 15, height: 15))
            make.size.equalTo(CGSize(width: 15, height: 15))
        }
        //: tipLabel.snp.makeConstraints { make in
        tipLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(iconImgView.snp.trailing).offset(4)
            make.leading.equalTo(iconImgView.snp.trailing).offset(4)
            //: make.trailing.equalTo(-9)
            make.trailing.equalTo(-9)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
}
