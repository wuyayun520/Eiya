
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kViewHeadMessage:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "#222222" :*/
fileprivate let k_userTitle:[Character] = ["#","2"]
fileprivate let kLabelKey:String = "equalequalequalequalequal"

/*: "#EAE8FE" :*/
fileprivate let k_countStr:String = "#"
fileprivate let kTimeTableViewValue:[Character] = ["E","A","E","8","F","E"]

/*: "#D0D0D0" :*/
fileprivate let kListStr:String = "beauty var target table handle#D0D0D0"

/*: "btn_me_edit_option_delete" :*/
fileprivate let k_makeTranslationContent:String = "btn_content self button"
fileprivate let kDayFormat:String = "count returndit_opt"
fileprivate let kCloseId:String = "ion_dactual color intimate account"
fileprivate let k_infoMsg:[Character] = ["e","l","e","t","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndividualViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/31.
//

//: import UIKit
import UIKit

//: class TalkingTagCell: UICollectionViewCell {
class IndividualViewCell: UICollectionViewCell {
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: TagBtn.frame = self.bounds
        TagBtn.frame = self.bounds
        //: self.addSubview(TagBtn)
        self.addSubview(TagBtn)
        //: TagBtn.snp.makeConstraints { make in
        TagBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kViewHeadMessage.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var TagBtn: UIButton = {
    private lazy var TagBtn: UIButton = {
        //: let temp = UIButton()
        let temp = UIButton()
        //: temp.setTitle("", for: .normal)
        temp.setTitle("", for: .normal)
        //: temp.isUserInteractionEnabled = false
        temp.isUserInteractionEnabled = false
        //: temp.setTitleColor(UIColor.init(hex: "#222222"), for: .normal)
        temp.setTitleColor(UIColor(hex: (String(k_userTitle) + kLabelKey.replacingOccurrences(of: "equal", with: "2"))), for: .normal)
        //: temp.setTitleColor(UIColor.appThemeColor(), for: .selected)
        temp.setTitleColor(UIColor.increase(), for: .selected)
        //: temp.titleLabel?.font  = .fontChange(type: .Regular, fontSize: 15)
        temp.titleLabel?.font = .fontChange(type: .Regular, fontSize: 15)
        //: temp.setBackgroundColor(color: UIColor.white, forState: .normal)
        temp.languageUnitState(color: UIColor.white, forState: .normal)
        //: temp.setBackgroundColor(color: UIColor.init(hex: "#EAE8FE")!, forState: .selected)
        temp.languageUnitState(color: UIColor(hex: (k_countStr.capitalized + String(kTimeTableViewValue)))!, forState: .selected)
        //: temp.layer.masksToBounds = true
        temp.layer.masksToBounds = true
        //: temp.layer.cornerRadius = 15
        temp.layer.cornerRadius = 15
        //: temp.clipsToBounds  = true
        temp.clipsToBounds = true
        //: temp.layer.borderColor = UIColor.init(hex: "#D0D0D0")?.cgColor
        temp.layer.borderColor = UIColor(hex: (String(kListStr.suffix(7))))?.cgColor
        //: temp.layer.borderWidth = 1
        temp.layer.borderWidth = 1

        //: return temp
        return temp
        //: }()
    }()

    //: private lazy var DeleteImag: UIImageView = {
    private lazy var DeleteImag: UIImageView = {
        //: let temp = UIImageView()
        let temp = UIImageView()
        //: temp.isHidden = true
        temp.isHidden = true
        //: temp.image = UIImage.submitGift(name: "btn_me_edit_option_delete")
        temp.image = UIImage.submitGift(name: (String(k_makeTranslationContent.prefix(4)) + "me_e" + String(kDayFormat.suffix(7)) + String(kCloseId.prefix(5)) + String(k_infoMsg)))
        //: return temp
        return temp
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingTagCell {
extension IndividualViewCell {
    //: func fill(title: String)  {
    func column(title: String) {
        //: self.TagBtn.setTitle(title, for: .normal)
        self.TagBtn.setTitle(title, for: .normal)
    }

    //: func tagBtnClick(isSelete: Bool) {
    func ticket(isSelete: Bool) {
        //: TagBtn.isSelected = isSelete
        TagBtn.isSelected = isSelete
        //: changeTagBtnLayer(btn: TagBtn)
        atomicSum85(btn: TagBtn)
    }

    //: func tagBtnClick() {
    func nameTag() {
        //: TagBtn.isSelected = !TagBtn.isSelected
        TagBtn.isSelected = !TagBtn.isSelected
        //: changeTagBtnLayer(btn: TagBtn)
        atomicSum85(btn: TagBtn)
    }

    //: func tagBtnselete() {
    func shouldBtnselete() {
        //: TagBtn.isSelected = true
        TagBtn.isSelected = true
        //: changeTagBtnLayer(btn: TagBtn)
        atomicSum85(btn: TagBtn)
    }

    //: func changeTagBtnLayer(btn: UIButton) {
    func atomicSum85(btn: UIButton) {
        //: if btn.isSelected {
        if btn.isSelected {
            //: btn.layer.borderColor = UIColor.clear.cgColor
            btn.layer.borderColor = UIColor.clear.cgColor
            //: } else {
        } else {
            //: btn.layer.borderColor = UIColor.init(hex: "#D0D0D0")?.cgColor
            btn.layer.borderColor = UIColor(hex: (String(kListStr.suffix(7))))?.cgColor
        }
    }

    //: func DeleteBtnSelete() {
    func tick() {
        //: DeleteImag.isHidden = false
        DeleteImag.isHidden = false
        //: TagBtn.layer.borderColor = UIColor.white.cgColor
        TagBtn.layer.borderColor = UIColor.white.cgColor
        //: DeleteImag.isUserInteractionEnabled = false
        DeleteImag.isUserInteractionEnabled = false
    }
}
