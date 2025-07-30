
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kSizeValue:[UInt8] = [0x57,0x50,0x57,0x4a,0x16,0x5d,0x51,0x5a,0x5b,0x4c,0x4,0x17,0x1e,0x56,0x5f,0x4d,0x1e,0x50,0x51,0x4a,0x1e,0x5c,0x5b,0x5b,0x50,0x1e,0x57,0x53,0x4e,0x52,0x5b,0x53,0x5b,0x50,0x4a,0x5b,0x5a]

private func pathTop(begin num: UInt8) -> UInt8 {
    return num ^ 62
}

/*: "#30D00B" :*/
fileprivate let k_targetDailyKey:[Character] = ["#","3","0","D","0","0","B"]

/*: "icon_receivedcalls" :*/
fileprivate let k_managerUrl:String = "icolayer"
fileprivate let k_valueMsg:[Character] = ["e"]
fileprivate let k_effectStr:[Character] = ["d","c","a","l","l","s"]

/*: "Received calls" :*/
fileprivate let k_currentText:String = "Receivreturn image return table"
fileprivate let k_soundUrl:[Character] = ["l","s"]

/*: "icon_dialedcalls" :*/
fileprivate let k_titleLabName:[Character] = ["i","c","o","n","_","d","i","a","l","e","d","c","a","l","l"]
fileprivate let k_momentMsg:String = "to"

/*: "Dialed calls" :*/
fileprivate let kTouchTitle:String = "Dialedmake color"
fileprivate let kGroupKey:String = " callsreport equal"

/*: "%02i:%02i" :*/
fileprivate let kCountUrl:[Character] = ["%","0","2","i",":","%","0","2"]
fileprivate let k_formatName:[Character] = ["i"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AtThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/11/8.
//

//: import UIKit
import UIKit

//: class TalkingVideoCallTableCell: UITableViewCell {
class AtThen: UITableViewCell {
    //: var currenModel = TalkingVideoCallRecordModel()
    var currenModel = CancelHandyJSON()
    //: var seleteIndex: IndexPath?
    var seleteIndex: IndexPath?
    //: open weak var delegate: WhoLikeDelegate?
    open weak var delegate: DoingReactiveCompatible?

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
        //: self.setupSubviews()
        self.option()
        //: self.setupSubViewsConstraint()
        self.magnitudeeractionConstraint()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kSizeValue.map{pathTop(begin: $0)}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
    }

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view
        //: }()
    }()

    //: lazy var iconBtn: UIButton = {
    lazy var iconBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 40/2
        btn.layer.cornerRadius = 40 / 2
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.addTarget(self, action: #selector(iconBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(snapRecent), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var iconBorderBtn: UIButton = {
    lazy var iconBorderBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var rcordLB: UILabel = {
    lazy var rcordLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .fontChange(type: .Medium, fontSize: 16)
        label.font = .fontChange(type: .Medium, fontSize: 16)
        //: label.textColor = .colorStatuteNameApp()
        label.textColor = .colorStatuteNameApp()
        //: return label
        return label
        //: }()
    }()

    //: lazy var nameLB: UILabel = {
    lazy var nameLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .fontChange(type: .Regular, fontSize: 14)
        label.font = .fontChange(type: .Regular, fontSize: 14)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .childMenu()
        //: return label
        return label
        //: }()
    }()

    //: lazy var rcordImg: UIImageView = {
    lazy var rcordImg: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: return img
        return img
        //: }()
    }()

    //: lazy var timeLB: UILabel = {
    lazy var timeLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .fontChange(type: .Regular, fontSize: 12)
        label.font = .fontChange(type: .Regular, fontSize: 12)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .childMenu()
        //: return label
        return label
        //: }()
    }()

    //: lazy var durationLB: UILabel = {
    lazy var durationLB: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .fontChange(type: .Medium, fontSize: 10)
        label.font = .fontChange(type: .Medium, fontSize: 10)
        //: label.textColor = .appValueDetailColor()
        label.textColor = .childMenu()
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: return label
        return label
        //: }()
    }()

    //: lazy var onlineView: UIView = {
    lazy var onlineView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.init(hex: "#30D00B")
        view.backgroundColor = UIColor(hex: (String(k_targetDailyKey)))
        //: view.layer.cornerRadius = 5
        view.layer.cornerRadius = 5
        //: view.isHidden = true
        view.isHidden = true
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingVideoCallTableCell {
extension AtThen {
    //: func setVideoCallCell(model: TalkingVideoCallRecordModel) {
    func fromWith(model: CancelHandyJSON) {
        //: currenModel = model
        currenModel = model

        //: iconBtn.setUrlImage(urlStr: model.headPic)
        iconBtn.successOn(urlStr: model.headPic)
        //: if !model.headPicFrame.isEmptyString {
        if !model.headPicFrame.isEmptyString {
            //: iconBorderBtn.isHidden = false
            iconBorderBtn.isHidden = false
            //: iconBorderBtn.setHeadFrameUrlImage(urlStr: model.headPicFrame)
            iconBorderBtn.templeVisualisationSetFrame(urlStr: model.headPicFrame)
            //: } else {
        } else {
            //: iconBorderBtn.isHidden = true
            iconBorderBtn.isHidden = true
        }
        //: if model.callStatus == 0 {
        if model.callStatus == 0 {
            //: rcordImg.image = UIImage.submitGift(name: "icon_receivedcalls")
            rcordImg.image = UIImage.submitGift(name: (k_managerUrl.replacingOccurrences(of: "layer", with: "n") + "_receiv" + String(k_valueMsg) + String(k_effectStr)))
            //: rcordLB.text = "Received calls".localized
            rcordLB.text = (String(k_currentText.prefix(6)) + "ed cal" + String(k_soundUrl)).localized
            //: } else {
        } else {
            //: rcordImg.image = UIImage.submitGift(name: "icon_dialedcalls")
            rcordImg.image = UIImage.submitGift(name: (String(k_titleLabName) + k_momentMsg.replacingOccurrences(of: "to", with: "s")))
            //: rcordLB.text = "Dialed calls".localized
            rcordLB.text = (String(kTouchTitle.prefix(6)) + String(kGroupKey.prefix(6))).localized
        }
        //: let ductaion = Double(model.duration)
        let ductaion = Double(model.duration)
        //: let min = floor(ductaion / 60)
        let min = floor(ductaion / 60)
        //: let sec = floor(ductaion.truncatingRemainder(dividingBy: 60))
        let sec = floor(ductaion.truncatingRemainder(dividingBy: 60))
        //: durationLB.text = String(format: "%02i:%02i", Int(min), Int(sec))
        durationLB.text = String(format: "%02i:%02i", Int(min), Int(sec))
        //: nameLB.text = model.nickname
        nameLB.text = model.nickname
        //: timeLB.text = model.startTime
        timeLB.text = model.startTime
        //: onlineView.isHidden = model.onlineStatus == 0
        onlineView.isHidden = model.onlineStatus == 0
    }

    /// 用户详情
    //: @objc func iconBtnClick() {
    @objc func snapRecent() {
        //: AddReactiveCompatible.share.func__pushToUserDetailVC(uid: "\(currenModel.uid)")
        AddReactiveCompatible.share.afterTo(uid: "\(currenModel.uid)")
    }
}

// MARK: - UI

//: extension TalkingVideoCallTableCell {
extension AtThen {
    //: private func setupSubviews() {
    private func option() {
        //: contentView.addSubview(backView)
        contentView.addSubview(backView)
        //: backView.addSubview(iconBtn)
        backView.addSubview(iconBtn)
        //: backView.addSubview(iconBorderBtn)
        backView.addSubview(iconBorderBtn)
        //: backView.addSubview(nameLB)
        backView.addSubview(nameLB)
        //: backView.addSubview(rcordImg)
        backView.addSubview(rcordImg)
        //: backView.addSubview(durationLB)
        backView.addSubview(durationLB)
        //: backView.addSubview(rcordLB)
        backView.addSubview(rcordLB)
        //: backView.addSubview(timeLB)
        backView.addSubview(timeLB)
        //: iconBtn.addSubview(onlineView)
        iconBtn.addSubview(onlineView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func magnitudeeractionConstraint() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: rcordImg.snp.makeConstraints { make in
        rcordImg.snp.makeConstraints { make in
            //: make.leading.equalTo(21)
            make.leading.equalTo(21)
            //: make.top.equalTo(15)
            make.top.equalTo(15)
            //: make.width.height.equalTo(16)
            make.width.height.equalTo(16)
        }
        //: durationLB.snp.makeConstraints { make in
        durationLB.snp.makeConstraints { make in
            //: make.centerX.equalTo(rcordImg)
            make.centerX.equalTo(rcordImg)
            //: make.top.equalTo(rcordImg.snp.bottom).offset(2)
            make.top.equalTo(rcordImg.snp.bottom).offset(2)
            //: make.height.equalTo(12)
            make.height.equalTo(12)
        }

        //: iconBtn.snp.makeConstraints { make in
        iconBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(durationLB.snp.trailing).offset(10)
            make.leading.equalTo(durationLB.snp.trailing).offset(10)
            //: make.top.equalTo(10)
            make.top.equalTo(10)
            //: make.size.equalTo(40)
            make.size.equalTo(40)
        }
        //: iconBorderBtn.snp.makeConstraints { make in
        iconBorderBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(durationLB.snp.trailing).offset(7)
            make.leading.equalTo(durationLB.snp.trailing).offset(7)
            //: make.top.equalTo(7)
            make.top.equalTo(7)
            //: make.size.equalTo(46)
            make.size.equalTo(46)
        }
        //: rcordLB.snp.makeConstraints { make in
        rcordLB.snp.makeConstraints { make in
            //: make.leading.equalTo(iconBtn.snp.trailing).offset(8)
            make.leading.equalTo(iconBtn.snp.trailing).offset(8)
            //: make.top.equalTo(iconBtn)
            make.top.equalTo(iconBtn)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }
        //: nameLB.snp.makeConstraints { make in
        nameLB.snp.makeConstraints { make in
            //: make.leading.equalTo(rcordLB)
            make.leading.equalTo(rcordLB)
            //: make.top.equalTo(rcordLB.snp.bottom).offset(2)
            make.top.equalTo(rcordLB.snp.bottom).offset(2)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
        }

        //: timeLB.snp.makeConstraints { make in
        timeLB.snp.makeConstraints { make in
            //: make.top.equalTo(14)
            make.top.equalTo(14)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.height.equalTo(14)
            make.height.equalTo(14)
        }
        //: onlineView.snp.makeConstraints { make in
        onlineView.snp.makeConstraints { make in
            //: make.trailing.equalToSuperview()
            make.trailing.equalToSuperview()
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
            //: make.size.equalTo(10)
            make.size.equalTo(10)
        }
    }

    /// 事件绑定
    //: private func bindInteraction() {
    private func somebodyTotaleraction() {}
}
