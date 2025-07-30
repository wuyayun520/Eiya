
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_matchTempKey:[UInt8] = [0x1,0x6,0x1,0xc,0xc0,0xfb,0x7,0xfc,0xfd,0xa,0xd2,0xc1,0xb8,0x0,0xf9,0xb,0xb8,0x6,0x7,0xc,0xb8,0xfa,0xfd,0xfd,0x6,0xb8,0x1,0x5,0x8,0x4,0xfd,0x5,0xfd,0x6,0xc,0xfd,0xfc]

fileprivate func cellData(view num: UInt8) -> UInt8 {
    let value = Int(num) + 104
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "free_photo_deleteBtn" :*/
fileprivate let k_quoteLayerLivePath:String = "free_to height party format"
fileprivate let kPointName:String = "any var makeleteBtn"

/*: "btn_dynamic_stop_nor" :*/
fileprivate let k_infoTitle:String = "let communication pic cellbtn_dy"
fileprivate let k_emptyTitle:[Character] = ["t","o","p","_","n","o","r"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  JoinManagerReusableView.swift
//  AbroadTalking
//
//  Created by young on 2022/9/21.
//

//: import UIKit
import UIKit

//: let FreeCollectionViewCell_width = 90.0
let k_screenBottomValue = 90.0

//: class FreeCollectionViewCell: UICollectionViewCell {
class JoinManagerReusableView: UICollectionViewCell {
    // 删除按钮
    //: var deleteBlock: (() -> Void)?
    var deleteBlock: (() -> Void)?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_matchTempKey.map{cellData(view: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        viewLive()
        //: setupSubViewsConstraint()
        behindMode()
    }

    // MARK: - Setter

    //: var isMoving: Bool {
    var isMoving: Bool {
        //: get {
        get {
            //: return self.isMoving
            return self.isMoving
        }
        //: set {
        set {
            //: self.isMoving = newValue
            self.isMoving = newValue
            //: self.releaseImageView.isHidden = self.isMoving
            self.releaseImageView.isHidden = self.isMoving
        }
    }

    // MARK: - Lazy load

    //: lazy var releaseImageView: UIImageView = {
    lazy var releaseImageView: UIImageView = {
        //: let v = UIImageView()
        let v = UIImageView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: v.layer.cornerRadius = 4.0
        v.layer.cornerRadius = 4.0
        //: v.layer.masksToBounds = true
        v.layer.masksToBounds = true
        //: v.contentMode = .scaleAspectFill
        v.contentMode = .scaleAspectFill
        //: return v
        return v
        //: }()
    }()

    //: lazy var deleteBtn: UIButton = {
    lazy var deleteBtn: UIButton = {
        //: let b = UIButton()
        let b = UIButton()
        //: b.setImage(UIImage.submitGift(name: "free_photo_deleteBtn"), for: .normal)
        b.setImage(UIImage.submitGift(name: (String(k_quoteLayerLivePath.prefix(5)) + "photo_de" + String(kPointName.suffix(7)))), for: .normal)
        //: b.addTarget(self, action: #selector(deleteButtonClick), for: .touchUpInside)
        b.addTarget(self, action: #selector(equalSum), for: .touchUpInside)
        //: return b
        return b
        //: }()
    }()

    //: lazy var playimageView: UIImageView = {
    lazy var playimageView: UIImageView = {
        //: let imag = UIImageView()
        let imag = UIImageView()
        //: imag.image = UIImage.submitGift(name: "btn_dynamic_stop_nor")
        imag.image = UIImage.submitGift(name: (String(k_infoTitle.suffix(6)) + "namic_s" + String(k_emptyTitle)))
        //: return imag
        return imag
        //: }()
    }()
}

// MARK: - Event

//: extension FreeCollectionViewCell {
extension JoinManagerReusableView {
    // MARK: - Event

    //: @objc func deleteButtonClick() {
    @objc func equalSum() {
        //: if self.deleteBlock != nil {
        if self.deleteBlock != nil {
            //: self.deleteBlock!()
            self.deleteBlock!()
        }
    }
}

// MARK: - LayoutUI

//: extension FreeCollectionViewCell {
extension JoinManagerReusableView {
    // 添加视图
    //: private func setupSubviews() {
    private func viewLive() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.addSubview(releaseImageView)
        self.addSubview(releaseImageView)
        //: self.addSubview(deleteBtn)
        self.addSubview(deleteBtn)
        //: self.addSubview(playimageView)
        self.addSubview(playimageView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func behindMode() {
        //: releaseImageView.snp.makeConstraints { make in
        releaseImageView.snp.makeConstraints { make in
            //: make.top.leading.size.equalToSuperview()
            make.top.leading.size.equalToSuperview()
        }
        //: deleteBtn.snp.makeConstraints { make in
        deleteBtn.snp.makeConstraints { make in
            //: make.top.trailing.equalToSuperview()
            make.top.trailing.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }
        //: playimageView.snp.makeConstraints { make in
        playimageView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
    }
}
