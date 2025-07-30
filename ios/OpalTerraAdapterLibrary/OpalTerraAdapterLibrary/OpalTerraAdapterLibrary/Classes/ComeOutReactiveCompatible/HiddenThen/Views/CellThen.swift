
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kRearData:[UInt8] = [0x60,0x67,0x60,0x7d,0x21,0x6a,0x66,0x6d,0x6c,0x7b,0x33,0x20,0x29,0x61,0x68,0x7a,0x29,0x67,0x66,0x7d,0x29,0x6b,0x6c,0x6c,0x67,0x29,0x60,0x64,0x79,0x65,0x6c,0x64,0x6c,0x67,0x7d,0x6c,0x6d]

/*: "btn_me_edit" :*/
fileprivate let kIndexStr:String = "bblockn"
fileprivate let kStatusContent:[Character] = ["_","m","e","_","e","d","i","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CellThen.swift
//  AbroadTalking
//
//  Created by young on 2023/5/16.
//

//: import UIKit
import UIKit

//: class TalkingSearchDetailCell: UITableViewCell {
class CellThen: UITableViewCell {
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.contentView.backgroundColor = .clear
        self.contentView.backgroundColor = .clear

        //: setupSubviews()
        objectSubviews()
        //: setupSubViewsConstraint()
        everyName()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kRearData.map{$0^9}, encoding: .utf8)!)
    }

    // MARK: - Lazy Laod

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        lab.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        //: lab.textColor = UIColor.colorStatuteNameApp()
        lab.textColor = UIColor.colorStatuteNameApp()
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var valueLab: UILabel = {
    private lazy var valueLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.fontChange(type: .Regular, fontSize: 14)
        lab.font = UIFont.fontChange(type: .Regular, fontSize: 14)
        //: lab.textColor = UIColor.colorStatuteNameApp()
        lab.textColor = UIColor.colorStatuteNameApp()
        //: lab.textAlignment = .right
        lab.textAlignment = .right
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var rightImgV: UIImageView = {
    private lazy var rightImgV: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.submitGift(name: "btn_me_edit"))
        let imag = UIImageView(image: UIImage.submitGift(name: (kIndexStr.replacingOccurrences(of: "block", with: "t") + String(kStatusContent))))
        //: return imag
        return imag
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingSearchDetailCell {
extension CellThen {
    /// 刷新
    //: func refreshCell(title: String, value: String) {
    func soul(title: String, value: String) {
        //: titleLab.text = title
        titleLab.text = title
        //: valueLab.text = value
        valueLab.text = value
    }
}

// MARK: - Layout

//: extension TalkingSearchDetailCell {
extension CellThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func objectSubviews() {
        //: contentView.addSubview(titleLab)
        contentView.addSubview(titleLab)
        //: contentView.addSubview(valueLab)
        contentView.addSubview(valueLab)
        //: contentView.addSubview(rightImgV)
        contentView.addSubview(rightImgV)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func everyName() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: valueLab.snp.makeConstraints { make in
        valueLab.snp.makeConstraints { make in
            //: make.trailing.equalTo(rightImgV.snp.leading).offset(-10)
            make.trailing.equalTo(rightImgV.snp.leading).offset(-10)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
        }

        //: rightImgV.snp.makeConstraints { make in
        rightImgV.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 6, height: 11))
            make.size.equalTo(CGSize(width: 6, height: 11))
        }
    }
}
