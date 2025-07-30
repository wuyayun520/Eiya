
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kQueryKey:[UInt8] = [0xee,0xe9,0xee,0xf3,0xaf,0xe4,0xe8,0xe3,0xe2,0xf5,0xbd,0xae,0xa7,0xef,0xe6,0xf4,0xa7,0xe9,0xe8,0xf3,0xa7,0xe5,0xe2,0xe2,0xe9,0xa7,0xee,0xea,0xf7,0xeb,0xe2,0xea,0xe2,0xe9,0xf3,0xe2,0xe3]

private func matchAdd(model num: UInt8) -> UInt8 {
    return num ^ 135
}

/*: "icon_faceverification_guide_ok" :*/
fileprivate let kPhotoTitlePath:String = "ICON"
fileprivate let k_rangeFormat:String = "erianglec"
fileprivate let k_firstValue:String = "_guideto in text"
fileprivate let k_valueRefuseMessage:String = "top cur_ok"

/*: "Submitted successfully, please wait \n patiently for review." :*/
fileprivate let k_textUrl:[UInt8] = [0x1c,0x3e,0x2b,0x36,0x32,0x3d,0x3d,0x2e,0x2d,0xe9,0x3c,0x3e,0x2c,0x2c,0x2e,0x3c,0x3c,0x2f,0x3e,0x35,0x35,0x42,0xf5,0xe9,0x39,0x35,0x2e,0x2a,0x3c,0x2e,0xe9,0x40,0x2a,0x32,0x3d,0xe9,0xd3,0xe9,0x39,0x2a,0x3d,0x32,0x2e,0x37,0x3d,0x35,0x42,0xe9,0x2f,0x38,0x3b,0xe9,0x3b,0x2e,0x3f,0x32,0x2e,0x40,0xf7]

fileprivate func buttonFormatMake(succeed num: UInt8) -> UInt8 {
    let value = Int(num) - 201
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TextReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingFinalVerificationView: UIView {
class TextReactiveCompatible: UIView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: createSubViews()
        logViews()
        //: layoutSubViewsConstraints()
        errorComponent()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kQueryKey.map{matchAdd(model: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var successIconView: UIImageView = {
    lazy var successIconView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.image = UIImage.submitGift(name: "icon_faceverification_guide_ok")
        imgView.image = UIImage.submitGift(name: (kPhotoTitlePath.lowercased() + "_facev" + k_rangeFormat.replacingOccurrences(of: "angle", with: "fi") + "ation" + String(k_firstValue.prefix(6)) + String(k_valueRefuseMessage.suffix(3))))
        //: return imgView
        return imgView
        //: }()
    }()

    //: lazy var tipLab: UILabel = {
    lazy var tipLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.text = "Submitted successfully, please wait \n patiently for review.".localized
        lb.text = String(bytes: k_textUrl.map{buttonFormatMake(succeed: $0)}, encoding: .utf8)!.localized
        //: lb.textColor = .colorStatuteNameApp()
        lb.textColor = .colorStatuteNameApp()
        //: lb.font = .fontChange(type: .Regular, fontSize: 18)
        lb.font = .fontChange(type: .Regular, fontSize: 18)
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - UI

//: extension TalkingFinalVerificationView {
extension TextReactiveCompatible {
    //: func createSubViews() {
    func logViews() {
        //: addSubview(successIconView)
        addSubview(successIconView)
        //: addSubview(tipLab)
        addSubview(tipLab)
    }

    //: func layoutSubViewsConstraints() {
    func errorComponent() {
        //: successIconView.snp.makeConstraints { make in
        successIconView.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.top.equalTo(actualHeight(h: 102))
            make.top.equalTo(actualHeight(h: 102))
            //: make.width.height.equalTo(actualWidth(w: 71))
            make.width.height.equalTo(actualWidth(w: 71))
        }
        //: tipLab.snp.makeConstraints { make in
        tipLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 15))
            make.leading.equalTo(actualWidth(w: 15))
            //: make.trailing.equalTo(actualWidth(w: -15))
            make.trailing.equalTo(actualWidth(w: -15))
            //: make.top.equalTo(successIconView.snp.bottom).offset(actualHeight(h: 27))
            make.top.equalTo(successIconView.snp.bottom).offset(actualHeight(h: 27))
        }
    }
}
