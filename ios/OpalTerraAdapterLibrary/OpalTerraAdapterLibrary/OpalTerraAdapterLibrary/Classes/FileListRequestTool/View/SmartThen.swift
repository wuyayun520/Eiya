
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kCellQuickValue:[UInt8] = [0xa4,0xa3,0xa4,0xb9,0xe5,0xae,0xa2,0xa9,0xa8,0xbf,0xf7,0xe4,0xed,0xa5,0xac,0xbe,0xed,0xa3,0xa2,0xb9,0xed,0xaf,0xa8,0xa8,0xa3,0xed,0xa4,0xa0,0xbd,0xa1,0xa8,0xa0,0xa8,0xa3,0xb9,0xa8,0xa9]

private func changeFrame(color num: UInt8) -> UInt8 {
    return num ^ 205
}

/*: "Sun" :*/
fileprivate let k_intimateData:String = "return array label processSun"

/*: "Mon" :*/
fileprivate let k_actualStr:[Character] = ["M","o","n"]

/*: "Tue" :*/
fileprivate let kSizeData:[Character] = ["T","u","e"]

/*: "Wed" :*/
fileprivate let k_upUrl:[Character] = ["W","e","d"]

/*: "Thu" :*/
fileprivate let kDataMessage:String = "Thumanager name view attach inside"

/*: "Fri" :*/
fileprivate let kProductUrl:String = "layer return model selfFri"

/*: "Sat" :*/
fileprivate let k_labInsideId:[Character] = ["S","a","t"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SmartThen.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: let TalkingDailyHeaderView_H = actualWidth(w: 96)
let k_maxData = actualWidth(w: 96)

//: class TalkingDailyHeaderView: UICollectionReusableView {
class SmartThen: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kCellQuickValue.map{changeFrame(color: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.setupWithinSubviewsSend()
        //: self.setupSubViewsConstraint()
        self.pressedFactory()
    }

    // MARK: - Lazy Laod

    //: lazy var titleLab: UILabel = {
    lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 18)
        lab.font = UIFont.tapShared(fontSize: 18)
        //: lab.textColor = UIColor.colorStatuteNameApp()
        lab.textColor = UIColor.colorStatuteNameApp()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var weekArr: [String] = {
    private lazy var weekArr: [String] = //: return ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
        [(String(k_intimateData.suffix(3))), (String(k_actualStr)), (String(kSizeData)), (String(k_upUrl)), (String(kDataMessage.prefix(3))), (String(kProductUrl.suffix(3))), (String(k_labInsideId))]
    //: }()
}

// MARK: - Layout

//: extension TalkingDailyHeaderView {
extension SmartThen {
    // 添加视图
    //: private func setupSubviews() {
    private func setupWithinSubviewsSend() {
        //: self.backgroundColor = .white
        self.backgroundColor = .white
        //: self.Corner(width: ScreenWidth, height: TalkingDailyHeaderView_H, corners: [.topLeft, .topRight], cornerRadii: .init(width: 16, height: 16))
        self.imageUser(width: constFormalContent, height: k_maxData, corners: [.topLeft, .topRight], cornerRadii: .init(width: 16, height: 16))

        //: self.addSubview(titleLab)
        self.addSubview(titleLab)

        //: var lastLab: UILabel?
        var lastLab: UILabel?
        //: for (index, title) in weekArr.enumerated() {
        for (index, title) in weekArr.enumerated() {
            //: let lab = UILabel()
            let lab = UILabel()
            //: lab.text = title.localized
            lab.text = title.localized
            //: lab.textColor = UIColor.colorStatuteNameApp()
            lab.textColor = UIColor.colorStatuteNameApp()
            //: lab.textAlignment = .center
            lab.textAlignment = .center
            //: lab.font = UIFont.pingfangRugularFont(fontSize: 16)
            lab.font = UIFont.targetFor(fontSize: 16)
            //: self.addSubview(lab)
            self.addSubview(lab)

            //: let width = ScreenWidth/CGFloat(weekArr.count)
            let width = constFormalContent / CGFloat(weekArr.count)
            //: if index == 0 {
            if index == 0 { // 首个
                //: lab.snp.makeConstraints { make in
                lab.snp.makeConstraints { make in
                    //: make.leading.equalTo(0)
                    make.leading.equalTo(0)
                    //: make.top.equalTo(actualWidth(w: 66))
                    make.top.equalTo(actualWidth(w: 66))
                    //: make.width.equalTo(width)
                    make.width.equalTo(width)
                    //: make.bottom.equalToSuperview()
                    make.bottom.equalToSuperview()
                }
                //: } else {
            } else {
                //: lab.snp.makeConstraints { make in
                lab.snp.makeConstraints { make in
                    //: make.leading.equalTo(lastLab!.snp.trailing)
                    make.leading.equalTo(lastLab!.snp.trailing)
                    //: make.top.width.bottom.equalTo(lastLab!)
                    make.top.width.bottom.equalTo(lastLab!)
                }
            }
            //: lastLab = lab
            lastLab = lab
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func pressedFactory() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(actualWidth(w: 16))
            make.top.equalTo(actualWidth(w: 16))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }
    }
}
