
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kCollectMessage:[UInt8] = [0xb6,0xb1,0xb6,0xab,0xf7,0xbc,0xb0,0xbb,0xba,0xad,0xe5,0xf6,0xff,0xb7,0xbe,0xac,0xff,0xb1,0xb0,0xab,0xff,0xbd,0xba,0xba,0xb1,0xff,0xb6,0xb2,0xaf,0xb3,0xba,0xb2,0xba,0xb1,0xab,0xba,0xbb]

private func multiSecond(mid num: UInt8) -> UInt8 {
    return num ^ 223
}

/*: "More attractive photo more calls" :*/
fileprivate let kPlayerStr:[UInt8] = [0xa0,0xc2,0xc5,0xb8,0x73,0xb4,0xc7,0xc7,0xc5,0xb4,0xb6,0xc7,0xbc,0xc9,0xb8,0x73,0xc3,0xbb,0xc2,0xc7,0xc2,0x73,0xc0,0xc2,0xc5,0xb8,0x73,0xb6,0xb4,0xbf,0xbf,0xc6]

fileprivate func messageName(disabled num: UInt8) -> UInt8 {
    let value = Int(num) + 173
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Upload any photo you like" :*/
fileprivate let kAppUrl:String = "Upload ashare print"
fileprivate let kLengthPath:[Character] = ["n","y"," ","p","h","o","t","o"," ","y","o","u"]
fileprivate let k_backgroundId:String = " likereason cell"

/*: "F4F4F4" :*/
fileprivate let kSufficientUrl:String = "balance"
fileprivate let kHiddenSectionUrl:[Character] = ["4","F","4","F","4"]

/*: "btn_add_head_cover_nor" :*/
fileprivate let kStylePathKey:[Character] = ["b","t","n","_","a","d","d","_","h","e","a","d","_","c","o","v","e","r","_"]
fileprivate let k_iconId:[Character] = ["n","o","r"]

/*: "Please upload a clear and beautiful photo of yourself" :*/
fileprivate let kDataStr:[UInt8] = [0x6,0x3a,0x33,0x37,0x25,0x33,0x76,0x23,0x26,0x3a,0x39,0x37,0x32,0x76,0x37,0x76,0x35,0x3a,0x33,0x37,0x24,0x76,0x37,0x38,0x32,0x76,0x34,0x33,0x37,0x23,0x22,0x3f,0x30,0x23,0x3a,0x76,0x26,0x3e,0x39,0x22,0x39,0x76,0x39,0x30,0x76,0x2f,0x39,0x23,0x24,0x25,0x33,0x3a,0x30]

/*: "No violence, pornography, or politics allowed" :*/
fileprivate let kEditMessage:[UInt8] = [0x8e,0xaf,0x60,0xb6,0xa9,0xaf,0xac,0xa5,0xae,0xa3,0xa5,0x6c,0x60,0xb0,0xaf,0xb2,0xae,0xaf,0xa7,0xb2,0xa1,0xb0,0xa8,0xb9,0x6c,0x60,0xaf,0xb2,0x60,0xb0,0xaf,0xac,0xa9,0xb4,0xa9,0xa3,0xb3,0x60,0xa1,0xac,0xac,0xaf,0xb7,0xa5,0xa4]

fileprivate func textImage(lab num: UInt8) -> UInt8 {
    let value = Int(num) + 192
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Next" :*/
fileprivate let k_addKey:[Character] = ["N","e","x","t"]

/*: "edit_head_Image_male_ :*/
fileprivate let kMakeNoTitleFormat:[Character] = ["e","d","i","t","_","h","e","a","d","_","I","m","a","g","e","_","m","a","l","e"]
fileprivate let kIndexListUrl:String = "view"

/*: "edit_head_Image_ :*/
fileprivate let kProgressName:String = "view fill viewedit_h"
fileprivate let k_spiritCurId:String = "react send self log elseage_"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AlongReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2024/5/24.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditPhotoView: UIView {
class AlongReactiveCompatible: UIView {
    //: typealias InfoActionBlock = (_ type: EditInfoType) -> Void
    typealias InfoActionBlock = (_ type: FileInfoType) -> Void

    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var btnBlock: InfoActionBlock?
    var btnBlock: InfoActionBlock?

    //: private var nameCount: Int = 20
    private var nameCount: Int = 20

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white

        //: self.setupSubviews()
        self.inputSubviews()
        //: self.setupSubViewsConstraint()
        self.ting()
        //: self.bindInteraction()
        self.cling()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kCollectMessage.map{multiSecond(mid: $0)}, encoding: .utf8)!)
    }

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let contentView = UIView.init()
        let contentView = UIView()
        //: return contentView
        return contentView
        //: }()
    }()

    //: lazy var tipsLab: UILabel = {
    lazy var tipsLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .fontChange(type: .Semibold, fontSize: 17)
        label.font = .fontChange(type: .Semibold, fontSize: 17)
        //: label.textColor = .colorStatuteNameApp()
        label.textColor = .colorStatuteNameApp()
        //: label.textAlignment = .center
        label.textAlignment = .center
        //: if DistanceAppManager.share.userFillInfoMode.sex == Gender.female.rawValue {
        if DistanceAppManager.share.userFillInfoMode.sex == ManagerQuickLookable.female.rawValue {
            //: label.text = "More attractive photo more calls".localized
            label.text = String(bytes: kPlayerStr.map{messageName(disabled: $0)}, encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "Upload any photo you like".localized
            label.text = (String(kAppUrl.prefix(8)) + String(kLengthPath) + String(k_backgroundId.prefix(5))).localized
        }
        //: return label
        return label
        //: }()
    }()

    //: lazy var addHeadButton: UIButton = {
    lazy var addHeadButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.backgroundColor = UIColor(hex: "F4F4F4")
        btn.backgroundColor = UIColor(hex: (kSufficientUrl.replacingOccurrences(of: "balance", with: "F") + String(kHiddenSectionUrl)))
        //: btn.layer.cornerRadius = 5
        btn.layer.cornerRadius = 5
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true

        //: let headImg = DistanceAppManager.share.userFillInfoMode.headImage ?? nil
        let headImg = DistanceAppManager.share.userFillInfoMode.headImage ?? nil
        //: if headImg != nil {
        if headImg != nil {
            //: btn.setImage(headImg, for: .normal)
            btn.setImage(headImg, for: .normal)
            //: } else {
        } else {
            //: btn.setImage(UIImage.submitGift(name: "btn_add_head_cover_nor"), for: .normal)
            btn.setImage(UIImage.submitGift(name: (String(kStylePathKey) + String(k_iconId))), for: .normal)
        }
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var msgLab: UILabel = {
    lazy var msgLab: UILabel = {
        //: let label = UILabel()
        let label = UILabel()
        //: label.font = .fontChange(type: .Regular, fontSize: 15)
        label.font = .fontChange(type: .Regular, fontSize: 15)
        //: label.textColor = .appValueColor()
        label.textColor = .scaleValueTo()
        //: if DistanceAppManager.share.userFillInfoMode.sex == Gender.female.rawValue {
        if DistanceAppManager.share.userFillInfoMode.sex == ManagerQuickLookable.female.rawValue {
            //: label.text = "Please upload a clear and beautiful photo of yourself".localized
            label.text = String(bytes: kDataStr.map{$0^86}, encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "No violence, pornography, or politics allowed".localized
            label.text = String(bytes: kEditMessage.map{textImage(lab: $0)}, encoding: .utf8)!.localized
        }
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: return label
        return label
        //: }()
    }()

    //: lazy var commitButton: UIButton = {
    lazy var commitButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 17)
        //: btn.setTitle("Next".localized, for: .normal)
        btn.setTitle((String(k_addKey)).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.makeEqual(colors: UIColor.georgiaHomeBoy(), size: CGSize(width: constFormalContent - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Layout

//: extension TalkingLoginEditPhotoView {
extension AlongReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func inputSubviews() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(tipsLab)
        contentView.addSubview(tipsLab)
        //: contentView.addSubview(addHeadButton)
        contentView.addSubview(addHeadButton)
        //: contentView.addSubview(commitButton)
        contentView.addSubview(commitButton)
        //: contentView.addSubview(msgLab)
        contentView.addSubview(msgLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func ting() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: tipsLab.snp.makeConstraints { make in
        tipsLab.snp.makeConstraints { make in
            //: make.leading.equalTo(24)
            make.leading.equalTo(24)
            //: make.height.equalTo(28)
            make.height.equalTo(28)
            //: make.top.equalTo(34)
            make.top.equalTo(34)
        }

        //: addHeadButton.snp.makeConstraints { make in
        addHeadButton.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.height.equalTo(159)
            make.width.height.equalTo(159)
            //: make.top.equalTo(tipsLab.snp.bottom).offset(34)
            make.top.equalTo(tipsLab.snp.bottom).offset(34)
        }

        //: let imgWidth: CGFloat = (ScreenWidth - 76) / 3.0
        let imgWidth: CGFloat = (constFormalContent - 76) / 3.0
        //: let imgHeight: CGFloat = imgWidth
        let imgHeight: CGFloat = imgWidth

        //: for i in 0 ..< 3 {
        for i in 0 ..< 3 {
            //: let imageView = UIImageView.init()
            let imageView = UIImageView()
            //: if DistanceAppManager.share.userFillInfoMode.sex == "1" {
            if DistanceAppManager.share.userFillInfoMode.sex == "1" {
                //: imageView.image = UIImage.submitGift(name: "edit_head_Image_male_\(i)")
                imageView.image = UIImage.submitGift(name: (String(kMakeNoTitleFormat) + kIndexListUrl.replacingOccurrences(of: "view", with: "_")) + "\(i)")
                //: } else {
            } else {
                //: imageView.image = UIImage.submitGift(name: "edit_head_Image_\(i)")
                imageView.image = UIImage.submitGift(name: (String(kProgressName.suffix(6)) + "ead_Im" + String(k_spiritCurId.suffix(4))) + "\(i)")
            }
            //: contentView.addSubview(imageView)
            contentView.addSubview(imageView)
            //: imageView.snp.makeConstraints { make in
            imageView.snp.makeConstraints { make in
                //: make.top.equalTo(addHeadButton.snp.bottom).offset(30)
                make.top.equalTo(addHeadButton.snp.bottom).offset(30)
                //: make.leading.equalTo(30 + (imgWidth+8)*CGFloat(i))
                make.leading.equalTo(30 + (imgWidth + 8) * CGFloat(i))
                //: make.width.equalTo(imgWidth)
                make.width.equalTo(imgWidth)
                //: make.height.equalTo(imgHeight)
                make.height.equalTo(imgHeight)
            }
        }
        //: msgLab.snp.makeConstraints { make in
        msgLab.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.top.equalTo(addHeadButton.snp.bottom).offset(146)
            make.top.equalTo(addHeadButton.snp.bottom).offset(146)
        }

        //: commitButton.snp.makeConstraints { make in
        commitButton.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
            //: make.top.equalTo(msgLab.snp.bottom).offset(30)
            make.top.equalTo(msgLab.snp.bottom).offset(30)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func cling() {
        //: commitButton.rx.tap
        commitButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.Finish)
                    self.btnBlock!(.Finish)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        //: addHeadButton.rx.tap
        addHeadButton.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if self.btnBlock != nil {
                if self.btnBlock != nil {
                    //: self.btnBlock!(.HeadPic)
                    self.btnBlock!(.HeadPic)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
