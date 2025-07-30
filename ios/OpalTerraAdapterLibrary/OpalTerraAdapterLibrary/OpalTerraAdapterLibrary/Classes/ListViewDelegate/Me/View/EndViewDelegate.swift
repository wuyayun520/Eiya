
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_listStr:[UInt8] = [0x14,0x13,0x14,0x9,0x55,0x1e,0x12,0x19,0x18,0xf,0x47,0x54,0x5d,0x15,0x1c,0xe,0x5d,0x13,0x12,0x9,0x5d,0x1f,0x18,0x18,0x13,0x5d,0x14,0x10,0xd,0x11,0x18,0x10,0x18,0x13,0x9,0x18,0x19]

private func toPage(data num: UInt8) -> UInt8 {
    return num ^ 125
}

/*: "icon_me_wallet" :*/
fileprivate let k_currentStr:[Character] = ["i","c","o","n","_","m","e","_","w","a"]
fileprivate let kLeadingMessage:[Character] = ["l","l","e","t"]

/*: "icon_me_dgc" :*/
fileprivate let k_modelData:String = "conversation might icon equalicon_me_"
fileprivate let k_executeValue:String = "dgpast"

/*: "icon_me_friends" :*/
fileprivate let kManagerMessage:String = "icon_to tag model"
fileprivate let kInfoResultMsg:[Character] = ["m","e","_","f","r","i","e","n","d","s"]

/*: "xicon_me_posts" :*/
fileprivate let kMaxWithData:String = "xicoconversation"
fileprivate let kViewFrontVideoMessage:[Character] = ["_","m","e","_","p","o","s","t","s"]

/*: "icon_me_Service" :*/
fileprivate let kStrengthId:[Character] = ["i","c","o","n","_","m","e","_","S","e","r","v","i"]
fileprivate let k_hiddenId:[Character] = ["c","e"]

/*: "icon_me_game" :*/
fileprivate let k_cellTopValue:String = "icon_mimage in data let"
fileprivate let k_mediumTitle:String = "of"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EndViewDelegate.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeThreeColumnsCell: UITableViewCell {
class EndViewDelegate: UITableViewCell {
    //: private var tupleData = [(CenterItemType, String)]()
    private var tupleData = [(CaptureTextProtocol, String)]()
    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.selectionStyle = .none
        self.selectionStyle = .none

        //: setupSubviews()
        streetSmartSubviews()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_listStr.map{toPage(data: $0)}, encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var collectionView: UICollectionView = {
    private lazy var collectionView: UICollectionView = {
        //: let layout = UICollectionViewFlowLayout()
        let layout = UICollectionViewFlowLayout()
        //: layout.minimumLineSpacing = 0
        layout.minimumLineSpacing = 0
        //: layout.minimumInteritemSpacing = 0
        layout.minimumInteritemSpacing = 0
        //: layout.scrollDirection = .vertical
        layout.scrollDirection = .vertical
        //: let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        //: collectionView.backgroundColor = .white
        collectionView.backgroundColor = .white
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        //: collectionView.layer.cornerRadius = 6
        collectionView.layer.cornerRadius = 6
        //: collectionView.layer.masksToBounds = true
        collectionView.layer.masksToBounds = true
        //: collectionView.register(TalkingMeItemCell.self, forCellWithReuseIdentifier: TalkingMeItemCell.className())
        collectionView.register(ConstituentModelReusableView.self, forCellWithReuseIdentifier: ConstituentModelReusableView.className())
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: collectionView.contentInsetAdjustmentBehavior = .never
            collectionView.contentInsetAdjustmentBehavior = .never
        }
        //: return collectionView
        return collectionView
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingMeThreeColumnsCell {
extension EndViewDelegate {
    //: func setViewData() {
    func putDownData() {
        //: if DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
        if DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue { // 默认模式
            //: if DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue {
            if DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue { // 女性
                //: tupleData = [(.My_Wallet, "icon_me_wallet"),
                tupleData = [(.My_Wallet, (String(k_currentStr) + String(kLeadingMessage))),
                             //: (.Daily_Gold_Coins, "icon_me_dgc"),
                             (.Daily_Gold_Coins, (String(k_modelData.suffix(8)) + k_executeValue.replacingOccurrences(of: "past", with: "c"))),
                             //: (.Invite_Friends, "icon_me_friends"),
                             (.Invite_Friends, (String(kManagerMessage.prefix(5)) + String(kInfoResultMsg))),
                             //: (.My_Posts, "xicon_me_posts"),
                             (.My_Posts, (kMaxWithData.replacingOccurrences(of: "conversation", with: "n") + String(kViewFrontVideoMessage))),
                             //: (.My_Assistant, "icon_me_Service")]
                             (.My_Assistant, (String(kStrengthId) + String(k_hiddenId)))]

                //: } else {
            } else {
                //: tupleData = [(.Daily_Gold_Coins, "icon_me_dgc"),
                tupleData = [(.Daily_Gold_Coins, (String(k_modelData.suffix(8)) + k_executeValue.replacingOccurrences(of: "past", with: "c"))),
                             //: (.Invite_Friends, "icon_me_friends"),
                             (.Invite_Friends, (String(kManagerMessage.prefix(5)) + String(kInfoResultMsg))),
                             //: (.My_Posts, "xicon_me_posts"),
                             (.My_Posts, (kMaxWithData.replacingOccurrences(of: "conversation", with: "n") + String(kViewFrontVideoMessage))),
                             //: (.My_Assistant, "icon_me_Service")]
                             (.My_Assistant, (String(kStrengthId) + String(k_hiddenId)))]
            }
            // 游戏入口
            //: if DistanceAppManager.share.appUserConfigMode.gameShowBit == 1 ||
            if DistanceAppManager.share.appUserConfigMode.gameShowBit == 1 ||
                //: DistanceAppManager.share.appUserConfigMode.gameShowBit == 3 {
                DistanceAppManager.share.appUserConfigMode.gameShowBit == 3
            {
                //: tupleData.append((.My_Slots, "icon_me_game"))
                tupleData.append((.My_Slots, (String(k_cellTopValue.prefix(6)) + "e_ga" + k_mediumTitle.replacingOccurrences(of: "of", with: "me"))))
            }

            //: } else {
        } else { // 审核模式
            //: tupleData = [(.Daily_Gold_Coins, "icon_me_dgc"),
            tupleData = [(.Daily_Gold_Coins, (String(k_modelData.suffix(8)) + k_executeValue.replacingOccurrences(of: "past", with: "c"))),
                         //: (.My_Posts, "xicon_me_posts"),
                         (.My_Posts, (kMaxWithData.replacingOccurrences(of: "conversation", with: "n") + String(kViewFrontVideoMessage))),
                         //: (.My_Assistant, "icon_me_Service")]
                         (.My_Assistant, (String(kStrengthId) + String(k_hiddenId)))]
        }

        //: self.collectionView.reloadData()
        self.collectionView.reloadData()
        //: setupSubViewsConstraint()
        mid()
    }
}

// MARK: - Delegate

//: extension TalkingMeThreeColumnsCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension EndViewDelegate: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return 1
        return 1
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return self.tupleData.count
        return self.tupleData.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TalkingMeItemCell.className(), for: indexPath) as! TalkingMeItemCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ConstituentModelReusableView.className(), for: indexPath) as! ConstituentModelReusableView
        //: cell.refreshItem(tupleData[indexPath.row])
        cell.modelMessage(tupleData[indexPath.row])
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: let data = tupleData[indexPath.row]
        let data = tupleData[indexPath.row]
        //: switch data.0 {
        switch data.0 {
        //: case .My_Wallet:
        case .My_Wallet:
            //: AddReactiveCompatible.share.func__pushToWebVC(webViewType: .RechargeFullPage)
            AddReactiveCompatible.share.overCapacity(webViewType: .RechargeFullPage)

        //: case .Daily_Gold_Coins:
        case .Daily_Gold_Coins:
            //: AddReactiveCompatible.share.func__pushToSubscribePageWebVC()
            AddReactiveCompatible.share.belowWith()

        //: case .Invite_Friends:
        case .Invite_Friends:
            //: AddReactiveCompatible.share.func__pushToWebVC(webViewType: .InviteFriends)
            AddReactiveCompatible.share.overCapacity(webViewType: .InviteFriends)

        //: case .My_Posts:
        case .My_Posts:
            //: let vc = TalkingUserMomentVC.init(uid: DistanceAppManager.share.loginUserMode.userID)
            let vc = SizeDataSource(uid: DistanceAppManager.share.loginUserMode.userID)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.selectStart()?.navigationController?.pushViewController(vc, animated: true)

        //: case .My_Assistant:
        case .My_Assistant:
            //: AddReactiveCompatible.share.func__pushToWebVC(webViewType: .FAQ)
            AddReactiveCompatible.share.overCapacity(webViewType: .FAQ)

        //: case .My_Slots:
        case .My_Slots:
            //: let vc = TalkingGameListViewController()
            let vc = ViewFlowLayout()
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.selectStart()?.navigationController?.pushViewController(vc, animated: true)

        //: default: break
        default: break
        }
    }

    // MARK: - UICollectionViewDelegateFlowLayout

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
        //: return CGSize(width: (ScreenWidth-30)/3, height: 84.0)
        return CGSize(width: (constFormalContent - 30) / 3, height: 84.0)
    }
}

// MARK: - Layout

//: extension TalkingMeThreeColumnsCell {
extension EndViewDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func streetSmartSubviews() {
        //: self.contentView.addSubview(collectionView)
        self.contentView.addSubview(collectionView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func mid() {
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalToSuperview().offset(15)
            make.leading.equalToSuperview().offset(15)
            //: make.trailing.equalToSuperview().offset(-15)
            make.trailing.equalToSuperview().offset(-15)
            //: let height = ceil(Double(self.tupleData.count)/Double(3))*84+15
            let height = ceil(Double(self.tupleData.count) / Double(3)) * 84 + 15
            //: make.height.equalTo(height)
            make.height.equalTo(height)
            //: make.bottom.equalToSuperview().offset(-12)
            make.bottom.equalToSuperview().offset(-12)
        }
    }
}

// MARK: - ConstituentModelReusableView

//: class TalkingMeItemCell: UICollectionViewCell {
class ConstituentModelReusableView: UICollectionViewCell {
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_listStr.map{toPage(data: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = .white
        self.backgroundColor = .white
        //: self.contentView.addSubview(icon)
        self.contentView.addSubview(icon)
        //: icon.snp.makeConstraints { make in
        icon.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(18)
            make.top.equalToSuperview().offset(18)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 38, height: 38))
            make.size.equalTo(CGSize(width: 38, height: 38))
        }

        //: self.contentView.addSubview(nameLab)
        self.contentView.addSubview(nameLab)
        //: nameLab.snp.makeConstraints { make in
        nameLab.snp.makeConstraints { make in
            //: make.top.equalTo(icon.snp.bottom).offset(8)
            make.top.equalTo(icon.snp.bottom).offset(8)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalToSuperview()
            make.width.equalToSuperview()
        }
    }

    /// 刷新
    //: func refreshItem(_ data: (CenterItemType, String)) {
    func modelMessage(_ data: (CaptureTextProtocol, String)) {
        //: nameLab.text = data.0.rawValue.localized
        nameLab.text = data.0.rawValue.localized
        //: icon.image = UIImage.submitGift(name: data.1)
        icon.image = UIImage.submitGift(name: data.1)
    }

    // MARK: - Lazy Laod

    //: private lazy var icon: UIImageView = {
    private lazy var icon: UIImageView = {
        //: let icon = UIImageView()
        let icon = UIImageView()
        //: icon.contentMode = .scaleAspectFill
        icon.contentMode = .scaleAspectFill
        //: return icon
        return icon
        //: }()
    }()

    //: private lazy var nameLab: UILabel = {
    private lazy var nameLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = UIColor.colorStatuteNameApp()
        lab.textColor = UIColor.colorStatuteNameApp()
        //: lab.font = .fontChange(type: .Regular, fontSize: 14)
        lab.font = .fontChange(type: .Regular, fontSize: 14)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()
}
