
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kLineName:[UInt8] = [0x25,0x22,0x25,0x38,0x64,0x2f,0x23,0x28,0x29,0x3e,0x76,0x65,0x6c,0x24,0x2d,0x3f,0x6c,0x22,0x23,0x38,0x6c,0x2e,0x29,0x29,0x22,0x6c,0x25,0x21,0x3c,0x20,0x29,0x21,0x29,0x22,0x38,0x29,0x28]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SizeViewCell.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/15.
//

//: import Then
import Then
//: import UIKit
import UIKit

// MARK: - 圆角cell

//: class TalkingRoundedCell: UITableViewCell {
class SizeViewCell: UITableViewCell {
    //: let cellHeight = actualHeight(h: 14)
    let cellHeight = actualHeight(h: 14)

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true
        //: self.contentView.layer.masksToBounds = true
        self.contentView.layer.masksToBounds = true
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: self.setupSubviews()
        self.fast()
        //: self.setupSubViewsConstraint()
        self.area()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kLineName.map{$0^76}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var roundView = UIView().then {
    lazy var roundView = UIView().then {
        //: $0.backgroundColor = .white
        $0.backgroundColor = .white
        //: $0.layer.masksToBounds = true
        $0.layer.masksToBounds = true
        //: $0.layer.cornerRadius = 15
        $0.layer.cornerRadius = 15
    }
}

// MARK: Layout

//: extension TalkingRoundedCell {
extension SizeViewCell {
    //: private func setupSubviews() {
    private func fast() {
        //: contentView.addSubview(roundView)
        contentView.addSubview(roundView)
    }

    //: private func setupSubViewsConstraint() {
    private func area() {
        //: roundView.snp.makeConstraints { make in
        roundView.snp.makeConstraints { make in
            //: make.top.equalTo(0)
            make.top.equalTo(0)
            //: make.leading.trailing.equalTo(0)
            make.leading.trailing.equalTo(0)
            //: make.height.equalTo(40)
            make.height.equalTo(40)
        }
    }
}
