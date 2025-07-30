
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_withPicData:[UInt8] = [0xc0,0xc5,0xc0,0xcb,0x7f,0xba,0xc6,0xbb,0xbc,0xc9,0x91,0x80,0x77,0xbf,0xb8,0xca,0x77,0xc5,0xc6,0xcb,0x77,0xb9,0xbc,0xbc,0xc5,0x77,0xc0,0xc4,0xc7,0xc3,0xbc,0xc4,0xbc,0xc5,0xcb,0xbc,0xbb]

fileprivate func addStatus(child num: UInt8) -> UInt8 {
    let value = Int(num) - 87
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_daily_todayBg_nor" :*/
fileprivate let kRefreshUrl:String = "btn_dafor status as name"
fileprivate let kEmptyByMessage:[Character] = ["t","o","d","a","y","B","g","_","n","o","r"]

/*: "btn_daily_style1_nor" :*/
fileprivate let kPhoneValue:String = "index filter color tobtn_da"
fileprivate let kTitleMsg:String = "white"
fileprivate let k_topFormat:String = "to let view else1_nor"

/*: "btn_daily_todayLight_nor" :*/
fileprivate let k_targetUrl:[Character] = ["b","t","n","_","d","a","i","l","y","_","t","o","d","a"]
fileprivate let kUserTitle:[Character] = ["y","L"]
fileprivate let kActionAreaName:String = "isignatureht"

/*: "btn_daily_notSignIn_nor" :*/
fileprivate let k_randomData:String = "model super remove text equalbtn_d"
fileprivate let kRequestLimitEffectKey:String = "_notSview button self"
fileprivate let k_viewData:String = "date array title viewignIn_nor"

/*: "btn_daily_signIn_nor" :*/
fileprivate let kLivePath:[Character] = ["b","t","n","_","d","a","i","l","y","_"]
fileprivate let kTitlePriceMessage:[Character] = ["s","i","g","n","I","n","_","n","o","r"]

/*: "btn_daily_today_nor" :*/
fileprivate let k_positionData:[Character] = ["b","t","n","_","d","a","i","l","y","_","t"]
fileprivate let kMakeId:[Character] = ["o","d","a","y","_","n","o","r"]

/*: "#FF8F1A" :*/
fileprivate let k_imageMomentTitleValue:String = "#FF8Fsegment no"
fileprivate let kTextLeadingName:String = "1Amake sound"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PullThen.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: class TalkingDailyItemCell: UICollectionViewCell {
class PullThen: UICollectionViewCell {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_withPicData.map{addStatus(child: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.contentView.backgroundColor = .white
        self.contentView.backgroundColor = .white
        //: self.setupSubviews()
        self.noUp()
        //: self.setupSubViewsConstraint()
        self.detectConstraint()
    }

    // MARK: - Lazy Load

    //: private lazy var iconImgBgV: UIImageView = {
    private lazy var iconImgBgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.submitGift(name: "btn_daily_todayBg_nor")
        img.image = UIImage.submitGift(name: (String(kRefreshUrl.prefix(6)) + "ily_" + String(kEmptyByMessage)))
        //: img.isHidden = true
        img.isHidden = true
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var iconImgV: UIImageView = {
    private lazy var iconImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.submitGift(name: "btn_daily_style1_nor")
        img.image = UIImage.submitGift(name: (String(kPhoneValue.suffix(6)) + "ily_styl" + kTitleMsg.replacingOccurrences(of: "white", with: "e") + String(k_topFormat.suffix(5))))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var iconLightV: UIImageView = {
    private lazy var iconLightV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.submitGift(name: "btn_daily_todayLight_nor")
        img.image = UIImage.submitGift(name: (String(k_targetUrl) + String(kUserTitle) + kActionAreaName.replacingOccurrences(of: "signature", with: "g") + "_nor"))
        //: img.isHidden = true
        img.isHidden = true
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var dayLab: UILabel = {
    private lazy var dayLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var addIconLab: UILabel = {
    private lazy var addIconLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 14)
        lab.font = UIFont.tapShared(fontSize: 14)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingDailyItemCell {
extension PullThen {
    /// 刷新cell
    /// - Parameter model: 数据模型
    //: func refreshDailyItemCell(model: TalkingDailyItemModel) {
    func createMentally(model: DisplayEnableReactiveCompatible) {
        //: iconImgBgV.isHidden = true
        iconImgBgV.isHidden = true
        //: addIconLab.isHidden = true
        addIconLab.isHidden = true
        //: iconLightV.isHidden = true
        iconLightV.isHidden = true

        //: addIconLab.text = model.addIcon
        addIconLab.text = model.addIcon
        //: dayLab.font = UIFont.pingfangRugularFont(fontSize: 17)
        dayLab.font = UIFont.targetFor(fontSize: 17)
        //: dayLab.text = model.day
        dayLab.text = model.day

        //: switch(model.type) {
        switch model.type {
        //: case .Overdue_NotSignIn:
        case .Overdue_NotSignIn:
            //: iconImgV.image = UIImage.submitGift(name: "btn_daily_notSignIn_nor")
            iconImgV.image = UIImage.submitGift(name: (String(k_randomData.suffix(5)) + "aily" + String(kRequestLimitEffectKey.prefix(5)) + String(k_viewData.suffix(9))))
            //: dayLab.textColor = UIColor.appValueDetailColor()
            dayLab.textColor = UIColor.childMenu()

        //: case .Overdue_SignIn:
        case .Overdue_SignIn:
            //: iconImgV.image = UIImage.submitGift(name: "btn_daily_signIn_nor")
            iconImgV.image = UIImage.submitGift(name: (String(kLivePath) + String(kTitlePriceMessage)))
            //: dayLab.textColor = UIColor.appValueDetailColor()
            dayLab.textColor = UIColor.childMenu()

        //: case .Today:
        case .Today:
            //: iconImgBgV.isHidden = false
            iconImgBgV.isHidden = false
            //: addIconLab.isHidden = false
            addIconLab.isHidden = false
            //: iconLightV.isHidden = false
            iconLightV.isHidden = false

            //: iconImgV.image = UIImage.submitGift(name: "btn_daily_today_nor")
            iconImgV.image = UIImage.submitGift(name: (String(k_positionData) + String(kMakeId)))
            //: dayLab.font = UIFont.pingfangMediumFont(fontSize: 17)
            dayLab.font = UIFont.tapShared(fontSize: 17)
            //: dayLab.textColor = UIColor(hex: "#FF8F1A")
            dayLab.textColor = UIColor(hex: (String(k_imageMomentTitleValue.prefix(5)) + String(kTextLeadingName.prefix(2))))

        //: case .Future:
        case .Future:
            //: addIconLab.isHidden = false
            addIconLab.isHidden = false
            //: iconImgV.image = UIImage.submitGift(name: "btn_daily_today_nor")
            iconImgV.image = UIImage.submitGift(name: (String(k_positionData) + String(kMakeId)))
            //: dayLab.textColor = UIColor.appValueColor()
            dayLab.textColor = UIColor.scaleValueTo()
        }
    }
}

// MARK: - Layout

//: extension TalkingDailyItemCell {
extension PullThen {
    // 添加视图
    //: private func setupSubviews() {
    private func noUp() {
        //: contentView.addSubview(iconImgBgV)
        contentView.addSubview(iconImgBgV)
        //: contentView.addSubview(iconImgV)
        contentView.addSubview(iconImgV)
        //: contentView.addSubview(addIconLab)
        contentView.addSubview(addIconLab)
        //: contentView.addSubview(iconLightV)
        contentView.addSubview(iconLightV)
        //: contentView.addSubview(dayLab)
        contentView.addSubview(dayLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func detectConstraint() {
        //: iconImgBgV.snp.makeConstraints { make in
        iconImgBgV.snp.makeConstraints { make in
            //: make.top.centerX.equalToSuperview()
            make.top.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 65, height: 65))
            make.size.equalTo(CGSize(width: 65, height: 65))
        }
        //: iconImgV.snp.makeConstraints { make in
        iconImgV.snp.makeConstraints { make in
            //: make.center.equalTo(iconImgBgV)
            make.center.equalTo(iconImgBgV)
            //: make.size.equalTo(CGSize(width: 42, height: 42))
            make.size.equalTo(CGSize(width: 42, height: 42))
        }
        //: addIconLab.snp.makeConstraints { make in
        addIconLab.snp.makeConstraints { make in
            //: make.centerX.equalTo(iconImgV)
            make.centerX.equalTo(iconImgV)
            //: make.centerY.equalTo(iconImgV).offset(-2)
            make.centerY.equalTo(iconImgV).offset(-2)
        }
        //: iconLightV.snp.makeConstraints { make in
        iconLightV.snp.makeConstraints { make in
            //: make.top.equalTo(1)
            make.top.equalTo(1)
            //: make.trailing.equalToSuperview().offset(-4)
            make.trailing.equalToSuperview().offset(-4)
        }
        //: dayLab.snp.makeConstraints { make in
        dayLab.snp.makeConstraints { make in
            //: make.top.equalTo(53)
            make.top.equalTo(53)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
