
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_viewColorTitle:[UInt8] = [0x67,0x60,0x67,0x7a,0x26,0x6d,0x61,0x6a,0x6b,0x7c,0x34,0x27,0x2e,0x66,0x6f,0x7d,0x2e,0x60,0x61,0x7a,0x2e,0x6c,0x6b,0x6b,0x60,0x2e,0x67,0x63,0x7e,0x62,0x6b,0x63,0x6b,0x60,0x7a,0x6b,0x6a]

/*: "icon_cover_toast" :*/
fileprivate let kStatusFormat:String = "icon_data manager register"
fileprivate let kMakeValue:[Character] = ["o","a","s","t"]

/*: "OK" :*/
fileprivate let kNamePath:[Character] = ["O","K"]

/*: "Not for now" :*/
fileprivate let k_removeName:String = "Not for nshared index to"
fileprivate let kEarnStr:String = "omake"

/*: "Turn on" :*/
fileprivate let k_addContent:String = "Turn size type transform date enable"
fileprivate let kShouldName:String = "filen"

/*: "Live Certification off" :*/
fileprivate let k_tipTitle:[Character] = ["L","i","v","e"," ","C","e","r"]
fileprivate let k_imageText:[Character] = ["t","i"]
fileprivate let kSizeContent:String = "ficlasti"

/*: "Please make sure your face is always in the video screen" :*/
fileprivate let k_kitMsg:[UInt8] = [0x3f,0x3,0xa,0xe,0x1c,0xa,0x4f,0x2,0xe,0x4,0xa,0x4f,0x1c,0x1a,0x1d,0xa,0x4f,0x16,0x0,0x1a,0x1d,0x4f,0x9,0xe,0xc,0xa,0x4f,0x6,0x1c,0x4f,0xe,0x3,0x18,0xe,0x16,0x1c,0x4f,0x6,0x1,0x4f,0x1b,0x7,0xa,0x4f,0x19,0x6,0xb,0xa,0x0,0x4f,0x1c,0xc,0x1d,0xa,0xa,0x1]

private func headCellInsert(clear num: UInt8) -> UInt8 {
    return num ^ 111
}

/*: "Current network unavailable" :*/
fileprivate let k_startBackgroundMessage:String = "label on viewCurrent n"
fileprivate let k_dataCellFormat:String = "etwcontent"
fileprivate let k_atValue:String = "mai"

/*: "Live Reminder" :*/
fileprivate let k_makeFormat:String = "string viewLive R"
fileprivate let k_modelMessage:String = "estatusnder"

/*: "You haven't used your free video opportunity yet, talk to someone first!" :*/
fileprivate let k_textUrl:[UInt8] = [0xed,0xdb,0xc1,0x94,0xdc,0xd5,0xc2,0xd1,0xda,0x93,0xc0,0x94,0xc1,0xc7,0xd1,0xd0,0x94,0xcd,0xdb,0xc1,0xc6,0x94,0xd2,0xc6,0xd1,0xd1,0x94,0xc2,0xdd,0xd0,0xd1,0xdb,0x94,0xdb,0xc4,0xc4,0xdb,0xc6,0xc0,0xc1,0xda,0xdd,0xc0,0xcd,0x94,0xcd,0xd1,0xc0,0x98,0x94,0xc0,0xd5,0xd8,0xdf,0x94,0xc0,0xdb,0x94,0xc7,0xdb,0xd9,0xd1,0xdb,0xda,0xd1,0x94,0xd2,0xdd,0xc6,0xc7,0xc0,0x95]

private func ditheredColor(group num: UInt8) -> UInt8 {
    return num ^ 180
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CancelReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/6/20.
//

//: import UIKit
import UIKit

//: enum LiveAlertViewType {
enum EqualViewType {
    //: case noFace
    case noFace // 无人脸
    //: case noNetwork
    case noNetwork // 无网络
    //: case turnOnLive
    case turnOnLive // 开播提醒
    //: case freeVideo
    case freeVideo // 免费视频挽留
}

//: class TalkingLiveAlertView: UIView {
class CancelReactiveCompatible: UIView {
    // 右边按钮点击事件
    //: var rightBlcok: (() -> Void)?
    var rightBlcok: (() -> Void)?

    //: private var popView: TalkingPopView?
    private var popView: DataPopView?
    //: private var type = LiveAlertViewType.noFace
    private var type = EqualViewType.noFace

    //: init(frame: CGRect, type: LiveAlertViewType) {
    init(frame: CGRect, type: EqualViewType) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.frame = UIScreen.main.bounds
        self.frame = UIScreen.main.bounds
        //: self.type = type
        self.type = type
        //: setupSubviews()
        contactTo()
        //: setupSubViewsConstraint()
        photoForIndex()
        //: refreshUI()
        popSize()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_viewColorTitle.map{$0^14}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let view = UIView()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.layer.cornerRadius = 15
        view.layer.cornerRadius = 15
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topIcon: UIImageView = {
    private lazy var topIcon: UIImageView = {
        //: let iamg = UIImageView()
        let iamg = UIImageView()
        //: iamg.image = UIImage.submitGift(name: "icon_cover_toast")
        iamg.image = UIImage.submitGift(name: (String(kStatusFormat.prefix(5)) + "cover_t" + String(kMakeValue)))
        //: iamg.contentMode = .scaleAspectFill
        iamg.contentMode = .scaleAspectFill
        //: return iamg
        return iamg
        //: }()
    }()

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .colorStatuteNameApp()
        lab.textColor = .colorStatuteNameApp()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 18)
        lab.font = UIFont.tapShared(fontSize: 18)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentLab: UILabel = {
    private lazy var contentLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .colorStatuteNameApp()
        lab.textColor = .colorStatuteNameApp()
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 16)
        lab.font = UIFont.targetFor(fontSize: 16)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var closeBtn: UIButton = {
    private lazy var closeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: let size = CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))
        let size = CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50))
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: size), for: .normal)
        btn.setBackgroundImage(UIImage.makeEqual(colors: UIColor.georgiaHomeBoy(), size: size), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 18)
        btn.titleLabel?.font = UIFont.tapShared(fontSize: 18)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("OK".localized, for: .normal)
        btn.setTitle("OK".localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(rightButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(livePlayer), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var leftBtn: UIButton = {
    private lazy var leftBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 16)
        btn.titleLabel?.font = UIFont.tapShared(fontSize: 16)
        //: btn.setTitleColor(.appThemeColor(), for: .normal)
        btn.setTitleColor(.increase(), for: .normal)
        //: btn.setTitle("Not for now".localized, for: .normal)
        btn.setTitle((String(k_removeName.prefix(9)) + kEarnStr.replacingOccurrences(of: "make", with: "w")).localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.layer.borderColor = UIColor.appThemeColor().cgColor
        btn.layer.borderColor = UIColor.increase().cgColor
        //: btn.addTarget(self, action: #selector(leftButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(toEqual), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rightBtn: UIButton = {
    private lazy var rightBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .appThemeColor()
        btn.backgroundColor = .increase()
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 16)
        btn.titleLabel?.font = UIFont.tapShared(fontSize: 16)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setTitle("Turn on".localized, for: .normal)
        btn.setTitle((String(k_addContent.prefix(5)) + kShouldName.replacingOccurrences(of: "file", with: "o")).localized, for: .normal)
        //: btn.layer.cornerRadius = actualWidth(w: 50/2)
        btn.layer.cornerRadius = actualWidth(w: 50 / 2)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(rightButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(livePlayer), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveAlertView {
extension CancelReactiveCompatible {
    //: func show() {
    func infoShow() {
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
    @objc func playerInDismiss() {
        //: popView?.dismissView()
        popView?.upView()
        //: popView = nil
        popView = nil
    }

    //: @objc private func leftButtonClick() {
    @objc private func toEqual() {
        //: dismiss()
        playerInDismiss()
    }

    //: @objc private func rightButtonClick() {
    @objc private func livePlayer() {
        //: dismiss()
        playerInDismiss()
        //: rightBlcok?()
        rightBlcok?()
    }

    //: override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    override func touchesBegan(_: Set<UITouch>, with _: UIEvent?) {
        //: if type != .freeVideo {
        if type != .freeVideo {
            //: dismiss()
            playerInDismiss()
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveAlertView {
extension CancelReactiveCompatible {
    // 刷新视图
    //: private func refreshUI() {
    private func popSize() {
        //: switch (type) {
        switch type {
        //: case .noFace:
        case .noFace:
            //: titleLab.text = "Live Certification off".localized
            titleLab.text = (String(k_tipTitle) + String(k_imageText) + kSizeContent.replacingOccurrences(of: "last", with: "at") + "on off").localized
            //: contentLab.text = "Please make sure your face is always in the video screen".localized
            contentLab.text = String(bytes: k_kitMsg.map{headCellInsert(clear: $0)}, encoding: .utf8)!.localized

        //: case .noNetwork:
        case .noNetwork:
            //: titleLab.text = "Live Certification off".localized
            titleLab.text = (String(k_tipTitle) + String(k_imageText) + kSizeContent.replacingOccurrences(of: "last", with: "at") + "on off").localized
            //: contentLab.text = "Current network unavailable".localized
            contentLab.text = (String(k_startBackgroundMessage.suffix(9)) + k_dataCellFormat.replacingOccurrences(of: "content", with: "o") + "rk un" + k_atValue.replacingOccurrences(of: "m", with: "av") + "lable").localized

        //: case .turnOnLive:
        case .turnOnLive:
            //: titleLab.text = "Live Reminder".localized
            titleLab.text = (String(k_makeFormat.suffix(6)) + k_modelMessage.replacingOccurrences(of: "status", with: "mi")).localized
            //: contentLab.text = ""
            contentLab.text = ""

        //: case .freeVideo:
        case .freeVideo:
            //: titleLab.text = ""
            titleLab.text = ""
            //: contentLab.text = "You haven't used your free video opportunity yet, talk to someone first!".localized
            contentLab.text = String(bytes: k_textUrl.map{ditheredColor(group: $0)}, encoding: .utf8)!.localized
        }
    }

    // 添加视图
    //: private func setupSubviews() {
    private func contactTo() {
        //: self.addSubview(contentView)
        self.addSubview(contentView)
        //: contentView.addSubview(topIcon)
        contentView.addSubview(topIcon)
        //: contentView.addSubview(titleLab)
        contentView.addSubview(titleLab)
        //: contentView.addSubview(contentLab)
        contentView.addSubview(contentLab)
        //: if self.type == .turnOnLive {
        if self.type == .turnOnLive {
            //: contentView.addSubview(leftBtn)
            contentView.addSubview(leftBtn)
            //: contentView.addSubview(rightBtn)
            contentView.addSubview(rightBtn)
            //: } else {
        } else {
            //: contentView.addSubview(closeBtn)
            contentView.addSubview(closeBtn)
        }
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func photoForIndex() {
        //: contentView.snp.makeConstraints { make in
        contentView.snp.makeConstraints { make in
            //: make.top.equalTo(self.snp.centerY).offset(-114)
            make.top.equalTo(self.snp.centerY).offset(-114)
            //: make.leading.equalTo(40)
            make.leading.equalTo(40)
            //: make.trailing.equalTo(-40)
            make.trailing.equalTo(-40)
        }

        //: topIcon.snp.makeConstraints { make in
        topIcon.snp.makeConstraints { make in
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.top.equalTo(-39)
            make.top.equalTo(-39)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 101), height: actualWidth(w: 101)))
            make.size.equalTo(CGSize(width: actualWidth(w: 101), height: actualWidth(w: 101)))
        }

        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(topIcon.snp.bottom).offset(8)
            make.top.equalTo(topIcon.snp.bottom).offset(8)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(10)
            make.top.equalTo(titleLab.snp.bottom).offset(10)
            //: make.centerX.leading.trailing.equalTo(titleLab)
            make.centerX.leading.trailing.equalTo(titleLab)
        }

        //: if self.type == .turnOnLive {
        if self.type == .turnOnLive {
            //: leftBtn.snp.makeConstraints { make in
            leftBtn.snp.makeConstraints { make in
                //: make.top.equalTo(titleLab.snp.bottom).offset(20)
                make.top.equalTo(titleLab.snp.bottom).offset(20)
                //: make.leading.equalTo(13)
                make.leading.equalTo(13)
                //: make.size.equalTo(CGSize(width: actualWidth(w: 130), height: actualWidth(w: 50)))
                make.size.equalTo(CGSize(width: actualWidth(w: 130), height: actualWidth(w: 50)))
            }
            //: rightBtn.snp.makeConstraints { make in
            rightBtn.snp.makeConstraints { make in
                //: make.top.size.equalTo(leftBtn)
                make.top.size.equalTo(leftBtn)
                //: make.trailing.equalTo(-13)
                make.trailing.equalTo(-13)
                //: make.bottom.equalToSuperview().offset(-20)
                make.bottom.equalToSuperview().offset(-20)
            }

            //: } else {
        } else {
            //: closeBtn.snp.makeConstraints { make in
            closeBtn.snp.makeConstraints { make in
                //: make.centerX.equalToSuperview()
                make.centerX.equalToSuperview()
                //: make.top.equalTo(contentLab.snp.bottom).offset(20)
                make.top.equalTo(contentLab.snp.bottom).offset(20)
                //: make.size.equalTo(CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50)))
                make.size.equalTo(CGSize(width: actualWidth(w: 203), height: actualWidth(w: 50)))
                //: make.bottom.equalToSuperview().offset(-20)
                make.bottom.equalToSuperview().offset(-20)
            }
        }
    }
}
