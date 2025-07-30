
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_toMessage:[UInt8] = [0xd5,0xda,0xd5,0xe0,0x94,0xcf,0xdb,0xd0,0xd1,0xde,0xa6,0x95,0x8c,0xd4,0xcd,0xdf,0x8c,0xda,0xdb,0xe0,0x8c,0xce,0xd1,0xd1,0xda,0x8c,0xd5,0xd9,0xdc,0xd8,0xd1,0xd9,0xd1,0xda,0xe0,0xd1,0xd0]

fileprivate func pushM(icon num: UInt8) -> UInt8 {
    let value = Int(num) + 148
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Slots" :*/
fileprivate let k_styleData:String = "super view to sectionSlots"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ItemReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/7/12.
//

//: import UIKit
import UIKit

//: let GameItem_H = actualWidth(w: 113)
let notiScreenUserContentValue = actualWidth(w: 113)
//: class TalkingliveRoomGameItemCell: UICollectionViewCell {
class ItemReactiveCompatible: UICollectionViewCell {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.countrudeOn()
        //: self.setupSubViewsConstraint()
        self.counterchange()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_toMessage.map{pushM(icon: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var iconImgV: UIImageView = {
    private lazy var iconImgV: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.backgroundColor = .clear
        imgV.backgroundColor = .clear
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Slots".localized
        lb.text = (String(k_styleData.suffix(5))).localized
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
}

// MARK: Layout

//: extension TalkingliveRoomGameItemCell {
extension ItemReactiveCompatible {
    /// 刷新cell
    /// - Parameters:
    ///   - model: 模型
    ///   - nameColor: 名称颜色
    //: func refreshView(model: TalkingGameListModel, nameColor: UIColor = .white) {
    func generateEqual(model: PitchListModel, nameColor: UIColor = .white) {
        //: iconImgV.setUrlImage(urlStr: model.icon)
        iconImgV.setUrlImage(urlStr: model.icon)
        //: nameLab.text = model.name
        nameLab.text = model.name
        //: nameLab.textColor = nameColor
        nameLab.textColor = nameColor
    }

    //: private func setupSubviews() {
    private func countrudeOn() {
        //: addSubview(iconImgV)
        addSubview(iconImgV)
        //: addSubview(nameLab)
        addSubview(nameLab)
    }

    //: private func setupSubViewsConstraint() {
    private func counterchange() {
        //: iconImgV.snp.makeConstraints { make in
        iconImgV.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(actualWidth(w: 66))
            make.width.height.equalTo(actualWidth(w: 66))

            //: nameLab.snp.makeConstraints { make in
            nameLab.snp.makeConstraints { make in
                //: make.top.equalTo(iconImgV.snp.bottom).offset(12)
                make.top.equalTo(iconImgV.snp.bottom).offset(12)
                //: make.width.equalToSuperview()
                make.width.equalToSuperview()
            }
        }
    }
}
