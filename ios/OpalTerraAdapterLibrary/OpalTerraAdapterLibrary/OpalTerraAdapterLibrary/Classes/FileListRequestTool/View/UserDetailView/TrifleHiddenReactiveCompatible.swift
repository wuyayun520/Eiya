
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_contentPath:[UInt8] = [0x70,0x77,0x70,0x6d,0x31,0x7a,0x76,0x7d,0x7c,0x6b,0x23,0x30,0x39,0x71,0x78,0x6a,0x39,0x77,0x76,0x6d,0x39,0x7b,0x7c,0x7c,0x77,0x39,0x70,0x74,0x69,0x75,0x7c,0x74,0x7c,0x77,0x6d,0x7c,0x7d]

private func makeSelf(size num: UInt8) -> UInt8 {
    return num ^ 25
}

/*: "bth_me_chat_nor" :*/
fileprivate let k_colorMsg:String = "style makebth_me"
fileprivate let kHangUrl:String = "t_norinfo cell size resume enable"

/*: "#6ADEFF" :*/
fileprivate let k_sizeKey:String = "actual make var table view#6ADEFF"

/*: "#5D6FFF" :*/
fileprivate let kTopStr:[Character] = ["#","5","D","6","F","F"]
fileprivate let kAssetTimePath:[Character] = ["F"]

/*: "icon_lounge" :*/
fileprivate let k_userViewUrl:String = "icon_self actual for for"

/*: "icon_video_call" :*/
fileprivate let kPlainName:[Character] = ["i","c","o","n","_","v","i","d","e","o","_","c","a","l","l"]

/*: "iv_me_vip" :*/
fileprivate let kGiftPath:[Character] = ["i","v","_","m","e","_","v","i","p"]

/*: "Edit" :*/
fileprivate let k_arrayInfoMsg:[Character] = ["E","d","i","t"]

/*: "#AB57F6" :*/
fileprivate let k_labelGestureMessage:[Character] = ["#","A","B","5","7","F","6"]

/*: "#FC57B7" :*/
fileprivate let k_countStr:[Character] = ["#","F","C","5","7","B","7"]

/*: "#FE9074" :*/
fileprivate let kUpName:String = "#FE9074permission text manager statute"

/*: "Video Call" :*/
fileprivate let k_pagePath:[Character] = ["V","i","d","e","o"," ","C","a","l","l"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TrifleHiddenReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/5/22.
//

//: import UIKit
import UIKit

//: let UserDetailBottomView_H = (15+actualWidth(w: 36)+15+kDeviceSafeBottomHeight)
let dataItemSystemValue = (15 + actualWidth(w: 36) + 15 + appButtonData)

//: class TalkingUserDetailBottomView: UIView {
class TrifleHiddenReactiveCompatible: UIView {
    //: private var userInfoModel = TalkingUserInfoModel()
    private var userInfoModel = GroupTransformable() // 用户资料

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear

        //: setupSubviews()
        setupAdd()
        //: setupSubViewsConstraint()
        toWord()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_contentPath.map{makeSelf(size: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var shadowLayer: CAGradientLayer = {
    private lazy var shadowLayer: CAGradientLayer = {
        //: let layer = CAGradientLayer()
        let layer = CAGradientLayer()
        //: layer.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: 15+actualWidth(w: 38)+15)
        layer.frame = CGRect(x: 0, y: 0, width: constFormalContent, height: 15 + actualWidth(w: 38) + 15)
        //: layer.startPoint = CGPoint(x: 0.5, y: 0)
        layer.startPoint = CGPoint(x: 0.5, y: 0)
        //: layer.endPoint = CGPoint(x: 0.5, y: 1)
        layer.endPoint = CGPoint(x: 0.5, y: 1)
        //: layer.colors = [UIColor(white: 1, alpha: 0).cgColor, UIColor(white: 1, alpha: 1).cgColor]
        layer.colors = [UIColor(white: 1, alpha: 0).cgColor, UIColor(white: 1, alpha: 1).cgColor]
        //: layer.locations = [0, 1]
        layer.locations = [0, 1]
        //: return layer
        return layer
        //: }()
    }()

    //: private lazy var chatBtn: UIImageView = {
    private lazy var chatBtn: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.submitGift(name: "bth_me_chat_nor")
        img.image = UIImage.submitGift(name: (String(k_colorMsg.suffix(6)) + "_cha" + String(kHangUrl.prefix(5))))
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(chatButtonClick))
        let tap = UITapGestureRecognizer(target: self, action: #selector(quantity))
        //: img.addGestureRecognizer(tap)
        img.addGestureRecognizer(tap)
        //: img.isHidden = true
        img.isHidden = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var videoBtn: UIButton = {
    private lazy var videoBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let colors = [UIColor(hex: "#6ADEFF")!.cgColor, UIColor(hex: "#5D6FFF")!.cgColor]
        let colors = [UIColor(hex: (String(k_sizeKey.suffix(7))))!.cgColor, UIColor(hex: (String(kTopStr) + String(kAssetTimePath)))!.cgColor]
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: colors, size: CGSize(width: actualWidth(w: 250), height: actualWidth(w: 36))), for: .normal)
        btn.setBackgroundImage(UIImage.makeEqual(colors: colors, size: CGSize(width: actualWidth(w: 250), height: actualWidth(w: 36))), for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 18)
        btn.layer.cornerRadius = actualWidth(w: 18)
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(videoButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(expensiveness), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var callStackView: UIStackView = {
    private lazy var callStackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .center
        v.alignment = .center
        //: v.spacing = 9
        v.spacing = 9
        //: v.isUserInteractionEnabled = false
        v.isUserInteractionEnabled = false
        //: return v
        return v
        //: }()
    }()

    //: private lazy var vipIcon: UIImageView = {
    private lazy var vipIcon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.submitGift(name: "icon_lounge")
        img.image = UIImage.submitGift(name: (String(k_userViewUrl.prefix(5)) + "lounge"))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var callIcon: UIImageView = {
    private lazy var callIcon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.submitGift(name: "icon_video_call")
        img.image = UIImage.submitGift(name: (String(kPlainName)))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var callStrLab: UILabel = {
    private lazy var callStrLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        lab.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var maleVipPriceBtn: UIImageView = {
    private lazy var maleVipPriceBtn: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.submitGift(name: "iv_me_vip")
        img.image = UIImage.submitGift(name: (String(kGiftPath)))
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(maleVipPriceButtonClick))
        let tap = UITapGestureRecognizer(target: self, action: #selector(pointPriceView))
        //: img.addGestureRecognizer(tap)
        img.addGestureRecognizer(tap)
        //: img.isHidden = true
        img.isHidden = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var maleVipPriceLab: UILabel = {
    private lazy var maleVipPriceLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        lab.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var videoCallManager: TalkingCallMenuManager = .init()
    private lazy var videoCallManager: HighlightThen = .init()
    //: lazy var editBtn: UIButton = {
    lazy var editBtn: UIButton = {
        //: let btn = UIButton.init(type: .custom)
        let btn = UIButton(type: .custom)
        //: btn.setTitle("Edit".localized, for: .normal)
        btn.setTitle((String(k_arrayInfoMsg)).localized, for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.makeEqual(colors: UIColor.georgiaHomeBoy(), size: CGSize(width: constFormalContent - 60, height: 50)), for: .normal)
        //: btn.addTarget(self, action: #selector(editButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(eraseMagnitudeimate), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true

        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var bottomView: UIView = {
    private lazy var bottomView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = .white
        v.backgroundColor = .white
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingUserDetailBottomView {
extension TrifleHiddenReactiveCompatible {
    /// 男性侧vip价格按钮点击事件
    //: @objc private func maleVipPriceButtonClick() {
    @objc private func pointPriceView() {
        //: AddReactiveCompatible.share.func__pushToSubscribeAlert()
        AddReactiveCompatible.share.digitiserParams()
    }

    /// video
    //: @objc func videoButtonClick() {
    @objc func expensiveness() {
        //: uploadRecord.uploadRecordEvent(eventID: ClickProfilevideoCallButton, toUid: userInfoModel.uid)
        kSoundName.messUp(eventID: userSizeData, toUid: userInfoModel.uid)
        //: if DistanceAppManager.share.loginUserMode.sex == Gender.male.rawValue {
        if DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.male.rawValue { // 男性用户
            //: videoCallManager.checkAndCallVideo()
            videoCallManager.constraintComplection()

            //: } else {
        } else { // 女性用户
            //: videoCallManager.showVideoCallMenu(videoPrice: userInfoModel.videoBean, voicePrice: userInfoModel.voiceBean, vipPrompt: userInfoModel.prompt)
            videoCallManager.tableIn(videoPrice: userInfoModel.videoBean, voicePrice: userInfoModel.voiceBean, vipPrompt: userInfoModel.prompt)
        }
    }

    /// chat
    //: @objc private func chatButtonClick() {
    @objc private func quantity() {
        //: AddReactiveCompatible.share.func__pushToPriveteChatVC(chatID: userInfoModel.uid)
        AddReactiveCompatible.share.tincture(chatID: userInfoModel.uid)
        //: uploadRecord.uploadRecordEvent(eventID: ClickProfileChatButton, toUid: userInfoModel.uid)
        kSoundName.messUp(eventID: show_topTitle, toUid: userInfoModel.uid)
    }

    /// edit
    //: @objc private func editButtonClick() {
    @objc private func eraseMagnitudeimate() {
        //: let vc = TalkingEditProfilesVC()
        let vc = FatalProfilesVc()
        //: currentViewController()?.navigationController?.pushViewController(vc, animated: true)
        selectStart()?.navigationController?.pushViewController(vc, animated: true)
    }

    //: func showEditBtn() {
    func streetSmart() {
        //: editBtn.isHidden = false
        editBtn.isHidden = false
    }
}

// MARK: - 重写hitTest方法

//: extension TalkingUserDetailBottomView {
extension TrifleHiddenReactiveCompatible {
    /// 使maleVipPriceBtn超出父视图区域仍可响应事件
    //: override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        //: for subview in subviews.reversed() {
        for subview in subviews.reversed() {
            //: let convertedPoint = subview.convert(point, from: self)
            let convertedPoint = subview.convert(point, from: self)
            //: let hitTestView = subview.hitTest(convertedPoint, with: event)
            let hitTestView = subview.hitTest(convertedPoint, with: event)
            //: if hitTestView != nil {
            if hitTestView != nil {
                //: return hitTestView
                return hitTestView
            }
        }
        //: return super.hitTest(point, with: event)
        return super.hitTest(point, with: event)
    }
}

// MARK: - Layout

//: extension TalkingUserDetailBottomView {
extension TrifleHiddenReactiveCompatible {
    /// 刷新
    //: func refreshView(_ userModel: TalkingUserInfoModel) {
    func end(_ userModel: GroupTransformable) {
        //: userInfoModel = userModel
        userInfoModel = userModel
        //: videoCallManager.uid = userModel.uid
        videoCallManager.uid = userModel.uid

        // 根据角色 展示/隐藏 按钮
        //: if userModel.uid == DistanceAppManager.share.loginUid {
        if userModel.uid == DistanceAppManager.share.loginUid { // 本人资料页
            //: editBtn.isHidden = false
            editBtn.isHidden = false
            //: callStackView.isHidden = true
            callStackView.isHidden = true
            //: return
            return

                    //: } else if DistanceAppManager.share.loginUid != UserTextMacroDefine.getCustomerServiceID(),
        } else if DistanceAppManager.share.loginUid != UserTextMacroDefine.lengthId(),
                  //: DistanceAppManager.share.loginUserMode.sex == userModel.sex,
                  DistanceAppManager.share.loginUserMode.sex == userModel.sex,
                  //: DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
                  DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue
        { // 非客服，同性别，默认模式
            //: isHidden = true
            isHidden = true

            //: } else {
        } else {
            //: chatBtn.isHidden = false
            chatBtn.isHidden = false
            //: videoBtn.isHidden = false
            videoBtn.isHidden = false
        }

        // 根据性别展示按钮样式
        //: if DistanceAppManager.share.loginUserMode.sex == Gender.male.rawValue {
        if DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.male.rawValue {
            //: if DistanceAppManager.share.loginUserMode.loungePlus == false {
            if DistanceAppManager.share.loginUserMode.loungePlus == false { // 男性非会员
                //: if DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
                if DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue {
                    //: maleVipPriceBtn.isHidden = false
                    maleVipPriceBtn.isHidden = false
                    //: maleVipPriceLab.text = String.getMaleVIPVideoPriceString(videoPrice: userInfoModel.videoVIPPrice)
                    maleVipPriceLab.text = String.behindRealize(videoPrice: userInfoModel.videoVIPPrice)
                }
                //: vipIcon.isHidden = true
                vipIcon.isHidden = true
                //: callStrLab.text = String.getMaleVIPVideoPriceString(videoPrice: userInfoModel.videoPrice)
                callStrLab.text = String.behindRealize(videoPrice: userInfoModel.videoPrice)

                //: } else {
            } else {
                //: let colors = [UIColor(hex: "#AB57F6")!.cgColor, UIColor(hex: "#FC57B7")!.cgColor, UIColor(hex: "#FE9074")!.cgColor]
                let colors = [UIColor(hex: (String(k_labelGestureMessage)))!.cgColor, UIColor(hex: (String(k_countStr)))!.cgColor, UIColor(hex: (String(kUpName.prefix(7))))!.cgColor]
                //: videoBtn.setBackgroundImage(UIImage.imageGradientColor(colors: colors, size: CGSize(width: actualWidth(w: 250), height: actualWidth(w: 36))), for: .normal)
                videoBtn.setBackgroundImage(UIImage.makeEqual(colors: colors, size: CGSize(width: actualWidth(w: 250), height: actualWidth(w: 36))), for: .normal)
                //: maleVipPriceBtn.isHidden = true
                maleVipPriceBtn.isHidden = true
                //: vipIcon.isHidden = false
                vipIcon.isHidden = false
                //: callStrLab.text = String.getMaleVIPVideoPriceString(videoPrice: userInfoModel.videoVIPPrice)
                callStrLab.text = String.behindRealize(videoPrice: userInfoModel.videoVIPPrice)
            }

            //: } else {
        } else { // 女性
            //: vipIcon.isHidden = true
            vipIcon.isHidden = true
            //: callStrLab.text = "Video Call".localized
            callStrLab.text = (String(k_pagePath)).localized
        }
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func setupAdd() {
        //: layer.addSublayer(shadowLayer)
        layer.addSublayer(shadowLayer)
        //: addSubview(chatBtn)
        addSubview(chatBtn)
        //: addSubview(videoBtn)
        addSubview(videoBtn)
        //: videoBtn.addSubview(callStackView)
        videoBtn.addSubview(callStackView)
        //: callStackView.addArrangedSubview(vipIcon)
        callStackView.addArrangedSubview(vipIcon)
        //: callStackView.addArrangedSubview(callIcon)
        callStackView.addArrangedSubview(callIcon)
        //: callStackView.addArrangedSubview(callStrLab)
        callStackView.addArrangedSubview(callStrLab)
        //: addSubview(maleVipPriceBtn)
        addSubview(maleVipPriceBtn)
        //: maleVipPriceBtn.addSubview(maleVipPriceLab)
        maleVipPriceBtn.addSubview(maleVipPriceLab)
        //: addSubview(editBtn)
        addSubview(editBtn)
        //: addSubview(bottomView)
        addSubview(bottomView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func toWord() {
        //: chatBtn.snp.makeConstraints { make in
        chatBtn.snp.makeConstraints { make in
            //: make.top.equalTo(15)
            make.top.equalTo(15)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 65), height: actualWidth(w: 36)))
            make.size.equalTo(CGSize(width: actualWidth(w: 65), height: actualWidth(w: 36)))
        }

        //: videoBtn.snp.makeConstraints { make in
        videoBtn.snp.makeConstraints { make in
            //: make.top.equalTo(15)
            make.top.equalTo(15)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 250), height: actualWidth(w: 36)))
            make.size.equalTo(CGSize(width: actualWidth(w: 250), height: actualWidth(w: 36)))
        }
        //: callStackView.snp.makeConstraints { make in
        callStackView.snp.makeConstraints { make in
            //: make.center.height.equalToSuperview()
            make.center.height.equalToSuperview()
            //: make.trailing.lessThanOrEqualToSuperview()
            make.trailing.lessThanOrEqualToSuperview()
        }
        //: vipIcon.snp.makeConstraints { make in
        vipIcon.snp.makeConstraints { make in
            //: make.width.height.equalTo(actualWidth(w: 20))
            make.width.height.equalTo(actualWidth(w: 20))
        }
        //: callIcon.snp.makeConstraints { make in
        callIcon.snp.makeConstraints { make in
            //: make.width.height.equalTo(actualWidth(w: 20))
            make.width.height.equalTo(actualWidth(w: 20))
        }
        //: callStrLab.snp.makeConstraints { make in
        callStrLab.snp.makeConstraints { make in
            //: make.height.equalToSuperview()
            make.height.equalToSuperview()
        }

        //: maleVipPriceBtn.snp.makeConstraints { make in
        maleVipPriceBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(videoBtn.snp.top).offset(-6)
            make.bottom.equalTo(videoBtn.snp.top).offset(-6)
            //: make.centerX.equalTo(videoBtn)
            make.centerX.equalTo(videoBtn)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 156), height: actualWidth(w: 36)))
            make.size.equalTo(CGSize(width: actualWidth(w: 156), height: actualWidth(w: 36)))
        }
        //: maleVipPriceLab.snp.makeConstraints { make in
        maleVipPriceLab.snp.makeConstraints { make in
            //: make.leading.equalTo(actualWidth(w: 42))
            make.leading.equalTo(actualWidth(w: 42))
            //: make.centerY.trailing.equalToSuperview()
            make.centerY.trailing.equalToSuperview()
        }

        //: editBtn.snp.makeConstraints { make in
        editBtn.snp.makeConstraints { make in
            //: make.top.equalTo(15)
            make.top.equalTo(15)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }

        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
            //: make.height.equalTo(kDeviceSafeBottomHeight)
            make.height.equalTo(appButtonData)
        }
    }
}
