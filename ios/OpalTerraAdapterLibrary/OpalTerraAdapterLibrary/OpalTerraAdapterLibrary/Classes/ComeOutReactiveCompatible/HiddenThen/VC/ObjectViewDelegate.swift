
//: Declare String Begin

/*: "#777777" :*/
fileprivate let kGiftMakeId:[Character] = ["#","7","7","7","7","7","7"]

/*: "#333333" :*/
fileprivate let k_touchInsideMsg:[Character] = ["#","3","3","3","3","3","3"]

/*: "Search" :*/
fileprivate let k_withPath:String = "label corner endSearch"

/*: "Details" :*/
fileprivate let k_sizeFormat:String = "top modeDetails"

/*: "nav_back_black_nor" :*/
fileprivate let kRequestInfoId:[Character] = ["n","a","v","_","b","a","c"]
fileprivate let kEqualUrl:String = "k_blacsize view extension"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ObjectViewDelegate.swift
//  AbroadTalking
//
//  Created by young on 2023/5/16.
//

//: import JXPagingView
import JXPagingView
//: import JXSegmentedView
import JXSegmentedView
//: import UIKit
import UIKit

//: class TalkingSearchTabViewController: TalkingBaseViewController {
class ObjectViewDelegate: StartThen {
    //: private let segmentedDataSource = JXSegmentedTitleDataSource()
    private let segmentedDataSource = JXSegmentedTitleDataSource()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: setupSubviews()
        emptySubviews()
        //: setupSubViewsConstraint()
        cramAtConfinement()
    }

    // MARK: - Lazy load

    //: private lazy var categoryView: JXSegmentedView = {
    private lazy var categoryView: JXSegmentedView = {
        //: let segmentedView = JXSegmentedView.init(frame: CGRect.init(x: 50, y: StatusBarHeight, width: ScreenWidth-100, height: actualHeight(h: 54)))
        let segmentedView = JXSegmentedView(frame: CGRect(x: 50, y: main_netValue, width: constFormalContent - 100, height: actualHeight(h: 54)))
        //: segmentedDataSource.titles = titleArray
        segmentedDataSource.titles = titleArray
        //: segmentedDataSource.isTitleMaskEnabled = false
        segmentedDataSource.isTitleMaskEnabled = false
        //: segmentedDataSource.isItemSpacingAverageEnabled = true
        segmentedDataSource.isItemSpacingAverageEnabled = true
        //: segmentedDataSource.isSelectedAnimable = false
        segmentedDataSource.isSelectedAnimable = false
        //: segmentedDataSource.titleNormalColor = UIColor.init(hex: "#777777")!
        segmentedDataSource.titleNormalColor = UIColor(hex: (String(kGiftMakeId)))!
        //: segmentedDataSource.titleSelectedColor = UIColor.init(hex: "#333333")!
        segmentedDataSource.titleSelectedColor = UIColor(hex: (String(k_touchInsideMsg)))!
        //: segmentedDataSource.titleNormalFont = .fontChange(type: .Medium, fontSize: 16)
        segmentedDataSource.titleNormalFont = .fontChange(type: .Medium, fontSize: 16)
        //: segmentedDataSource.titleSelectedFont = .fontChange(type: .Medium, fontSize: 20)
        segmentedDataSource.titleSelectedFont = .fontChange(type: .Medium, fontSize: 20)
        //: let indicator = JXSegmentedIndicatorLineView()
        let indicator = JXSegmentedIndicatorLineView()
        //: indicator.indicatorWidth = 12
        indicator.indicatorWidth = 12
        //: indicator.indicatorHeight = 4
        indicator.indicatorHeight = 4
        //: indicator.verticalOffset = 14
        indicator.verticalOffset = 14
        //: indicator.lineStyle = .normal
        indicator.lineStyle = .normal
        //: indicator.indicatorColor = UIColor.init(hex: "#333333")!
        indicator.indicatorColor = UIColor(hex: (String(k_touchInsideMsg)))!
        //: segmentedView.dataSource = segmentedDataSource
        segmentedView.dataSource = segmentedDataSource
        //: segmentedView.indicators = [indicator]
        segmentedView.indicators = [indicator]
        //: segmentedView.delegate = self
        segmentedView.delegate = self
//        segmentedView.defaultSelectedIndex = currentIndex
        //: segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        segmentedView.contentScrollView = pagerView.listContainerView.scrollView
        //: segmentedView.backgroundColor = self.view.backgroundColor
        segmentedView.backgroundColor = self.view.backgroundColor
        //: return segmentedView
        return segmentedView
        //: }()
    }()

    //: private lazy var pagerView: JXPagingListRefreshView = {
    private lazy var pagerView: JXPagingListRefreshView = {
        //: let view = JXPagingListRefreshView.init(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        let view = JXPagingListRefreshView(delegate: self, listContainerType: JXPagingListContainerType.scrollView)
        //: view.frame = CGRect.init(x: 0, y: StatusBarHeight, width: ScreenWidth, height: ScreenHeight-StatusBarHeight)
        view.frame = CGRect(x: 0, y: main_netValue, width: constFormalContent, height: user_recordMarginValue - main_netValue)
//        view.defaultSelectedIndex = currentIndex
        //: return view
        return view
        //: }()
    }()

    //: private lazy var titleArray: [String] = {
    private lazy var titleArray: [String] = //: return ["Search".localized, "Details".localized]
        [(String(k_withPath.suffix(6))).localized, (String(k_sizeFormat.suffix(7))).localized]
    //: }()

    //: private lazy var dataVC: [TalkingBaseViewController] = {
    private lazy var dataVC: [StartThen] = //: return [RangeDataSource(), ToReactiveCompatible()]
        [RangeDataSource(), ToReactiveCompatible()]
    //: }()

    //: private lazy var backButton: UIButton = {
    private lazy var backButton: UIButton = {
        //: let btn = UIButton(type: .custom)
        let btn = UIButton(type: .custom)
        //: let img = UIImage.submitGift(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.submitGift(name: (String(kRequestInfoId) + String(kEqualUrl.prefix(6)) + "k_nor")).withRenderingMode(.alwaysTemplate)
        //: btn.setImage(img, for: .normal)
        btn.setImage(img, for: .normal)
        //: btn.tintColor = .black
        btn.tintColor = .black
        //: btn.addTarget(self, action: #selector(backButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(objectClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - JXSegmentedViewDelegate

//: extension TalkingSearchTabViewController: JXSegmentedViewDelegate {
extension ObjectViewDelegate: JXSegmentedViewDelegate {
    // 点击item或滑动时【点击标题和滑动视图都会调用】
    func segmentedView(_ segmentedView: JXSegmentedView, didSelectedItemAt index: Int) {
        //: view.endEditing(true)
        view.endEditing(true)
    }

    // 添加该方法是为了防止首次进入应用，直接点击nearby无法初始化页面的情况 【该方法只会在点击标题时调用】
    func segmentedView(_ segmentedView: JXSegmentedView, didClickSelectedItemAt index: Int) {
        //: pagerView.listContainerView.defaultSelectedIndex = index
        pagerView.listContainerView.defaultSelectedIndex = index
        pagerView.listContainerView.reloadData()
    }
}

// MARK: - JXPagerViewDelegate

//: extension TalkingSearchTabViewController: JXPagingViewDelegate {
extension ObjectViewDelegate: JXPagingViewDelegate {
    func pagingView(_ pagingView: JXPagingView, initListAtIndex index: Int) -> JXPagingViewListViewDelegate {

        //: var type = index
        var type = index
        //: if type < 0 { type = 0 }
        if type < 0 { type = 0 }
        //: let popularVC = dataVC[type]
        let popularVC = dataVC[type]
        //: return popularVC as! JXPagingViewListViewDelegate
        return popularVC as! JXPagingViewListViewDelegate
    }

    func tableHeaderViewHeight(in pagingView: JXPagingView) -> Int {
    
        //: return 0
        return 0
    }

    func tableHeaderView(in pagingView: JXPagingView) -> UIView {
    
        //: return UIView()
        return UIView()
    }

    func heightForPinSectionHeader(in pagingView: JXPagingView) -> Int {
    
        //: return Int(categoryView.frame.height)
        return Int(categoryView.frame.height)
    }

    func viewForPinSectionHeader(in pagingView: JXPagingView) -> UIView {
    
        //: return categoryView
        return categoryView
    }

    func numberOfLists(in pagingView: JXPagingView) -> Int {
    
        //: return titleArray.count
        return titleArray.count
    }
}

// MARK: - Event

//: extension TalkingSearchTabViewController {
extension ObjectViewDelegate {
    /// 返回按钮事件
    //: @objc private func backButtonClick() {
    @objc private func objectClick() {
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }
}

// MARK: - UI

//: extension TalkingSearchTabViewController {
extension ObjectViewDelegate {
    //: private func setupSubviews() {
    private func emptySubviews() {
        //: view.addSubview(pagerView)
        view.addSubview(pagerView)
        //: categoryView.addSubview(backButton)
        categoryView.addSubview(backButton)
    }

    //: private func setupSubViewsConstraint() {
    private func cramAtConfinement() {
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.centerY.equalToSuperview()
            make.leading.centerY.equalToSuperview()
            //: make.width.equalTo(40)
            make.width.equalTo(40)
            //: make.height.equalTo(44)
            make.height.equalTo(44)
        }
    }
}
