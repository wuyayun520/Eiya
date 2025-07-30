
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_directionFormat:[UInt8] = [0x56,0x51,0x56,0x4b,0x17,0x5c,0x50,0x5b,0x5a,0x4d,0x5,0x16,0x1f,0x57,0x5e,0x4c,0x1f,0x51,0x50,0x4b,0x1f,0x5d,0x5a,0x5a,0x51,0x1f,0x56,0x52,0x4f,0x53,0x5a,0x52,0x5a,0x51,0x4b,0x5a,0x5b]

private func textFrame(fatal num: UInt8) -> UInt8 {
    return num ^ 63
}

/*: "icon_chat_miss" :*/
fileprivate let k_groupValue:String = "make to imageicon_c"
fileprivate let kDateTitle:[Character] = ["s","s"]

/*: "icon_chat_yes" :*/
fileprivate let k_equalStr:String = "icon_chequal content title"
fileprivate let k_thinName:String = "position block layerat_yes"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MenuMsgCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/1.
//

//: import UIKit
import UIKit

//: class TalkingChatTextMsgCell: TalkingChatBaseMsgCell {
class MenuMsgCell: ObjectStreamMsgCell {
//    var transBlock: (() -> Void)?

    //: var textData: ToCellData?
    var textData: ToCellData?

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        //: designView()
        atView()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_directionFormat.map{textFrame(fatal: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    /** 内容标签 */
    //: lazy var messageLB: YYLabel = {
    lazy var messageLB: YYLabel = {
        //: let label = YYLabel.init()
        let label = YYLabel()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: return label
        return label
        //: }()
    }()

    /** 引用内容 */
    //: lazy var quoteView: TalkingMsgQuoteView = {
    lazy var quoteView: ItemControl = {
        //: let quoteView = TalkingMsgQuoteView()
        let quoteView = ItemControl()
        //: quoteView.isHidden = false
        quoteView.isHidden = false
        //: quoteView.addTarget(self, action: #selector(quoteBtnClick), for: .touchUpInside)
        quoteView.addTarget(self, action: #selector(tab), for: .touchUpInside)
        //: return quoteView
        return quoteView
        //: }()
    }()

    /** 打招呼礼物icon */
    //: lazy var giftImagV: UIImageView = {
    lazy var giftImagV: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.contentMode = .scaleAspectFit
        imag.contentMode = .scaleAspectFit
        //: return imag
        return imag
        //: }()
    }()

    /** 翻译背景 */
    //: lazy var transBgView: UIView = {
    lazy var transBgView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = .init(white: 1, alpha: 0.15)
        view.backgroundColor = .init(white: 1, alpha: 0.15)
        //: view.isHidden = true
        view.isHidden = true
        //: view.layer.cornerRadius = 2
        view.layer.cornerRadius = 2
        //: view.layer.masksToBounds = true
        view.layer.masksToBounds = true
        //: return view
        return view
        //: }()
    }()

    /** 翻译加载菊花 */
    //: lazy var transShowView: UIActivityIndicatorView = {
    lazy var transShowView: UIActivityIndicatorView = {
        //: let view = UIActivityIndicatorView.init()
        let view = UIActivityIndicatorView()
        //: view.style = .white
        view.style = .white
        //: return view
        return view
        //: }()
    }()

    /** 翻译状态icon */
    //: lazy var transStatusImagV: UIImageView = {
    lazy var transStatusImagV: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: return imag
        return imag
        //: }()
    }()

    /** 翻译文本 */
    //: lazy var transLB: YYLabel = {
    lazy var transLB: YYLabel = {
        //: let label = YYLabel.init()
        let label = YYLabel()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: label.font = UIFont.pingfangRugularFont(fontSize: 16)
        label.font = UIFont.targetFor(fontSize: 16)
        //: return label
        return label
        //: }()
    }()
//    /** 翻译按钮 */
//    lazy var transBtn: UIButton = {
//        let btn = UIButton.init()
//        btn.setImage(UIImage.submitGift(name: "icon_chat_translate_nor"), for: .normal)
//        btn.setImage(UIImage.submitGift(name: "icon_chat_translate_pre"), for: .highlighted)
//        btn.addTarget(self, action: #selector(transBtnClick), for: .touchUpInside)
//        return btn
//    }()
}

// MARK: - Event

//: extension TalkingChatTextMsgCell {
extension MenuMsgCell {
    //: override func fill(with data: TCommonCellData) {
    override func afterMid(with data: DisappearReactiveCompatible) {
        //: super.fill(with: data)
        super.afterMid(with: data)

        //: if let temTextData = data as? ToCellData {
        if let temTextData = data as? ToCellData {
            //: self.textData = temTextData
            self.textData = temTextData

            // 打招呼消息
            //: let imgPreview = temTextData.msgModel.gift.imgPreview
            let imgPreview = temTextData.msgModel.gift.imgPreview
            //: if imgPreview.count > 0  && temTextData.msgModel.msgInfo.messageType == .MessageTypeWelcome {
            if imgPreview.count > 0, temTextData.msgModel.msgInfo.messageType == .MessageTypeWelcome {
                //: giftImagV.setUrlImage(urlStr: imgPreview)
                giftImagV.setUrlImage(urlStr: imgPreview)
            }
            //: if temTextData.hasJump {
            if temTextData.hasJump {
                //: removeAllTapGes()
                overImage()
                //: addLongTagGes()
                comparable()
                //: } else {
            } else {
                //: addTouchTagGes()
                rainShadowGes()
            }

            //: self.messageLB.attributedText = temTextData.contentAttrString
            self.messageLB.attributedText = temTextData.contentAttrString

//            if (self.messageData?.direction == .MsgDirectionIncoming &&
//                self.messageData?.translateStatus != .MsgTranslate_succeed && self.messageData?.msgModel.msgInfo.callCmd.count ?? 0 <= 0 && temTextData.msgModel.msgInfo.messageType != .MessageTypeWelcome && "\(temTextData.msgModel.user.uid)" != UserTextMacroDefine.getXiaoMiID()) { // 对方发的 && 开启了翻译功能 && 消息未翻译成功
//                self.transBtn.isHidden = false
//            } else {
//                self.transBtn.isHidden = true
//            }

            /// 消息引用
            //: if temTextData.msgModel.quoteMsgInfo.isQuoteMsg() {
            if temTextData.msgModel.quoteMsgInfo.isQuoteMsg() {
                //: self.quoteView.isHidden = false
                self.quoteView.isHidden = false
                //: self.quoteView.direction = temTextData.direction
                self.quoteView.direction = temTextData.direction
                //: self.quoteView.quoteModel = temTextData.msgModel.quoteMsgInfo
                self.quoteView.quoteModel = temTextData.msgModel.quoteMsgInfo
                //: }else{
            } else {
                //: self.quoteView.isHidden = true
                self.quoteView.isHidden = true
            }

            // 翻译赋值相关
            //: self.transBgView.isHidden = self.textData?.translateStatus == .MsgTranslate_init
            self.transBgView.isHidden = self.textData?.translateStatus == .MsgTranslate_init
            //: self.transShowView.isHidden = self.textData?.translateStatus != .MsgTranslate_translating
            self.transShowView.isHidden = self.textData?.translateStatus != .MsgTranslate_translating
            //: self.transLB.isHidden = self.textData?.translateStatus == .MsgTranslate_translating
            self.transLB.isHidden = self.textData?.translateStatus == .MsgTranslate_translating
            //: self.transStatusImagV.isHidden = self.transLB.isHidden
            self.transStatusImagV.isHidden = self.transLB.isHidden
            //: if self.textData?.translateStatus == .MsgTranslate_translating {
            if self.textData?.translateStatus == .MsgTranslate_translating {
                //: self.transShowView.startAnimating()
                self.transShowView.startAnimating()
                //: } else if self.textData?.translateStatus == .MsgTranslate_fail {
            } else if self.textData?.translateStatus == .MsgTranslate_fail {
                //: self.transShowView.stopAnimating()
                self.transShowView.stopAnimating()
                //: self.transStatusImagV.image = UIImage.submitGift(name: "icon_chat_miss")
                self.transStatusImagV.image = UIImage.submitGift(name: (String(k_groupValue.suffix(6)) + "hat_mi" + String(kDateTitle)))
                //: } else if self.textData?.translateStatus == .MsgTranslate_succeed {
            } else if self.textData?.translateStatus == .MsgTranslate_succeed {
                //: self.transShowView.stopAnimating()
                self.transShowView.stopAnimating()
                //: self.transStatusImagV.image = UIImage.submitGift(name: "icon_chat_yes")
                self.transStatusImagV.image = UIImage.submitGift(name: (String(k_equalStr.prefix(7)) + String(k_thinName.suffix(6))))
            }
            //: self.transLB.attributedText = temTextData.transAttrString
            self.transLB.attributedText = temTextData.transAttrString
        }

        //: self.setNeedsLayout()
        self.setNeedsLayout()
        //: self.updateConstraints()
        self.updateConstraints()
        //: self.layoutIfNeeded()
        self.layoutIfNeeded()
    }

    //: func addTouchTagGes() {
    func rainShadowGes() {
        //: removeAllTapGes()
        overImage()
        //: let containerTap = UITapGestureRecognizer.init(target: self, action: #selector(TouchCellMessageAction(tap:)))
        let containerTap = UITapGestureRecognizer(target: self, action: #selector(petition(tap:)))
        //: containerTap.numberOfTapsRequired = 1
        containerTap.numberOfTapsRequired = 1
        //: containerTap.numberOfTouchesRequired = 1
        containerTap.numberOfTouchesRequired = 1

        //: self.container.addGestureRecognizer(containerTap)
        self.container.addGestureRecognizer(containerTap)
        //: let isOfficial = (String(self.textData?.msgModel.user.uid ?? 0) == UserTextMacroDefine.getXiaoMiID())
        let isOfficial = (String(self.textData?.msgModel.user.uid ?? 0) == UserTextMacroDefine.publicationRequest())
        //: if isOfficial == false {
        if isOfficial == false {
            //: addLongTagGes()
            comparable()
        }
    }

    //: public override class var requiresConstraintBasedLayout: Bool {
    override public class var requiresConstraintBasedLayout: Bool {
        //: return true
        return true
    }

    //: public override func updateConstraints() {
    override public func updateConstraints() {
        //: super.updateConstraints()
        super.updateConstraints()

        //: self.quoteView.snp.remakeConstraints { make in
        self.quoteView.snp.remakeConstraints { make in
            //: make.leading.equalTo(self.textData?.textOrigin.x ?? 10)
            make.leading.equalTo(self.textData?.textOrigin.x ?? 10)
            //: make.top.equalTo(10)
            make.top.equalTo(10)
            //: make.width.equalTo(self.textData?.quoteSize.width ?? 0)
            make.width.equalTo(self.textData?.quoteSize.width ?? 0)
            //: make.height.equalTo(self.textData?.quoteSize.height ?? 0)
            make.height.equalTo(self.textData?.quoteSize.height ?? 0)
        }

        //: self.messageLB.snp.remakeConstraints { make in
        self.messageLB.snp.remakeConstraints { make in
            //: make.leading.equalTo(self.textData?.textOrigin.x ?? 10)
            make.leading.equalTo(self.textData?.textOrigin.x ?? 10)
            //: make.top.equalTo(self.textData?.textOrigin.y ?? 10)
            make.top.equalTo(self.textData?.textOrigin.y ?? 10)
            //: make.width.equalTo(self.textData?.textSize.width ?? 0)
            make.width.equalTo(self.textData?.textSize.width ?? 0)
            //: make.height.equalTo(self.textData?.textSize.height ?? 0)
            make.height.equalTo(self.textData?.textSize.height ?? 0)
        }

        //: if self.messageData?.direction == .MsgDirectionIncoming {
        if self.messageData?.direction == .MsgDirectionIncoming {
            //: self.giftImagV.snp.remakeConstraints { make in
            self.giftImagV.snp.remakeConstraints { make in
                //: make.leading.equalTo(self.container.snp.trailing).offset(6)
                make.leading.equalTo(self.container.snp.trailing).offset(6)
                //: make.centerY.equalTo(self.container)
                make.centerY.equalTo(self.container)
                //: make.width.height.equalTo(40)
                make.width.height.equalTo(40)
            }
//            self.transBtn.snp.remakeConstraints { make in
//                make.leading.equalTo(self.container.snp.trailing).offset(6)
//                make.centerY.equalTo(self.container)
//                make.width.height.equalTo(40)
//            }

            // 翻译UI布局
            //: if self.textData?.translateStatus == .MsgTranslate_translating {
            if self.textData?.translateStatus == .MsgTranslate_translating { // 翻译中
                //: self.transBgView.snp.remakeConstraints { make in
                self.transBgView.snp.remakeConstraints { make in
                    //: make.leading.equalTo(self.container.snp.leading)
                    make.leading.equalTo(self.container.snp.leading)
                    //: make.top.equalTo(self.container.snp.bottom).offset(5)
                    make.top.equalTo(self.container.snp.bottom).offset(5)
                    //: make.width.equalTo(80)
                    make.width.equalTo(80)
                    //: make.height.equalTo(32)
                    make.height.equalTo(32)
                }
                //: self.transShowView.snp.remakeConstraints { make in
                self.transShowView.snp.remakeConstraints { make in
                    //: make.leading.top.equalTo(0)
                    make.leading.top.equalTo(0)
                    //: make.width.equalTo(self.transBgView.snp.width)
                    make.width.equalTo(self.transBgView.snp.width)
                    //: make.height.equalTo(self.transBgView.snp.height)
                    make.height.equalTo(self.transBgView.snp.height)
                }
                //: } else {
            } else {
                //: self.transStatusImagV.snp.remakeConstraints { make in
                self.transStatusImagV.snp.remakeConstraints { make in
                    //: make.leading.top.equalTo(10)
                    make.leading.top.equalTo(10)
                    //: make.width.height.equalTo(16)
                    make.width.height.equalTo(16)
                }
                //: self.transLB.snp.remakeConstraints { make in
                self.transLB.snp.remakeConstraints { make in
                    //: make.top.equalTo(6)
                    make.top.equalTo(6)
                    //: make.leading.equalTo(self.transStatusImagV.snp.trailing).offset(5)
                    make.leading.equalTo(self.transStatusImagV.snp.trailing).offset(5)
                    //: make.width.equalTo(self.textData?.transTextSize.width ?? 0)
                    make.width.equalTo(self.textData?.transTextSize.width ?? 0)
                    //: make.height.equalTo(self.textData?.transTextSize.height ?? 0)
                    make.height.equalTo(self.textData?.transTextSize.height ?? 0)
                }
                //: self.transBgView.snp.remakeConstraints { make in
                self.transBgView.snp.remakeConstraints { make in
                    //: make.leading.equalTo(self.container.snp.leading)
                    make.leading.equalTo(self.container.snp.leading)
                    //: make.top.equalTo(self.container.snp.bottom).offset(5)
                    make.top.equalTo(self.container.snp.bottom).offset(5)
                    //: make.width.equalTo((self.textData?.transTextSize.width ?? 0) + 40)
                    make.width.equalTo((self.textData?.transTextSize.width ?? 0) + 40)
                    //: make.height.equalTo((self.textData?.transTextSize.height ?? 0) + 10)
                    make.height.equalTo((self.textData?.transTextSize.height ?? 0) + 10)
                }
            }
            //: if self.textData?.translateStatus != .MsgTranslate_init {
            if self.textData?.translateStatus != .MsgTranslate_init { // 得默认翻译状态
                //: self.coinIconImg.snp.remakeConstraints { make in
                self.coinIconImg.snp.remakeConstraints { make in
                    //: make.top.equalTo(self.transBgView.snp.bottom).offset(5)
                    make.top.equalTo(self.transBgView.snp.bottom).offset(5)
                    //: make.width.height.equalTo(15)
                    make.width.height.equalTo(15)
                }
            }
            //: } else {
        } else {
            //: self.giftImagV.snp.remakeConstraints { make in
            self.giftImagV.snp.remakeConstraints { make in
                //: make.trailing.equalTo(self.container.snp.leading).offset(-6)
                make.trailing.equalTo(self.container.snp.leading).offset(-6)
                //: make.centerY.equalTo(self.container)
                make.centerY.equalTo(self.container)
                //: make.width.height.equalTo(40)
                make.width.height.equalTo(40)
            }
//            self.transBtn.snp.remakeConstraints { make in
//                make.leading.top.width.height.equalTo(0)
//            }
        }
    }

    //: func removeAllTapGes() {
    func overImage() {
        //: self.container.gestureRecognizers?.forEach(self.container.removeGestureRecognizer(_:))
        self.container.gestureRecognizers?.forEach(self.container.removeGestureRecognizer(_:))
    }

    //: func addLongTagGes() {
    func comparable() {
        //: let longPressGr = UILongPressGestureRecognizer.init(target: self, action: #selector(LognCellMessageAction(tap:)))
        let longPressGr = UILongPressGestureRecognizer(target: self, action: #selector(minorLeagueTeam(tap:)))
        //: self.container.addGestureRecognizer(longPressGr)
        self.container.addGestureRecognizer(longPressGr)
    }

    //: @objc func TouchCellMessageAction(tap: UITapGestureRecognizer?) {
    @objc func petition(tap _: UITapGestureRecognizer?) {
        //: self.delegate?.onSelectMessage(cell: self)
        self.delegate?.equilateral(cell: self)
    }

    //: @objc func LognCellMessageAction(tap: UILongPressGestureRecognizer) {
    @objc func minorLeagueTeam(tap: UILongPressGestureRecognizer) {
        //: if tap.state == .ended {
        if tap.state == .ended {
            //: return
            return
                //: } else if tap.state == .began {
        } else if tap.state == .began {
            //: self.delegate?.onLongPressMessage(cell: self)
            self.delegate?.hourlong(cell: self)
        }
    }

//    @objc func transBtnClick() {
//        self.transBlock?()
//    }
    //: @objc func quoteBtnClick() {
    @objc func tab() {
        //: self.delegate?.onReplyMessage(cell: self)
        self.delegate?.radiogram(cell: self)
    }
}

// MARK: - Event

//: extension TalkingChatTextMsgCell {
extension MenuMsgCell {
    //: func designView() {
    func atView() {
        //: self.bubbleImgView.isHidden = false
        self.bubbleImgView.isHidden = false
        //: self.bubbleImgView.isUserInteractionEnabled = true
        self.bubbleImgView.isUserInteractionEnabled = true
        //: self.bubbleImgView.addSubview(quoteView)
        self.bubbleImgView.addSubview(quoteView)
        //: self.bubbleImgView.addSubview(messageLB)
        self.bubbleImgView.addSubview(messageLB)
        //: self.contentView.addSubview(giftImagV)
        self.contentView.addSubview(giftImagV)
        //: self.contentView.addSubview(transBgView)
        self.contentView.addSubview(transBgView)
//        self.contentView.addSubview(transBtn)
        //: transBgView.addSubview(transShowView)
        transBgView.addSubview(transShowView)
        //: transBgView.addSubview(transStatusImagV)
        transBgView.addSubview(transStatusImagV)
        //: transBgView.addSubview(transLB)
        transBgView.addSubview(transLB)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    }
}
