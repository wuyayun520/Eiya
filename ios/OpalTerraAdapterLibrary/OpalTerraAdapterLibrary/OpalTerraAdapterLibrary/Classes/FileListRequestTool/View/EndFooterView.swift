
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_locationUrl:[UInt8] = [0x38,0x3f,0x38,0x25,0x79,0x32,0x3e,0x35,0x34,0x23,0x6b,0x78,0x71,0x39,0x30,0x22,0x71,0x3f,0x3e,0x25,0x71,0x33,0x34,0x34,0x3f,0x71,0x38,0x3c,0x21,0x3d,0x34,0x3c,0x34,0x3f,0x25,0x34,0x35]

private func characteristicRootOfASquareMatrix(up num: UInt8) -> UInt8 {
    return num ^ 81
}

/*: "You can receive a gold coins bonus once a day while the " :*/
fileprivate let kDirectionPath:[UInt8] = [0x20,0x65,0x68,0x74,0x20,0x65,0x6c,0x69,0x68,0x77,0x20,0x79,0x61,0x64,0x20,0x61,0x20,0x65,0x63,0x6e,0x6f,0x20,0x73,0x75,0x6e,0x6f,0x62,0x20,0x73,0x6e,0x69,0x6f,0x63,0x20,0x64,0x6c,0x6f,0x67,0x20,0x61,0x20,0x65,0x76,0x69,0x65,0x63,0x65,0x72,0x20,0x6e,0x61,0x63,0x20,0x75,0x6f,0x59]

/*: "Lounge plus" :*/
fileprivate let k_errorValue:String = "height type countLoun"
fileprivate let kTitleStackId:String = "return extension sex textge plus"

/*: " subscription service is active.The time of the daily gold coins will be based on the US Eastern Time Zone." :*/
fileprivate let kCoverMessage:[UInt8] = [0x91,0xc2,0xc4,0xd3,0xc2,0xd2,0xc3,0xd8,0xc1,0xc5,0xd8,0xde,0xdf,0x91,0xc2,0xd4,0xc3,0xc7,0xd8,0xd2,0xd4,0x91,0xd8,0xc2,0x91,0xd0,0xd2,0xc5,0xd8,0xc7,0xd4,0x9f,0xe5,0xd9,0xd4,0x91,0xc5,0xd8,0xdc,0xd4,0x91,0xde,0xd7,0x91,0xc5,0xd9,0xd4,0x91,0xd5,0xd0,0xd8,0xdd,0xc8,0x91,0xd6,0xde,0xdd,0xd5,0x91,0xd2,0xde,0xd8,0xdf,0xc2,0x91,0xc6,0xd8,0xdd,0xdd,0x91,0xd3,0xd4,0x91,0xd3,0xd0,0xc2,0xd4,0xd5,0x91,0xde,0xdf,0x91,0xc5,0xd9,0xd4,0x91,0xe4,0xe2,0x91,0xf4,0xd0,0xc2,0xc5,0xd4,0xc3,0xdf,0x91,0xe5,0xd8,0xdc,0xd4,0x91,0xeb,0xde,0xdf,0xd4,0x9f]

private func toMatch(lab num: UInt8) -> UInt8 {
    return num ^ 177
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EndFooterView.swift
//  AbroadTalking
//
//  Created by young on 2022/12/5.
//

//: import UIKit
import UIKit

//: class TalkingDailyFooterView: UICollectionReusableView {
class EndFooterView: UICollectionReusableView {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_locationUrl.map{characteristicRootOfASquareMatrix(up: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.setupSubviews()
        self.capacitySubviews()
        //: self.setupSubViewsConstraint()
        self.pullFillInCover()
    }

    // MARK: - Lazy Load

    //: private lazy var cornersView: UIView = {
    private lazy var cornersView: UIView = {
        //: let view = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth-30, height: 20))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: constFormalContent - 30, height: 20))
        //: view.Corner(width: view.frame.size.width, height: view.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 12, height: 12))
        view.imageUser(width: view.frame.size.width, height: view.frame.size.height, corners: [.bottomLeft, .bottomRight], cornerRadii: .init(width: 12, height: 12))
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "You can receive a gold coins bonus once a day while the \"Lounge plus\" subscription service is active.The time of the daily gold coins will be based on the US Eastern Time Zone.".localized
        lab.text = getString()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.targetFor(fontSize: 14)
        //: lab.textColor = UIColor.appValueDetailColor()
        lab.textColor = UIColor.childMenu()
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()
    
    func getString() -> String {
        return String(bytes: kDirectionPath.reversed(), encoding: .utf8)! + "\"" + (String(k_errorValue.suffix(4)) + String(kTitleStackId.suffix(7))) + "\"" + String(bytes: kCoverMessage.map{toMatch(lab: $0)}, encoding: .utf8)!.localized
    }
}

// MARK: - Event

//: extension TalkingDailyFooterView {
extension EndFooterView {
    /// 获取当前视图高度
    //: static func getFooterViewHeight() -> CGFloat {
    static func weltanschauungLocal() -> CGFloat {
        //: if DistanceAppManager.share.loginUserMode.isSignIn {
        if DistanceAppManager.share.loginUserMode.isSignIn {
            //: return actualWidth(w: 124)
            return actualWidth(w: 124)
            //: } else {
        } else {
            //: return actualWidth(w: 200)
            return actualWidth(w: 200)
        }
    }
}

// MARK: - Layout

//: extension TalkingDailyFooterView {
extension EndFooterView {
    // 添加视图
    //: private func setupSubviews() {
    private func capacitySubviews() {
        //: self.addSubview(cornersView)
        self.addSubview(cornersView)
        //: self.addSubview(desLab)
        self.addSubview(desLab)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func pullFillInCover() {
        //: desLab.snp.makeConstraints { make in
        desLab.snp.makeConstraints { make in
            //: make.top.equalTo(cornersView.snp.bottom).offset(actualWidth(w: 12))
            make.top.equalTo(cornersView.snp.bottom).offset(actualWidth(w: 12))
            //: make.leading.width.centerX.equalToSuperview()
            make.leading.width.centerX.equalToSuperview()
        }
    }
}
