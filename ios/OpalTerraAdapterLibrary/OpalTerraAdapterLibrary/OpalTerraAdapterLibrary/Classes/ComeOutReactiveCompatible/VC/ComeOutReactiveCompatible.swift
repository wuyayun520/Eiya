
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_iconAtValue:[UInt8] = [0x9a,0x9d,0x9a,0x87,0xdb,0x90,0x9c,0x97,0x96,0x81,0xc9,0xda,0xd3,0x9b,0x92,0x80,0xd3,0x9d,0x9c,0x87,0xd3,0x91,0x96,0x96,0x9d,0xd3,0x9a,0x9e,0x83,0x9f,0x96,0x9e,0x96,0x9d,0x87,0x96,0x97]

/*: "icon_rank_left" :*/
fileprivate let kShareId:String = "self size content newicon_ra"
fileprivate let kIndexLabEqualPath:[Character] = ["n","k","_","l","e","f","t"]

/*: "icon_rank_right" :*/
fileprivate let kReportName:[Character] = ["i","c","o","n","_","r","a","n","k","_","r","i","g","h","t"]

/*: "Yesterday" :*/
fileprivate let kSizePath:String = "register sendYe"
fileprivate let k_cancelData:[Character] = ["s","t","e","r","d","a","y"]

/*: "Today" :*/
fileprivate let kIndexMessage:[Character] = ["T","o","d","a","y"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ComeOutReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/14.
//

//: import JXSegmentedView
import JXSegmentedView
//: import Then
import Then
//: import UIKit
import UIKit

//: class SocialRankChildVC: TalkingBaseViewController {
class ComeOutReactiveCompatible: StartThen {
    // MARK: params

    //: var titles = [String]()
    var titles = [String]()
    //: var rankPeriodModel = SocialPeriodModel()
    var rankPeriodModel = StreamHandyJSON()
    //: var type = 0
    var type = 0

    //: let segmentedDataSource = JXSegmentedTitleDataSource()
    let segmentedDataSource = JXSegmentedTitleDataSource()
    //: let segmentedView = JXSegmentedView()
    let segmentedView = JXSegmentedView()

    // MARK: Controller life

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: hideNavi = true
        hideNavi = true
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_iconAtValue.map{$0^243}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = .clear
        self.view.backgroundColor = .clear

        //: setupSubviews()
        buttonSubviews()
    }

    //: override func viewDidLayoutSubviews() {
    override func viewDidLayoutSubviews() {
        //: super.viewDidLayoutSubviews()
        super.viewDidLayoutSubviews()

        //: listContainerView.frame = CGRect(x: 0, y: 60, width: view.bounds.size.width, height: view.bounds.size.height - 60)
        listContainerView.frame = CGRect(x: 0, y: 60, width: view.bounds.size.width, height: view.bounds.size.height - 60)
    }

    // MARK: - Lazy Load

    //: let leftImgView = UIImageView().then {
    let leftImgView = UIImageView().then {
        //: $0.image = UIImage.submitGift(name: "icon_rank_left")
        $0.image = UIImage.submitGift(name: (String(kShareId.suffix(7)) + String(kIndexLabEqualPath)))
    }

    //: let rightImgView = UIImageView().then {
    let rightImgView = UIImageView().then {
        //: $0.image = UIImage.submitGift(name: "icon_rank_right")
        $0.image = UIImage.submitGift(name: (String(kReportName)))
    }

    //: lazy var listContainerView: JXSegmentedListContainerView! = {
    lazy var listContainerView: JXSegmentedListContainerView! = //: return JXSegmentedListContainerView(dataSource: self)
        JXSegmentedListContainerView(dataSource: self)
    //: }()
}

// MARK: - request

//: extension SocialRankChildVC {
extension ComeOutReactiveCompatible {
    //: private func setupBindings() {
    private func groundListTable() {}
}

// MARK: - Event

//: extension SocialRankChildVC {
extension ComeOutReactiveCompatible {
    //: private func getModelArray(subTitle: String) -> [SocialRankItemModel] {
    private func getClick(subTitle: String) -> [FrameworkItemModel] {
        //: if subTitle == "Yesterday".localized {
        if subTitle == (String(kSizePath.suffix(2)) + String(k_cancelData)).localized {
            //: return addEmptyModel(data: rankPeriodModel.yesterday?.res ?? [])
            return voiceCopernicanSystem(data: rankPeriodModel.yesterday?.res ?? [])
            //: } else if subTitle == "Today".localized {
        } else if subTitle == (String(kIndexMessage)).localized {
            //: return addEmptyModel(data: rankPeriodModel.today?.res ?? [])
            return voiceCopernicanSystem(data: rankPeriodModel.today?.res ?? [])
            //: } else {
        } else {
            //: return addEmptyModel(data: rankPeriodModel.weekly?.res ?? [])
            return voiceCopernicanSystem(data: rankPeriodModel.weekly?.res ?? [])
        }
    }

    /// 添加占位数据（保证UI展示美观）
    /// - Parameter data: 数据源
    /// - Returns: 添加空数据后的数据源
    //: private func addEmptyModel(data: [SocialRankItemModel]) -> [SocialRankItemModel] {
    private func voiceCopernicanSystem(data: [FrameworkItemModel]) -> [FrameworkItemModel] {
        //: var mData = data
        var mData = data
        //: if mData.count == 0 {
        if mData.count == 0 {
            //: return []
            return []
            //: } else if mData.count >= 9 {
        } else if mData.count >= 9 {
            //: return mData
            return mData
            //: } else {
        } else {
            //: for _ in mData.count...9 {
            for _ in mData.count ... 9 {
                //: var model = SocialRankItemModel()
                var model = FrameworkItemModel()
                //: model.isEmpty = true
                model.isEmpty = true
                //: mData.append(model)
                mData.append(model)
            }

            //: return mData
            return mData
        }
    }
}

//: extension SocialRankChildVC: JXSegmentedListContainerViewListDelegate {
extension ComeOutReactiveCompatible: JXSegmentedListContainerViewListDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return view
        return view
    }
}

//: extension SocialRankChildVC: JXSegmentedListContainerViewDataSource {
extension ComeOutReactiveCompatible: JXSegmentedListContainerViewDataSource {
    //: func numberOfLists(in listContainerView: JXSegmentedListContainerView) -> Int {
    func numberOfLists(in _: JXSegmentedListContainerView) -> Int {
        //: if let titleDataSource = segmentedView.dataSource as? JXSegmentedBaseDataSource {
        if let titleDataSource = segmentedView.dataSource as? JXSegmentedBaseDataSource {
            //: return titleDataSource.dataSource.count
            return titleDataSource.dataSource.count
        }
        //: return 0
        return 0
    }

    //: func listContainerView(_ listContainerView: JXSegmentedListContainerView, initListAt index: Int) -> JXSegmentedListContainerViewListDelegate {
    func listContainerView(_: JXSegmentedListContainerView, initListAt index: Int) -> JXSegmentedListContainerViewListDelegate {
        //: let listView = SocialRankListView()
        let listView = BearDoingDataSource()
        //: listView.type = self.type
        listView.type = self.type
        //: listView.dataArray = self.getModelArray(subTitle: titles[index])
        listView.dataArray = self.getClick(subTitle: titles[index])
        //: return listView
        return listView
    }
}

// MARK: - Layout

//: extension SocialRankChildVC {
extension ComeOutReactiveCompatible {
    //: private func setupSubviews() {
    private func buttonSubviews() {
        //: let totalWidth = 270.0
        let totalWidth = 270.0

        //: segmentedDataSource.titles = titles
        segmentedDataSource.titles = titles
        //: segmentedDataSource.itemWidth = totalWidth/3
        segmentedDataSource.itemWidth = totalWidth / 3
        //: segmentedDataSource.itemSpacing = 0
        segmentedDataSource.itemSpacing = 0
        //: segmentedDataSource.titleNormalColor = .white.withAlphaComponent(0.7)
        segmentedDataSource.titleNormalColor = .white.withAlphaComponent(0.7)
        //: segmentedDataSource.isTitleMaskEnabled = true
        segmentedDataSource.isTitleMaskEnabled = true
        //: segmentedDataSource.titleSelectedColor = UIColor.RGBA(207, 72, 255, 1)
        segmentedDataSource.titleSelectedColor = UIColor.behindVoice(207, 72, 255, 1)
        //: segmentedDataSource.titleNormalFont = .fontChange(type: .Medium, fontSize: 15)
        segmentedDataSource.titleNormalFont = .fontChange(type: .Medium, fontSize: 15)
        //: segmentedDataSource.titleSelectedFont = .fontChange(type: .Medium, fontSize: 15)
        segmentedDataSource.titleSelectedFont = .fontChange(type: .Medium, fontSize: 15)

        // 配置指示器
        //: let indicator = JXSegmentedIndicatorBackgroundView()
        let indicator = JXSegmentedIndicatorBackgroundView()
        //: indicator.indicatorHeight = 36
        indicator.indicatorHeight = 36
        //: indicator.indicatorWidthIncrement = 0
        indicator.indicatorWidthIncrement = 0
        //: indicator.indicatorCornerRadius = 18
        indicator.indicatorCornerRadius = 18
        //: indicator.indicatorColor = .white
        indicator.indicatorColor = .white

        //: segmentedView.dataSource = segmentedDataSource
        segmentedView.dataSource = segmentedDataSource
        //: segmentedView.indicators = [indicator]
        segmentedView.indicators = [indicator]
        //: segmentedView.layer.masksToBounds = true
        segmentedView.layer.masksToBounds = true
        //: segmentedView.layer.cornerRadius = 18
        segmentedView.layer.cornerRadius = 18
        //: segmentedView.backgroundColor = UIColor.RGBA(212, 131, 255, 1)
        segmentedView.backgroundColor = UIColor.behindVoice(212, 131, 255, 1)
        //: segmentedView.defaultSelectedIndex = 1
        segmentedView.defaultSelectedIndex = 1

        //: segmentedView.frame = CGRect(x: (ScreenWidth-270)/2, y: 10, width: totalWidth, height: 36)
        segmentedView.frame = CGRect(x: (constFormalContent - 270) / 2, y: 10, width: totalWidth, height: 36)
        //: view.addSubview(segmentedView)
        view.addSubview(segmentedView)

        //: leftImgView.frame = CGRect(x: segmentedView.origin.x-22, y: 6, width: 20, height: 27)
        leftImgView.frame = CGRect(x: segmentedView.origin.x - 22, y: 6, width: 20, height: 27)
        //: view.addSubview(leftImgView)
        view.addSubview(leftImgView)

        //: rightImgView.frame = CGRect(x: segmentedView.origin.x+totalWidth+2, y: 6, width: 20, height: 27)
        rightImgView.frame = CGRect(x: segmentedView.origin.x + totalWidth + 2, y: 6, width: 20, height: 27)
        //: view.addSubview(rightImgView)
        view.addSubview(rightImgView)

        //: segmentedView.listContainer = listContainerView
        segmentedView.listContainer = listContainerView
        //: view.addSubview(listContainerView)
        view.addSubview(listContainerView)
    }
}
