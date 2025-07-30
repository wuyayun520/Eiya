
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_messageStr:[UInt8] = [0xc4,0xc3,0xc4,0xd9,0x85,0xce,0xc2,0xc9,0xc8,0xdf,0x97,0x84,0x8d,0xc5,0xcc,0xde,0x8d,0xc3,0xc2,0xd9,0x8d,0xcf,0xc8,0xc8,0xc3,0x8d,0xc4,0xc0,0xdd,0xc1,0xc8,0xc0,0xc8,0xc3,0xd9,0xc8,0xc9]

private func analyzeMake(menu num: UInt8) -> UInt8 {
    return num ^ 173
}

/*: "Post" :*/
fileprivate let k_bottomValue:String = "class leftPost"

/*: "Profile" :*/
fileprivate let kPathUrl:[Character] = ["P","r","o","f","i","l","e"]

/*: "bth_me_follow_nor" :*/
fileprivate let k_giftData:String = "talk letbth_m"
fileprivate let kBottomEffectTitle:String = "by"
fileprivate let k_filterPath:[Character] = ["w","_","n","o","r"]

/*: "party_mini_bg_userDetail" :*/
fileprivate let kGiftKey:[Character] = ["p","a","r","t","y","_","m","i","n","i","_","b","g","_","u","s","e","r","D","e","t","a","i","l"]

/*: "removeAttentionUid" :*/
fileprivate let kStartTitle:String = "rtopov"
fileprivate let kTitleFormat:[Character] = ["t","i","o","n","U","i","d"]

/*: "attentionUid" :*/
fileprivate let k_modelRecordKey:[Character] = ["a","t","t","e","n"]
fileprivate let kMessageName:String = "let layer informationtionUid"

/*: "bth_me_follow_pre" :*/
fileprivate let k_linkWithMsg:[UInt8] = [0x6b,0x7d,0x71,0x68,0x76,0x6e,0x68,0x6f,0x78,0x75,0x75,0x78,0x80,0x68,0x79,0x7b,0x6e]

fileprivate func suiteGift(container num: UInt8) -> UInt8 {
    let value = Int(num) + 247
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  HiddenSizeRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by young on 2023/5/22.
//

//: import JXPagingView
import JXPagingView
//: import JXSegmentedView
import JXSegmentedView
//: import UIKit
import UIKit

//: class TUserDetailTableHeightModel: NSObject {
class CustomResumeReactiveCompatible: NSObject {
    //: var nick_height: CGFloat = 0
    var nick_height: CGFloat = 0
    //: var profile_height: CGFloat = 0
    var profile_height: CGFloat = 0
    //: var post_height: CGFloat = 0
    var post_height: CGFloat = 0
    //: var aboutme_height: CGFloat = 0
    var aboutme_height: CGFloat = 0
    //: var intersets_height: CGFloat = 0
    var intersets_height: CGFloat = 0
    //: var gift_height: CGFloat = 0
    var gift_height: CGFloat = 0
}

//: class TalkingUserDetailViewController: TalkingBaseViewController {
class HiddenSizeRecognizerDelegate: StartThen {
    //: var uid: String = ""
    var uid: String = ""
    //: private var currentIndex = 0
    private var currentIndex = 0 // 默认选中tab
    //: private var userInfoModel = TalkingUserInfoModel()
    private var userInfoModel = GroupTransformable() // 用户资料
    //: private var giftsArr = [TalkingUserReceivedGiftModel]()
    private var giftsArr = [CoverDoingHandyJSON]() // 收到的礼物
    //: private let segmentedDataSource = JXSegmentedTitleDataSource()
    private let segmentedDataSource = JXSegmentedTitleDataSource()
    //: private var isRequest = false
    private var isRequest = false // 防止多次请求

    //: private let disposeBag = DisposeBag()
    private let disposeBag = DisposeBag()

    //: public init(tempUid: String?) {
    public init(tempUid: String?) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: uid = tempUid ?? ""
        uid = tempUid ?? ""
        //: hideNavi = true
        hideNavi = true
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_messageStr.map{analyzeMake(menu: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: addNotifications()
        giftWith()
        //: bindInteraction()
        adjust()
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        // 先请求接口，再初始化页面
        //: requestAllData()
        searchSize()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var navView: TalkingUserDetailNaviBarView = {
    private lazy var navView: RawDataReactiveCompatible = { // 导航
        //: let v = TalkingUserDetailNaviBarView()
        let v = RawDataReactiveCompatible()
        //: return v
        return v
        //: }()
    }()

    //: private lazy var headerView: TalkingUserDetailHeaderView = {
    private lazy var headerView: PlayerReactiveCompatible = { // banner
        //: let frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: UserDetailHeaderView_H)
        let frame = CGRect(x: 0, y: 0, width: constFormalContent, height: k_statusBottomName)
        //: let v = TalkingUserDetailHeaderView(frame: frame)
        let v = PlayerReactiveCompatible(frame: frame)
        //: v.VideoCallBlock = { [weak self] in
        v.VideoCallBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            // 音视频通话
            //: self.bottomView.videoButtonClick()
            self.bottomView.expensiveness()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var bottomView: TalkingUserDetailBottomView = {
    private lazy var bottomView: TrifleHiddenReactiveCompatible = { // bottom
        //: let v = TalkingUserDetailBottomView(frame: .zero)
        let v = TrifleHiddenReactiveCompatible(frame: .zero)
        //: return v
        return v
        //: }()
    }()

    //: private lazy var vipCenterView: UIImageView = {
    private lazy var vipCenterView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: return img
        return img
        //: }()
    }()

    //: private lazy var vipBottomView: UIImageView = {
    private lazy var vipBottomView: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: return img
        return img
        //: }()
    }()

    //: private lazy var segmentedView: JXSegmentedView = {
    private lazy var segmentedView: JXSegmentedView = {
        //: let segmentedView = JXSegmentedView.init(frame: CGRect.init(x: 0, y: StatusBarHeight, width: ScreenWidth, height: 44))
        let segmentedView = JXSegmentedView(frame: CGRect(x: 0, y: main_netValue, width: constFormalContent, height: 44))
        //: segmentedDataSource.itemWidth = 70
        segmentedDataSource.itemWidth = 70
        //: segmentedDataSource.itemSpacing = 18
        segmentedDataSource.itemSpacing = 18
        //: segmentedDataSource.titles = titleArray
        segmentedDataSource.titles = titleArray
        //: segmentedDataSource.isTitleMaskEnabled = false
        segmentedDataSource.isTitleMaskEnabled = false
        //: segmentedDataSource.isItemSpacingAverageEnabled = false
        segmentedDataSource.isItemSpacingAverageEnabled = false
        //: segmentedDataSource.isSelectedAnimable = false
        segmentedDataSource.isSelectedAnimable = false
        //: segmentedDataSource.titleNormalColor = UIColor.appValueDetailColor()
        segmentedDataSource.titleNormalColor = UIColor.childMenu()
        //: segmentedDataSource.titleSelectedColor = UIColor.colorStatuteNameApp()
        segmentedDataSource.titleSelectedColor = UIColor.colorStatuteNameApp()
        //: segmentedDataSource.titleNormalFont = .fontChange(type: .Medium, fontSize: 16)
        segmentedDataSource.titleNormalFont = .fontChange(type: .Medium, fontSize: 16)
        //: segmentedDataSource.titleSelectedFont = .fontChange(type: .Medium, fontSize: 18)
        segmentedDataSource.titleSelectedFont = .fontChange(type: .Medium, fontSize: 18)

        //: let indicator = JXSegmentedIndicatorLineView()
        let indicator = JXSegmentedIndicatorLineView()
        //: indicator.indicatorWidth = 12
        indicator.indicatorWidth = 12
        //: indicator.indicatorHeight = 3
        indicator.indicatorHeight = 3
        //: indicator.verticalOffset = 8
        indicator.verticalOffset = 8
        //: indicator.lineStyle = .normal
        indicator.lineStyle = .normal
        //: indicator.indicatorColor = UIColor.colorStatuteNameApp()
        indicator.indicatorColor = UIColor.colorStatuteNameApp()

        //: segmentedView.defaultSelectedIndex = currentIndex
        segmentedView.defaultSelectedIndex = currentIndex
        //: segmentedView.dataSource = segmentedDataSource
        segmentedView.dataSource = segmentedDataSource
        //: segmentedView.indicators = [indicator]
        segmentedView.indicators = [indicator]
        //: segmentedView.delegate = self
        segmentedView.delegate = self
        //: segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        //: segmentedView.backgroundColor = .clear
        segmentedView.backgroundColor = .clear
        //: return segmentedView
        return segmentedView
        //: }()
    }()

    //: private lazy var pagerView: JXPagingListRefreshView = {
    private lazy var pagerView: JXPagingListRefreshView = {
        //: let view = JXPagingListRefreshView(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        let view = JXPagingListRefreshView(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        //: view.mainTableView.backgroundColor = .clear
        view.mainTableView.backgroundColor = .clear
        //: view.listContainerView.listCellBackgroundColor = .clear
        view.listContainerView.listCellBackgroundColor = .clear
        //: view.defaultSelectedIndex = currentIndex
        view.defaultSelectedIndex = currentIndex
        //: view.pinSectionHeaderVerticalOffset = Int(StatusBarNavigationBarHeight)
        view.pinSectionHeaderVerticalOffset = Int(appTurnName)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var titleArray: [String] = {
    private lazy var titleArray: [String] = //: return ["Post".localized, "Profile".localized]
        [(String(k_bottomValue.suffix(4))).localized, (String(kPathUrl)).localized]
    //: }()

    //: private lazy var dataVC: [TalkingBaseViewController] = {
    private lazy var dataVC: [StartThen] = //: return [postVC, profileVC]
        [postVC, profileVC]
    //: }()

    //: private lazy var postVC: TalkingUserDetailPostViewController = {
    private lazy var postVC: ToViewDelegate = {
        //: let vc = TalkingUserDetailPostViewController()
        let vc = ToViewDelegate()
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var profileVC: TalkingUserDetailProfileViewController = {
    private lazy var profileVC: TitleViewDelegate = {
        //: let vc = TalkingUserDetailProfileViewController()
        let vc = TitleViewDelegate()
        //: return vc
        return vc
        //: }()
    }()

    // 关注按钮
    //: private lazy var followBtn: UIImageView = {
    private lazy var followBtn: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.submitGift(name: "bth_me_follow_nor")
        img.image = UIImage.submitGift(name: (String(k_giftData.suffix(5)) + "e_foll" + kBottomEffectTitle.replacingOccurrences(of: "by", with: "o") + String(k_filterPath)))
        //: img.isUserInteractionEnabled = true
        img.isUserInteractionEnabled = true
        //: let tap = UITapGestureRecognizer(target: self, action: #selector(followButtonClick))
        let tap = UITapGestureRecognizer(target: self, action: #selector(after))
        //: img.addGestureRecognizer(tap)
        img.addGestureRecognizer(tap)
        //: img.isHidden = true
        img.isHidden = true
        //: return img
        return img
        //: }()
    }()

    //: private lazy var voiceRoomBtn: UIButton = {
    private lazy var voiceRoomBtn: UIButton = {
        //: let voiceRoomBtn = UIButton(type: .custom)
        let voiceRoomBtn = UIButton(type: .custom)
        //: voiceRoomBtn.isHidden = true
        voiceRoomBtn.isHidden = true
        //: voiceRoomBtn.setBackgroundImage(UIImage.submitGift(name: "party_mini_bg_userDetail"), for: .normal)
        voiceRoomBtn.setBackgroundImage(UIImage.submitGift(name: (String(kGiftKey))), for: .normal)
        //: return voiceRoomBtn
        return voiceRoomBtn
        //: }()
    }()

    //: private lazy var roomHeadImgView: UIImageView = {
    private lazy var roomHeadImgView: UIImageView = {
        //: let imgView = UIImageView()
        let imgView = UIImageView()
        //: imgView.contentMode = .scaleAspectFill
        imgView.contentMode = .scaleAspectFill
        //: imgView.layer.cornerRadius = 20
        imgView.layer.cornerRadius = 20
        //: imgView.layer.borderWidth = 1
        imgView.layer.borderWidth = 1
        //: imgView.layer.borderColor = UIColor.white.cgColor
        imgView.layer.borderColor = UIColor.white.cgColor
        //: imgView.layer.masksToBounds = true
        imgView.layer.masksToBounds = true
        //: return imgView
        return imgView
        //: }()
    }()
}

// MARK: - Request

//: extension TalkingUserDetailViewController {
extension HiddenSizeRecognizerDelegate {
    /// follow
    //: private func req_followRequest() {
    private func communication() {
        //: let reachability = try? Reachability()
        let reachability = try? Reachability()
        //: if reachability?.connection == .unavailable {
        if reachability?.connection == .unavailable {
            //: func__showStatusBarErrorMsg(showMsg: kNetErrorMsg)
            arcInfo(showMsg: appViewPingValue)
            //: return
            return
        }

        //: var isattion = true
        var isattion = true
        //: var dict = [String: Any]()
        var dict = [String: Any]()
        //: if userInfoModel.isAttention {
        if userInfoModel.isAttention {
            //: dict["removeAttentionUid"] = userInfoModel.uid
            dict[(kStartTitle.replacingOccurrences(of: "top", with: "em") + "eAtten" + String(kTitleFormat))] = userInfoModel.uid
            //: isattion = false
            isattion = false
            //: } else {
        } else {
            //: dict["attentionUid"] = userInfoModel.uid
            dict[(String(k_modelRecordKey) + String(kMessageName.suffix(7)))] = userInfoModel.uid
        }
        //: PlayerRequestTool.req_atationTool(isAttention: isattion, params: dict) { succeed, result, errorModel in
        PlayerRequestTool.appPath(isAttention: isattion, params: dict) { succeed, _, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: self.userInfoModel.isAttention = !self.userInfoModel.isAttention
            self.userInfoModel.isAttention = !self.userInfoModel.isAttention
            //: self.refreshfollowButtonStatus()
            self.stochastic()
        }
    }

    /// 请求个人资料 + 礼物
    //: func requestAllData() {
    func searchSize() {
        //: let group = DispatchGroup()
        let group = DispatchGroup()
        //: let queue = DispatchQueue(label: "", qos: .default, attributes: DispatchQueue.Attributes.concurrent)
        let queue = DispatchQueue(label: "", qos: .default, attributes: DispatchQueue.Attributes.concurrent)
        //: group.enter()
        group.enter()
        //: group.enter()
        group.enter()
        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: queue.async(group: group) {
        queue.async(group: group) {
            //: TalkingUserRequestManager.func__otherUserInfo(uid: self.uid) { succeed, result, errorModel in
            FrameThen.opposite(uid: self.uid) { succeed, result, _ in
                //: self.setNoremarlView()
                self.quick()
                //: if self.uid == DistanceAppManager.share.loginUid {
                if self.uid == DistanceAppManager.share.loginUid {
                    //: self.bottomView.showEditBtn()
                    self.bottomView.streetSmart()
                }
                //: if succeed == true {
                if succeed == true {
                    //: if let userModel = JSONDeserializer<TalkingUserInfoModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil) {
                    if let userModel = JSONDeserializer<GroupTransformable>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil) {
                        //: self.userInfoModel = userModel
                        self.userInfoModel = userModel
                        // 默认选中哪个Tab
                        //: self.currentIndex = (userModel.momentPicNum < 10) ? 1:0
                        self.currentIndex = (userModel.momentPicNum < 10) ? 1 : 0
                        // 创建视图
                        //: self.setupSubviews()
                        self.query()
                        //: self.setupSubViewsConstraint()
                        self.application()
                        //: self.setupVIPSkinView()
                        self.center()
                        // 刷新视图
                        //: self.navView.refreshView(userModel)
                        self.navView.contentsAdd(userModel)
                        //: self.headerView.refreshView(userModel)
                        self.headerView.sumerchange(userModel)
                        //: self.bottomView.refreshView(userModel)
                        self.bottomView.end(userModel)
                        //: self.postVC.refreshPostViewController(userModel)
                        self.postVC.success(userModel)
                        //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: 20))]
                        let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: 20))]
                        //: self.roomHeadImgView.setUrlImage(urlStr: userModel.headPic, options: optionsInfo)
                        self.roomHeadImgView.setUrlImage(urlStr: userModel.headPic, options: optionsInfo)
                    }
                }
                //: group.leave()
                group.leave()
            }
        }
        //: queue.async(group: group) {
        queue.async(group: group) {
            //: TalkingUserRequestManager.func__getReceivedGift(uid: self.uid) { succeed, result, errorModel in
            FrameThen.partyEnable(uid: self.uid) { succeed, result, _ in
                //: if succeed == true {
                if succeed == true {
                    //: self.giftsArr.removeAll()
                    self.giftsArr.removeAll()
                    //: for dic in result as! [Dictionary<String, Any>] {
                    for dic in result as! [[String: Any]] {
                        //: if let model = TalkingUserReceivedGiftModel.deserialize(from: dic as? Dictionary) {
                        if let model = CoverDoingHandyJSON.deserialize(from: dic as? Dictionary) {
                            //: self.giftsArr.append(model)
                            self.giftsArr.append(model)
                        }
                    }
                }
                //: group.leave()
                group.leave()
            }
        }

        //: group.notify(queue: DispatchQueue.main) {
        group.notify(queue: DispatchQueue.main) {
            //: EndProgressHUD.popEnable()
            EndProgressHUD.popEnable()
            //: self.reloadDataWithRequestGroupNotify()
            self.media()
            //: self.view.bringSubviewToFront(self.bottomView)
            self.view.bringSubviewToFront(self.bottomView)
            //: self.view.bringSubviewToFront(self.navView)
            self.view.bringSubviewToFront(self.navView)
        }
    }

    /// 处理profile分区
    //: private func reloadDataWithRequestGroupNotify() {
    private func media() {
        //: refreshfollowButtonStatus()
        stochastic()

        // profile分区数据
        //: var profileSectionArr = [TUserDetailCellType.profileType]
        var profileSectionArr = [CustomCellType.profileType]
        //: if userInfoModel.aboutMe.count > 0 {
        if userInfoModel.aboutMe.count > 0 {
            //: profileSectionArr.append(.aboutMeType)
            profileSectionArr.append(.aboutMeType)
        }
        //: if userInfoModel.interest.count > 0 {
        if userInfoModel.interest.count > 0 {
            //: profileSectionArr.append(.intersetsType)
            profileSectionArr.append(.intersetsType)
        }
        //: if giftsArr.count > 0 {
        if giftsArr.count > 0 {
            //: profileSectionArr.append(.giftType)
            profileSectionArr.append(.giftType)
        }

        // 刷新Profile
        //: self.profileVC.refreshProfileSub(giftsArr, profileSectionArr, userInfoModel)
        self.profileVC.populationProfileTo(giftsArr, profileSectionArr, userInfoModel)
    }
}

// MARK: - Event

//: extension TalkingUserDetailViewController {
extension HiddenSizeRecognizerDelegate {
    /// follow
    //: @objc private func followButtonClick() {
    @objc private func after() {
        //: req_followRequest()
        communication()
    }

    /// 刷新关注状态
    //: private func refreshfollowButtonStatus() {
    private func stochastic() {
        //: self.followBtn.isHidden = (userInfoModel.uid == DistanceAppManager.share.loginUid)
        self.followBtn.isHidden = (userInfoModel.uid == DistanceAppManager.share.loginUid)
        //: let followImgStr = self.userInfoModel.isAttention ? "bth_me_follow_pre":"bth_me_follow_nor"
        let followImgStr = self.userInfoModel.isAttention ? String(bytes: k_linkWithMsg.map{suiteGift(container: $0)}, encoding: .utf8)! : (String(k_giftData.suffix(5)) + "e_foll" + kBottomEffectTitle.replacingOccurrences(of: "by", with: "o") + String(k_filterPath))
        //: self.followBtn.image = UIImage.submitGift(name: followImgStr)
        self.followBtn.image = UIImage.submitGift(name: followImgStr)
    }

    /// 展示VIP皮肤视图
    //: private func setupVIPSkinView() {
    private func center() {
        //: guard userInfoModel.loungePlus else { return }
        guard userInfoModel.loungePlus else { return }
        //: guard let vipModel = DistanceAppManager.share.appUserConfigMode.vipSetting.filter({$0.vipSkinId == userInfoModel.vipSkinId}).first else { return }
        guard let vipModel = DistanceAppManager.share.appUserConfigMode.vipSetting.filter({ $0.vipSkinId == userInfoModel.vipSkinId }).first else { return }

        //: pagerView.listContainerView.addSubview(vipCenterView)
        pagerView.listContainerView.addSubview(vipCenterView)
        //: pagerView.listContainerView.sendSubviewToBack(vipCenterView)
        pagerView.listContainerView.sendSubviewToBack(vipCenterView)
        //: vipCenterView.snp.makeConstraints { make in
        vipCenterView.snp.makeConstraints { make in
            //: make.top.equalTo(-44)
            make.top.equalTo(-44)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(44)
            make.height.equalTo(44)
        }

        //: pagerView.listContainerView.addSubview(vipBottomView)
        pagerView.listContainerView.addSubview(vipBottomView)
        //: pagerView.listContainerView.sendSubviewToBack(vipBottomView)
        pagerView.listContainerView.sendSubviewToBack(vipBottomView)
        //: vipBottomView.snp.makeConstraints { make in
        vipBottomView.snp.makeConstraints { make in
            //: make.top.equalTo(vipCenterView.snp.bottom)
            make.top.equalTo(vipCenterView.snp.bottom)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(167)
            make.height.equalTo(167)
        }

        //: vipCenterView.setUrlImage(urlStr: vipModel.vipSkinCenter, placeImg: nil)
        vipCenterView.setUrlImage(urlStr: vipModel.vipSkinCenter, placeImg: nil)
        //: vipBottomView.setUrlImage(urlStr: vipModel.vipSkinBottom, placeImg: nil)
        vipBottomView.setUrlImage(urlStr: vipModel.vipSkinBottom, placeImg: nil)
    }
}

// MARK: - JXPagerViewDelegate

//: extension TalkingUserDetailViewController: JXSegmentedViewDelegate {
extension HiddenSizeRecognizerDelegate: JXSegmentedViewDelegate {
    // 点击item或滑动时【点击标题和滑动视图都会调用】
    func segmentedView(_ segmentedView: JXSegmentedView, didSelectedItemAt index: Int) {}
    

    // 添加该方法是为了防止首次进入应用，直接点击nearby无法初始化页面的情况 【该方法只会在点击标题时调用】
    func segmentedView(_ segmentedView: JXSegmentedView, didClickSelectedItemAt index: Int) {
    
        //: pagerView.listContainerView.defaultSelectedIndex = index
        pagerView.listContainerView.defaultSelectedIndex = index
        pagerView.listContainerView.reloadData()
        
    }
}

// MARK: - JXPagerViewDelegate

//: extension TalkingUserDetailViewController: JXPagingViewDelegate {
extension HiddenSizeRecognizerDelegate: JXPagingViewDelegate {
    func pagingView(_ pagingView: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {
        //: var type = index
        var type = index
        //: if type < 0 { type = 0 }
        if type < 0 { type = 0 }
        //: let vc = dataVC[type]
        let vc = dataVC[type]
        //: return vc as! JXPagingViewListViewDelegate
        return vc as! JXPagingViewListViewDelegate
    }

    func tableHeaderViewHeight(in pagingView: JXPagingView) -> Int {
    
        //: return Int(UserDetailHeaderView_H)
        return Int(k_statusBottomName)
    }

    func tableHeaderView(in pagingView: JXPagingView) -> UIView {
    
        //: return headerView
        return headerView
    }

    func heightForPinSectionHeader(in pagingView: JXPagingView) -> Int {
    
        //: return Int(segmentedView.frame.height)
        return Int(segmentedView.frame.height)
    }

    func viewForPinSectionHeader(in pagingView: JXPagingView) -> UIView {
    
        //: return segmentedView
        return segmentedView
    }

    func numberOfLists(in pagingView: JXPagingView) -> Int {
        //: return titleArray.count
        return titleArray.count
    }

    // 滑动改变导航颜色
    func pagingView(_ pagingView: JXPagingView, mainTableViewDidScroll scrollView: UIScrollView) {
        //: let offsetY = scrollView.contentOffset.y
        let offsetY = scrollView.contentOffset.y
        //: if  offsetY > StatusBarNavigationBarHeight {
        if offsetY > appTurnName {
            //: self.navView.whiteBgView.alpha = 1
            self.navView.whiteBgView.alpha = 1
            //: self.navView.backButton.tintColor = .colorStatuteNameApp()
            self.navView.backButton.tintColor = .colorStatuteNameApp()
            //: self.navView.moreButton.tintColor = .colorStatuteNameApp()
            self.navView.moreButton.tintColor = .colorStatuteNameApp()
            //: } else {
        } else {
            //: self.navView.whiteBgView.alpha = min(offsetY/StatusBarNavigationBarHeight, 1)
            self.navView.whiteBgView.alpha = min(offsetY / appTurnName, 1)
            //: let color = self.navView.whiteBgView.alpha > 0.7 ? UIColor.colorStatuteNameApp():UIColor.white
            let color = self.navView.whiteBgView.alpha > 0.7 ? UIColor.colorStatuteNameApp() : UIColor.white
            //: self.navView.backButton.tintColor = color
            self.navView.backButton.tintColor = color
            //: self.navView.moreButton.tintColor = color
            self.navView.moreButton.tintColor = color
        }
    }
}

// MARK: - 刷新个人资料通知

//: extension TalkingUserDetailViewController {
extension HiddenSizeRecognizerDelegate {
    /// 刷新个人资料通知
    //: @objc private func refreshUserInfoNotification() {
    @objc private func male() {
        //: requestAllData()
        searchSize()
    }
}

// MARK: - Layout

//: extension TalkingUserDetailViewController {
extension HiddenSizeRecognizerDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func query() {
        //: view.addSubview(pagerView)
        view.addSubview(pagerView)
        //: segmentedView.addSubview(followBtn)
        segmentedView.addSubview(followBtn)
        //: view.addSubview(voiceRoomBtn)
        view.addSubview(voiceRoomBtn)
        //: voiceRoomBtn.addSubview(roomHeadImgView)
        voiceRoomBtn.addSubview(roomHeadImgView)
        //: voiceRoomBtn.isHidden = (self.userInfoModel.partyRoomId == 0)
        voiceRoomBtn.isHidden = (self.userInfoModel.partyRoomId == 0)
    }

    //: private func setNoremarlView() {
    private func quick() {
        //: view.addSubview(navView)
        view.addSubview(navView)
        //: view.addSubview(bottomView)
        view.addSubview(bottomView)
        //: navView.snp.makeConstraints { make in
        navView.snp.makeConstraints { make in
            //: make.leading.trailing.top.equalTo(0)
            make.leading.trailing.top.equalTo(0)
            //: make.height.equalTo(StatusBarNavigationBarHeight)
            make.height.equalTo(appTurnName)
        }
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
            //: make.height.equalTo(UserDetailBottomView_H)
            make.height.equalTo(dataItemSystemValue)
        }
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func application() {
        //: pagerView.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        pagerView.frame = CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue)

        //: followBtn.snp.makeConstraints { make in
        followBtn.snp.makeConstraints { make in
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.size.equalTo(CGSize(width: 46, height: 26))
            make.size.equalTo(CGSize(width: 46, height: 26))
        }

        //: voiceRoomBtn.snp.makeConstraints { make in
        voiceRoomBtn.snp.makeConstraints { make in
            //: make.trailing.equalToSuperview()
            make.trailing.equalToSuperview()
            //: make.bottom.equalToSuperview().offset(-actualHeight(h: 178) - kDeviceSafeBottomHeight)
            make.bottom.equalToSuperview().offset(-actualHeight(h: 178) - appButtonData)
            //: make.width.equalTo(55)
            make.width.equalTo(55)
            //: make.height.equalTo(70)
            make.height.equalTo(70)
        }
        //: roomHeadImgView.snp.makeConstraints { make in
        roomHeadImgView.snp.makeConstraints { make in
            //: make.leading.equalToSuperview().offset(3)
            make.leading.equalToSuperview().offset(3)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.width.height.equalTo(40)
            make.width.height.equalTo(40)
        }
    }

    /// 添加通知
    //: private func addNotifications() {
    private func giftWith() {
        // 个人信息更新成功刷新UI
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(refreshUserInfoNotification),
                                               selector: #selector(male),
                                               //: name: USER_GETMYINFO_SUCCEED_NOTIFICATION,
                                               name: dataQueryName,
                                               //: object: nil)
                                               object: nil)
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func adjust() {
        //: voiceRoomBtn.rx.tap
        voiceRoomBtn.rx.tap
            //: .subscribe(onNext: { [weak self] in
            .subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: AddReactiveCompatible.share.func_pushToVoiceRoomVC(roomId: self.userInfoModel.partyRoomId.stringValue)
                AddReactiveCompatible.share.photoTo(roomId: self.userInfoModel.partyRoomId.stringValue)
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }
}
