
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kIndexFormat:[UInt8] = [0xa,0xf,0xa,0x15,0xc9,0x4,0x10,0x5,0x6,0x13,0xdb,0xca,0xc1,0x9,0x2,0x14,0xc1,0xf,0x10,0x15,0xc1,0x3,0x6,0x6,0xf,0xc1,0xa,0xe,0x11,0xd,0x6,0xe,0x6,0xf,0x15,0x6,0x5]

fileprivate func labThen(mobile num: UInt8) -> UInt8 {
    let value = Int(num) - 161
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "img_faceverification_photo" :*/
fileprivate let k_styleUrl:String = "model render image party notimg_f"
fileprivate let kGiftMsg:String = "ericolor"
fileprivate let kIndexUrl:String = "model time let_photo"

/*: "Face verification" :*/
fileprivate let kFormalContent:[Character] = ["F","a","c","e"," ","v","e","r","i","f","i"]
fileprivate let kRestoreFormat:[Character] = ["c","a","t","i","o","n"]

/*: "A real-person verification of your profile will get you more and better matches." :*/
fileprivate let k_headName:[UInt8] = [0xf4,0x95,0xc7,0xd0,0xd4,0xd9,0x98,0xc5,0xd0,0xc7,0xc6,0xda,0xdb,0x95,0xc3,0xd0,0xc7,0xdc,0xd3,0xdc,0xd6,0xd4,0xc1,0xdc,0xda,0xdb,0x95,0xda,0xd3,0x95,0xcc,0xda,0xc0,0xc7,0x95,0xc5,0xc7,0xda,0xd3,0xdc,0xd9,0xd0,0x95,0xc2,0xdc,0xd9,0xd9,0x95,0xd2,0xd0,0xc1,0x95,0xcc,0xda,0xc0,0x95,0xd8,0xda,0xc7,0xd0,0x95,0xd4,0xdb,0xd1,0x95,0xd7,0xd0,0xc1,0xc1,0xd0,0xc7,0x95,0xd8,0xd4,0xc1,0xd6,0xdd,0xd0,0xc6,0x9b]

private func nurseLog(content num: UInt8) -> UInt8 {
    return num ^ 181
}

/*: "· Take the photo by following the posing guide." :*/
fileprivate let kToKey:[UInt8] = [0xbb,0xb0,0x19,0x4d,0x5a,0x64,0x5e,0x19,0x6d,0x61,0x5e,0x19,0x69,0x61,0x68,0x6d,0x68,0x19,0x5b,0x72,0x19,0x5f,0x68,0x65,0x65,0x68,0x70,0x62,0x67,0x60,0x19,0x6d,0x61,0x5e,0x19,0x69,0x68,0x6c,0x62,0x67,0x60,0x19,0x60,0x6e,0x62,0x5d,0x5e,0x27]

fileprivate func visibleView(title num: UInt8) -> UInt8 {
    let value = Int(num) + 7
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "· The person in the photo must be the account owner." :*/
fileprivate let k_requestId:[UInt8] = [0x8a,0x7f,0xe8,0x1c,0x30,0x2d,0xe8,0x38,0x2d,0x3a,0x3b,0x37,0x36,0xe8,0x31,0x36,0xe8,0x3c,0x30,0x2d,0xe8,0x38,0x30,0x37,0x3c,0x37,0xe8,0x35,0x3d,0x3b,0x3c,0xe8,0x2a,0x2d,0xe8,0x3c,0x30,0x2d,0xe8,0x29,0x2b,0x2b,0x37,0x3d,0x36,0x3c,0xe8,0x37,0x3f,0x36,0x2d,0x3a,0xf6]

fileprivate func tableIndex(full num: UInt8) -> UInt8 {
    let value = Int(num) - 200
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Continue" :*/
fileprivate let kButtonTitle:[Character] = ["C","o","n"]
fileprivate let k_pathText:String = "TINUE"

/*: "btn_me_back_continue" :*/
fileprivate let k_attentionKey:[Character] = ["b","t","n","_","m","e","_","b","a","c","k","_","c","o","n","t","i","n","u"]
fileprivate let kCellShouldValue:[Character] = ["e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CancelStraddleFaceThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFaceVerificationView: UIView {
class CancelStraddleFaceThen: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: typealias ContinueBtnClickBlock = () -> Void
    typealias ContinueBtnClickBlock = () -> Void
    //: var btnClickBlock: ContinueBtnClickBlock?
    var btnClickBlock: ContinueBtnClickBlock?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        ghb()
        //: layoutSubViewsConstraints()
        userConstraints()
        //: bindInteraction()
        titleColor()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kIndexFormat.map{labThen(mobile: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var faceBackImageView: UIImageView = {
    lazy var faceBackImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.submitGift(name: "img_faceverification_photo")
        imgView.image = UIImage.submitGift(name: (String(k_styleUrl.suffix(5)) + "acev" + kGiftMsg.replacingOccurrences(of: "color", with: "fi") + "cation" + String(kIndexUrl.suffix(6))))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var verificationTitleLab: UILabel = {
    lazy var verificationTitleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Face verification".localized
        lb.text = (String(kFormalContent) + String(kRestoreFormat)).localized
        //: lb.textColor = .colorStatuteNameApp()
        lb.textColor = .colorStatuteNameApp()
        //: lb.font = .fontChange(type: .Medium, fontSize: 22)
        lb.font = .fontChange(type: .Medium, fontSize: 22)
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var verificationDesLab: UILabel = {
    lazy var verificationDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "A real-person verification of your profile will get you more and better matches.".localized
        lb.text = String(bytes: k_headName.map{nurseLog(content: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .childMenu()
        //: lb.font = .fontChange(type: .Medium, fontSize: 18)
        lb.font = .fontChange(type: .Medium, fontSize: 18)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var subFirstDesLab: UILabel = {
    lazy var subFirstDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· Take the photo by following the posing guide.".localized
        lb.text = String(bytes: kToKey.map{visibleView(title: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .colorStatuteNameApp()
        lb.textColor = .colorStatuteNameApp()
        //: lb.font = .fontChange(type: .Regular, fontSize: 16)
        lb.font = .fontChange(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var subSecondDesLab: UILabel = {
    lazy var subSecondDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· The person in the photo must be the account owner.".localized
        lb.text = String(bytes: k_requestId.map{tableIndex(full: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .colorStatuteNameApp()
        lb.textColor = .colorStatuteNameApp()
        //: lb.font = .fontChange(type: .Regular, fontSize: 16)
        lb.font = .fontChange(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var continueBtn: UIButton = {
    lazy var continueBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Continue".localized, for: .normal)
        btn.setTitle((String(kButtonTitle) + k_pathText.lowercased()).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.submitGift(name: "btn_me_back_continue"), for: .normal)
        btn.setBackgroundImage(UIImage.submitGift(name: (String(k_attentionKey) + String(kCellShouldValue))), for: .normal)
        //: btn.titleLabel?.font = .fontChange(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .fontChange(type: .Medium, fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFaceVerificationView {
extension CancelStraddleFaceThen {
    //: @objc func registerBtnAction() {
    @objc func forefront() {
        //: if btnClickBlock != nil {
        if btnClickBlock != nil {
            //: btnClickBlock!()
            btnClickBlock!()
        }
    }

    //: private func bindInteraction() {
    private func titleColor() {
        //: continueBtn.rx.controlEvent(.touchUpInside)
        continueBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerBtnAction()
                self.forefront()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}

// MARK: - Layout

//: extension TalkingFaceVerificationView {
extension CancelStraddleFaceThen {
    //: func createSubViews() {
    func ghb() {
        //: addSubview(faceBackImageView)
        addSubview(faceBackImageView)
        //: addSubview(verificationTitleLab)
        addSubview(verificationTitleLab)
        //: addSubview(verificationDesLab)
        addSubview(verificationDesLab)
        //: addSubview(subFirstDesLab)
        addSubview(subFirstDesLab)
        //: addSubview(subSecondDesLab)
        addSubview(subSecondDesLab)
        //: addSubview(continueBtn)
        addSubview(continueBtn)
    }

    //: func layoutSubViewsConstraints() {
    func userConstraints() {
        //: let imgSize = faceBackImageView.image?.size
        let imgSize = faceBackImageView.image?.size
        //: let fitH = imgSize!.height * ScreenWidth / imgSize!.width
        let fitH = imgSize!.height * constFormalContent / imgSize!.width
        //: faceBackImageView.snp.makeConstraints { make in
        faceBackImageView.snp.makeConstraints { make in
            //: make.top.equalTo(actualHeight(h: 11)+StatusBarHeight)
            make.top.equalTo(actualHeight(h: 11) + main_netValue)
            //: make.leading.trailing.equalTo(0)
            make.leading.trailing.equalTo(0)
            //: make.height.equalTo(fitH)
            make.height.equalTo(fitH)
        }
        //: verificationTitleLab.snp.makeConstraints { make in
        verificationTitleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -5))
            make.trailing.equalTo(actualWidth(w: -5))
            //: make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 26))
            make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 26))
        }
        //: verificationDesLab.snp.makeConstraints { make in
        verificationDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(verificationTitleLab.snp.bottom).offset(actualHeight(h: 10))
            make.top.equalTo(verificationTitleLab.snp.bottom).offset(actualHeight(h: 10))
        }
        //: subFirstDesLab.snp.makeConstraints { make in
        subFirstDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(verificationDesLab.snp.bottom).offset(actualHeight(h: 12))
            make.top.equalTo(verificationDesLab.snp.bottom).offset(actualHeight(h: 12))
        }
        //: subSecondDesLab.snp.makeConstraints { make in
        subSecondDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(subFirstDesLab.snp.bottom).offset(actualHeight(h: 9))
            make.top.equalTo(subFirstDesLab.snp.bottom).offset(actualHeight(h: 9))
        }
        //: continueBtn.snp.makeConstraints { make in
        continueBtn.snp.makeConstraints { make in
            //: make.top.equalTo(subSecondDesLab.snp.bottom).offset(actualHeight(h: 24))
            make.top.equalTo(subSecondDesLab.snp.bottom).offset(actualHeight(h: 24))
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.width.equalTo(267)
            make.width.equalTo(267)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }
}
