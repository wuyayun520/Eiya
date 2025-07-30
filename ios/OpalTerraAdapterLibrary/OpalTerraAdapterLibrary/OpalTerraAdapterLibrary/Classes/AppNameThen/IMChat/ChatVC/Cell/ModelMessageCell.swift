
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kPackageContent:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "#EDEDED" :*/
fileprivate let kNowKey:String = "try to#EDEDE"
fileprivate let kAtPath:String = "make"

/*: "Click for details" :*/
fileprivate let k_colorText:[Character] = ["C","l","i","c","k"," ","f"]
fileprivate let k_viewTitle:[Character] = ["o","r"," ","d","e","t","a","i","l","s"]

/*: "#128CFF" :*/
fileprivate let k_equalLineName:[Character] = ["#","1","2","8","C"]
fileprivate let k_bottomUrl:String = "rangerange"

/*: "system_notif_click_go" :*/
fileprivate let kInfoId:String = "add content view textsystem_"
fileprivate let k_frameFormat:[Character] = ["n","o","t","i","f","_","c","l","i","c","k","_","g","o"]

/*: "img" :*/
fileprivate let kDataTitle:[Character] = ["i","m","g"]

/*: "jumpKey" :*/
fileprivate let kNorPath:String = "return source modeljumpKe"
fileprivate let k_segmentMessage:String = "color"

/*: "url" :*/
fileprivate let k_leadingObjectName:String = "sharedl"

/*: "mfChat" :*/
fileprivate let k_titleText:[UInt8] = [0x19,0x12,0xef,0x14,0xd,0x20]

fileprivate func levelFrame(practical num: UInt8) -> UInt8 {
    let value = Int(num) + 84
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "jumpUid" :*/
fileprivate let k_makeFormat:String = "status view let countjumpUid"

/*: "mfChatGift" :*/
fileprivate let kLogMsg:[UInt8] = [0x84,0x8f,0xaa,0x81,0x88,0x9d,0xae,0x80,0x8f,0x9d]

/*: "user" :*/
fileprivate let k_rangeUrl:[UInt8] = [0x43,0x41,0x33,0x40]

fileprivate func errorLabel(actual num: UInt8) -> UInt8 {
    let value = Int(num) + 50
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "outerUrl" :*/
fileprivate let k_centerText:[UInt8] = [0x61,0x7b,0x7a,0x6b,0x7c,0x5b,0x7c,0x62]

/*: "系统通知跳转失败：不支持  :*/
fileprivate let kVideoUrl:String = "系统通\u{77e5}"
fileprivate let kUpId:[Character] = ["持"," "]

/*:  跳转类型。" :*/
fileprivate let kEqualStr:[Character] = [" ","跳","转","类","型"]
fileprivate let kSumimateMakeId:String = "table"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModelMessageCell.swift
//  AbroadTalking
//
//  Created by young on 2023/11/8.
//

//: import UIKit
import UIKit

//: class TalkingChatSystemNotifJumpMsgCell: TalkingChatBaseMsgCell {
class ModelMessageCell: ObjectStreamMsgCell {
    //: var textData: TalkingChatSystemNotifJumpMsgCellData?
    var textData: CompartmentSingleCellData?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: setupSubviews()
        deleteBuild()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kPackageContent.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bannerImgV: UIImageView = {
    private lazy var bannerImgV: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.isHidden = true
        img.isHidden = true
        //: self.bubbleImgView.addSubview(img)
        self.bubbleImgView.addSubview(img)
        //: return img
        return img
        //: }()
    }()

    //: private lazy var titleLab: YYLabel = {
    private lazy var titleLab: YYLabel = {
        //: let lab = YYLabel()
        let lab = YYLabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.isHidden = true
        lab.isHidden = true
        //: self.bubbleImgView.addSubview(lab)
        self.bubbleImgView.addSubview(lab)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var contentLab: YYLabel = {
    private lazy var contentLab: YYLabel = {
        //: let lab = YYLabel()
        let lab = YYLabel()
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: lab.isHidden = true
        lab.isHidden = true
        //: self.bubbleImgView.addSubview(lab)
        self.bubbleImgView.addSubview(lab)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var jumpBtn: UIButton = {
    private lazy var jumpBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(jumpToDetailsButtonEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(actCollection), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: self.bubbleImgView.addSubview(btn)
        self.bubbleImgView.addSubview(btn)
        //: let line = UIView()
        let line = UIView()
        //: line.backgroundColor = UIColor(hex: "#EDEDED")
        line.backgroundColor = UIColor(hex: (String(kNowKey.suffix(6)) + kAtPath.replacingOccurrences(of: "make", with: "D")))
        //: btn.addSubview(line)
        btn.addSubview(line)
        //: line.snp.makeConstraints { make in
        line.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.equalTo(0.5)
            make.height.equalTo(0.5)
        }
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Click for details".localized
        lab.text = (String(k_colorText) + String(k_viewTitle)).localized
        //: lab.textColor = UIColor(hex: "#128CFF")
        lab.textColor = UIColor(hex: (String(k_equalLineName) + k_bottomUrl.replacingOccurrences(of: "range", with: "F")))
        //: lab.font = UIFont.fontChange(type: .Regular, fontSize: 14)
        lab.font = UIFont.fontChange(type: .Regular, fontSize: 14)
        //: btn.addSubview(lab)
        btn.addSubview(lab)
        //: lab.snp.makeConstraints { make in
        lab.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.submitGift(name: "system_notif_click_go")
        imgV.image = UIImage.submitGift(name: (String(kInfoId.suffix(7)) + String(k_frameFormat)))
        //: btn.addSubview(imgV)
        btn.addSubview(imgV)
        //: imgV.snp.makeConstraints { make in
        imgV.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.size.equalTo(CGSize(width: 6, height: 11))
            make.size.equalTo(CGSize(width: 6, height: 11))
        }
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatSystemNotifJumpMsgCell {
extension ModelMessageCell {
    /// 刷新视图
    //: override func fill(with data: TCommonCellData) {
    override func afterMid(with data: DisappearReactiveCompatible) {
        //: super.fill(with: data)
        super.afterMid(with: data)
        //: bannerImgV.isHidden = true
        bannerImgV.isHidden = true
        //: titleLab.isHidden = true
        titleLab.isHidden = true
        //: contentLab.isHidden = true
        contentLab.isHidden = true
        //: jumpBtn.isHidden = true
        jumpBtn.isHidden = true
        //: textData = data as? TalkingChatSystemNotifJumpMsgCellData
        textData = data as? CompartmentSingleCellData
        //: guard let textData = textData else { return }
        guard let textData = textData else { return }
        //: if textData.hasBanner {
        if textData.hasBanner {
            //: bannerImgV.setUrlImage(urlStr: textData.extraJson["img"].stringValue)
            bannerImgV.setUrlImage(urlStr: textData.extraJson[(String(kDataTitle))].stringValue)
            //: bannerImgV.isHidden = false
            bannerImgV.isHidden = false
            //: bannerImgV.Corner(width: textData.bannerSize.width,
            bannerImgV.imageUser(width: textData.bannerSize.width,
                                 //: height: textData.bannerSize.height,
                                 height: textData.bannerSize.height,
                                 //: corners: [ .topRight],
                                 corners: [.topRight],
                                 //: cornerRadii: CGSize(width: 12, height: 12))
                                 cornerRadii: CGSize(width: 12, height: 12))
        }
        //: if textData.titleHeight > 0 {
        if textData.titleHeight > 0 {
            //: let width = textData.bannerSize.width-20
            let width = textData.bannerSize.width - 20
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.titleAttrStr)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.titleAttrStr)
            //: titleLab.textLayout = yyLayout
            titleLab.textLayout = yyLayout
            //: titleLab.isHidden = false
            titleLab.isHidden = false
        }
        //: if textData.contentHeight > 0 {
        if textData.contentHeight > 0 {
            //: let width = textData.bannerSize.width-20
            let width = textData.bannerSize.width - 20
            //: let yyLayout = YYTextLayout.init(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.contentAttrStr)
            let yyLayout = YYTextLayout(containerSize: CGSize(width: width, height: CGFLOAT_MAX), text: textData.contentAttrStr)
            //: contentLab.textLayout = yyLayout
            contentLab.textLayout = yyLayout
            //: contentLab.isHidden = false
            contentLab.isHidden = false
        }

        //: jumpBtn.isHidden = (textData.jumpHeight == 0)
        jumpBtn.isHidden = (textData.jumpHeight == 0)
    }

    /// 跳转事件
    //: @objc private func jumpToDetailsButtonEvent() {
    @objc private func actCollection() {
        //: guard let textData = textData else { return }
        guard let textData = textData else { return }
        //: guard textData.jumpHeight > 0 else { return }
        guard textData.jumpHeight > 0 else { return }
        //: let jumpKey = textData.extraJson["jumpKey"].stringValue
        let jumpKey = textData.extraJson[(String(kNorPath.suffix(6)) + k_segmentMessage.replacingOccurrences(of: "color", with: "y"))].stringValue
        //: switch (jumpKey) {
        switch jumpKey {
        //: case "url": // 网页
        case (k_leadingObjectName.replacingOccurrences(of: "shared", with: "ur")): // 网页
            //: let url = textData.extraJson["url"].stringValue
            let url = textData.extraJson[(k_leadingObjectName.replacingOccurrences(of: "shared", with: "ur"))].stringValue
            //: AddReactiveCompatible.share.func__pushToWebVC(urlStr: url)
            AddReactiveCompatible.share.pathAcross(urlStr: url)

        //: case "mfChat":  // 私聊
        case String(bytes: k_titleText.map{levelFrame(practical: $0)}, encoding: .utf8)!: // 私聊
            //: let jumpUid = textData.extraJson["jumpUid"].stringValue
            let jumpUid = textData.extraJson[(String(k_makeFormat.suffix(7)))].stringValue
            //: AddReactiveCompatible.share.func__pushToPriveteChatVC(chatID: jumpUid)
            AddReactiveCompatible.share.tincture(chatID: jumpUid)

        //: case "mfChatGift":  // 私聊打开礼物面板
        case String(bytes: kLogMsg.map{$0^233}, encoding: .utf8)!: // 私聊打开礼物面板
            //: let jumpUid = textData.extraJson["jumpUid"].stringValue
            let jumpUid = textData.extraJson[(String(k_makeFormat.suffix(7)))].stringValue
            //: AddReactiveCompatible.share.func__pushToPriveteChatVC(chatID: jumpUid) { vc in
            AddReactiveCompatible.share.tincture(chatID: jumpUid) { vc in
                //: vc.msgInputView.clickgiftBtn()
                vc.msgInputView.listSize()
            }
        //: case "user": // 用户详情
        case String(bytes: k_rangeUrl.map{errorLabel(actual: $0)}, encoding: .utf8)!: // 用户详情
            //: let jumpUid = textData.extraJson["jumpUid"].stringValue
            let jumpUid = textData.extraJson[(String(k_makeFormat.suffix(7)))].stringValue
            //: AddReactiveCompatible.share.func__pushToUserDetailVC(uid: jumpUid)
            AddReactiveCompatible.share.afterTo(uid: jumpUid)

        //: case "outerUrl": // 外链
        case String(bytes: k_centerText.map{$0^14}, encoding: .utf8)!: // 外链
            //: let url = textData.extraJson["url"].stringValue
            let url = textData.extraJson[(k_leadingObjectName.replacingOccurrences(of: "shared", with: "ur"))].stringValue
            //: if let url = URL(string: url) {
            if let url = URL(string: url) {
                //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }

        //: default:
        default:
            //: printLog(message: "系统通知跳转失败：不支持 \(jumpKey) 跳转类型。")
            printLog(message: (kVideoUrl + "跳转失败\u{ff1a}不支" + String(kUpId)) + "\(jumpKey)" + (String(kEqualStr) + kSumimateMakeId.replacingOccurrences(of: "table", with: "。")))
        }
    }
}

// MARK: - Layout

//: extension TalkingChatSystemNotifJumpMsgCell {
extension ModelMessageCell {
    /// 初始化视图
    //: private func setupSubviews() {
    private func deleteBuild() {
        //: self.bubbleImgView.layer.cornerRadius = 2
        self.bubbleImgView.layer.cornerRadius = 2
        //: self.bubbleImgView.layer.masksToBounds = true
        self.bubbleImgView.layer.masksToBounds = true
        //: self.bubbleImgView.isHidden = false
        self.bubbleImgView.isHidden = false
        //: self.bubbleImgView.isUserInteractionEnabled = true
        self.bubbleImgView.isUserInteractionEnabled = true
    }

    /// 自动更新布局
    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: guard let textData = textData else { return }
        guard let textData = textData else { return }
        //: let bannerH = textData.hasBanner ? textData.bannerSize.height:0
        let bannerH = textData.hasBanner ? textData.bannerSize.height : 0
        //: self.bannerImgV.snp.makeConstraints { make in
        self.bannerImgV.snp.makeConstraints { make in
            //: make.top.leading.equalToSuperview()
            make.top.leading.equalToSuperview()
            //: make.width.equalTo(textData.bannerSize.width)
            make.width.equalTo(textData.bannerSize.width)
            //: make.height.equalTo(bannerH)
            make.height.equalTo(bannerH)
        }

        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.top.equalTo(bannerImgV.snp.bottom).offset(10)
            make.top.equalTo(bannerImgV.snp.bottom).offset(10)
            //: make.leading.equalTo(10)
            make.leading.equalTo(10)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.height.equalTo(textData.titleHeight)
            make.height.equalTo(textData.titleHeight)
        }

        //: contentLab.snp.makeConstraints { make in
        contentLab.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(4)
            make.top.equalTo(titleLab.snp.bottom).offset(4)
            //: make.leading.trailing.equalTo(titleLab)
            make.leading.trailing.equalTo(titleLab)
            //: make.height.equalTo(textData.contentHeight)
            make.height.equalTo(textData.contentHeight)
        }

        //: jumpBtn.snp.makeConstraints { make in
        jumpBtn.snp.makeConstraints { make in
            //: make.top.equalTo(contentLab.snp.bottom).offset(10)
            make.top.equalTo(contentLab.snp.bottom).offset(10)
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.width.equalTo(bannerImgV)
            make.width.equalTo(bannerImgV)
            //: make.height.equalTo(textData.jumpHeight)
            make.height.equalTo(textData.jumpHeight)
        }
    }
}
