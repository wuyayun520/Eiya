
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_modelPath:[UInt8] = [0x2d,0x2a,0x2d,0x30,0x6c,0x27,0x2b,0x20,0x21,0x36,0x7e,0x6d,0x64,0x2c,0x25,0x37,0x64,0x2a,0x2b,0x30,0x64,0x26,0x21,0x21,0x2a,0x64,0x2d,0x29,0x34,0x28,0x21,0x29,0x21,0x2a,0x30,0x21,0x20]

private func arrayEvent(value num: UInt8) -> UInt8 {
    return num ^ 68
}

/*: "icon_shouye_biaoshi_default" :*/
fileprivate let k_textValue:String = "iexplainon"
fileprivate let k_toBeanId:String = "player makee_biaos"
fileprivate let kGiftPath:[Character] = ["h","i","_","d","e","f","a","u","l","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModeViewCell.swift
//  AbroadTalking
//
//  Created by young on 2022/9/9.
//

//: import UIKit
import UIKit

//: class PremiumStarListCell: UICollectionViewCell {
class ModeViewCell: UICollectionViewCell {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_modelPath.map{arrayEvent(value: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.setupSubviews()
        self.setupLine()
        //: self.setupSubViewsConstraint()
        self.dataClip()
    }

    // MARK: - Lazy load

    //: private lazy var headImgView: UIImageView = {
    private lazy var headImgView: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.layer.cornerRadius = 35
        v.layer.cornerRadius = 35
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: return v
        return v
        //: }()
    }()

    //: private lazy var authImgV: UIImageView = {
    private lazy var authImgV: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.image = UIImage(named: "icon_shouye_biaoshi_default")
        v.image = UIImage(named: (k_textValue.replacingOccurrences(of: "explain", with: "c") + "_shouy" + String(k_toBeanId.suffix(7)) + String(kGiftPath)))
        //: v.isUserInteractionEnabled = true
        v.isUserInteractionEnabled = true
        //: return v
        return v
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.colorStatuteNameApp()
        lab.textColor = UIColor.colorStatuteNameApp()
        //: lab.font = .fontChange(type: .Regular, fontSize: 15)
        lab.font = .fontChange(type: .Regular, fontSize: 15)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Public Event

//: extension PremiumStarListCell {
extension ModeViewCell {
    // MARK: - Refresh

    //: func refreshCell(_ model: PremiumStarListModel?) {
    func refreshNo(_ model: CancelListModel?) {
        //: guard let model = model else { return }
        guard let model = model else { return }
        //: headImgView.kf.setImage(with: URL(string: model.headPic), placeholder: UIImage.placeHolderImage(sex: model.sex))
        headImgView.kf.setImage(with: URL(string: model.headPic), placeholder: UIImage.delay(sex: model.sex))
        //: authImgV.isHidden = !model.isTPAuth
        authImgV.isHidden = !model.isTPAuth
        //: nameLab.text = model.nickname
        nameLab.text = model.nickname
    }
}

// MARK: - Layout

//: extension PremiumStarListCell {
extension ModeViewCell {
    // 添加视图
    //: private func setupSubviews() {
    private func setupLine() {
        //: self.contentView.addSubview(headImgView)
        self.contentView.addSubview(headImgView)
        //: self.contentView.addSubview(authImgV)
        self.contentView.addSubview(authImgV)
        //: self.contentView.addSubview(nameLab)
        self.contentView.addSubview(nameLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func dataClip() {
        //: headImgView.snp.makeConstraints { make in
        headImgView.snp.makeConstraints { make in
            //: make.leading.top.equalToSuperview()
            make.leading.top.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 70, height: 70))
            make.size.equalTo(CGSize(width: 70, height: 70))
        }
        //: authImgV.snp.makeConstraints { make in
        authImgV.snp.makeConstraints { make in
            //: make.trailing.equalTo(headImgView.snp.trailing)
            make.trailing.equalTo(headImgView.snp.trailing)
            //: make.bottom.equalTo(headImgView.snp.bottom)
            make.bottom.equalTo(headImgView.snp.bottom)
            //: make.size.equalTo(CGSize(width: 20, height: 16))
            make.size.equalTo(CGSize(width: 20, height: 16))
        }
        //: nameLab.snp.makeConstraints { make in
        nameLab.snp.makeConstraints { make in
            //: make.leading.width.equalToSuperview()
            make.leading.width.equalToSuperview()
            //: make.top.equalTo(75)
            make.top.equalTo(75)
            //: make.height.equalTo(17)
            make.height.equalTo(17)
        }
    }
}
