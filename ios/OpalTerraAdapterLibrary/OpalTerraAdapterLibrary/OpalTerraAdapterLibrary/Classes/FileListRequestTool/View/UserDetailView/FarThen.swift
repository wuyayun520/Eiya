
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_aUrl:[UInt8] = [0x65,0x6a,0x65,0x70,0x24,0x5f,0x6b,0x60,0x61,0x6e,0x36,0x25,0x1c,0x64,0x5d,0x6f,0x1c,0x6a,0x6b,0x70,0x1c,0x5e,0x61,0x61,0x6a,0x1c,0x65,0x69,0x6c,0x68,0x61,0x69,0x61,0x6a,0x70,0x61,0x60]

fileprivate func exhibitView(make num: UInt8) -> UInt8 {
    let value = Int(num) - 252
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "About me" :*/
fileprivate let k_tipFormat:[Character] = ["A","b","o","u","t"," ","m","e"]

/*: "My interests" :*/
fileprivate let k_aId:String = "title channel normalMy i"
fileprivate let k_changeText:[Character] = ["s"]

/*: "#7166F9" :*/
fileprivate let k_toFormat:[Character] = ["#","7","1","6","6","F","9"]

/*: "#EAE8FE" :*/
fileprivate let k_collectAppEqualText:String = "table make content#E"
fileprivate let k_centerData:String = "AvoiceFE"

/*: "#4D94FF" :*/
fileprivate let k_userArrayProductValue:String = "else of dismiss#4D94FF"

/*: "#DBEAFF" :*/
fileprivate let kSignLogValue:[Character] = ["#"]
fileprivate let kEqualName:[Character] = ["D","B","E","A","F","F"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FarThen.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/8.
//

//: import UIKit
import UIKit

//: class TalkingUserDetailTagCell: UITableViewCell {
class FarThen: UITableViewCell {
    //: var titleArray: [String] = []
    var titleArray: [String] = []
    //: var tagAreaHeight: CGFloat = 0
    var tagAreaHeight: CGFloat = 0
    //: var cellType: TUserDetailCellType = TUserDetailCellType.aboutMeType
    var cellType: CustomCellType = .aboutMeType
    //: var collectionLayoutSubviewBlock: ((_ fitHeight: CGFloat) -> Void)?
    var collectionLayoutSubviewBlock: ((_ fitHeight: CGFloat) -> Void)?

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.selectionStyle = .none
        self.selectionStyle = .none
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.contentView.backgroundColor = .clear
        self.contentView.backgroundColor = .clear

        //: setupSubviews()
        searched()
        //: setupSubViewsConstraint()
        quantityerchangeConstraint()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_aUrl.map{exhibitView(make: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy load

    //: private lazy var titleLab: UILabel = {
    private lazy var titleLab: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = .fontChange(type: .Medium, fontSize: 17)
        lb.font = .fontChange(type: .Medium, fontSize: 17)
        //: lb.textColor = .colorStatuteNameApp()
        lb.textColor = .colorStatuteNameApp()
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var collectionView: UICollectionView = {
    private lazy var collectionView: UICollectionView = {
        //: let layout: TalkingTagCollectionFlowLayout = TalkingTagCollectionFlowLayout()
        let layout = AppFlowLayout()
        //: layout.delegate = self
        layout.delegate = self

        //: let collect = UICollectionView(frame: .zero, collectionViewLayout: layout)
        let collect = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //: collect.backgroundColor = .clear
        collect.backgroundColor = .clear
        //: collect.delegate = self
        collect.delegate = self
        //: collect.dataSource = self
        collect.dataSource = self
        //: collect.isScrollEnabled = false
        collect.isScrollEnabled = false
        //: collect.register(TalkingUserDetailTagItemCell.self, forCellWithReuseIdentifier: TalkingUserDetailTagItemCell.className())
        collect.register(BasicViewCell.self, forCellWithReuseIdentifier: BasicViewCell.className())
        //: return collect
        return collect
        //: }()
    }()
}

// MARK: - update

//: extension TalkingUserDetailTagCell {
extension FarThen {
    //: func configTagCellWithDataModel(type: TUserDetailCellType, userModel: TalkingUserInfoModel) {
    func restriction(type: CustomCellType, userModel: GroupTransformable) {
        //: cellType = type
        cellType = type
        //: if type == .aboutMeType {
        if type == .aboutMeType {
            //: titleLab.text = "About me".localized
            titleLab.text = (String(k_tipFormat)).localized
            //: titleArray = userModel.aboutMe
            titleArray = userModel.aboutMe

            //: } else if type == .intersetsType {
        } else if type == .intersetsType {
            //: titleLab.text = "My interests".localized
            titleLab.text = (String(k_aId.suffix(4)) + "nterest" + String(k_changeText)).localized
            //: titleArray = userModel.interest
            titleArray = userModel.interest
        }

        //: collectionView.reloadData()
        collectionView.reloadData()
    }
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout

//: extension TalkingUserDetailTagCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension FarThen: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //: return CGSize(width: labelWidth(titleArray[indexPath.item], 20), height: 30)
        return CGSize(width: userCell(titleArray[indexPath.item], 20), height: 30)
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return self.titleArray.count
        return self.titleArray.count
    }

    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return 1
        return 1
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell: TalkingUserDetailTagItemCell = collectionView.dequeueReusableCell(withReuseIdentifier: TalkingUserDetailTagItemCell.className(), for: indexPath) as! TalkingUserDetailTagItemCell
        let cell: BasicViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: BasicViewCell.className(), for: indexPath) as! BasicViewCell
        //: cell.tagLabel.text = titleArray[indexPath.row]
        cell.tagLabel.text = titleArray[indexPath.row]
        //: if cellType == .aboutMeType {
        if cellType == .aboutMeType {
            //: cell.tagLabel.textColor = UIColor(hex: "#7166F9")
            cell.tagLabel.textColor = UIColor(hex: (String(k_toFormat)))
            //: cell.bgView.backgroundColor = UIColor(hex: "#EAE8FE")
            cell.bgView.backgroundColor = UIColor(hex: (String(k_collectAppEqualText.suffix(2)) + k_centerData.replacingOccurrences(of: "voice", with: "E8")))

            //: } else if cellType == .intersetsType  {
        } else if cellType == .intersetsType {
            //: cell.tagLabel.textColor = UIColor(hex: "#4D94FF")
            cell.tagLabel.textColor = UIColor(hex: (String(k_userArrayProductValue.suffix(7))))
            //: cell.bgView.backgroundColor = UIColor(hex: "#DBEAFF")
            cell.bgView.backgroundColor = UIColor(hex: (String(kSignLogValue) + String(kEqualName)))
        }
        //: return cell
        return cell
    }

    //: func labelWidth(_ text: String, _ height: CGFloat) -> CGFloat {
    func userCell(_ text: String, _ height: CGFloat) -> CGFloat {
        //: let size = CGSize(width: CGFloat(MAXFLOAT), height: height)
        let size = CGSize(width: CGFloat(MAXFLOAT), height: height)
        //: let font = UIFont.systemFont(ofSize: 15)
        let font = UIFont.systemFont(ofSize: 15)
        //: let attributes = [NSAttributedString.Key.font: font]
        let attributes = [NSAttributedString.Key.font: font]
        //: let labelSize = NSString(string: text).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
        let labelSize = NSString(string: text).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
        //: return labelSize.width + 20
        return labelSize.width + 20
    }
}

// MARK: - BulgeLayoutDelegate

//: extension TalkingUserDetailTagCell: TalkingTagCollectionFlowLayoutDelegate {
extension FarThen: BulgeLayoutDelegate {
    //: func getCollectuonViewHeight(layoutH: CGFloat) {
    func showHigh(layoutH: CGFloat) {
        //: guard self.tagAreaHeight != layoutH else {
        guard self.tagAreaHeight != layoutH else {
            //: return
            return
        }
        //: self.tagAreaHeight = layoutH
        self.tagAreaHeight = layoutH
        //: if self.collectionLayoutSubviewBlock != nil {
        if self.collectionLayoutSubviewBlock != nil {
            //: self.collectionLayoutSubviewBlock!(layoutH)
            self.collectionLayoutSubviewBlock!(layoutH)
        }
    }
}

// MARK: Layout

//: extension TalkingUserDetailTagCell {
extension FarThen {
    //: private func setupSubviews() {
    private func searched() {
        //: contentView.addSubview(titleLab)
        contentView.addSubview(titleLab)
        //: contentView.addSubview(collectionView)
        contentView.addSubview(collectionView)
    }

    //: private func setupSubViewsConstraint() {
    private func quantityerchangeConstraint() {
        //: titleLab.snp.makeConstraints { make in
        titleLab.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.top.equalTo(0)
            make.top.equalTo(0)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }

        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.top.equalTo(titleLab.snp.bottom).offset(15)
            make.top.equalTo(titleLab.snp.bottom).offset(15)
            //: make.leading.equalTo(12)
            make.leading.equalTo(12)
            //: make.trailing.equalTo(-12)
            make.trailing.equalTo(-12)
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
}
