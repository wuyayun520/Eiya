
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kGiftPath:[UInt8] = [0x17,0x10,0x17,0xa,0x56,0x1d,0x11,0x1a,0x1b,0xc,0x44,0x57,0x5e,0x16,0x1f,0xd,0x5e,0x10,0x11,0xa,0x5e,0x1c,0x1b,0x1b,0x10,0x5e,0x17,0x13,0xe,0x12,0x1b,0x13,0x1b,0x10,0xa,0x1b,0x1a]

/*: "iv_match_vc" :*/
fileprivate let kUserFormat:[Character] = ["i","v","_","m","a","t","c","h","_","v","c"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleBaseballLeagueReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/8/11.
//

//: import UIKit
import UIKit

//: class TalkingClubDetentionPopUpView: UIView {
class TitleBaseballLeagueReactiveCompatible: UIView {
    //: var popView: TalkingPopView?
    var popView: DataPopView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.fice()
        //: self.setupSubViewsConstraint()
        self.alongToDisappear()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kGiftPath.map{$0^126}, encoding: .utf8)!)
    }

    //: lazy var backIcon: UIImageView = {
    lazy var backIcon: UIImageView = {
        //: let iamg = UIImageView.init()
        let iamg = UIImageView()
        //: iamg.image = UIImage.submitGift(name: "iv_match_vc")
        iamg.image = UIImage.submitGift(name: (String(kUserFormat)))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: iamg.isUserInteractionEnabled = true
        iamg.isUserInteractionEnabled = true
        //: return iamg
        return iamg
        //: }()
    }()

    //: lazy var backBtn: UIButton = {
    lazy var backBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(backBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(visualCommunication), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingClubDetentionPopUpView {
extension TitleBaseballLeagueReactiveCompatible {
    //: func show() {
    func lightness() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = DataPopView(frame: UIScreen.main.bounds)
        //: self.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        self.frame = CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue)
        //: popView?.initWithView(view: self)
        popView?.smart(view: self)
        //: popView?.showInView(view: UserTextMacroDefine.getWindow())
        popView?.academePosition(view: UserTextMacroDefine.clearstoryNo())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func backBtnClick() {
    @objc func visualCommunication() {
        //: popView?.dismissView()
        popView?.upView()
        //: popView = nil
        popView = nil
    }
}

//: extension TalkingClubDetentionPopUpView {
extension TitleBaseballLeagueReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func fice() {
        //: self.addSubview(backIcon)
        self.addSubview(backIcon)
        //: backIcon.addSubview(backBtn)
        backIcon.addSubview(backBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func alongToDisappear() {
        //: backIcon.snp.makeConstraints { make in
        backIcon.snp.makeConstraints { make in
            //: make.bottom.equalTo(-124)
            make.bottom.equalTo(-124)
            //: make.leading.equalTo(39)
            make.leading.equalTo(39)
            //: make.trailing.equalTo(-39)
            make.trailing.equalTo(-39)
            //: make.height.equalTo(378)
            make.height.equalTo(378)
        }
        //: backBtn.snp.makeConstraints { make in
        backBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
