
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kSubmitFormat:[UInt8] = [0x2b,0x2c,0x2b,0x36,0x6a,0x21,0x2d,0x26,0x27,0x30,0x78,0x6b,0x62,0x2a,0x23,0x31,0x62,0x2c,0x2d,0x36,0x62,0x20,0x27,0x27,0x2c,0x62,0x2b,0x2f,0x32,0x2e,0x27,0x2f,0x27,0x2c,0x36,0x27,0x26]

private func replaceNo(exist num: UInt8) -> UInt8 {
    return num ^ 66
}

/*: "img_faceverification_photopose" :*/
fileprivate let k_applicationStr:[Character] = ["i","m","g","_","f","a","c","e","v","e","r","i","f","i","c","a","t","i","o","n"]
fileprivate let k_successfulMessage:[Character] = ["_","p","h","o","t","o","p","o","s","e"]

/*: "To pass the verification, in the photo you should:" :*/
fileprivate let k_fileKey:[UInt8] = [0x3a,0x64,0x6c,0x75,0x6f,0x68,0x73,0x20,0x75,0x6f,0x79,0x20,0x6f,0x74,0x6f,0x68,0x70,0x20,0x65,0x68,0x74,0x20,0x6e,0x69,0x20,0x2c,0x6e,0x6f,0x69,0x74,0x61,0x63,0x69,0x66,0x69,0x72,0x65,0x76,0x20,0x65,0x68,0x74,0x20,0x73,0x73,0x61,0x70,0x20,0x6f,0x54]

/*: "· show your face clearly;" :*/
fileprivate let k_pathMsg:String = "add back image example weight· show"
fileprivate let kApplicationKey:String = "window app else message viewr fa"
fileprivate let kRequestLabelName:String = "ce clesucceed text label gift include"
fileprivate let k_insideName:[Character] = ["a","r","l","y",";"]

/*: "· pose exactly like the posing guide." :*/
fileprivate let k_resultData:[UInt8] = [0x49,0x3c,0xab,0xfb,0xe4,0xf8,0xee,0xab,0xee,0xf3,0xea,0xe8,0xff,0xe7,0xf2,0xab,0xe7,0xe2,0xe0,0xee,0xab,0xff,0xe3,0xee,0xab,0xfb,0xe4,0xf8,0xe2,0xe5,0xec,0xab,0xec,0xfe,0xe2,0xef,0xee,0xa5]

private func tableMiniTag(row num: UInt8) -> UInt8 {
    return num ^ 139
}

/*: "Your photo will never be uploaded to your profile or shown to anvone else." :*/
fileprivate let kTextId:[UInt8] = [0xfc,0xca,0xd0,0xd7,0x85,0xd5,0xcd,0xca,0xd1,0xca,0x85,0xd2,0xcc,0xc9,0xc9,0x85,0xcb,0xc0,0xd3,0xc0,0xd7,0x85,0xc7,0xc0,0x85,0xd0,0xd5,0xc9,0xca,0xc4,0xc1,0xc0,0xc1,0x85,0xd1,0xca,0x85,0xdc,0xca,0xd0,0xd7,0x85,0xd5,0xd7,0xca,0xc3,0xcc,0xc9,0xc0,0x85,0xca,0xd7,0x85,0xd6,0xcd,0xca,0xd2,0xcb,0x85,0xd1,0xca,0x85,0xc4,0xcb,0xd3,0xca,0xcb,0xc0,0x85,0xc0,0xc9,0xd6,0xc0,0x8b]

private func viewIcon(mode num: UInt8) -> UInt8 {
    return num ^ 165
}

/*: "Submit Photo" :*/
fileprivate let kRequestStr:String = "Submitmodel guard cell input"

/*: "btn_me_back_continue" :*/
fileprivate let k_centerName:[Character] = ["b","t","n","_","m","e","_","b","a","c","k","_","c","o","n","t","i","n","u"]
fileprivate let k_modelFormat:String = "pic"

/*: "Retake Photo" :*/
fileprivate let k_popMsg:String = "Retakeself to"
fileprivate let kEffectButtonClearName:String = " Photofalse push equal"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RawDataPhotoView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingVerificationTakePhotoView: UIView {
class RawDataPhotoView: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: typealias SubmitBtnClickBlock = (_ photoImage: UIImage) -> Void
    typealias SubmitBtnClickBlock = (_ photoImage: UIImage) -> Void
    //: typealias RetakeBtnClickBlock = () -> Void
    typealias RetakeBtnClickBlock = () -> Void
    //: var submitClickBlock: SubmitBtnClickBlock?
    var submitClickBlock: SubmitBtnClickBlock?
    //: var retakeClickBlock: RetakeBtnClickBlock?
    var retakeClickBlock: RetakeBtnClickBlock?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        pastViews()
        //: layoutSubViewsConstraints()
        knock()
        //: bindInteraction()
        cleave()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kSubmitFormat.map{replaceNo(exist: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var leftExampleImageView: UIImageView = {
    lazy var leftExampleImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.submitGift(name: "img_faceverification_photopose")
        imgView.image = UIImage.submitGift(name: (String(k_applicationStr) + String(k_successfulMessage)))
        //: imgView.layer.cornerRadius = 8
        imgView.layer.cornerRadius = 8
        //: imgView.layer.masksToBounds = true
        imgView.layer.masksToBounds = true
        //: imgView.contentMode = .scaleAspectFill
        imgView.contentMode = .scaleAspectFill
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var rightPhotoImageView: UIImageView = {
    lazy var rightPhotoImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.backgroundColor = UIColor.appValueColor()
        imgView.backgroundColor = UIColor.scaleValueTo()
        //: imgView.layer.cornerRadius = 8
        imgView.layer.cornerRadius = 8
        //: imgView.layer.masksToBounds = true
        imgView.layer.masksToBounds = true
        //: imgView.contentMode = .scaleAspectFill
        imgView.contentMode = .scaleAspectFill
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var titleLab: UILabel = {
    lazy var titleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "To pass the verification, in the photo you should:".localized
        lb.text = String(bytes: k_fileKey.reversed(), encoding: .utf8)!.localized
        //: lb.textColor = .colorStatuteNameApp()
        lb.textColor = .colorStatuteNameApp()
        //: lb.font = .fontChange(type: .Regular, fontSize: 18)
        lb.font = .fontChange(type: .Regular, fontSize: 18)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var firstDesLab: UILabel = {
    lazy var firstDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· show your face clearly;".localized
        lb.text = (String(k_pathMsg.suffix(6)) + " you" + String(kApplicationKey.suffix(4)) + String(kRequestLabelName.prefix(6)) + String(k_insideName)).localized
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .childMenu()
        //: lb.font = .fontChange(type: .Regular, fontSize: 16)
        lb.font = .fontChange(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var secondDesLab: UILabel = {
    lazy var secondDesLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "· pose exactly like the posing guide.".localized
        lb.text = String(bytes: k_resultData.map{tableMiniTag(row: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .childMenu()
        //: lb.font = .fontChange(type: .Regular, fontSize: 16)
        lb.font = .fontChange(type: .Regular, fontSize: 16)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var bottomTipLab: UILabel = {
    lazy var bottomTipLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Your photo will never be uploaded to your profile or shown to anvone else.".localized
        lb.text = String(bytes: kTextId.map{viewIcon(mode: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .appValueDetailColor()
        lb.textColor = .childMenu()
        //: lb.font = .fontChange(type: .Regular, fontSize: 15)
        lb.font = .fontChange(type: .Regular, fontSize: 15)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var submitBtn: UIButton = {
    lazy var submitBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Submit Photo".localized, for: .normal)
        btn.setTitle((String(kRequestStr.prefix(6)) + " Photo").localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.submitGift(name: "btn_me_back_continue"), for: .normal)
        btn.setBackgroundImage(UIImage.submitGift(name: (String(k_centerName) + k_modelFormat.replacingOccurrences(of: "pic", with: "e"))), for: .normal)
        //: btn.titleLabel?.font = .fontChange(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .fontChange(type: .Medium, fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var retakeBtn: UIButton = {
    lazy var retakeBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Retake Photo".localized, for: .normal)
        btn.setTitle((String(k_popMsg.prefix(6)) + String(kEffectButtonClearName.prefix(6))).localized, for: .normal)
        //: btn.setTitleColor(.appValueColor(), for: .normal)
        btn.setTitleColor(.scaleValueTo(), for: .normal)
        //: btn.titleLabel?.font = .fontChange(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = .fontChange(type: .Regular, fontSize: 18)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVerificationTakePhotoView {
extension RawDataPhotoView {
    //: @objc func registerSubmitAction() {
    @objc func meet() {
        //: if submitClickBlock != nil, rightPhotoImageView.image != nil {
        if submitClickBlock != nil, rightPhotoImageView.image != nil {
            //: submitClickBlock!(rightPhotoImageView.image!)
            submitClickBlock!(rightPhotoImageView.image!)
        }
    }

    //: @objc func registerRetakeAction() {
    @objc func patent() {
        //: if retakeClickBlock != nil {
        if retakeClickBlock != nil {
            //: retakeClickBlock!()
            retakeClickBlock!()
        }
    }

    //: private func bindInteraction() {
    private func cleave() {
        //: submitBtn.rx.controlEvent(.touchUpInside)
        submitBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerSubmitAction()
                self.meet()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

        //: retakeBtn.rx.controlEvent(.touchUpInside)
        retakeBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerRetakeAction()
                self.patent()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}

// MARK: - UI

//: extension TalkingVerificationTakePhotoView {
extension RawDataPhotoView {
    //: func createSubViews() {
    func pastViews() {
        //: addSubview(leftExampleImageView)
        addSubview(leftExampleImageView)
        //: addSubview(rightPhotoImageView)
        addSubview(rightPhotoImageView)
        //: addSubview(titleLab)
        addSubview(titleLab)
        //: addSubview(firstDesLab)
        addSubview(firstDesLab)
        //: addSubview(secondDesLab)
        addSubview(secondDesLab)
        //: addSubview(submitBtn)
        addSubview(submitBtn)
        //: addSubview(retakeBtn)
        addSubview(retakeBtn)
        //: addSubview(bottomTipLab)
        addSubview(bottomTipLab)
    }

    //: func layoutSubViewsConstraints() {
    func knock() {
        //: let itemWidth = (ScreenWidth - actualWidth(w: 40)) / 2.0
        let itemWidth = (constFormalContent - actualWidth(w: 40)) / 2.0
        //: leftExampleImageView.snp.makeConstraints { make in
        leftExampleImageView.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.top.equalTo(actualHeight(h: 18))
            make.top.equalTo(actualHeight(h: 18))
            //: make.width.height.equalTo(itemWidth)
            make.width.height.equalTo(itemWidth)
        }
        //: rightPhotoImageView.snp.makeConstraints { make in
        rightPhotoImageView.snp.makeConstraints { make in
            //: make.leading.equalTo(leftExampleImageView.snp.trailing).offset(actualWidth(w: 10))
            make.leading.equalTo(leftExampleImageView.snp.trailing).offset(actualWidth(w: 10))
            //: make.top.equalTo(leftExampleImageView.snp.top)
            make.top.equalTo(leftExampleImageView.snp.top)
            //: make.width.height.equalTo(itemWidth)
            make.width.height.equalTo(itemWidth)
        }
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(leftExampleImageView.snp.bottom).offset(actualHeight(h: 17))
            make.top.equalTo(leftExampleImageView.snp.bottom).offset(actualHeight(h: 17))
        }
        //: firstDesLab.snp.makeConstraints { make in
        firstDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(titleLab.snp.bottom).offset(actualHeight(h: 10))
            make.top.equalTo(titleLab.snp.bottom).offset(actualHeight(h: 10))
        }
        //: secondDesLab.snp.makeConstraints { make in
        secondDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(titleLab.snp.leading)
            make.leading.equalTo(titleLab.snp.leading)
            //: make.trailing.equalTo(titleLab.snp.trailing)
            make.trailing.equalTo(titleLab.snp.trailing)
            //: make.top.equalTo(firstDesLab.snp.bottom).offset(actualHeight(h: 5))
            make.top.equalTo(firstDesLab.snp.bottom).offset(actualHeight(h: 5))
        }

        //: bottomTipLab.snp.makeConstraints { make in
        bottomTipLab.snp.makeConstraints { make in
            //: make.leading.equalTo(titleLab.snp.leading)
            make.leading.equalTo(titleLab.snp.leading)
            //: make.trailing.equalTo(titleLab.snp.trailing)
            make.trailing.equalTo(titleLab.snp.trailing)
            //: make.bottom.equalTo(-24-kDeviceSafeBottomHeight)
            make.bottom.equalTo(-24 - appButtonData)
        }
        //: retakeBtn.snp.makeConstraints { make in
        retakeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(bottomTipLab.snp.top).offset(-5)
            make.bottom.equalTo(bottomTipLab.snp.top).offset(-5)
            //: make.leading.equalTo(actualWidth(w: 54))
            make.leading.equalTo(actualWidth(w: 54))
            //: make.trailing.equalTo(actualWidth(w: -54))
            make.trailing.equalTo(actualWidth(w: -54))
            //: make.height.equalTo(actualHeight(h: 42))
            make.height.equalTo(actualHeight(h: 42))
        }
        //: submitBtn.snp.makeConstraints { make in
        submitBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(retakeBtn.snp.top)
            make.bottom.equalTo(retakeBtn.snp.top)
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.width.equalTo(267)
            make.width.equalTo(267)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }
}
