
//: Declare String Begin

/*: "EmptyCollectionReusableView" :*/
fileprivate let k_languageFormat:[Character] = ["E","m","p","t","y","C","o","l","l","e","c","t","i","o"]
fileprivate let kListImageViewValue:String = "control"
fileprivate let k_equalRawPath:String = "Reusdata top count element"
fileprivate let k_containerId:String = "selection top forView"

/*: "In order to find friends nearby please allow the access of your location." :*/
fileprivate let kDataUrl:[UInt8] = [0x2e,0x6e,0x6f,0x69,0x74,0x61,0x63,0x6f,0x6c,0x20,0x72,0x75,0x6f,0x79,0x20,0x66,0x6f,0x20,0x73,0x73,0x65,0x63,0x63,0x61,0x20,0x65,0x68,0x74,0x20,0x77,0x6f,0x6c,0x6c,0x61,0x20,0x65,0x73,0x61,0x65,0x6c,0x70,0x20,0x79,0x62,0x72,0x61,0x65,0x6e,0x20,0x73,0x64,0x6e,0x65,0x69,0x72,0x66,0x20,0x64,0x6e,0x69,0x66,0x20,0x6f,0x74,0x20,0x72,0x65,0x64,0x72,0x6f,0x20,0x6e,0x49]

/*: "You've got no list yet." :*/
fileprivate let kModeTopPath:String = "You\'"
fileprivate let kImageUserMsg:String = "ot noif to extension in lab"
fileprivate let kAppMessage:String = "yet.if let"

/*: , :*/
fileprivate let k_messageId:[Character] = [","]

/*: "Say hi successfully~" :*/
fileprivate let k_badMessage:String = "var error up modelSay hi"
fileprivate let kPlayMagnitudeId:String = " succeland title size show self"
fileprivate let k_editTitle:String = "lly~view normal new title permission"

/*: "Shielding Success" :*/
fileprivate let kQuantityFormat:[Character] = ["S","h","i","e","l","d","i","n"]
fileprivate let k_withName:String = "g Sucdata with"

/*: "lng" :*/
fileprivate let k_kindTitle:[UInt8] = [0xa2,0xa4,0x9d]

fileprivate func cellTitle(begin num: UInt8) -> UInt8 {
    let value = Int(num) - 54
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "lat" :*/
fileprivate let kUpName:[UInt8] = [0x42,0x4f,0x5a]

private func viewData(main num: UInt8) -> UInt8 {
    return num ^ 46
}

/*: "Enter “Settings” and open “Location” permission to use function normally." :*/
fileprivate let k_builderEmptyContentPath:[UInt8] = [0x44,0x6d,0x73,0x64,0x71,0x1f,0xe1,0x7f,0x9b,0x52,0x64,0x73,0x73,0x68,0x6d,0x66,0x72,0xe1,0x7f,0x9c,0x1f,0x60,0x6d,0x63,0x1f,0x6e,0x6f,0x64,0x6d,0x1f,0xe1,0x7f,0x9b,0x4b,0x6e,0x62,0x60,0x73,0x68,0x6e,0x6d,0xe1,0x7f,0x9c,0x1f,0x6f,0x64,0x71,0x6c,0x68,0x72,0x72,0x68,0x6e,0x6d,0x1f,0x73,0x6e,0x1f,0x74,0x72,0x64,0x1f,0x65,0x74,0x6d,0x62,0x73,0x68,0x6e,0x6d,0x1f,0x6d,0x6e,0x71,0x6c,0x60,0x6b,0x6b,0x78,0x2d]

fileprivate func styleConnection(change num: UInt8) -> UInt8 {
    let value = Int(num) + 1
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Cancel" :*/
fileprivate let k_infoCommonPath:[Character] = ["C","a","n","c","e","l"]

/*: "Settings" :*/
fileprivate let kLabStr:String = "Settto gift string min"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  UnseeableReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2022/8/29.
//

//: import JXPagingView
import JXPagingView
//: import JXSegmentedView
import JXSegmentedView
//: import UIKit
import UIKit

//: typealias ScrollCallback = (_ scrollView: UIScrollView) -> Void
typealias ScrollCallback = (_ scrollView: UIScrollView) -> Void

//: class SocialPopularViewController: TalkingBaseViewController {
class UnseeableReactiveCompatible: StartThen {
    //: var isgetPlayerCell = false
    var isgetPlayerCell = false
    //: var playerCell = NSArray()
    var playerCell = NSArray() // 播放介绍视频
    //: var cunrrenplayerIndex = 0
    var cunrrenplayerIndex = 0 // 播放介绍视频位置

    //: var isFreshPlayerCell = false
    var isFreshPlayerCell = false // 刷新时加载介绍视频播放
    //: var isFirstUpload = true
    var isFirstUpload = true // 初次上报曝光次数

    //: var seleteBlobkModel: SocialUserListModel?
    var seleteBlobkModel: EqualModelType? // 拉黑选中数据
    // header
    //: var headerView: SocialHeaderView?
    var headerView: ModeReusableView?

    //: var scrollback: ScrollCallback?
    var scrollback: ScrollCallback?
    // 页面类型
    //: var tabType: SocialTab?
    var tabType: DisappearTotal?

    // bannner
    //: var footerView: SocialPopularListFooterView?
    var footerView: WeltanschauungView?

    //: var userVisibleCells: [UICollectionViewCell]?
    var userVisibleCells: [UICollectionViewCell]?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = .clear
        self.view.backgroundColor = .clear
        //: self.hideNavi = true
        self.hideNavi = true
        //: setupSubviews()
        queryedTo()
        //: setupSubViewsConstraint()
        spreadOver()
        //: addNotification()
        nameUp()

        //: switch (tabType) {
        switch tabType {
        //: case .hot:
        case .hot:

            //: firstLoadData()
            mottleData()
        //: case .nearby:
        case .nearby:
            //: checkLocationAuth()
            that()
        //: case .new:
        case .new:
            //: self.firstLoadData()
            self.mottleData()
        //: case .none: break
        case .none: break
        }
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeLanguageManager.shared.direction == .rightToLeft {
            //: self.view.transform = CGAffineTransform(scaleX: -1, y: 1)
            self.view.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
    }

    //: deinit {
    deinit {
        //: TalkingLocationManager.destroy()
        PitchHiddenThen.popularFile()
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy load

    //: private lazy var reqManager: SocialRequestManager = {
    private lazy var reqManager: SumRequestManager = //: return SumRequestManager()
        .init()
    //: }()

    //: public lazy var collectionView: UICollectionView = {
    public lazy var collectionView: UICollectionView = {
        //: let layout = UICollectionViewFlowLayout()
        let layout = UICollectionViewFlowLayout()
        //: layout.minimumLineSpacing = 9
        layout.minimumLineSpacing = 9
        //: layout.minimumInteritemSpacing = 9
        layout.minimumInteritemSpacing = 9
        //: layout.sectionInset = UIEdgeInsets(top: 0, left: 13, bottom: 9, right: 13)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 13, bottom: 9, right: 13)
        //: let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        //: collectionView.backgroundColor = .clear
        collectionView.backgroundColor = .clear
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.register(SocialPopularListCell.self,
        collectionView.register(PopularThen.self,
                                //: forCellWithReuseIdentifier: SocialPopularListCell.className())
                                forCellWithReuseIdentifier: PopularThen.className())
        //: collectionView.register(SocialHeaderView.self,
        collectionView.register(ModeReusableView.self,
                                //: forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                //: withReuseIdentifier: SocialHeaderView.className())
                                withReuseIdentifier: ModeReusableView.className())
        //: collectionView.register(SocialPopularListFooterView.self,
        collectionView.register(WeltanschauungView.self,
                                //: forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter,
                                //: withReuseIdentifier: SocialPopularListFooterView.className())
                                withReuseIdentifier: WeltanschauungView.className())
        //: collectionView.register(UICollectionReusableView.self,
        collectionView.register(UICollectionReusableView.self,
                                //: forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                                //: withReuseIdentifier: "EmptyCollectionReusableView")
                                withReuseIdentifier: (String(k_languageFormat) + kListImageViewValue.replacingOccurrences(of: "control", with: "n") + String(k_equalRawPath.prefix(4)) + "able" + String(k_containerId.suffix(4))))
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: collectionView.contentInsetAdjustmentBehavior = .never
            collectionView.contentInsetAdjustmentBehavior = .never
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: collectionView.addHeaderRefresh { [weak self] in
        collectionView.addHeaderRefresh { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.balefire()
        }
        //: collectionView.addFooterRefresh { [weak self] in
        collectionView.addFooterRefresh { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.makeEndReload()
        }
        //: return collectionView
        return collectionView
        //: }()
    }()

    //: private lazy var emptyV: SocialEmptyView = {
    private lazy var emptyV: WeltanschauungReactiveCompatible = {
        //: let v = SocialEmptyView()
        let v = WeltanschauungReactiveCompatible()
        //: v.isHidden = true
        v.isHidden = true
        //: return v
        return v
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension SocialPopularViewController {
extension UnseeableReactiveCompatible {
    // MARK: - Load data

    /// 首次进入页面
    //: private func firstLoadData() {
    private func mottleData() {
        //: headerRefresh()
        balefire()
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+0.5) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            //: self.load_adBanner()
            self.lagniappe()
        }
    }

    /// 列表数据
    //: private func headerRefresh() {
    private func balefire() {
        //: reqManager.listPage = 0
        reqManager.listPage = 0
        //: self.isFreshPlayerCell = true
        self.isFreshPlayerCell = true
        //: seleteHideBlock()
        decipherUp()
        //: load_listData()
        makeFullData()

        //: firstLoad_premiumStarList()
        premiumAdd()
    }

    //: private func footerRefresh() {
    private func makeEndReload() {
        //: reqManager.listPage += 1
        reqManager.listPage += 1
        //: load_listData()
        makeFullData()
    }

    //: private func load_listData() {
    private func makeFullData() {
        //: reqManager.req_socialList(tab: tabType ?? .hot) { [weak self] succeed, result, errorModel in
        reqManager.sizeChild(tab: tabType ?? .hot) { [weak self] _, result, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.collectionView.endRefresh()
            self.collectionView.fromEnd()
            //: self.refreshViewStatus()
            self.statusBack()

            //: let arr = result as? Array<Any> ?? []
            let arr = result as? [Any] ?? []
            //: if arr.count == 0 {
            if arr.count == 0 {
                //: self.collectionView.mj_footer = nil
                self.collectionView.mj_footer = nil
                //: } else {
            } else {
                //: if self.collectionView.mj_footer == nil {
                if self.collectionView.mj_footer == nil {
                    //: self.collectionView.addFooterRefresh {
                    self.collectionView.addFooterRefresh {
                        //: self.footerRefresh()
                        self.makeEndReload()
                    }
                }
            }
            /// 当拉黑数据过多，返回数据小于6个时，从下一页获取数据，最多3次
            //: if self.reqManager.haveReq < self.reqManager.maxReq && self.reqManager.section1Data.count <= 2 && arr.count > 0 {
            if self.reqManager.haveReq < self.reqManager.maxReq, self.reqManager.section1Data.count <= 2, arr.count > 0 {
                //: self.reqManager.haveReq += 1
                self.reqManager.haveReq += 1
                //: self.footerRefresh()
                self.makeEndReload()
                //: } else {
            } else {
                //: self.reqManager.haveReq = 0
                self.reqManager.haveReq = 0
            }
        }
    }

    /// 巨星计划接口
    //: private func firstLoad_premiumStarList() {
    private func premiumAdd() {
        //: reqManager.premiumStarPage = 0
        reqManager.premiumStarPage = 0
        //: reqManager.premiumStarCanLoadMore = true
        reqManager.premiumStarCanLoadMore = true
        //: reqManager.premiumStarIsLoading = false
        reqManager.premiumStarIsLoading = false
        //: load_premiumStarList()
        equalList()
    }

    //: private func loadMore_premiumStarList() {
    private func premium() {
        //: guard reqManager.premiumStarCanLoadMore else { return }
        guard reqManager.premiumStarCanLoadMore else { return }
        //: reqManager.premiumStarPage += 1
        reqManager.premiumStarPage += 1
        //: load_premiumStarList()
        equalList()
    }

    //: private func load_premiumStarList() {
    private func equalList() {
        //: reqManager.req_premiumStarList { [weak self] succeed, result, errorModel in
        reqManager.superior { [weak self] _, _, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.footerView?.refreshPremiumStarView(data: self.reqManager.premiumStarListData)
            self.footerView?.barData(data: self.reqManager.premiumStarListData)
            //: if self.reqManager.premiumStarPage == 0 {
            if self.reqManager.premiumStarPage == 0 {
                //: self.refreshViewStatus()
                self.statusBack()
            }
        }
    }

    /// 广告banner数据
    //: private func load_adBanner() {
    private func lagniappe() {
        //: reqManager.req_adBanner(position: 1) { [weak self] succeed, result, errorModel in
        reqManager.prolusion(position: 1) { [weak self] _, _, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.footerView?.refreshBannerView(data: self.reqManager.adBannerListData)
            self.footerView?.aboveBack(data: self.reqManager.adBannerListData)
            //: self.refreshViewStatus()
            self.statusBack()
        }
    }

    /// 刷新视图状态
    //: private func refreshViewStatus() {
    private func statusBack() {
        // 是否开启定位判断缺省图
        //: if self.tabType == .nearby {
        if self.tabType == .nearby {
            //: if TalkingLocationManager.shared().locationType != .alwaysAllowed {
            if PitchHiddenThen.endShared().locationType != .alwaysAllowed {
                //: self.emptyV.isHidden = false
                self.emptyV.isHidden = false
                //: self.emptyV.desLab.text = "In order to find friends nearby please allow the access of your location.".localized
                self.emptyV.desLab.text = String(bytes: kDataUrl.reversed(), encoding: .utf8)!.localized
                //: self.collectionView.mj_footer = nil
                self.collectionView.mj_footer = nil

                //: self.collectionView.reloadData()
                self.collectionView.reloadData()
                //: return
                return
            }
        }

        // 是否有数据判断缺省图
        //: if self.reqManager.section0Data.count == 0 &&
        if self.reqManager.section0Data.count == 0,
           //: self.reqManager.premiumStarListData.count == 0 &&
           self.reqManager.premiumStarListData.count == 0,
           //: self.reqManager.adBannerListData.count == 0 {
           self.reqManager.adBannerListData.count == 0
        {
            //: self.emptyV.isHidden = false
            self.emptyV.isHidden = false
            //: self.emptyV.desLab.text = "You've got no list yet.".localized
            self.emptyV.desLab.text = (kModeTopPath + "ve g" + String(kImageUserMsg.prefix(5)) + " list " + String(kAppMessage.prefix(4))).localized
            //: } else {
        } else {
            //: self.emptyV.isHidden = true
            self.emptyV.isHidden = true
        }

        //: self.collectionView.reloadData()
        self.collectionView.reloadData()

        //: if isFirstUpload {
        if isFirstUpload {
            //: isFirstUpload = false
            isFirstUpload = false
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0) {
                //: self.uploadUserListCover()
                self.markCover()
            }
        }
    }
}

// MARK: - 通知事件

//: extension  SocialPopularViewController {
extension UnseeableReactiveCompatible {
    //: @objc private func searchDetailRefreshNotification() {
    @objc private func translation() {
        //: collectionView.mj_header?.beginRefreshing()
        collectionView.mj_header?.beginRefreshing()
    }
}

// MARK: - JXSegmentedListContainerViewListDelegate

//: extension SocialPopularViewController: JXPagingViewListViewDelegate {
extension UnseeableReactiveCompatible: JXPagingViewListViewDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self.view
        return self.view
    }

    //: func listScrollView() -> UIScrollView {
    func listScrollView() -> UIScrollView {
        //: return self.collectionView
        return self.collectionView
    }

    //: func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
    func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
        //: self.scrollback = callback
        self.scrollback = callback
    }
}

// MARK: - UICollectionViewDelegate

//: extension SocialPopularViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
extension UnseeableReactiveCompatible: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return 2
        return 2
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //: guard self.emptyV.isHidden else {
        guard self.emptyV.isHidden else {
            //: return 0
            return 0
        }

        //: if section == 0 {
        if section == 0 {
            //: return reqManager.section0Data.count
            return reqManager.section0Data.count
            //: } else {
        } else {
            //: return reqManager.section1Data.count
            return reqManager.section1Data.count
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SocialPopularListCell.className(), for: indexPath) as! SocialPopularListCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PopularThen.className(), for: indexPath) as! PopularThen
        //: var model: SocialUserListModel?
        var model: EqualModelType?
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: model = reqManager.section0Data[indexPath.row]
            model = reqManager.section0Data[indexPath.row]
            //: } else {
        } else {
            //: model = reqManager.section1Data[indexPath.row]
            model = reqManager.section1Data[indexPath.row]
        }
        //: cell.delegate = self
        cell.delegate = self
        //: cell.refreshCell(model)
        cell.notComment(model)
        //: if seleteBlobkModel != nil &&  seleteBlobkModel?.uid == model?.uid {
        if seleteBlobkModel != nil && seleteBlobkModel?.uid == model?.uid {
            //: cell.blockBackView.isHidden = false
            cell.blockBackView.isHidden = false
            //: } else {
        } else {
            //: cell.blockBackView.isHidden = true
            cell.blockBackView.isHidden = true
        }
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.2) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.2) {
            //: var model: SocialUserListModel?
            var model: EqualModelType?
            //: if indexPath.section == 0 {
            if indexPath.section == 0 {
                //: model = self.reqManager.section0Data[indexPath.row]
                model = self.reqManager.section0Data[indexPath.row]
                //: } else {
            } else {
                //: model = self.reqManager.section1Data[indexPath.row]
                model = self.reqManager.section1Data[indexPath.row]
            }
            //: if  self.seleteBlobkModel == nil || self.seleteBlobkModel?.uid != model?.uid {
            if self.seleteBlobkModel == nil || self.seleteBlobkModel?.uid != model?.uid {
                //: if model?.liveWinJumpPos == 1 {
                if model?.liveWinJumpPos == 1 {
                    //: AddReactiveCompatible.share.func_audiencePushToLiveRoomVC(uid: String(model?.uid ?? 0), enterType: .unknown)
                    AddReactiveCompatible.share.magnitudeeractionPinType(uid: String(model?.uid ?? 0), enterType: .unknown)
                    //: } else {
                } else {
                    //: AddReactiveCompatible.share.func__pushToUserDetailVC(uid: "\(model?.uid ?? 0)")
                    AddReactiveCompatible.share.afterTo(uid: "\(model?.uid ?? 0)")
                }

                //: if self.tabType == .hot {
                if self.tabType == .hot {
                    //: uploadRecord.uploadRecordEvent(eventID: ClickUserListCoverNoP, toUid: "\(model?.uid ?? 0)")
                    kSoundName.messUp(eventID: showSizeName, toUid: "\(model?.uid ?? 0)")
                }
            }
        }
    }

    // MARK: - UICollectionViewDelegateFlowLayout

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, sizeForItemAt _: IndexPath) -> CGSize {
        //: let width = Float((ScreenWidth-26-9)/2)
        let width = Float((constFormalContent - 26 - 9) / 2)
        //: return CGSize(width: CGFloat(floorf(width)), height: CGFloat(floorf(width*221/170)))
        return CGSize(width: CGFloat(floorf(width)), height: CGFloat(floorf(width * 221 / 170)))
    }

    //: func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        //: guard indexPath.section == 0 else {
        guard indexPath.section == 0 else {
            //: return collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "EmptyCollectionReusableView", for: indexPath)
            return collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: (String(k_languageFormat) + kListImageViewValue.replacingOccurrences(of: "control", with: "n") + String(k_equalRawPath.prefix(4)) + "able" + String(k_containerId.suffix(4))), for: indexPath)
        }

        //: if kind == UICollectionView.elementKindSectionHeader {
        if kind == UICollectionView.elementKindSectionHeader {
            //: headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader,
            headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader,
                                                                         //: withReuseIdentifier: SocialHeaderView.className(),
                                                                         withReuseIdentifier: ModeReusableView.className(),
                                                                         //: for: indexPath) as? SocialHeaderView
                                                                         for: indexPath) as? ModeReusableView
            //            headerView?.delegate = self
            //: return headerView!
            return headerView!
            //: } else if kind == UICollectionView.elementKindSectionFooter {
        } else if kind == UICollectionView.elementKindSectionFooter {
            //: footerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter,
            footerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter,
                                                                         //: withReuseIdentifier: SocialPopularListFooterView.className(),
                                                                         withReuseIdentifier: WeltanschauungView.className(),
                                                                         //: for: indexPath) as? SocialPopularListFooterView
                                                                         for: indexPath) as? WeltanschauungView
            //: footerView?.delegate = self
            footerView?.delegate = self
            //: return footerView!
            return footerView!
            //: } else {
        } else {
            //: return collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "EmptyCollectionReusableView", for: indexPath)
            return collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: (String(k_languageFormat) + kListImageViewValue.replacingOccurrences(of: "control", with: "n") + String(k_equalRawPath.prefix(4)) + "able" + String(k_containerId.suffix(4))), for: indexPath)
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        //: if section == 0 {
        if section == 0 {
            //: return CGSize(width: ScreenWidth, height: SocialHeaderView.getSelfHeight()+13)
            return CGSize(width: constFormalContent, height: ModeReusableView.videoHeight() + 13)
            //: } else {
        } else {
            //: return CGSize.zero
            return CGSize.zero
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
    func collectionView(_: UICollectionView, layout _: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        //: if section == 0 {
        if section == 0 {
            //: return CGSize(width: ScreenWidth, height: footerView?.getFooterViewHeight() ?? 0.01)
            return CGSize(width: constFormalContent, height: footerView?.ofBeauty() ?? 0.01)
            //: } else {
        } else {
            //: return CGSize.zero
            return CGSize.zero
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        // 下拉刷新时
        //: let limitCount = KDeviceIsIphoneX ? 6:4
        let limitCount = constScreenName ? 6 : 4
        //: var count = 0
        var count = 0
        //: if reqManager.section0Data.count > limitCount {
        if reqManager.section0Data.count > limitCount {
            //: count = limitCount
            count = limitCount
            //: } else if reqManager.section0Data.count <= limitCount {
        } else if reqManager.section0Data.count <= limitCount {
            //: count = reqManager.section0Data.count-1
            count = reqManager.section0Data.count - 1
        }

        //: let videocell: SocialPopularListCell = cell as! SocialPopularListCell
        let videocell: PopularThen = cell as! PopularThen

        //: videocell.stopPlay()
        videocell.removePage()
        //: if DistanceAppManager.share.appConfigMode.showVideoInList && DistanceAppManager.share.loginUserMode.sex == Gender.male.rawValue &&
        if DistanceAppManager.share.appConfigMode.showVideoInList && DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.male.rawValue &&
            //: indexPath.row == count && self.isFreshPlayerCell {
            indexPath.row == count && self.isFreshPlayerCell
        {
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                //: self.scrollViewEndScrollPlayer(scrollView: self.collectionView, istopfresh: true)
                self.ofIstopfresh(scrollView: self.collectionView, istopfresh: true)
            }
        }
    }
}

// MARK: - UIScrollViewDelegate

//: extension SocialPopularViewController: UIScrollViewDelegate {
extension UnseeableReactiveCompatible: UIScrollViewDelegate {
    /// 上传封面曝光次数
    //: func uploadUserListCover() {
    func markCover() {
        //: var temparray = [SocialPopularListCell]()
        var temparray = [PopularThen]()
        //: let array = collectionView.visibleCells
        let array = collectionView.visibleCells
        //: let limitLine = KDeviceIsIphoneX ? 3:2
        let limitLine = constScreenName ? 3 : 2
        //: for index in 0..<array.count {
        for index in 0 ..< array.count {
            /// 当前页面显示的
            //: let cell: SocialPopularListCell = array[index] as! SocialPopularListCell
            let cell: PopularThen = array[index] as! PopularThen
            //: if cell.origin.y >= collectionView.contentOffset.y-10 && cell.origin.y < collectionView.contentOffset.y + cell.size.height*CGFloat(limitLine) {
            if cell.origin.y >= collectionView.contentOffset.y - 10 && cell.origin.y < collectionView.contentOffset.y + cell.size.height * CGFloat(limitLine) {
                //: temparray.append(cell)
                temparray.append(cell)
            }
        }
        /// 过滤已经上报过的
        //: if self.userVisibleCells?.count ?? 0 > 0 {
        if self.userVisibleCells?.count ?? 0 > 0 {
            //: for i in 0..<userVisibleCells!.count {
            for i in 0 ..< userVisibleCells!.count {
                //: let celli: SocialPopularListCell = userVisibleCells?[i] as! SocialPopularListCell
                let celli: PopularThen = userVisibleCells?[i] as! PopularThen
                //: temparray.removeAll { $0.currentModel?.uid == celli.currentModel?.uid }
                temparray.removeAll { $0.currentModel?.uid == celli.currentModel?.uid }
            }
        }
        //: var toUid  = ""
        var toUid = ""
        //: for z in 0..<temparray.count {
        for z in 0 ..< temparray.count {
            //: let cellz: SocialPopularListCell = temparray[z]
            let cellz: PopularThen = temparray[z]
            //: if toUid.count > 0 {
            if toUid.count > 0 {
                //: toUid = "\(toUid),\(cellz.currentModel?.uid ?? 0)"
                toUid = "\(toUid),\(cellz.currentModel?.uid ?? 0)"
                //: } else {
            } else {
                //: toUid = "\(cellz.currentModel?.uid ?? 0)"
                toUid = "\(cellz.currentModel?.uid ?? 0)"
            }
        }
        //: if toUid.count > 0 {
        if toUid.count > 0 {
            //: uploadRecord.uploadRecordEvent(eventID: DisplayUserListNoP, toUid: toUid)
            kSoundName.messUp(eventID: kTableValue, toUid: toUid)
            //: self.userVisibleCells = temparray
            self.userVisibleCells = temparray
        }
    }

    //: func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        //: if scrollView.contentOffset.y < -5 {
        if scrollView.contentOffset.y < -5 {
            //: return
            return
        }
        //: scrollViewEndScrollPlayer(scrollView: scrollView, istopfresh: false)
        ofIstopfresh(scrollView: scrollView, istopfresh: false)
    }

    //: func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        //: if !decelerate {
        if !decelerate {
            //: if scrollView.contentOffset.y < -5 {
            if scrollView.contentOffset.y < -5 {
                //: return
                return
            }
            //: scrollViewEndScrollPlayer(scrollView: scrollView, istopfresh: false)
            ofIstopfresh(scrollView: scrollView, istopfresh: false)
        }
        //: uploadUserListCover()
        markCover()
    }

    /// 视频动态在屏幕中间时播放
    //: func scrollViewEndScrollPlayer(scrollView: UIScrollView, istopfresh: Bool) {
    func ofIstopfresh(scrollView: UIScrollView, istopfresh _: Bool) {
        //: if DistanceAppManager.share.appConfigMode.showVideoInList && DistanceAppManager.share.loginUserMode.sex == Gender.male.rawValue {
        if DistanceAppManager.share.appConfigMode.showVideoInList && DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.male.rawValue {
            //: if isgetPlayerCell {
            if isgetPlayerCell {
                //: return
                return
            }
            //: let array = collectionView.visibleCells
            let array = collectionView.visibleCells
            //: isgetPlayerCell = true
            isgetPlayerCell = true
            //: let celldataAM = NSMutableArray.init()
            let celldataAM = NSMutableArray()
            //: let limitLine = KDeviceIsIphoneX ? 3:2
            let limitLine = constScreenName ? 3 : 2
            //: for index in 0..<array.count {
            for index in 0 ..< array.count {
                //: let cell: SocialPopularListCell = array[index] as! SocialPopularListCell
                let cell: PopularThen = array[index] as! PopularThen
                //: if cell.origin.y >= scrollView.contentOffset.y-10 && cell.origin.y < scrollView.contentOffset.y + cell.size.height*CGFloat(limitLine) {
                if cell.origin.y >= scrollView.contentOffset.y - 10 && cell.origin.y < scrollView.contentOffset.y + cell.size.height * CGFloat(limitLine) {
                    //: let indexpath = collectionView.indexPath(for: cell)
                    let indexpath = collectionView.indexPath(for: cell)
                    //: var model: SocialUserListModel
                    var model: EqualModelType
                    //: if indexpath?.section == 0 {
                    if indexpath?.section == 0 {
                        //: model = reqManager.section0Data[indexpath!.row]
                        model = reqManager.section0Data[indexpath!.row]
                        //: } else {
                    } else {
                        //: model = reqManager.section1Data[indexpath!.row]
                        model = reqManager.section1Data[indexpath!.row]
                    }
                    //: if model.videoUrl.count > 0 {
                    if model.videoUrl.count > 0 {
                        //: celldataAM.append(cell)
                        celldataAM.append(cell)
                    }
                }
            }

            //: for i in 0..<celldataAM.count {
            for i in 0 ..< celldataAM.count {
                //: for j in 0..<celldataAM.count - 1 - i {
                for j in 0 ..< celldataAM.count - 1 - i {
                    //: let tNumber1: SocialPopularListCell = celldataAM[j] as! SocialPopularListCell
                    let tNumber1: PopularThen = celldataAM[j] as! PopularThen
                    //: let tNumber2: SocialPopularListCell = celldataAM[j+1] as! SocialPopularListCell
                    let tNumber2: PopularThen = celldataAM[j + 1] as! PopularThen
                    //: if tNumber1.origin.y > tNumber2.origin.y || (tNumber1.origin.y == tNumber2.origin.y && tNumber1.origin.x > tNumber2.origin.x) {
                    if tNumber1.origin.y > tNumber2.origin.y || (tNumber1.origin.y == tNumber2.origin.y && tNumber1.origin.x > tNumber2.origin.x) {
                        //: let tmp = celldataAM[j]
                        let tmp = celldataAM[j]
                        //: celldataAM[j] = tNumber2
                        celldataAM[j] = tNumber2
                        //: celldataAM[j+1] = tmp
                        celldataAM[j + 1] = tmp
                    }
                }
            }
            //: if celldataAM.count>0 {
            if celldataAM.count > 0 {
                //: if self.playerCell != celldataAM.copy() as! NSArray {
                if self.playerCell != celldataAM.copy() as! NSArray {
                    // 去掉之前播放
                    //: if self.playerCell.count>0 {
                    if self.playerCell.count > 0 {
                        //: let cell: SocialPopularListCell = self.playerCell[self.cunrrenplayerIndex] as! SocialPopularListCell
                        let cell: PopularThen = self.playerCell[self.cunrrenplayerIndex] as! PopularThen
                        //: cell.stopPlay()
                        cell.removePage()
                    }
                    //: self.playerCell  = celldataAM.copy() as! NSArray
                    self.playerCell = celldataAM.copy() as! NSArray
                    //: self.cunrrenplayerIndex = 0
                    self.cunrrenplayerIndex = 0
                    //: let cell: SocialPopularListCell = self.playerCell[self.cunrrenplayerIndex] as! SocialPopularListCell
                    let cell: PopularThen = self.playerCell[self.cunrrenplayerIndex] as! PopularThen
                    //: let indexpath = collectionView.indexPath(for: cell)
                    let indexpath = collectionView.indexPath(for: cell)
                    //: var model: SocialUserListModel
                    var model: EqualModelType
                    //: if indexpath?.section == 0 {
                    if indexpath?.section == 0 {
                        //: model = reqManager.section0Data[indexpath!.row]
                        model = reqManager.section0Data[indexpath!.row]
                        //: } else {
                    } else {
                        //: model = reqManager.section1Data[indexpath!.row]
                        model = reqManager.section1Data[indexpath!.row]
                    }
                    //: cell.configModel(videoUrl: model.videoUrl, imgUrl: model.cover)
                    cell.drawOn(videoUrl: model.videoUrl, imgUrl: model.cover)
                    //: cell.setupPlayer()
                    cell.light()
                }
                //: } else {
            } else {
                //: if self.playerCell.count>0 {
                if self.playerCell.count > 0 {
                    //: let cell: SocialPopularListCell = self.playerCell[self.cunrrenplayerIndex] as! SocialPopularListCell
                    let cell: PopularThen = self.playerCell[self.cunrrenplayerIndex] as! PopularThen
                    //: cell.stopPlay()
                    cell.removePage()
                    //: self.playerCell = NSArray()
                    self.playerCell = NSArray()
                }
            }
            //: self.isgetPlayerCell = false
            self.isgetPlayerCell = false
            //: self.isFreshPlayerCell = false
            self.isFreshPlayerCell = false
        }
    }
}

// MARK: - ResumeCellDelegate

//: extension SocialPopularViewController: SocialPopularListCellDelegate {
extension UnseeableReactiveCompatible: ResumeCellDelegate {
    /// 播打视频
    //: func chtToUser(model: SocialUserListModel) {
    func analogDigitalConverterHandleContentTheory(model: EqualModelType) {
        //: AddReactiveCompatible.share.func__pushToPriveteChatVC(chatID: "\(model.uid)")
        AddReactiveCompatible.share.tincture(chatID: "\(model.uid)")
    }

    /// 快速打招呼
    //: func greetToUser(uid: String) {
    func tableDownUid(uid: String) {
        //: let vc = TalkingPrivateChatController(chatID: uid)
        let vc = DistantViewController(chatID: uid)
        //: vc.func_sendQuickGreetingMsg()
        vc.andSoAddSize()
        //: vc.QuickEndBlock = { [weak self] isSuccess in
        vc.QuickEndBlock = { [weak self] isSuccess in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if !isSuccess {
            if !isSuccess {
                //: self.collectionView.reloadData()
                self.collectionView.reloadData()
                //: return
                return
            }
            //: self.func__showStatusBarSuccessMsg(showMsg: "Say hi successfully~".localized)
            self.rear(showMsg: (String(k_badMessage.suffix(6)) + String(kPlayMagnitudeId.prefix(6)) + "ssfu" + String(k_editTitle.prefix(4))).localized)
            //: for i in 0..<reqManager.section0Data.count {
            for i in 0 ..< reqManager.section0Data.count {
                //: let model = reqManager.section0Data[i]
                let model = reqManager.section0Data[i]
                //: if "\(model.uid)" == uid {
                if uid == "\(model.uid)" {
                    //: model.sendQuickMsg = 1
                    model.sendQuickMsg = 1
                    //: reqManager.section0Data[i] = model
                    reqManager.section0Data[i] = model
                }
            }
            //: for i in 0..<reqManager.section1Data.count {
            for i in 0 ..< reqManager.section1Data.count {
                //: let model = reqManager.section1Data[i]
                let model = reqManager.section1Data[i]
                //: if "\(model.uid)" == uid {
                if uid == "\(model.uid)" {
                    //: model.sendQuickMsg = 1
                    model.sendQuickMsg = 1
                    //: reqManager.section1Data[i] = model
                    reqManager.section1Data[i] = model
                }
            }
            //: self.collectionView.reloadData()
            self.collectionView.reloadData()
        }
    }

    //: func seleteBlockTool(model: SocialUserListModel) {
    func bigModel(model: EqualModelType) {
        //: TalkingUserRequestManager.func__pullBlackWithUserId(uid: "\(model.uid)", isBlack: true) { succeed, result, errorModel in
        FrameThen.cagey(uid: "\(model.uid)", isBlack: true) { succeed, _, _ in
            //: if succeed == true {
            if succeed == true {
                //: for (index, tempModel) in self.reqManager.section0Data.enumerated() {
                for (index, tempModel) in self.reqManager.section0Data.enumerated() {
                    //: if model.uid == tempModel.uid {
                    if model.uid == tempModel.uid {
                        //: self.reqManager.section0Data.remove(at: index)
                        self.reqManager.section0Data.remove(at: index)
                    }
                }
                //: for (index, tempModel) in self.reqManager.section1Data.enumerated() {
                for (index, tempModel) in self.reqManager.section1Data.enumerated() {
                    //: if model.uid == tempModel.uid {
                    if model.uid == tempModel.uid {
                        //: self.reqManager.section1Data.remove(at: index)
                        self.reqManager.section1Data.remove(at: index)
                    }
                }
                /// 如果是section0Data删除1位后则向上补齐
                //: if self.reqManager.section0Data.count < 4 && self.reqManager.section1Data.count > 0 {
                if self.reqManager.section0Data.count < 4 && self.reqManager.section1Data.count > 0 {
                    //: self.reqManager.section0Data.append(self.reqManager.section1Data.first!)
                    self.reqManager.section0Data.append(self.reqManager.section1Data.first!)
                    //: self.reqManager.section1Data.remove(at: 0)
                    self.reqManager.section1Data.remove(at: 0)
                }
                //: if self.reqManager.section1Data.count < 2 {
                if self.reqManager.section1Data.count < 2 {
                    //: self.footerRefresh()
                    self.makeEndReload()
                }

                //: ProgressHUD.toast("Shielding Success".localized)
                EndProgressHUD.terraceToast((String(kQuantityFormat) + String(k_withName.prefix(5)) + "cess").localized)
                //: self.seleteHideBlock()
                self.decipherUp()
                //: self.collectionView.reloadData()
                self.collectionView.reloadData()
            }
        }
    }

    //: func seleteShowBlock(model: SocialUserListModel) {
    func appearStatus(model: EqualModelType) {
        //: seleteBlobkModel = model
        seleteBlobkModel = model
        //: collectionView.reloadData()
        collectionView.reloadData()
    }

    //: func seleteHideBlock() {
    func decipherUp() {
        //: seleteBlobkModel = nil
        seleteBlobkModel = nil
    }

    //: func cellPlayerEnd() {
    func soccerPlayerPath() {
        //: if self.playerCell.count==0 {
        if self.playerCell.count == 0 {
            //: return
            return
        }
        //: if self.isgetPlayerCell {
        if self.isgetPlayerCell {
            //: return
            return
        }
        //: if self.cunrrenplayerIndex+1 > self.playerCell.count {
        if self.cunrrenplayerIndex + 1 > self.playerCell.count {
            //: self.cunrrenplayerIndex -= 1
            self.cunrrenplayerIndex -= 1
        }
        //: self.isgetPlayerCell = true
        self.isgetPlayerCell = true

        //: let cell1: SocialPopularListCell? = self.playerCell[self.cunrrenplayerIndex] as? SocialPopularListCell
        let cell1: PopularThen? = self.playerCell[self.cunrrenplayerIndex] as? PopularThen
        //: if cell1 != nil {
        if cell1 != nil {
            //: cell1?.stopPlay()
            cell1?.removePage()
        }

        //: if self.cunrrenplayerIndex+1 < self.playerCell.count {
        if self.cunrrenplayerIndex + 1 < self.playerCell.count {
            //: self.cunrrenplayerIndex += 1
            self.cunrrenplayerIndex += 1
            //: } else {
        } else {
            //: self.cunrrenplayerIndex = 0
            self.cunrrenplayerIndex = 0
        }
        //: let cell2: SocialPopularListCell? = self.playerCell[self.cunrrenplayerIndex] as? SocialPopularListCell
        let cell2: PopularThen? = self.playerCell[self.cunrrenplayerIndex] as? PopularThen
        //: if cell2 != nil {
        if cell2 != nil {
            //: let indexpath = collectionView.indexPath(for: cell2!)
            let indexpath = collectionView.indexPath(for: cell2!)
            //: if indexpath != nil {
            if indexpath != nil {
                //: var model: SocialUserListModel
                var model: EqualModelType
                //: if indexpath?.section == 0 {
                if indexpath?.section == 0 {
                    //: model = reqManager.section0Data[indexpath!.row]
                    model = reqManager.section0Data[indexpath!.row]
                    //: } else {
                } else {
                    //: model = reqManager.section1Data[indexpath!.row]
                    model = reqManager.section1Data[indexpath!.row]
                }
                //: cell2?.configModel(videoUrl: model.videoUrl, imgUrl: model.cover)
                cell2?.drawOn(videoUrl: model.videoUrl, imgUrl: model.cover)
                //: cell2?.setupPlayer()
                cell2?.light()
                //: } else {
            } else {
                //: cellPlayerEnd()
                soccerPlayerPath()
            }
        }

        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            //: self.isgetPlayerCell = false
            self.isgetPlayerCell = false
        }
    }
}

// MARK: - PullEndObjectProtocol

//: extension SocialPopularViewController: SocialPopularListFooterViewProtocol {
extension UnseeableReactiveCompatible: PullEndObjectProtocol {
    // 加载更多巨星计划数据
    //: func premiumStarLoadMoreData() {
    func sessionWith() {
        //: loadMore_premiumStarList()
        premium()
    }

    // 巨星计划跳转用户详情
    //: func premiumStarListCellClick(model: PremiumStarListModel?) {
    func mainSuperior(model: CancelListModel?) {
        //: guard model != nil else { return }
        guard model != nil else { return }
        //: AddReactiveCompatible.share.func__pushToUserDetailVC(uid: String(model!.uid))
        AddReactiveCompatible.share.afterTo(uid: String(model!.uid))
    }

    //: func adBannerCellClick(model: SocialAdBannerModel) {
    func bestowment(model: AdMeasurable) {
        //: SocialAdBannerModel.jumpEvent(model: model)
        AdMeasurable.smartModel(model: model)
    }
}

// MARK: - 定位权限监听

//: extension SocialPopularViewController {
extension UnseeableReactiveCompatible {
    //: func checkLocationAuth() {
    func that() {
        //: TalkingLocationManager.shared().requestLocationAuthorizaiton()
        PitchHiddenThen.endShared().overTheCounterMedicine()
        //: TalkingLocationManager.shared().getAuthBlock { [weak self] (type: PermissionType) in
        PitchHiddenThen.endShared().rowBlock { [weak self] (type: StreamPriorityTarget) in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: switch type {
            switch type {
            //: case .firstEntry:
            case .firstEntry: // 首次进入
                //: self.refreshViewStatus()
                self.statusBack()

            //: case .userRestricted:
            case .userRestricted: // 拒绝
                //: self.refreshViewStatus()
                self.statusBack()
                // 展示设置弹窗
                //: self.showSettingsAlertView()
                self.viewUser()

            //: case .alwaysAllowed:
            case .alwaysAllowed: // 允许
                //: self.firstLoadData()
                self.mottleData()
            }
        }
        /// 上报经纬度
        //: TalkingLocationManager.shared().getLocationBlock { success, latitude, longitude in
        PitchHiddenThen.endShared().firstText { success, latitude, longitude in
            //: if success {
            if success {
                //: SocialRequestManager.req_uploadPosition(params: ["lng": longitude, "lat": latitude]) { succeed, result, errorModel in
                SumRequestManager.requestCompletion(params: [String(bytes: k_kindTitle.map{cellTitle(begin: $0)}, encoding: .utf8)!: longitude, String(bytes: kUpName.map{viewData(main: $0)}, encoding: .utf8)!: latitude]) { _, _, _ in
                }
            }
        }
    }

    /// 设置弹窗
    //: func showSettingsAlertView() {
    func viewUser() {
        //: guard self.tabType == .nearby && TalkingLocationManager.shared().locationType == .userRestricted else {
        guard self.tabType == .nearby, PitchHiddenThen.endShared().locationType == .userRestricted else {
            //: return
            return
        }

        // 设置弹窗
        //: TalkingAlertShow.alert(title: nil, message: "Enter “Settings” and open “Location” permission to use function normally.".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Settings".localized) {
        FrameHiddenReactiveCompatible.theory(title: nil, message: String(bytes: k_builderEmptyContentPath.map{styleConnection(change: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(k_infoCommonPath)).localized, rightBtnTitle: (String(kLabStr.prefix(4)) + "ings").localized) {
            //: TalkingAlertShow.hideAlert()
            FrameHiddenReactiveCompatible.middleText()
            //: } rightBlock: {
        } rightBlock: {
            //: TalkingAlertShow.hideAlert()
            FrameHiddenReactiveCompatible.middleText()
            //: let url = URL(string: UIApplication.openSettingsURLString)
            let url = URL(string: UIApplication.openSettingsURLString)
            //: if let url = url, UIApplication.shared.canOpenURL(url) {
            if let url = url, UIApplication.shared.canOpenURL(url) {
                //: UIApplication.shared.open(url, options: [:], completionHandler: nil)
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}

// MARK: - Layout

//: extension SocialPopularViewController {
extension UnseeableReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func queryedTo() {
        //: self.view.addSubview(emptyV)
        self.view.addSubview(emptyV)
        //: self.view.addSubview(collectionView)
        self.view.addSubview(collectionView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func spreadOver() {
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(5)
            make.top.equalToSuperview().offset(5)
            //: make.leading.width.bottom.equalToSuperview()
            make.leading.width.bottom.equalToSuperview()
        }
        //: emptyV.snp.makeConstraints { make in
        emptyV.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(200)
            make.top.equalToSuperview().offset(200)
            //: make.leading.trailing.bottom.equalToSuperview()
            make.leading.trailing.bottom.equalToSuperview()
        }
    }

    // 添加通知
    //: private func addNotification() {
    private func nameUp() {
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(searchDetailRefreshNotification),
                                               selector: #selector(translation),
                                               //: name: SEARCH_DETAIL_HOMEREFRESH_NOTIFICATION,
                                               name: userItemInputText,
                                               //: object: nil)
                                               object: nil)
    }
}
