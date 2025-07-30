
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kInfoStrengthData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "copywriting" :*/
fileprivate let kColorPath:String = "copsharewri"
fileprivate let k_touchStr:[Character] = ["t","i","n","g"]

/*: "showBullet" :*/
fileprivate let k_noFormat:String = "showBuequal title string"
fileprivate let k_equalValue:String = "titletitleet"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ServerTextThen.swift
//  AbroadTalking
//
//  Created by young on 2023/9/11.
//

//: import UIKit
import UIKit

//: class TalkingVideoFloatScreenView: UIView {
class ServerTextThen: UIView {
    // 数据
    //: private let data = JSON(DistanceAppManager.share.appConfigMode.videoReport)
    private let data = JSON(DistanceAppManager.share.appConfigMode.videoReport)

    // MARK: - 属性声明

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true
        //: setupSubviews()
        titleSubviews()
        //: setupSubViewsConstraint()
        tapConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kInfoStrengthData.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var textLab: UILabel = {
    private lazy var textLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 12)
        lab.font = UIFont.targetFor(fontSize: 12)
        //: lab.text = data["copywriting"].stringValue
        lab.text = data[(kColorPath.replacingOccurrences(of: "share", with: "y") + String(k_touchStr))].stringValue
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVideoFloatScreenView {
extension ServerTextThen {
    /// 展示飘屏动画
    //: @objc func show_animation() {
    @objc func whenAnimation() {
        //: guard self.textLab.text?.count ?? 0 > 0 else { return }
        guard self.textLab.text?.count ?? 0 > 0 else { return }
        //: guard data["showBullet"].boolValue == true else { return }
        guard data[(String(k_noFormat.prefix(6)) + k_equalValue.replacingOccurrences(of: "title", with: "l"))].boolValue == true else { return }
        //: guard self.superview != nil else { return }
        guard self.superview != nil else { return }
        //: var startX = ScreenWidth
        var startX = constFormalContent
        //: var endX = -self.frame.width
        var endX = -self.frame.width
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeLanguageManager.shared.direction == .rightToLeft {
            //: startX = -self.frame.width
            startX = -self.frame.width
            //: endX = ScreenWidth
            endX = constFormalContent
        }
        //: self.isHidden = false
        self.isHidden = false
        //: self.frame.origin.x = startX
        self.frame.origin.x = startX
        //: let duration = (ScreenWidth+self.frame.width)*5.0/ScreenWidth
        let duration = (constFormalContent + self.frame.width) * 5.0 / constFormalContent
        //: UIView.animate(withDuration: duration, delay: 0, options: .curveLinear) {
        UIView.animate(withDuration: duration, delay: 0, options: .curveLinear) {
            //: self.frame.origin.x = endX
            self.frame.origin.x = endX

            //: } completion: { finish in
        } completion: { _ in
            //: DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) { [weak self] in
            DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) { [weak self] in
                //: self?.show_animation()
                self?.whenAnimation()
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingVideoFloatScreenView {
extension ServerTextThen {
    /// 添加视图
    //: private func setupSubviews() {
    private func titleSubviews() {
        //: self.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        self.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        //: self.layer.cornerRadius = 11
        self.layer.cornerRadius = 11
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true
        //: self.isHidden = true
        self.isHidden = true
        //: addSubview(textLab)
        addSubview(textLab)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func tapConstraint() {
        //: let text_width = self.textLab.sizeThatFits(CGSize(width: CGFLOAT_MAX, height: 22)).width
        let text_width = self.textLab.sizeThatFits(CGSize(width: CGFLOAT_MAX, height: 22)).width
        //: self.frame = CGRect(x: ScreenWidth,
        self.frame = CGRect(x: constFormalContent,
                            //: y: StatusBarHeight+45,
                            y: main_netValue + 45,
                            //: width: text_width+16.0,
                            width: text_width + 16.0,
                            //: height: 22)
                            height: 22)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeLanguageManager.shared.direction == .rightToLeft {
            //: self.frame.origin.x = -self.frame.width
            self.frame.origin.x = -self.frame.width
        }
        //: textLab.snp.makeConstraints { make in
        textLab.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
        }
    }
}
