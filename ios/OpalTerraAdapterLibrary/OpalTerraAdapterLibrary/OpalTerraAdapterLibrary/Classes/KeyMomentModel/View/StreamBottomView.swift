
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kImageFormat:[UInt8] = [0x5a,0x5d,0x5a,0x47,0x1b,0x50,0x5c,0x57,0x56,0x41,0x9,0x1a,0x13,0x5b,0x52,0x40,0x13,0x5d,0x5c,0x47,0x13,0x51,0x56,0x56,0x5d,0x13,0x5a,0x5e,0x43,0x5f,0x56,0x5e,0x56,0x5d,0x47,0x56,0x57]

private func toSelf(make num: UInt8) -> UInt8 {
    return num ^ 51
}

/*: "btn_dongtai_dianzan_nor" :*/
fileprivate let k_videoRequestTitle:String = "btn_donplayer user let succeed false"
fileprivate let kTotalervalValue:String = "gtai_container manager"
fileprivate let k_styleContent:String = "an_nortouch array during title self"

/*: "btn_dongtai_dianzan_nor1" :*/
fileprivate let k_equalFormat:[Character] = ["b","t","n","_","d","o","n","g"]
fileprivate let kSizeName:[Character] = ["t","a","i","_","d","i","a","n","z","a"]
fileprivate let kProgressStr:String = "n_nor1mode info"

/*: "btn_dongtai_pinglun_nor" :*/
fileprivate let k_selectedName:String = "with to regularbtn_do"
fileprivate let kBeginOfData:String = "equal app false filengtai_"
fileprivate let k_contentText:String = "n_norview let gift margin window"

/*: "btn_dynamic_chat_nor" :*/
fileprivate let k_listUrl:String = "btn_dvideo table"
fileprivate let k_colorMsg:String = "_chat_norguard the"

/*: "icon_dynamic_heart_default" :*/
fileprivate let kByData:[Character] = ["i","c","o","n","_","d","y","n","a","m"]
fileprivate let kLabelText:String = "ic_hcolor value"
fileprivate let kColorIndexUrl:String = "info position in toeart_"

/*: "Chat" :*/
fileprivate let k_dataText:String = "Chatpush text false line view"

/*: "#752FE9" :*/
fileprivate let kWillMessage:[Character] = ["#","7","5","2","F","E","9"]

/*: "99+" :*/
fileprivate let k_cellStateText:[UInt8] = [0x2b,0x39,0x39]

/*: "%d" :*/
fileprivate let kViewText:[Character] = ["%","d"]

/*: "Comment" :*/
fileprivate let k_containerRefreshFormat:String = "progress color addComment"

/*: "momentId" :*/
fileprivate let kAppName:String = "mmodele"

/*: "type" :*/
fileprivate let k_acrossMsg:String = "whiteype"

/*: "like" :*/
fileprivate let k_toMessage:[Character] = ["l","i","k","e"]

/*: "model" :*/
fileprivate let k_protectionValue:[UInt8] = [0x13,0x11,0x1a,0x1b,0x12]

private func makeBackground(task num: UInt8) -> UInt8 {
    return num ^ 126
}

/*: "get json error" :*/
fileprivate let kViewKey:[Character] = ["g","e","t"," ","j","s","o","n"]
fileprivate let k_mRemoveId:String = " errorname self greet message if"

/*: "comment" :*/
fileprivate let kRawValue:String = "pushmme"
fileprivate let kChangeAtTitle:[Character] = ["n","t"]

/*: "number" :*/
fileprivate let kTextFormat:String = "numbvaluer"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StreamBottomView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/20.
//

//: import UIKit
import UIKit

//: class TalkingMomentItemBottomView: UIView {
class StreamBottomView: UIView {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var cunrrenModel = TalkingMomentModel()
    var cunrrenModel = KeyMomentModel()

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        setupDoingInformationSubviews()
        //: setupSubViewsConstraint()
        place()
        //: bindInteraction()
        contact()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kImageFormat.map{toSelf(make: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: lazy var infoLB: UILabel = {
    lazy var infoLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .fontChange(type: .Regular, fontSize: 14)
        label.font = .fontChange(type: .Regular, fontSize: 14)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .childMenu()
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var likePlayer: SVGAPlayer = {
    lazy var likePlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 1
        player.loops = 1
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: player.delegate = self
        player.delegate = self
        //: self.addSubview(player)
        self.addSubview(player)
        //: return player
        return player
        //: }()
    }()

    //: lazy var likeBtn: UIButton = {
    lazy var likeBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "btn_dongtai_dianzan_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(k_videoRequestTitle.prefix(7)) + String(kTotalervalValue.prefix(5)) + "dianz" + String(k_styleContent.prefix(6)))), for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "btn_dongtai_dianzan_nor1"), for: .selected)
        btn.setImage(UIImage.submitGift(name: (String(k_equalFormat) + String(kSizeName) + String(kProgressStr.prefix(6)))), for: .selected)
        //: btn.adjustsImageWhenHighlighted = false
        btn.adjustsImageWhenHighlighted = false
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var likeNumberLB: UILabel = {
    lazy var likeNumberLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .fontChange(type: .Regular, fontSize: 16)
        label.font = .fontChange(type: .Regular, fontSize: 16)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .childMenu()
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var commentBtn: UIButton = {
    lazy var commentBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "btn_dongtai_pinglun_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(k_selectedName.suffix(6)) + String(kBeginOfData.suffix(6)) + "pinglu" + String(k_contentText.prefix(5)))), for: .normal)
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var commentNumberLB: UILabel = {
    lazy var commentNumberLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .fontChange(type: .Regular, fontSize: 16)
        label.font = .fontChange(type: .Regular, fontSize: 16)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .childMenu()
        //: self.addSubview(label)
        self.addSubview(label)
        //: return label
        return label
        //: }()
    }()

    //: lazy var greetBtn: TalkingButton = {
    lazy var greetBtn: ResumeControl = {
        //: let btn = TalkingButton.init()
        let btn = ResumeControl()
        //: let bubbleInsets = UIEdgeInsets(top: 4, left: 11, bottom: 4, right: 11)
        let bubbleInsets = UIEdgeInsets(top: 4, left: 11, bottom: 4, right: 11)
        //: btn.setBackgroundImage(UIImage.submitGift(name: "btn_dynamic_chat_nor").resizableImage(withCapInsets: bubbleInsets, resizingMode: .stretch), for: .normal)
        btn.setBackgroundImage(UIImage.submitGift(name: (String(k_listUrl.prefix(5)) + "ynamic" + String(k_colorMsg.prefix(9)))).resizableImage(withCapInsets: bubbleInsets, resizingMode: .stretch), for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "icon_dynamic_heart_default"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kByData) + String(kLabelText.prefix(4)) + String(kColorIndexUrl.suffix(5)) + "default")), for: .normal)
        //: btn.setTitle("Chat".localized, for: .normal)
        btn.setTitle((String(k_dataText.prefix(4))).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 14)
        btn.titleLabel?.font = UIFont.tapShared(fontSize: 14)
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMomentItemBottomView {
extension StreamBottomView {
    //: func configModel(model: TalkingMomentModel) {
    func videoTheoryButton(model: KeyMomentModel) {
        //: cunrrenModel = model
        cunrrenModel = model
        //: likeBtn.isHidden = false
        likeBtn.isHidden = false
        //: likeNumberLB.isHidden = false
        likeNumberLB.isHidden = false
        //: commentBtn.isHidden = false
        commentBtn.isHidden = false
        //: commentNumberLB.isHidden = false
        commentNumberLB.isHidden = false
        //: greetBtn.isHidden = DistanceAppManager.share.loginUserMode.sex == model.sex ||  DistanceAppManager.share.loginUserMode.userID == model.uid
        greetBtn.isHidden = DistanceAppManager.share.loginUserMode.sex == model.sex || DistanceAppManager.share.loginUserMode.userID == model.uid

        //: infoLB.text = model.addTime
        infoLB.text = model.addTime
        //: likeBtn.isSelected = model.isLike!
        likeBtn.isSelected = model.isLike!
        //: likeNumberLB.textColor = model.isLike! ? UIColor.init(hex: "#752FE9") :.appValueDetailColor()
        likeNumberLB.textColor = model.isLike! ? UIColor(hex: (String(kWillMessage))) : .childMenu()
        //: likeNumberLB.text = model.likeNum! > 99 ? "99+" : String(format: "%d", model.likeNum! )
        likeNumberLB.text = model.likeNum! > 99 ? "99+" : String(format: "%d", model.likeNum!)
        //: commentNumberLB.text = model.replyNum! > 99 ? "99+" :  model.replyNum! > 0 ? String(format: "%d", model.replyNum!) : "Comment".localized
        commentNumberLB.text = model.replyNum! > 99 ? "99+" : model.replyNum! > 0 ? String(format: "%d", model.replyNum!) : (String(k_containerRefreshFormat.suffix(7))).localized
    }

    //: func likeBtnClik() {
    func pathStatus() {
        //: if !likeBtn.isSelected {
        if !likeBtn.isSelected {
            //: self.req_MomentLike(type: 1)
            self.streetwiseType(type: 1)
            //: self.likeplayer()
            self.viewName()
            //: }else {
        } else {
            //: req_MomentLike(type: 2)
            streetwiseType(type: 2)
        }
    }

    //: func req_MomentLike(type: Int) {
    func streetwiseType(type: Int) {
        //: likeBtn.isUserInteractionEnabled = false
        likeBtn.isUserInteractionEnabled = false
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = cunrrenModel.mid
        dict[(kAppName.replacingOccurrences(of: "model", with: "om") + "ntId")] = cunrrenModel.mid
        //: dict["type"] = type
        dict[(k_acrossMsg.replacingOccurrences(of: "white", with: "t"))] = type

        //: TalkingMomentRequestTool.req_MomentLike(params: dict) { succeed, result, errorModel in
        TvThen.dowrySelect(params: dict) { succeed, _, errorModel in
            //: self.likeBtn.isUserInteractionEnabled = true
            self.likeBtn.isUserInteractionEnabled = true
            //: if succeed {
            if succeed {
                //: let isLike  =  type==1 ? true:false
                let isLike = type == 1 ? true : false
                //: var number = isLike ?  self.cunrrenModel.likeNum!+1 : self.cunrrenModel.likeNum!-1
                var number = isLike ? self.cunrrenModel.likeNum! + 1 : self.cunrrenModel.likeNum! - 1
                //: if number < 0 {
                if number < 0 {
                    //: number = 0
                    number = 0
                }
                //: self.likeBtn.isSelected = isLike
                self.likeBtn.isSelected = isLike
                //: self.cunrrenModel.isLike = isLike
                self.cunrrenModel.isLike = isLike
                //: self.cunrrenModel.likeNum = number
                self.cunrrenModel.likeNum = number
                //: self.likeNumberLB.text = String(format: "%d", number)
                self.likeNumberLB.text = String(format: "%d", number)
                //: self.likeNumberLB.textColor = isLike ? UIColor.init(hex: "#752FE9") :.appValueDetailColor()
                self.likeNumberLB.textColor = isLike ? UIColor(hex: (String(kWillMessage))) : .childMenu()
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+0.5) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    //: NotificationCenter.default.post(name: UPDATE_LIKE_NUMBER_NOTIFICATION, object: self, userInfo: ["type": "like", "model": self.cunrrenModel])
                    NotificationCenter.default.post(name: dataTabText, object: self, userInfo: [(k_acrossMsg.replacingOccurrences(of: "white", with: "t")): (String(k_toMessage)), String(bytes: k_protectionValue.map{makeBackground(task: $0)}, encoding: .utf8)!: self.cunrrenModel])
                }
                //: }else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.arcInfo(showMsg: errorModel!.errorMsg)
            }
        }
    }

    //: func greetBtnClick() {
    func judge() {
        //: AddReactiveCompatible.share.func__pushToPriveteChatVC(chatID: cunrrenModel.uid ?? "")
        AddReactiveCompatible.share.tincture(chatID: cunrrenModel.uid ?? "")
    }

    //: func likeplayer() {
    func viewName() {
        //: var url = SVGAEffectTool.default.getZipEffectPath(type: .Moment_like)
        var url = VideoEffectTool.default.conType(type: .Moment_like)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeLanguageManager.shared.direction == .rightToLeft {
            //: url = SVGAEffectTool.default.getZipEffectPath(type: .Moment_likeRight)
            url = VideoEffectTool.default.conType(type: .Moment_likeRight)
        }
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.likePlayer.videoItem = videoItem
                self.likePlayer.videoItem = videoItem
                //: self.likePlayer.startAnimation()
                self.likePlayer.startAnimation()
            }
            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(kViewKey) + String(k_mRemoveId.prefix(6))))
        }
    }

    //: @objc func updateCommentNumber(notification: NSNotification) -> Void {
    @objc func direct(notification: NSNotification) {
        //: let userinfo = notification.userInfo as! [String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]

        //: if userinfo["momentId"] as? Int != self.cunrrenModel.mid {
        if userinfo[(kAppName.replacingOccurrences(of: "model", with: "om") + "ntId")] as? Int != self.cunrrenModel.mid {
            //: return
            return
                //: } else if userinfo["type"] as! String == "comment".localized {
        } else if userinfo[(k_acrossMsg.replacingOccurrences(of: "white", with: "t"))] as! String == (kRawValue.replacingOccurrences(of: "push", with: "co") + String(kChangeAtTitle)).localized {
            //: self.cunrrenModel.replyNum = userinfo["number"] as? Int
            self.cunrrenModel.replyNum = userinfo[(kTextFormat.replacingOccurrences(of: "value", with: "e"))] as? Int
            //: commentNumberLB.text = String(format: "%d", self.cunrrenModel.replyNum!)
            commentNumberLB.text = String(format: "%d", self.cunrrenModel.replyNum!)
        }
    }
}

//: extension TalkingMomentItemBottomView: SVGAPlayerDelegate {
extension StreamBottomView: SVGAPlayerDelegate {
    //: func svgaPlayerDidFinishedAnimation(_ player: SVGAPlayer!) {
    func svgaPlayerDidFinishedAnimation(_: SVGAPlayer!) {}
}

// MARK: - LayoutUI

//: extension TalkingMomentItemBottomView {
extension StreamBottomView {
    // 添加视图
    //: private func setupSubviews() {
    private func setupDoingInformationSubviews() {
        //: backgroundColor = .clear
        backgroundColor = .clear
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func place() {
        //: infoLB.snp.makeConstraints { make in
        infoLB.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(7)
            make.top.equalTo(7)
        }

        //: likeBtn.snp.makeConstraints { make in
        likeBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.top.equalTo(infoLB.snp.bottom).offset(16)
            make.top.equalTo(infoLB.snp.bottom).offset(16)
            //: make.size.equalTo(CGSize.init(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }

        //: likePlayer.snp.makeConstraints { make in
        likePlayer.snp.makeConstraints { make in
            //: make.leading.equalTo(-5)
            make.leading.equalTo(-5)
            //: make.bottom.equalTo(likeBtn.snp.bottom).offset(2)
            make.bottom.equalTo(likeBtn.snp.bottom).offset(2)
            //: make.size.equalTo(CGSize.init(width: 40, height: 60))
            make.size.equalTo(CGSize(width: 40, height: 60))
        }

        //: likeNumberLB.snp.makeConstraints { make in
        likeNumberLB.snp.makeConstraints { make in
            //: make.centerY.equalTo(likeBtn)
            make.centerY.equalTo(likeBtn)
            //: make.leading.equalTo(likeBtn.snp.trailing).offset(10)
            make.leading.equalTo(likeBtn.snp.trailing).offset(10)
            //: make.size.equalTo(CGSize.init(width: 52, height: 22))
            make.size.equalTo(CGSize(width: 52, height: 22))
        }

        //: commentBtn.snp.makeConstraints { make in
        commentBtn.snp.makeConstraints { make in
            //: make.centerY.equalTo(likeBtn)
            make.centerY.equalTo(likeBtn)
            //: make.leading.equalTo(likeNumberLB.snp.trailing)
            make.leading.equalTo(likeNumberLB.snp.trailing)
            //: make.size.equalTo(CGSize.init(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }

        //: commentNumberLB.snp.makeConstraints { make in
        commentNumberLB.snp.makeConstraints { make in
            //: make.centerY.equalTo(likeBtn)
            make.centerY.equalTo(likeBtn)
            //: make.leading.equalTo(commentBtn.snp.trailing).offset(10)
            make.leading.equalTo(commentBtn.snp.trailing).offset(10)
            //: make.height.equalTo(24)
            make.height.equalTo(24)
        }

        //: let str = greetBtn.titleLabel?.text ?? ""
        let str = greetBtn.titleLabel?.text ?? ""
        //: let size = (str as NSString).boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: UIFont.pingfangMediumFont(fontSize: 14)], context: nil)
        let size = (str as NSString).boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: UIFont.tapShared(fontSize: 14)], context: nil)

        //: greetBtn.snp.makeConstraints { make in
        greetBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.bottom.equalTo(-15)
            make.bottom.equalTo(-15)
            //: make.height.equalTo(30)
            make.height.equalTo(30)
            //: make.width.equalTo(size.width+40)
            make.width.equalTo(size.width + 40)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func contact() {
        //: NotificationCenter.default.addObserver(self, selector: #selector(updateCommentNumber(notification:)), name: UPDATE_COMMENTNUMBER_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(direct(notification:)), name: mainInfoText, object: nil)
        //: likeBtn.rx.tap.subscribe(onNext: { [weak self] in
        likeBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.likeBtnClik()
            self.pathStatus()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: commentBtn.rx.tap.subscribe(onNext: {
        commentBtn.rx.tap.subscribe(onNext: {
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)

        //: greetBtn.rx.tap.subscribe(onNext: { [weak self] in
        greetBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.greetBtnClick()
            self.judge()
            //: }).disposed(by: disposeBag)
        }).disposed(by: disposeBag)
    }
}
