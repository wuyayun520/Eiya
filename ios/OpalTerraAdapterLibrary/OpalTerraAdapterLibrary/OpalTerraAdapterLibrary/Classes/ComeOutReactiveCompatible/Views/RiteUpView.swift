
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kNameData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "bg_tx" :*/
fileprivate let k_timeId:[Character] = ["b","g","_","t","x"]

/*: "bg_tx_lb" :*/
fileprivate let kBeanContent:String = "bg_tx_height new"
fileprivate let k_playerScreenMessage:String = "lframe"

/*: "Edit Title" :*/
fileprivate let k_lineStr:[Character] = ["E","d","i","t"," ","T"]
fileprivate let kCustomKey:String = "itcontent"

/*: "GO Now" :*/
fileprivate let k_sizeValue:String = "else view unitGO No"
fileprivate let kCurMsg:String = "notice"

/*: "Maybe next time" :*/
fileprivate let kMomentListText:String = "case modelMayb"
fileprivate let kTableMsg:[Character] = [" ","t","i","m","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RiteUpView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/17.
//

//: import UIKit
import UIKit

//: class TalkingVideoCoverPopUpView: UIView {
class RiteUpView: UIView {
    //: var popView: TalkingPopView?
    var popView: DataPopView?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.changeGift()
        //: self.setupSubViewsConstraint()
        self.outsideCamera()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kNameData.reversed(), encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化

    //: lazy var contentView: UIImageView = {
    lazy var contentView: UIImageView = {
        //: let iamg = UIImageView.init()
        let iamg = UIImageView()
        //: iamg.image = UIImage.submitGift(name: "bg_tx")
        iamg.image = UIImage.submitGift(name: (String(k_timeId)))
        //: iamg.isUserInteractionEnabled = true
        iamg.isUserInteractionEnabled = true
        //: return iamg
        return iamg
        //: }()
    }()

    //: lazy var topIcon: UIImageView = {
    lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView.init()
        let iamg = UIImageView()
        //: iamg.image = UIImage.submitGift(name: "bg_tx_lb")
        iamg.image = UIImage.submitGift(name: (String(kBeanContent.prefix(6)) + k_playerScreenMessage.replacingOccurrences(of: "frame", with: "b")))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: lazy var titleLabel: UILabel = {
    lazy var titleLabel: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.colorStatuteNameApp()
        lab.textColor = UIColor.colorStatuteNameApp()
        //: lab.font = UIFont.fontChange(type: .Semibold, fontSize: 20)
        lab.font = UIFont.fontChange(type: .Semibold, fontSize: 20)
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.text = "Edit Title".localized
        lab.text = (String(k_lineStr) + kCustomKey.replacingOccurrences(of: "content", with: "le")).localized
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: lazy var inputTView: UITextView = {
    lazy var inputTView: UITextView = {
        //: let textView = UITextView()
        let textView = UITextView()
        //: textView.text = DistanceAppManager.share.appUserConfigMode.videoCover
        textView.text = DistanceAppManager.share.appUserConfigMode.videoCover
        //: textView.font = UIFont.fontChange(type: .Regular, fontSize: 16)
        textView.font = UIFont.fontChange(type: .Regular, fontSize: 16)
        //: textView.textColor = UIColor.colorStatuteNameApp()
        textView.textColor = UIColor.colorStatuteNameApp()
        //: textView.textContainer.maximumNumberOfLines = 0
        textView.textContainer.maximumNumberOfLines = 0
        //: textView.textAlignment = .center
        textView.textAlignment = .center
        //: textView.backgroundColor = .clear
        textView.backgroundColor = .clear
        //: textView.isEditable = false
        textView.isEditable = false
        //: return textView
        return textView
        //: }()
    }()

    //: private lazy var finishBtn: UIButton = {
    private lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("GO Now".localized, for: .normal)
        btn.setTitle((String(k_sizeValue.suffix(5)) + kCurMsg.replacingOccurrences(of: "notice", with: "w")).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 203, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.makeEqual(colors: UIColor.georgiaHomeBoy(), size: CGSize(width: 203, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(departure), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Maybe next time".localized, for: .normal)
        btn.setTitle((String(kMomentListText.suffix(4)) + "e next" + String(kTableMsg)).localized, for: .normal)
        //: btn.setTitleColor(UIColor.appValueColor(), for: .normal)
        btn.setTitleColor(UIColor.scaleValueTo(), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 13)
        btn.titleLabel?.font = UIFont.targetFor(fontSize: 13)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(tableCellClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

//: extension TalkingVideoCoverPopUpView {
extension RiteUpView {
    //: @objc func finishBtnClick() {
    @objc func departure() {
        //: dismiss()
        atExplain()
        //: guard TalkingSocketManager.shared.isCalling == false else {
        guard ListSocketManager.shared.isCalling == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.arcInfo(showMsg: kTopReplaceHeightData)
            //: return
            return
        }
        //: let editvc = TalkingEditProfilesVC()
        let editvc = FatalProfilesVc()
        //: currentViewController()?.navigationController?.pushViewController(editvc, animated: true)
        selectStart()?.navigationController?.pushViewController(editvc, animated: true)
    }

    //: @objc func closeBtnClick() {
    @objc func tableCellClick() {
        //: dismiss()
        atExplain()
    }

    //: func show() {
    func subShow() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = DataPopView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.smart(view: self)
        //: popView?.showInView(view: UserTextMacroDefine.getWindow())
        popView?.academePosition(view: UserTextMacroDefine.clearstoryNo())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func atExplain() {
        //: popView?.dismissView()
        popView?.upView()
        //: popView = nil
        popView = nil
    }
}

//: extension TalkingVideoCoverPopUpView {
extension RiteUpView {
    // 添加视图
    //: private func setupSubviews() {
    private func changeGift() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
        //: contentView.addSubview(inputTView)
        contentView.addSubview(inputTView)
        //: contentView.addSubview(finishBtn)
        contentView.addSubview(finishBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func outsideCamera() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 297), height: actualWidth(w: 320)))
            make.size.equalTo(CGSize(width: actualWidth(w: 297), height: actualWidth(w: 320)))
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(-78)
            make.top.equalTo(-78)
            //: make.size.equalTo(CGSize.init(width: actualWidth(w: 133), height: actualWidth(w: 131)))
            make.size.equalTo(CGSize(width: actualWidth(w: 133), height: actualWidth(w: 131)))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(-14)
            make.bottom.equalTo(-14)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }

        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(closeBtn.snp.top).offset(-10)
            make.bottom.equalTo(closeBtn.snp.top).offset(-10)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(203)
            make.width.equalTo(203)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }

        //: inputTView.snp.makeConstraints { make in
        inputTView.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom).offset(5)
            make.top.equalTo(topIcon.snp.bottom).offset(5)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.bottom.equalTo(finishBtn.snp.top).offset(-20)
            make.bottom.equalTo(finishBtn.snp.top).offset(-20)
        }
    }
}
