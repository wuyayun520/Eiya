
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_blockMName:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "pic" :*/
fileprivate let k_pathValue:[Character] = ["p","i","c"]

/*: "url" :*/
fileprivate let k_makeUrl:[Character] = ["u","r","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModeReusableView.swift
//  OpalTerraAdapterLibrary
//
//  Created by Charlotte on 2024/4/7.
//

//: import UIKit
import UIKit

//: class SocialHeaderView: UICollectionReusableView {
class ModeReusableView: UICollectionReusableView {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = CGRectMake(0, 0, ScreenWidth, SocialHeaderView.getSelfHeight())
        self.frame = CGRectMake(0, 0, constFormalContent, ModeReusableView.videoHeight())
        //: basicUI()
        mobileUi()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_blockMName.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var hostBtn: UIButton = {
    private lazy var hostBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let dic = DistanceAppManager.share.appConfigMode.homeOpAds.first
        let dic = DistanceAppManager.share.appConfigMode.homeOpAds.first
        //: btn.setUrlImage(urlStr: dic?["pic"] ?? "")
        btn.successOn(urlStr: dic?[(String(k_pathValue))] ?? "")
        //: btn.addTarget(self, action: #selector(hostBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(adultFire), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var centerBtn: UIButton = {
    private lazy var centerBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let dic = DistanceAppManager.share.appConfigMode.homeOpAds.last
        let dic = DistanceAppManager.share.appConfigMode.homeOpAds.last
        //: btn.setUrlImage(urlStr: dic?["pic"] ?? "")
        btn.successOn(urlStr: dic?[(String(k_pathValue))] ?? "")
        //: btn.addTarget(self, action: #selector(centerBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(midfield), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension SocialHeaderView {
extension ModeReusableView {
    //: @objc private func hostBtnClick() {
    @objc private func adultFire() {
        //: let dic = DistanceAppManager.share.appConfigMode.homeOpAds.first
        let dic = DistanceAppManager.share.appConfigMode.homeOpAds.first
        //: AddReactiveCompatible.share.func__pushToWebVC(urlStr: dic?["url"] ?? "")
        AddReactiveCompatible.share.pathAcross(urlStr: dic?[(String(k_makeUrl))] ?? "")
    }

    //: @objc private func centerBtnClick() {
    @objc private func midfield() {
        //: let dic = DistanceAppManager.share.appConfigMode.homeOpAds.last
        let dic = DistanceAppManager.share.appConfigMode.homeOpAds.last
        //: AddReactiveCompatible.share.func__pushToWebVC(urlStr: dic?["url"] ?? "")
        AddReactiveCompatible.share.pathAcross(urlStr: dic?[(String(k_makeUrl))] ?? "")
    }
}

// MARK: - Layout

//: extension SocialHeaderView {
extension ModeReusableView {
    //: class func getSelfHeight() -> CGFloat {
    class func videoHeight() -> CGFloat {
        //: var sheight = 0.0
        var sheight = 0.0
        //: if DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue && DistanceAppManager.share.appConfigMode.homeOpAds.count > 1 {
        if DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue && DistanceAppManager.share.appConfigMode.homeOpAds.count > 1 {
            //: sheight += 76.0
            sheight += 76.0
        }
        //: return sheight
        return sheight
    }

    //: private func basicUI() {
    private func mobileUi() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: if DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue, DistanceAppManager.share.appConfigMode.homeOpAds.count > 0 {
        if DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue, DistanceAppManager.share.appConfigMode.homeOpAds.count > 0 {
            //: self.hostBtn.frame = CGRect(x: 13, y: 12, width: (self.width-26-8)/2, height: 64)
            self.hostBtn.frame = CGRect(x: 13, y: 12, width: (self.width - 26 - 8) / 2, height: 64)
            //: self.centerBtn.frame = CGRect(x: self.width/2 + 4, y: 12, width: (self.width-26-8)/2, height: 64)
            self.centerBtn.frame = CGRect(x: self.width / 2 + 4, y: 12, width: (self.width - 26 - 8) / 2, height: 64)
        }
    }
}
