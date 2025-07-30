
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_behindPath:[UInt8] = [0x35,0x32,0x35,0x28,0x74,0x3f,0x33,0x38,0x39,0x2e,0x66,0x75,0x7c,0x34,0x3d,0x2f,0x7c,0x32,0x33,0x28,0x7c,0x3e,0x39,0x39,0x32,0x7c,0x35,0x31,0x2c,0x30,0x39,0x31,0x39,0x32,0x28,0x39,0x38]

/*: "icon_cover_toast" :*/
fileprivate let kLayerFormat:String = "icon_coenable make"
fileprivate let k_contentStarTitle:String = "direction index i stopver_"
fileprivate let kSelectFormat:String = "toapatht"

/*: "Free video time is over, you can continue to call her if you are interested" :*/
fileprivate let kFileKey:[UInt8] = [0x64,0x65,0x74,0x73,0x65,0x72,0x65,0x74,0x6e,0x69,0x20,0x65,0x72,0x61,0x20,0x75,0x6f,0x79,0x20,0x66,0x69,0x20,0x72,0x65,0x68,0x20,0x6c,0x6c,0x61,0x63,0x20,0x6f,0x74,0x20,0x65,0x75,0x6e,0x69,0x74,0x6e,0x6f,0x63,0x20,0x6e,0x61,0x63,0x20,0x75,0x6f,0x79,0x20,0x2c,0x72,0x65,0x76,0x6f,0x20,0x73,0x69,0x20,0x65,0x6d,0x69,0x74,0x20,0x6f,0x65,0x64,0x69,0x76,0x20,0x65,0x65,0x72,0x46]

/*: "#34C759" :*/
fileprivate let kPlayerValue:String = "#34C759data self render content voice"

/*: "icon_match_stopcall_pop" :*/
fileprivate let kImageKey:[Character] = ["i","c","o","n","_","m","a","t","c","h","_","s","t","o","p","c","a","l","l","_","p","o","p"]

/*: "icon_lounge_big" :*/
fileprivate let k_rowUrl:String = "pop toicon_l"
fileprivate let kToMessage:String = "e_biyear data from make"
fileprivate let kSuccessId:String = "interaction"

/*: "#AB57F6" :*/
fileprivate let k_cornerMessage:[Character] = ["#","A","B","5","7","F","6"]

/*: "#FC57B7" :*/
fileprivate let kSkinData:[Character] = ["#","F","C","5","7","B","7"]

/*: "#FE9074" :*/
fileprivate let k_giftFormat:[Character] = ["#","F","E","9","0","7","4"]

/*: "Maybe next time" :*/
fileprivate let k_pressKey:[Character] = ["M","a","y","b","e"," ","n","e","x","t"," ","t","i"]
fileprivate let k_appUrl:String = "page"

/*: "type" :*/
fileprivate let kUpText:[UInt8] = [0x87,0x8c,0x83,0x78]

fileprivate func pointComplete(gift num: UInt8) -> UInt8 {
    let value = Int(num) - 19
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "toUid" :*/
fileprivate let kTempContent:String = "image left self lettoUid"

/*: "uid" :*/
fileprivate let kDataMessage:[UInt8] = [0x10,0xc,0x1]

/*: "fromFreeCall" :*/
fileprivate let kPointId:String = "center remove menu party errorfromF"
fileprivate let kMessageMsg:[Character] = ["r","e","e","C","a","l","l"]

/*: "cmd" :*/
fileprivate let k_titleIndexStr:[UInt8] = [0xdf,0xe9,0xe0]

fileprivate func mentalRepresentation(like num: UInt8) -> UInt8 {
    let value = Int(num) - 124
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "requestCall" :*/
fileprivate let k_allUrl:[Character] = ["r","e","q","u","e","s","t","C","a"]
fileprivate let kViewLayerPath:[Character] = ["l","l"]

/*: "data" :*/
fileprivate let kPriceStr:[UInt8] = [0x61,0x74,0x61,0x64]

/*: "originalFee" :*/
fileprivate let k_shareMenuPath:String = "info"
fileprivate let kBackgroundPath:[Character] = ["r","i","g","i","n","a","l","F","e","e"]

/*: "VIPFee" :*/
fileprivate let k_centerCanValue:[Character] = ["V","I","P","F","e","e"]

/*: "freeCallTimes" :*/
fileprivate let kSexViewKey:[Character] = ["f","r","e","e","C","a","l","l","T","i","m","e","s"]

/*: "onRequestCall" :*/
fileprivate let kMakeText:[Character] = ["o","n","R","e","q"]
fileprivate let kSizeLeadingStr:String = "pagest"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ServerMakeErrorDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/6/15.
//

//: import UIKit
import UIKit

//: class TalkingFreeStopCallPopUpView: UIView {
class ServerMakeErrorDelegate: UIView {
    //: var popView: TalkingPopView?
    var popView: DataPopView?
    //: var data = [String: Any]()
    var data = [String: Any]()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        roundSubviews()
        //: setupSubViewsConstraint()
        setupConstraintSubPrevious()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_behindPath.map{$0^92}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: TalkingSocketManager.shared.errorDelegate = nil
        ListSocketManager.shared.errorDelegate = nil
    }

    // 懒加载初始化

    //: lazy var contentView: UIView = {
    lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 16
        view.layer.cornerRadius = 16
        //: return view
        return view
        //: }()
    }()

    //: lazy var topIcon: UIImageView = {
    lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.submitGift(name: "icon_cover_toast")
        iamg.image = UIImage.submitGift(name: (String(kLayerFormat.prefix(7)) + String(k_contentStarTitle.suffix(4)) + kSelectFormat.replacingOccurrences(of: "path", with: "s")))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: lazy var inputTView: UITextView = {
    lazy var inputTView: UITextView = {
        //: let textView = UITextView()
        let textView = UITextView()
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
        //: textView.text = "Free video time is over, you can continue to call her if you are interested".localized
        textView.text = String(bytes: kFileKey.reversed(), encoding: .utf8)!.localized
        //: return textView
        return textView
        //: }()
    }()

    // 原价按钮
    //: private lazy var originalFeeBtn: TalkingButton = {
    private lazy var originalFeeBtn: ResumeControl = {
        //: let btn = TalkingButton()
        let btn = ResumeControl()
        //: btn.setBackgroundColor(color: UIColor(hex: "#34C759")!, forState: .normal)
        btn.languageUnitState(color: UIColor(hex: (String(kPlayerValue.prefix(7))))!, forState: .normal)
        //: btn.setImage(UIImage.submitGift(name: "icon_match_stopcall_pop"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kImageKey))), for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Regular, fontSize: 18)
        btn.titleLabel?.font = UIFont.fontChange(type: .Regular, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.spaceBetweenTitleAndImage = 6
        btn.spaceBetweenTitleAndImage = 6
        //: btn.layer.cornerRadius = 27
        btn.layer.cornerRadius = 27
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(originalFeeButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(viewCompare), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    // VIP价格
    //: private lazy var vipFeeBtn: TalkingButton = {
    private lazy var vipFeeBtn: ResumeControl = {
        //: let btn = TalkingButton()
        let btn = ResumeControl()
        //: btn.setImage(UIImage.submitGift(name: "icon_lounge_big"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(k_rowUrl.suffix(6)) + "oung" + String(kToMessage.prefix(4)) + kSuccessId.replacingOccurrences(of: "interaction", with: "g"))), for: .normal)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.verticalAlignImageAndTitleWith(interval: 5, imageSize: CGSize(width: 28, height: 28), topOffset: 13)
        btn.renderAcross(interval: 5, imageSize: CGSize(width: 28, height: 28), topOffset: 13)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.spaceBetweenTitleAndImage = 6
        btn.spaceBetweenTitleAndImage = 6
        //: let colors = [UIColor(hex: "#AB57F6")!.cgColor, UIColor(hex: "#FC57B7")!.cgColor, UIColor(hex: "#FE9074")!.cgColor]
        let colors = [UIColor(hex: (String(k_cornerMessage)))!.cgColor, UIColor(hex: (String(kSkinData)))!.cgColor, UIColor(hex: (String(k_giftFormat)))!.cgColor]
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: colors, size: CGSize(width: actualWidth(w: 257), height: actualWidth(w: 54))), for: .normal)
        btn.setBackgroundImage(UIImage.makeEqual(colors: colors, size: CGSize(width: actualWidth(w: 257), height: actualWidth(w: 54))), for: .normal)
        //: btn.layer.cornerRadius = 27
        btn.layer.cornerRadius = 27
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(maleVipPriceButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(imageMake), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let attributes = [.foregroundColor: UIColor.appValueDetailColor(), .font: UIFont.fontChange(type: .Regular, fontSize: 13), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor.childMenu(), .font: UIFont.fontChange(type: .Regular, fontSize: 13), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        //: let attributeString = NSAttributedString(string: "Maybe next time".localized, attributes: attributes)
        let attributeString = NSAttributedString(string: (String(k_pressKey) + k_appUrl.replacingOccurrences(of: "page", with: "me")).localized, attributes: attributes)
        //: btn.setAttributedTitle(attributeString, for: .normal)
        btn.setAttributedTitle(attributeString, for: .normal)
        //: btn.addTarget(self, action: #selector(closeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(endRequest), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingFreeStopCallPopUpView {
extension ServerMakeErrorDelegate {
    /// 原价按钮拨打事件
    //: @objc func originalFeeButtonClick() {
    @objc func viewCompare() {
        //: let type = self.data["type"] as? Int ?? -1
        let type = self.data[String(bytes: kUpText.map{pointComplete(gift: $0)}, encoding: .utf8)!] as? Int ?? -1
        //: let toUid = self.data["toUid"] as? String ?? ""
        let toUid = self.data[(String(kTempContent.suffix(5)))] as? String ?? ""

        //: var data: [String: Any] = ["type": type,
        var data: [String: Any] = [String(bytes: kUpText.map{pointComplete(gift: $0)}, encoding: .utf8)!: type,
                                   //: "uid": toUid]
                                   String(bytes: kDataMessage.map{$0^101}, encoding: .utf8)!: toUid]
        //: if DistanceAppManager.share.loginUserMode.freeCallTimes > 0, DistanceAppManager.share.loginUserMode.sex == Gender.male.rawValue {
        if DistanceAppManager.share.loginUserMode.freeCallTimes > 0, DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.male.rawValue {
            //: data.updateValue(1, forKey: "fromFreeCall")
            data.updateValue(1, forKey: (String(kPointId.suffix(5)) + String(kMessageMsg)))
            //: TalkingSocketManager.shared.isFreeCall = true
            ListSocketManager.shared.isFreeCall = true
        }
        //: let info: [String: Any] = ["cmd": "requestCall", "data": data]
        let info: [String: Any] = [String(bytes: k_titleIndexStr.map{mentalRepresentation(like: $0)}, encoding: .utf8)!: (String(k_allUrl) + String(kViewLayerPath)), String(bytes: kPriceStr.reversed(), encoding: .utf8)!: data]
        //: TalkingSocketManager.shared.sendMessage(info: info)
        ListSocketManager.shared.pathTab(info: info)
        //: TalkingSocketManager.shared.errorDelegate = self
        ListSocketManager.shared.errorDelegate = self
        //: dismiss()
        openFile()
    }

    /// 关闭按钮点击事件
    //: @objc func closeBtnClick() {
    @objc func endRequest() {
        //: dismiss()
        openFile()
    }

    /// 展示
    //: func show() {
    func pressAppear() {
        //: popView = TalkingPopView(frame: UIScreen.main.bounds)
        popView = DataPopView(frame: UIScreen.main.bounds)
        //: frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        frame = CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue)
        //: popView?.initWithView(view: self)
        popView?.smart(view: self)
        //: popView?.showInView(view: UserTextMacroDefine.getWindow())
        popView?.academePosition(view: UserTextMacroDefine.clearstoryNo())
        //: popView?.isRemoveTapGes = true
        popView?.isRemoveTapGes = true
    }

    //: @objc func dismiss() {
    @objc func openFile() {
        //: popView?.dismissView()
        popView?.upView()
        //: popView = nil
        popView = nil
    }

    /// 更新数据
    //: func setShowData(data: [String: Any]) {
    func bestowmentData(data: [String: Any]) {
        //: self.data = data
        self.data = data
        //: let originalFee = data["originalFee"] as? Int ?? 0
        let originalFee = data[(k_shareMenuPath.replacingOccurrences(of: "info", with: "o") + String(kBackgroundPath))] as? Int ?? 0
        //: let vipFee = data["VIPFee"] as? Int ?? 0
        let vipFee = data[(String(k_centerCanValue))] as? Int ?? 0
        //: let freeCallTimes = data["freeCallTimes"] as? Int
        let freeCallTimes = data[(String(kSexViewKey))] as? Int
        //: DistanceAppManager.share.loginUserMode.freeCallTimes = freeCallTimes ?? 0
        DistanceAppManager.share.loginUserMode.freeCallTimes = freeCallTimes ?? 0
        //: originalFeeBtn.setTitle(String.setFreeStopPriceStr(originalFee: originalFee), for: .normal)
        originalFeeBtn.setTitle(String.towardPostSend(originalFee: originalFee), for: .normal)
        //: vipFeeBtn.setTitle(String.setFreeStopPriceStr(originalFee: originalFee, vipFee: vipFee), for: .normal)
        vipFeeBtn.setTitle(String.towardPostSend(originalFee: originalFee, vipFee: vipFee), for: .normal)
        //: updateSubViewsConstraint()
        textEdit()
    }

    /// 男性侧vip价格按钮点击事件
    //: @objc private func maleVipPriceButtonClick() {
    @objc private func imageMake() {
        //: guard DistanceAppManager.share.loginUserMode.loungePlus else {
        guard DistanceAppManager.share.loginUserMode.loungePlus else {
            // 非会员 && 默认模式
            //: if DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
            if DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue {
                //: AddReactiveCompatible.share.func__pushToSubscribeAlert()
                AddReactiveCompatible.share.digitiserParams()
            }
            //: dismiss()
            openFile()
            //: return
            return
        }

        //: originalFeeButtonClick()
        viewCompare()
    }
}

// MARK: - PerformanceErrorDelegate

//: extension TalkingFreeStopCallPopUpView: TalkingSocketManagerErrorDelegate {
extension ServerMakeErrorDelegate: PerformanceErrorDelegate {
    //: func socket_didRecieveError(errorNo: Int, cmd: String, msg: String, data: [String: Any]) {
    func socket(errorNo: Int, cmd: String, msg: String, data _: [String: Any]) {
        //: if cmd == "onRequestCall" {
        if cmd == (String(kMakeText) + kSizeLeadingStr.replacingOccurrences(of: "page", with: "ue") + "Call") {
            //: func__showStatusBarErrorMsg(showMsg: msg)
            arcInfo(showMsg: msg)
            //: if errorNo == VideoChatErrorCode.MoneyLack.rawValue {
            if errorNo == AppListSubscriptType.MoneyLack.rawValue {
                //: guard DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue else { return }
                guard DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue else { return }
                //: AddReactiveCompatible.share.func__jumpToWebRecharge(clickEvent: clickFreepopupButton, sufficient: false)
                AddReactiveCompatible.share.viewParams(clickEvent: noti_filterText, sufficient: false)
            }
        }
    }
}

// MARK: - Layout

//: extension TalkingFreeStopCallPopUpView {
extension ServerMakeErrorDelegate {
    /// 更新约束
    //: private func updateSubViewsConstraint() {
    private func textEdit() {
        //: if DistanceAppManager.share.loginUserMode.loungePlus {
        if DistanceAppManager.share.loginUserMode.loungePlus {
            //: originalFeeBtn.isHidden = true
            originalFeeBtn.isHidden = true
            //: contentView.snp.updateConstraints { make in
            contentView.snp.updateConstraints { make in
                //: make.height.equalTo(actualWidth(w: 255))
                make.height.equalTo(actualWidth(w: 255))
            }
        }
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func roundSubviews() {
        //: addSubview(contentView)
        addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(closeBtn)
        contentView.addSubview(closeBtn)
        //: contentView.addSubview(inputTView)
        contentView.addSubview(inputTView)
        //: contentView.addSubview(originalFeeBtn)
        contentView.addSubview(originalFeeBtn)
        //: contentView.addSubview(vipFeeBtn)
        contentView.addSubview(vipFeeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func setupConstraintSubPrevious() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.width.equalTo(actualWidth(w: 297))
            make.width.equalTo(actualWidth(w: 297))
            //: make.height.equalTo(actualWidth(w: 329))
            make.height.equalTo(actualWidth(w: 329))
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(actualWidth(w: -43))
            make.top.equalTo(actualWidth(w: -43))
            //: make.width.height.equalTo(actualWidth(w: 101))
            make.width.height.equalTo(actualWidth(w: 101))
        }

        //: inputTView.snp.makeConstraints { make in
        inputTView.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom)
            make.top.equalTo(topIcon.snp.bottom)
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.height.equalTo(actualWidth(w: 103))
            make.height.equalTo(actualWidth(w: 103))
        }

        //: closeBtn.snp.makeConstraints { make in
        closeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(actualWidth(w: -20))
            make.bottom.equalTo(actualWidth(w: -20))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }

        //: vipFeeBtn.snp.makeConstraints { make in
        vipFeeBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(closeBtn.snp.top).offset(actualWidth(w: -15))
            make.bottom.equalTo(closeBtn.snp.top).offset(actualWidth(w: -15))
            //: make.width.equalTo(actualWidth(w: 257))
            make.width.equalTo(actualWidth(w: 257))
            //: make.height.equalTo(actualWidth(w: 54))
            make.height.equalTo(actualWidth(w: 54))
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: originalFeeBtn.snp.makeConstraints { make in
        originalFeeBtn.snp.makeConstraints { make in
            //: make.centerX.width.height.equalTo(vipFeeBtn)
            make.centerX.width.height.equalTo(vipFeeBtn)
            //: make.bottom.equalTo(vipFeeBtn.snp.top).offset(actualWidth(w: -20))
            make.bottom.equalTo(vipFeeBtn.snp.top).offset(actualWidth(w: -20))
        }
    }
}
