
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_lengthKey:[UInt8] = [0xfb,0x0,0xfb,0x6,0xba,0xf5,0x1,0xf6,0xf7,0x4,0xcc,0xbb,0xb2,0xfa,0xf3,0x5,0xb2,0x0,0x1,0x6,0xb2,0xf4,0xf7,0xf7,0x0,0xb2,0xfb,0xff,0x2,0xfe,0xf7,0xff,0xf7,0x0,0x6,0xf7,0xf6]

fileprivate func textToLayer(success num: UInt8) -> UInt8 {
    let value = Int(num) - 146
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "img_faceverification_pose" :*/
fileprivate let kMeMsg:[Character] = ["i","m","g","_","f","a","c","e","v","e","r","i","f","i"]
fileprivate let k_pleaseImageUrl:String = "CATION"

/*: "Strike this pose and take a photo" :*/
fileprivate let k_iconUrl:[UInt8] = [0x6f,0x74,0x6f,0x68,0x70,0x20,0x61,0x20,0x65,0x6b,0x61,0x74,0x20,0x64,0x6e,0x61,0x20,0x65,0x73,0x6f,0x70,0x20,0x73,0x69,0x68,0x74,0x20,0x65,0x6b,0x69,0x72,0x74,0x53]

/*: "Your photo will never be uploaded to your profile or shown to anyone else." :*/
fileprivate let k_frameViewPath:[UInt8] = [0xd7,0xed,0xf3,0xf0,0x9e,0xee,0xe6,0xed,0xf2,0xed,0x9e,0xf5,0xe7,0xea,0xea,0x9e,0xec,0xe3,0xf4,0xe3,0xf0,0x9e,0xe0,0xe3,0x9e,0xf3,0xee,0xea,0xed,0xdf,0xe2,0xe3,0xe2,0x9e,0xf2,0xed,0x9e,0xf7,0xed,0xf3,0xf0,0x9e,0xee,0xf0,0xed,0xe4,0xe7,0xea,0xe3,0x9e,0xed,0xf0,0x9e,0xf1,0xe6,0xed,0xf5,0xec,0x9e,0xf2,0xed,0x9e,0xdf,0xec,0xf7,0xed,0xec,0xe3,0x9e,0xe3,0xea,0xf1,0xe3,0xac]

fileprivate func selfLength(component num: UInt8) -> UInt8 {
    let value = Int(num) - 126
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Camera" :*/
fileprivate let kModelId:String = "Cameramobile remove medium view right"

/*: "btn_me_back_continue" :*/
fileprivate let k_arrayPath:[Character] = ["b","t","n","_","m","e","_"]
fileprivate let kNameText:String = "frame self add self atback_c"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingVerificationExampleView: UIView {
class KeyReactiveCompatible: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: typealias CameraBtnClickBlock = () -> Void
    typealias CameraBtnClickBlock = () -> Void
    //: var btnClickBlock: CameraBtnClickBlock?
    var btnClickBlock: CameraBtnClickBlock?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        abandon()
        //: layoutSubViewsConstraints()
        constraintsError()
        //: bindInteraction()
        waterfinderAnalogDigitalConverter()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_lengthKey.map{textToLayer(success: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var faceBackImageView: UIImageView = {
    lazy var faceBackImageView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.submitGift(name: "img_faceverification_pose")
        imgView.image = UIImage.submitGift(name: (String(kMeMsg) + k_pleaseImageUrl.lowercased() + "_pose"))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var verificationTitleLab: UILabel = {
    lazy var verificationTitleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Strike this pose and take a photo".localized
        lb.text = String(bytes: k_iconUrl.reversed(), encoding: .utf8)!.localized
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
        //: lb.text = "Your photo will never be uploaded to your profile or shown to anyone else.".localized
        lb.text = String(bytes: k_frameViewPath.map{selfLength(component: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .appValueColor()
        lb.textColor = .scaleValueTo()
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
        //: btn.setTitle("Camera".localized, for: .normal)
        btn.setTitle((String(kModelId.prefix(6))).localized, for: .normal)
        //: btn.setBackgroundImage(UIImage.submitGift(name: "btn_me_back_continue"), for: .normal)
        btn.setBackgroundImage(UIImage.submitGift(name: (String(k_arrayPath) + String(kNameText.suffix(6)) + "ontinue")), for: .normal)
        //: btn.titleLabel?.font = .fontChange(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = .fontChange(type: .Medium, fontSize: 17)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVerificationExampleView {
extension KeyReactiveCompatible {
    //: @objc func registerBtnAction() {
    @objc func recruit() {
        //: if btnClickBlock != nil {
        if btnClickBlock != nil {
            //: btnClickBlock!()
            btnClickBlock!()
        }
    }

    //: private func bindInteraction() {
    private func waterfinderAnalogDigitalConverter() {
        //: continueBtn.rx.controlEvent(.touchUpInside)
        continueBtn.rx.controlEvent(.touchUpInside)
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.registerBtnAction()
                self.recruit()
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
    }
}

// MARK: - Layout

//: extension TalkingVerificationExampleView {
extension KeyReactiveCompatible {
    //: func createSubViews() {
    func abandon() {
        //: addSubview(faceBackImageView)
        addSubview(faceBackImageView)
        //: addSubview(verificationTitleLab)
        addSubview(verificationTitleLab)
        //: addSubview(verificationDesLab)
        addSubview(verificationDesLab)
        //: addSubview(continueBtn)
        addSubview(continueBtn)
    }

    //: func layoutSubViewsConstraints() {
    func constraintsError() {
        //: let fitH = 686 * (ScreenWidth - actualWidth(w: 30)) / 690
        let fitH = 686 * (constFormalContent - actualWidth(w: 30)) / 690
        //: faceBackImageView.snp.makeConstraints { make in
        faceBackImageView.snp.makeConstraints { make in
            //: make.top.equalTo((actualHeight(h: 18)))
            make.top.equalTo(actualHeight(h: 18))
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.width.equalTo(ScreenWidth-actualWidth(w: 30))
            make.width.equalTo(constFormalContent - actualWidth(w: 30))
            //: make.height.equalTo(fitH)
            make.height.equalTo(fitH)
        }
        //: verificationTitleLab.snp.makeConstraints { make in
        verificationTitleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 24))
            make.top.equalTo(faceBackImageView.snp.bottom).offset(actualHeight(h: 24))
        }
        //: verificationDesLab.snp.makeConstraints { make in
        verificationDesLab.snp.makeConstraints { make in
            //: make.leading.equalTo(verificationTitleLab.snp.leading)
            make.leading.equalTo(verificationTitleLab.snp.leading)
            //: make.trailing.equalTo(verificationTitleLab.snp.trailing)
            make.trailing.equalTo(verificationTitleLab.snp.trailing)
            //: make.top.equalTo(verificationTitleLab.snp.bottom).offset(10)
            make.top.equalTo(verificationTitleLab.snp.bottom).offset(10)
        }
        //: continueBtn.snp.makeConstraints { make in
        continueBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-actualHeight(h: 34)-kDeviceSafeBottomHeight)
            make.bottom.equalTo(-actualHeight(h: 34) - appButtonData)
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.width.equalTo(267)
            make.width.equalTo(267)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
    }
}
