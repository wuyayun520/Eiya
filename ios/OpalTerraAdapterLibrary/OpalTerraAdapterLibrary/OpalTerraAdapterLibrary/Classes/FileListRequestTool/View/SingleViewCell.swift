
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_equalData:[UInt8] = [0x0,0x7,0x0,0x1d,0x41,0xa,0x6,0xd,0xc,0x1b,0x53,0x40,0x49,0x1,0x8,0x1a,0x49,0x7,0x6,0x1d,0x49,0xb,0xc,0xc,0x7,0x49,0x0,0x4,0x19,0x5,0xc,0x4,0xc,0x7,0x1d,0xc,0xd]

/*: "Gifts required for the photo" :*/
fileprivate let kTotalData:String = "Giftstype equal frame"
fileprivate let kSocialId:[Character] = ["i","r","e"]
fileprivate let kSexPath:[Character] = ["d"," ","f","o","r"," ","t","h","e"," ","p","h","o","t","o"]

/*: "Choose a gift" :*/
fileprivate let k_routeFormat:String = "in appChoos"
fileprivate let kMakeUrl:String = "if modele a gift"

/*: "#7189F7" :*/
fileprivate let kMainPath:[Character] = ["#","7","1","8","9","F"]
fileprivate let kSharedPath:[Character] = ["7"]

/*: "giftName" :*/
fileprivate let kReadId:[Character] = ["g","i","f","t","N","a","m"]
fileprivate let kLipData:String = "E"

/*: "giftPrice" :*/
fileprivate let kSessionValue:[Character] = ["g","i"]
fileprivate let k_limitButtonInTitle:String = "ftPricevar outside view"

/*: "  %@(%@ Gold coins)" :*/
fileprivate let kPortraitName:String = "  %@"
fileprivate let k_commonValue:String = "can liveld c"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SingleViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/27.
//

//: import UIKit
import UIKit

//: typealias SeleteGiftBlock = (_ giftId: String) -> Void
typealias SeleteGiftBlock = (_ giftId: String) -> Void

//: class TalkingGreetPhotoTableCell: UITableViewCell {
class SingleViewCell: UITableViewCell {
    //: var seleteGiftBlock: SeleteGiftBlock?
    var seleteGiftBlock: SeleteGiftBlock?

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
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
        //: setupSubviews()
        subviewsEqual()
        //: setupSubViewsConstraint()
        messageDown()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_equalData.map{$0^105}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var backGiftView: UIView = {
    lazy var backGiftView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view
        //: }()
    }()

    //: lazy var giftLaB: UILabel = {
    lazy var giftLaB: UILabel = {
        //: let LB = UILabel.init()
        let LB = UILabel()
        //: LB.textColor = UIColor.colorStatuteNameApp()
        LB.textColor = UIColor.colorStatuteNameApp()
        //: LB.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        LB.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        //: LB.text = "Gifts required for the photo".localized
        LB.text = (String(kTotalData.prefix(5)) + " requ" + String(kSocialId) + String(kSexPath)).localized
        //: LB.numberOfLines = 0
        LB.numberOfLines = 0
        //: return LB
        return LB
        //: }()
    }()

    //: lazy var giftMsgBtn: UIButton = {
    lazy var giftMsgBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitleColor(.colorStatuteNameApp(), for: .normal)
        btn.setTitleColor(.colorStatuteNameApp(), for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        //: btn.setBackgroundColor(color: UIColor.postColor(), forState: .normal)
        btn.languageUnitState(color: UIColor.postColor(), forState: .normal)
        //: btn.layer.cornerRadius = 4
        btn.layer.cornerRadius = 4
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(chooseGiftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(snapEmpty), for: .touchUpInside)
        //: btn.contentHorizontalAlignment = LanguageManager.shared.direction == .rightToLeft ? .right:.left
        btn.contentHorizontalAlignment = MakeLanguageManager.shared.direction == .rightToLeft ? .right : .left
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var chooseGiftBtn: UIButton = {
    private lazy var chooseGiftBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(chooseGiftBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(snapEmpty), for: .touchUpInside)
        //: let str = "Choose a gift".localized
        let str = (String(k_routeFormat.suffix(5)) + String(kMakeUrl.suffix(8))).localized
        //: let attributes = [.foregroundColor: UIColor(hex: "#7189F7")!, .font: UIFont.fontChange(type: .Regular, fontSize: 15), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        let attributes = [.foregroundColor: UIColor(hex: (String(kMainPath) + String(kSharedPath)))!, .font: UIFont.fontChange(type: .Regular, fontSize: 15), .underlineStyle: 1] as [NSAttributedString.Key: Any]
        //: let attrS = NSAttributedString(string: str, attributes: attributes)
        let attrS = NSAttributedString(string: str, attributes: attributes)
        //: btn.setAttributedTitle(attrS, for: .normal)
        btn.setAttributedTitle(attrS, for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftView: TalkingChatGiftView = {
    private lazy var giftView: MenuView = {
        //: let giftV = TalkingChatGiftView(style: .intimatePhoto, titlesArr: [.Hot])
        let giftV = MenuView(style: .intimatePhoto, titlesArr: [.Hot])
        //: giftV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        giftV.frame = CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue)
        //: return giftV
        return giftV
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingGreetPhotoTableCell {
extension SingleViewCell {
    //: @objc func chooseGiftBtnClick() {
    @objc func snapEmpty() {
        //: func__chooseGift()
        backMedia()
    }

    //: func setGiftMsgLab(dic: Dictionary<String, Any>) {
    func active(dic: [String: Any]) {
        //: let giftName = dic["giftName"] as? String ?? ""
        let giftName = dic[(String(kReadId) + kLipData.lowercased())] as? String ?? ""
        //: let giftPrice = dic["giftPrice"] as? Int ?? 0
        let giftPrice = dic[(String(kSessionValue) + String(k_limitButtonInTitle.prefix(7)))] as? Int ?? 0
        //: self.giftMsgBtn.setTitle("  %@(%@ Gold coins)".localizedArguments(giftName, giftPrice), for: .normal)
        self.giftMsgBtn.setTitle((kPortraitName.capitalized + "(%@ Go" + String(k_commonValue.suffix(4)) + "oins)").edgeDelay(giftName, giftPrice), for: .normal)
    }
}

//: extension TalkingGreetPhotoTableCell {
extension SingleViewCell {
    //: func func__chooseGift() {
    func backMedia() {
        //: TalkingChatGiftManager.share.func__sendGiftEvent(type: .intimatePhoto, completion: {
        AppNameGiftManager.share.searchCompletion(type: .intimatePhoto, completion: {
            //: self.func__showGiftChoiceView()
            self.upImage()
            //: })
        })
    }

    //: func func__showGiftChoiceView() {
    func upImage() {
        //: giftView.updateGiftInfo(needReload: true, mf_coin: DistanceAppManager.share.loginUserMode.mf_coin)
        giftView.dataGift(needReload: true, mf_coin: DistanceAppManager.share.loginUserMode.mf_coin)
        //: self.window?.addSubview(giftView)
        self.window?.addSubview(giftView)
        //: giftView.showView()
        giftView.paradigmView()
        //: giftView.okActionBlock = { [weak self] giftModel in
        giftView.okActionBlock = { [weak self] giftModel in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.giftMsgBtn.setTitle("  %@(%@ Gold coins)".localizedArguments(giftModel.name, giftModel.price), for: .normal)
            self.giftMsgBtn.setTitle((kPortraitName.capitalized + "(%@ Go" + String(k_commonValue.suffix(4)) + "oins)").edgeDelay(giftModel.name, giftModel.price), for: .normal)
            //: if self.seleteGiftBlock != nil {
            if self.seleteGiftBlock != nil {
                //: self.seleteGiftBlock!(giftModel.gid)
                self.seleteGiftBlock!(giftModel.gid)
            }
        }
    }
}

//: extension TalkingGreetPhotoTableCell {
extension SingleViewCell {
    // 添加视图
    //: private func setupSubviews() {
    private func subviewsEqual() {
        //: self.contentView.addSubview(backGiftView)
        self.contentView.addSubview(backGiftView)
        //: backGiftView.addSubview(giftLaB)
        backGiftView.addSubview(giftLaB)
        //: backGiftView.addSubview(giftMsgBtn)
        backGiftView.addSubview(giftMsgBtn)
        //: backGiftView.addSubview(chooseGiftBtn)
        backGiftView.addSubview(chooseGiftBtn)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func messageDown() {
        //: backGiftView.snp.makeConstraints { make in
        backGiftView.snp.makeConstraints { make in
            //: make.top.bottom.equalToSuperview()
            make.top.bottom.equalToSuperview()
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
        }
        //: giftLaB.snp.makeConstraints { make in
        giftLaB.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.top.equalTo(15)
            make.top.equalTo(15)
        }
        //: giftMsgBtn.snp.makeConstraints { make in
        giftMsgBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.top.equalTo(giftLaB.snp.bottom).offset(15)
            make.top.equalTo(giftLaB.snp.bottom).offset(15)
            //: make.height.equalTo(49)
            make.height.equalTo(49)
        }
        //: chooseGiftBtn.snp.makeConstraints { make in
        chooseGiftBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.top.equalTo(giftMsgBtn.snp.bottom).offset(6)
            make.top.equalTo(giftMsgBtn.snp.bottom).offset(6)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
    }
}
