
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kAgentDoingId:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "btn_report_selected_nor" :*/
fileprivate let kInputIndexMessage:String = "submit to model kind withbtn_repo"
fileprivate let k_backManagerValue:String = "rtable"
fileprivate let k_homeTitle:String = "_seleret view installation name"

/*: "· %@" :*/
fileprivate let k_sectionId:[Character] = ["·"," ","%","@"]

/*: "btn_report_selected_pre" :*/
fileprivate let k_titleName:String = "btn_model title hide color add"
fileprivate let k_viewPath:String = "gift true background_sel"
fileprivate let k_trunkHeadId:[Character] = ["e","c","t","e","d","_","p","r","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeViewCell.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class TalkingReportViewCell: UITableViewCell {
class MakeViewCell: UITableViewCell {
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
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: self.setupSubviews()
        self.allAppear()
        //: self.setupSubViewsConstraint()
        self.nimConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kAgentDoingId.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: lazy var reasonLabel = UILabel().then {
    lazy var reasonLabel = UILabel().then {
        //: $0.textColor = UIColor.colorStatuteNameApp()
        $0.textColor = UIColor.colorStatuteNameApp()
        //: $0.font = .fontChange(type: .Medium, fontSize: 16)
        $0.font = .fontChange(type: .Medium, fontSize: 16)
    }

    //: lazy var selectedImgView = UIImageView().then {
    lazy var selectedImgView = UIImageView().then {
        //: $0.image = UIImage.submitGift(name: "btn_report_selected_nor")
        $0.image = UIImage.submitGift(name: (String(kInputIndexMessage.suffix(8)) + k_backManagerValue.replacingOccurrences(of: "table", with: "t") + String(k_homeTitle.prefix(5)) + "cted_nor"))
    }
}

// MARK: - update || fitHeight

//: extension TalkingReportViewCell {
extension MakeViewCell {
    //: func updateReportCell(model: TalkingReportModel) {
    func carry(model: ViewReportModel) {
        //: reasonLabel.text = String(format: "· %@", model.reason)
        reasonLabel.text = String(format: "· %@", model.reason)
        //: var image = UIImage.submitGift(name: "btn_report_selected_nor")
        var image = UIImage.submitGift(name: (String(kInputIndexMessage.suffix(8)) + k_backManagerValue.replacingOccurrences(of: "table", with: "t") + String(k_homeTitle.prefix(5)) + "cted_nor"))
        //: if model.selected == true {
        if model.selected == true {
            //: image = UIImage.submitGift(name: "btn_report_selected_pre").withTintColor(UIColor.appThemeColor())
            image = UIImage.submitGift(name: (String(k_titleName.prefix(4)) + "report" + String(k_viewPath.suffix(4)) + String(k_trunkHeadId))).withTintColor(UIColor.increase())
        }
        //: selectedImgView.image = image
        selectedImgView.image = image
    }
}

// MARK: - Layout

//: extension TalkingReportViewCell {
extension MakeViewCell {
    //: private func setupSubviews() {
    private func allAppear() {
        //: contentView.addSubview(reasonLabel)
        contentView.addSubview(reasonLabel)
        //: contentView.addSubview(selectedImgView)
        contentView.addSubview(selectedImgView)
    }

    //: private func setupSubViewsConstraint() {
    private func nimConstraint() {
        //: reasonLabel.snp.makeConstraints { make in
        reasonLabel.snp.makeConstraints { make in
            //: make.leading.top.equalTo(0)
            make.leading.top.equalTo(0)
            //: make.trailing.equalTo(selectedImgView.snp.leading).offset(-10)
            make.trailing.equalTo(selectedImgView.snp.leading).offset(-10)
        }
        //: selectedImgView.snp.makeConstraints { make in
        selectedImgView.snp.makeConstraints { make in
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.centerY.equalTo(reasonLabel.snp.centerY)
            make.centerY.equalTo(reasonLabel.snp.centerY)
            //: make.size.equalTo(CGSize(width: 18, height: 18))
            make.size.equalTo(CGSize(width: 18, height: 18))
        }
    }
}
