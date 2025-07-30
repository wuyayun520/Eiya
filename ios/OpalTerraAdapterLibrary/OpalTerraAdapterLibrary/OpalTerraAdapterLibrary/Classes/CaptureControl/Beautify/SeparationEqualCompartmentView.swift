
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kNextKey:[UInt8] = [0x85,0x82,0x85,0x98,0xc4,0x8f,0x83,0x88,0x89,0x9e,0xd6,0xc5,0xcc,0x84,0x8d,0x9f,0xcc,0x82,0x83,0x98,0xcc,0x8e,0x89,0x89,0x82,0xcc,0x85,0x81,0x9c,0x80,0x89,0x81,0x89,0x82,0x98,0x89,0x88]

private func voiceIf(to num: UInt8) -> UInt8 {
    return num ^ 236
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SeparationEqualCompartmentView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/31.
//

//: import UIKit
import UIKit

//: class STFilterListItemCell: UICollectionViewCell {
class SeparationEqualCompartmentView: UICollectionViewCell {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.setupButton()
        //: self.setupSubViewsConstraint()
        self.digitiserConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kNextKey.map{voiceIf(to: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var iconView: UIImageView = {
    lazy var iconView: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: return v
        return v
        //: }()
    }()

    //: lazy var nameLab: UILabel = {
    lazy var nameLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = UIFont.pingfangRugularFont(fontSize: 12)
        lb.font = UIFont.targetFor(fontSize: 12)
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var borderView: UIView = {
    lazy var borderView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = .clear
        view.backgroundColor = .clear
        //: view.layer.borderColor = UIColor.appThemeColor().cgColor
        view.layer.borderColor = UIColor.increase().cgColor
        //: view.layer.borderWidth = 1
        view.layer.borderWidth = 1
        //: view.layer.cornerRadius = 56/2
        view.layer.cornerRadius = 56 / 2
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: view.isHidden = true
        view.isHidden = true
        //: return view
        return view
        //: }()
    }()
}

//: extension STFilterListItemCell {
extension SeparationEqualCompartmentView {
    //: func setCellModel(model: GroupLooksModel) {
    func groupDownData(model: GroupLooksModel) {
        //: self.iconView.image = UIImage.submitGift(name: model.filterNormalImageName)
        self.iconView.image = UIImage.submitGift(name: model.filterNormalImageName)
        //: self.nameLab.text = model.strName
        self.nameLab.text = model.strName
        //: self.borderView.isHidden = !model.isSelected
        self.borderView.isHidden = !model.isSelected
        //: if model.isSelected {
        if model.isSelected {
            //: self.nameLab.textColor = UIColor.appThemeColor()
            self.nameLab.textColor = UIColor.increase()
            //: }else {
        } else {
            //: self.nameLab.textColor = .white
            self.nameLab.textColor = .white
        }
    }
}

//: extension STFilterListItemCell {
extension SeparationEqualCompartmentView {
    //: func setupSubviews() {
    func setupButton() {
        //: self.contentView.addSubview(iconView)
        self.contentView.addSubview(iconView)
        //: self.contentView.addSubview(borderView)
        self.contentView.addSubview(borderView)
        //: self.contentView.addSubview(nameLab)
        self.contentView.addSubview(nameLab)
    }

    //: func setupSubViewsConstraint() {
    func digitiserConstraint() {
        //: self.iconView.snp.makeConstraints { make in
        self.iconView.snp.makeConstraints { make in
            //: make.top.equalTo(self.contentView).offset(3)
            make.top.equalTo(self.contentView).offset(3)
            //: make.centerX.equalTo(self.contentView)
            make.centerX.equalTo(self.contentView)
            //: make.size.equalTo(CGSize.init(width: 50, height: 50))
            make.size.equalTo(CGSize(width: 50, height: 50))
        }
        //: self.borderView.snp.makeConstraints { make in
        self.borderView.snp.makeConstraints { make in
            //: make.center.equalTo(self.iconView)
            make.center.equalTo(self.iconView)
            //: make.size.equalTo(CGSize.init(width: 56, height: 56))
            make.size.equalTo(CGSize(width: 56, height: 56))
        }

        //: self.nameLab.snp.makeConstraints { make in
        self.nameLab.snp.makeConstraints { make in
            //: make.top.equalTo(self.borderView.snp.bottom).offset(8)
            make.top.equalTo(self.borderView.snp.bottom).offset(8)
            //: make.leading.trailing.equalTo(self.contentView)
            make.leading.trailing.equalTo(self.contentView)
        }
    }
}
