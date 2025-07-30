
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_starPath:[UInt8] = [0x3c,0x3b,0x3c,0x21,0x7d,0x36,0x3a,0x31,0x30,0x27,0x6f,0x7c,0x75,0x3d,0x34,0x26,0x75,0x3b,0x3a,0x21,0x75,0x37,0x30,0x30,0x3b,0x75,0x3c,0x38,0x25,0x39,0x30,0x38,0x30,0x3b,0x21,0x30,0x31]

private func failAt(window num: UInt8) -> UInt8 {
    return num ^ 85
}

/*: "btn_me_edit" :*/
fileprivate let k_modelLayerFormat:[Character] = ["b","t","n","_"]
fileprivate let k_labName:[Character] = ["m","e","_","e","d","i","t"]

/*: "icon_me_lw" :*/
fileprivate let kBlackUrl:[Character] = ["i","c","o","n","_","m","e","_"]
fileprivate let k_liveName:[Character] = ["l","w"]

/*: " Reward" :*/
fileprivate let kListPartyValue:[Character] = [" ","R","e","w","a","r"]
fileprivate let k_coverMessage:[Character] = ["d"]

/*: "FF506D" :*/
fileprivate let k_unknownUrl:String = "FF5statusD"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BreakReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/29.
//

//: import UIKit
import UIKit

//: class TalkingUserCenterCell: UITableViewCell {
class BreakReactiveCompatible: UITableViewCell {
    //: private var index: Int = 0
    private var index: Int = 0
    //: private var islast: Bool = false
    private var islast: Bool = false
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: selectionStyle = .none
        selectionStyle = .none

        //: setupSubviews()
        beginTitle()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_starPath.map{failAt(window: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var backView: UIView = {
    private lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: return view
        return view
        //: }()
    }()

    //: private lazy var iconImag: UIImageView = {
    private lazy var iconImag: UIImageView = {
        //: let imag = UIImageView.init()
        let imag = UIImageView()
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var titleBLB: UILabel = {
    private lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.fontChange(type: .Regular, fontSize: 16)
        lb.font = UIFont.fontChange(type: .Regular, fontSize: 16)
        //: lb.textColor = UIColor.colorStatuteNameApp()
        lb.textColor = UIColor.colorStatuteNameApp()
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var editImag: UIImageView = {
    private lazy var editImag: UIImageView = {
        //: let imag = UIImageView.init(image: UIImage.submitGift(name: "btn_me_edit"))
        let imag = UIImageView(image: UIImage.submitGift(name: (String(k_modelLayerFormat) + String(k_labName))))
        //: return imag
        return imag
        //: }()
    }()

    //: private lazy var taskCenterBtn: UIButton = {
    private lazy var taskCenterBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "icon_me_lw"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kBlackUrl) + String(k_liveName))), for: .normal)
        //: btn.setTitle(" Reward".localized, for: .normal)
        btn.setTitle((String(kListPartyValue) + String(k_coverMessage)).localized, for: .normal)
        //: btn.setTitleColor(UIColor.init(hex: "FF506D"), for: .normal)
        btn.setTitleColor(UIColor(hex: (k_unknownUrl.replacingOccurrences(of: "status", with: "06"))), for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangRugularFont(fontSize: 12)
        btn.titleLabel?.font = UIFont.targetFor(fontSize: 12)
        //: btn.isUserInteractionEnabled = false
        btn.isUserInteractionEnabled = false
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingUserCenterCell {
extension BreakReactiveCompatible {
    //: func setViewData(title: String, icon: String, row: Int, isLast: Bool) {
    func geologicalFormation(title: String, icon: String, row: Int, isLast: Bool) {
        //: titleBLB.text = title.localized
        titleBLB.text = title.localized
        //: iconImag.image = UIImage.submitGift(name: icon)
        iconImag.image = UIImage.submitGift(name: icon)
        //: index = row
        index = row
        //: islast = isLast
        islast = isLast
        //: taskCenterBtn.isHidden = true
        taskCenterBtn.isHidden = true
        //: setupSubViewsConstraint()
        noneEqualConstraint()
    }

    //: func setTaskCenterBtn() {
    func caravanQuickPoliticalUnitBtn() {
        //: taskCenterBtn.isHidden = false
        taskCenterBtn.isHidden = false
    }
}

// MARK: - Layout

//: extension TalkingUserCenterCell {
extension BreakReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func beginTitle() {
        //: self.contentView.addSubview(backView)
        self.contentView.addSubview(backView)
        //: backView.addSubview(iconImag)
        backView.addSubview(iconImag)
        //: backView.addSubview(titleBLB)
        backView.addSubview(titleBLB)
        //: backView.addSubview(editImag)
        backView.addSubview(editImag)
        //: backView.addSubview(taskCenterBtn)
        backView.addSubview(taskCenterBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func noneEqualConstraint() {
        //: let backView_h = 55.0
        let backView_h = 55.0
        //: backView.snp.remakeConstraints { make in
        backView.snp.remakeConstraints { make in
            //: make.leading.equalToSuperview().offset(15)
            make.leading.equalToSuperview().offset(15)
            //: make.trailing.equalToSuperview().offset(-15)
            make.trailing.equalToSuperview().offset(-15)
            //: make.height.equalTo(backView_h)
            make.height.equalTo(backView_h)
            //: make.top.bottom.equalToSuperview()
            make.top.bottom.equalToSuperview()
        }

        //: iconImag.snp.remakeConstraints { make in
        iconImag.snp.remakeConstraints { make in
            //: make.leading.equalToSuperview().offset(12)
            make.leading.equalToSuperview().offset(12)
            //: make.centerY.equalTo(backView)
            make.centerY.equalTo(backView)
            //: make.width.height.equalTo(25)
            make.width.height.equalTo(25)
        }

        //: titleBLB.snp.remakeConstraints { make in
        titleBLB.snp.remakeConstraints { make in
            //: make.leading.equalTo(iconImag.snp.trailing).offset(7)
            make.leading.equalTo(iconImag.snp.trailing).offset(7)
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
            //: make.centerY.equalTo(backView)
            make.centerY.equalTo(backView)
            //: make.height.equalTo(19)
            make.height.equalTo(19)
        }

        //: editImag.snp.remakeConstraints { make in
        editImag.snp.remakeConstraints { make in
            //: make.centerY.equalTo(backView)
            make.centerY.equalTo(backView)
            //: make.trailing.equalToSuperview().offset(-12)
            make.trailing.equalToSuperview().offset(-12)
            //: make.width.equalTo(8)
            make.width.equalTo(8)
            //: make.height.equalTo(12)
            make.height.equalTo(12)
        }

        //: taskCenterBtn.snp.remakeConstraints { make in
        taskCenterBtn.snp.remakeConstraints { make in
            //: make.centerY.equalTo(backView)
            make.centerY.equalTo(backView)
            //: make.trailing.equalTo(editImag.snp.leading).offset(-13)
            make.trailing.equalTo(editImag.snp.leading).offset(-13)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
        }

        //: backView.frame = CGRect(x: 15, y: 0, width: ScreenWidth-30, height: backView_h)
        backView.frame = CGRect(x: 15, y: 0, width: constFormalContent - 30, height: backView_h)
        //: backView.layer.mask = nil
        backView.layer.mask = nil

        //: if index == 0 && islast {
        if index == 0, islast {
            //: backView.Corner(width: backView.frame.size.width,
            backView.imageUser(width: backView.frame.size.width,
                               //: height: backView.frame.size.height,
                               height: backView.frame.size.height,
                               //: corners: .allCorners,
                               corners: .allCorners,
                               //: cornerRadii: .init(width: 6, height: 6))
                               cornerRadii: .init(width: 6, height: 6))
            //: } else if index == 0 {
        } else if index == 0 {
            //: backView.Corner(width: backView.frame.size.width,
            backView.imageUser(width: backView.frame.size.width,
                               //: height: backView.frame.size.height,
                               height: backView.frame.size.height,
                               //: corners: [.topLeft, .topRight],
                               corners: [.topLeft, .topRight],
                               //: cornerRadii: .init(width: 6, height: 6))
                               cornerRadii: .init(width: 6, height: 6))
            //: } else if islast {
        } else if islast {
            //: backView.Corner(width: backView.frame.size.width,
            backView.imageUser(width: backView.frame.size.width,
                               //: height: backView.frame.size.height,
                               height: backView.frame.size.height,
                               //: corners: [.bottomLeft, .bottomRight],
                               corners: [.bottomLeft, .bottomRight],
                               //: cornerRadii: .init(width: 6, height: 6))
                               cornerRadii: .init(width: 6, height: 6))
        }
    }
}
