
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kMakeMessage:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "171615" :*/
fileprivate let kGroupTargetMsg:[Character] = ["1","7","1","6","1","5"]

/*: "st_slider_thumb" :*/
fileprivate let kInfoUrl:[Character] = ["s","t","_","s","l","i","d","e"]
fileprivate let kActualPlainName:[Character] = ["r","_","t","h","u","m","b"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewComelinessTrimObjectProtocol.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/31.
//

//: import UIKit
import UIKit

//: class STBeautyAdjustView: UIView {
class ViewComelinessTrimObjectProtocol: UIView {
    //: var currentItemType = BeautyItemType.Face
    var currentItemType = JoinHashableRepresentation.Face
    //: var popView: TalkingPopView?
    var popView: DataPopView?

    //: var curFeatureItem: GroupLooksModel?
    var curFeatureItem: GroupLooksModel?

    //: var faceItem: GroupLooksModel?
    var faceItem: GroupLooksModel?

    //: var eyesItem: GroupLooksModel?
    var eyesItem: GroupLooksModel?

    //: var noseItem: GroupLooksModel?
    var noseItem: GroupLooksModel?

    //: var lipItem: GroupLooksModel?
    var lipItem: GroupLooksModel?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kMakeMessage.reversed(), encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        vocalisationSubviews()
        //: changeTopItem(senderTag: BeautyItemType.Face.rawValue)
        pastTag(senderTag: JoinHashableRepresentation.Face.rawValue)
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy Load

    //: private lazy var beautyContainerView: UIScrollView = {
    private lazy var beautyContainerView: UIScrollView = {
        //: let sview = UIScrollView()
        let sview = UIScrollView()
        //: sview.backgroundColor = UIColor(hex: "171615")?.withAlphaComponent(0.9)
        sview.backgroundColor = UIColor(hex: (String(kGroupTargetMsg)))?.withAlphaComponent(0.9)
        //: return sview
        return sview
        //: }()
    }()

    //: private lazy var topItemView: STBeautyTopItemView = {
    private lazy var topItemView: TitleHighlightItemView = {
        //: let view = STBeautyTopItemView()
        let view = TitleHighlightItemView()
        //: view.frame = CGRect.init(x: 0, y: 50, width: ScreenWidth, height: 50)
        view.frame = CGRect(x: 0, y: 50, width: constFormalContent, height: 50)
        //: view.delegate = self
        view.delegate = self
        //: return view
        return view
        //: }()
    }()

    //: private lazy var itemCollectionView: STBeautyCollectionView = {
    private lazy var itemCollectionView: OpenDataSource = {
        //: let view = STBeautyCollectionView.init(frame: CGRect.init(x: 0, y: 50+18, width: ScreenWidth, height: beautyContainerView.height-50-18-kDeviceSafeBottomHeight), collectionViewLayout: UICollectionViewLayout())
        let view = OpenDataSource(frame: CGRect(x: 0, y: 50 + 18, width: constFormalContent, height: beautyContainerView.height - 50 - 18 - appButtonData), collectionViewLayout: UICollectionViewLayout())
        //: return view
        return view
        //: }()
    }()

    ///  滤镜列表
    //: private lazy var filterListView: STFilterListView = {
    private lazy var filterListView: FuturismDataSource = {
        //: let view = STFilterListView.init(frame: CGRect.init(x: ScreenWidth, y: 50+18, width: ScreenWidth, height: beautyContainerView.height-50-18-kDeviceSafeBottomHeight))
        let view = FuturismDataSource(frame: CGRect(x: constFormalContent, y: 50 + 18, width: constFormalContent, height: beautyContainerView.height - 50 - 18 - appButtonData))
        //: return view
        return view
        //: }()
    }()

    //: private lazy var beautySlider: STBeautySlider = {
    private lazy var beautySlider: CaptureControl = {
        //: let view = STBeautySlider.init(frame: CGRect.init(x: 22, y: 0, width: ScreenWidth-44, height: 40))
        let view = CaptureControl(frame: CGRect(x: 22, y: 0, width: constFormalContent - 44, height: 40))
        //: view.minimumTrackTintColor = UIColor.appThemeColor()
        view.minimumTrackTintColor = UIColor.increase()
        //: view.maximumTrackTintColor = .white
        view.maximumTrackTintColor = .white
        //: view.minimumValue = 0
        view.minimumValue = 0
        //: view.maximumValue = 1.0
        view.maximumValue = 1.0
        //: view.value  = 0
        view.value = 0
        //: view.addTarget(self, action: #selector(beautySliderValueChanged(sender:)), for: .valueChanged)
        view.addTarget(self, action: #selector(nameInput(sender:)), for: .valueChanged)
        //: view.setThumbImage(UIImage.submitGift(name: "st_slider_thumb"), for: .normal)
        view.setThumbImage(UIImage.submitGift(name: (String(kInfoUrl) + String(kActualPlainName))), for: .normal)

        //: return view
        return view
        //: }()
    }()
}

//: extension STBeautyAdjustView: STBeautyTopItemViewDelegate {
extension ViewComelinessTrimObjectProtocol: ChapiterObjectProtocol {
    //: func show() {
    func manage() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = DataPopView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.smart(view: self)
        //: popView?.showInView(view: UserTextMacroDefine.getWindow())
        popView?.academePosition(view: UserTextMacroDefine.clearstoryNo())
    }

    /// 重置
    //: func ResetBeauty() {
    func toBeauty() {
        //: self.faceItem = nil
        self.faceItem = nil
        //: self.eyesItem = nil
        self.eyesItem = nil
        //: self.noseItem = nil
        self.noseItem = nil
        //: self.lipItem = nil
        self.lipItem = nil

        //: CostServerReactiveCompatible.share.resetCustomDefSuite()
        CostServerReactiveCompatible.share.matchOf()
        //: self.itemCollectionView.resetDefaultBeautySuite()
        self.itemCollectionView.operatePost()
        //: if (self.currentItemType == .Filter) {
        if self.currentItemType == .Filter {
            //: self.beautySlider.isHidden = true
            self.beautySlider.isHidden = true
        }

        //: CostServerReactiveCompatible.share.initFilterData()
        CostServerReactiveCompatible.share.makeInit()
        //: CostServerReactiveCompatible.share.reloadFilterData(model: CostServerReactiveCompatible.share.filterModelArray.first!)
        CostServerReactiveCompatible.share.borderPath(model: CostServerReactiveCompatible.share.filterModelArray.first!)
        //: filterListView.reLoadSetFilter(model: CostServerReactiveCompatible.share.filterSuite ?? RangeReactiveCompatible.init())
        filterListView.withShow(model: CostServerReactiveCompatible.share.filterSuite ?? RangeReactiveCompatible())
        //: NotificationCenter.default.post(name: kNotificationSelectBeautyFilter, object: CostServerReactiveCompatible.share.filterModelArray.first, userInfo: nil)
        NotificationCenter.default.post(name: userSuccessSaltScreenTitle, object: CostServerReactiveCompatible.share.filterModelArray.first, userInfo: nil)

        //: let value = Float(CostServerReactiveCompatible.share.customSuite.fWhitenStrength/0.9)
        let value = Float(CostServerReactiveCompatible.share.customSuite.fWhitenStrength / 0.9)
        //: self.beautySlider.value = value
        self.beautySlider.value = value
        //: self.beautySlider.configShowValue(value: Float(CostServerReactiveCompatible.share.customSuite.fWhitenStrength*100))
        self.beautySlider.counterrupt(value: Float(CostServerReactiveCompatible.share.customSuite.fWhitenStrength * 100))
    }

    //: func setBeautySetSuiteType(afterSuiteType: Int) {
    func viewType(afterSuiteType: Int) {
        //: let type = BeautyItemType(rawValue: afterSuiteType) ?? .Face
        let type = JoinHashableRepresentation(rawValue: afterSuiteType) ?? .Face

        //: CostServerReactiveCompatible.share.curBeautySuite = type
        CostServerReactiveCompatible.share.curBeautySuite = type

        //: self.itemCollectionView.setCurSuiteType(curSuiteType: type)
        self.itemCollectionView.untilTo(curSuiteType: type)
    }

    //: func handleSelectFeatureItem(featureItem: GroupLooksModel, category: STBeautyCategory) {
    func fileGrammaticalCategory(featureItem: GroupLooksModel, category _: ClassExpressionConvertible) {
        //: self.curFeatureItem = featureItem
        self.curFeatureItem = featureItem
        //: if featureItem.canEdit() {
        if featureItem.commentKeep() {
            //: self.beautySlider.isEnabled = true
            self.beautySlider.isEnabled = true
            //: self.beautySlider.halfMode = !featureItem.isOnlyPositiveValue()
            self.beautySlider.halfMode = !featureItem.climax()
            //: if featureItem.isLimitMaxNightValue() {
            if featureItem.stochasticProcess() {
                //: self.beautySlider.value = Float(featureItem.beautyValue/0.9)
                self.beautySlider.value = Float(featureItem.beautyValue / 0.9)
                //: }else {
            } else {
                //: self.beautySlider.value = Float(featureItem.beautyValue)
                self.beautySlider.value = Float(featureItem.beautyValue)
            }
            //: self.beautySlider.configShowValue(value: self.curFeatureItem?.showBeautyValue() ?? 0.0)
            self.beautySlider.counterrupt(value: self.curFeatureItem?.presentHeadArgumentRender() ?? 0.0)

            //: self.beautySlider.isHidden = false
            self.beautySlider.isHidden = false
            //: } else {
        } else {
            //: self.beautySlider.isHidden = true
            self.beautySlider.isHidden = true
        }
    }

    //: @objc func beautySliderValueChanged(sender: STBeautySlider) {
    @objc func nameInput(sender: CaptureControl) {
        //: if (self.currentItemType == .Filter) {
        if self.currentItemType == .Filter {
            // 滤镜
            //: self.filterListView.selectModel?.beautyValue = Double(sender.value)
            self.filterListView.selectModel?.beautyValue = Double(sender.value)
            //: self.beautySlider.configShowValue(value: self.filterListView.selectModel?.showBeautyValue() ?? 0.0)
            self.beautySlider.counterrupt(value: self.filterListView.selectModel?.presentHeadArgumentRender() ?? 0.0)

            //: NotificationCenter.default.post(name: kNotificationBeautyFilterValueChange, object: self.filterListView.selectModel, userInfo: nil)
            NotificationCenter.default.post(name: app_scaleText, object: self.filterListView.selectModel, userInfo: nil)

            //: CostServerReactiveCompatible.share.reloadFilterData(model: self.filterListView.selectModel ?? GroupLooksModel.init())
            CostServerReactiveCompatible.share.borderPath(model: self.filterListView.selectModel ?? GroupLooksModel())
            //: }else {
        } else {
            //: if self.curFeatureItem != nil {
            if self.curFeatureItem != nil {
                //: if self.curFeatureItem?.isLimitMaxNightValue() == true {
                if self.curFeatureItem?.stochasticProcess() == true {
                    //: self.curFeatureItem?.beautyValue = Double(sender.value*0.9)
                    self.curFeatureItem?.beautyValue = Double(sender.value * 0.9)
                    //: }else {
                } else {
                    //: self.curFeatureItem?.beautyValue = Double(sender.value)
                    self.curFeatureItem?.beautyValue = Double(sender.value)
                }
                //: self.beautySlider.configShowValue(value: self.curFeatureItem?.showBeautyValue() ?? 0.0)
                self.beautySlider.counterrupt(value: self.curFeatureItem?.presentHeadArgumentRender() ?? 0.0)

                //: NotificationCenter.default.post(name: kNotificationBeautyFeatureModity, object: self.curFeatureItem, userInfo: nil)
                NotificationCenter.default.post(name: notiLimitTimeText, object: self.curFeatureItem, userInfo: nil)

                //: } else {
            } else {
                //: sender.isEnabled = false
                sender.isEnabled = false
                //: sender.isHidden  = true
                sender.isHidden = true
            }
        }
    }

    /// 切换item
    /// @param itemType

    //: func changeTopItem(senderTag: Int) {
    func pastTag(senderTag: Int) {
        //: let itemType = BeautyItemType(rawValue: senderTag) ?? .Face
        let itemType = JoinHashableRepresentation(rawValue: senderTag) ?? .Face
        //: self.currentItemType = itemType
        self.currentItemType = itemType

        //: if itemType == .Filter {
        if itemType == .Filter {
            //: self.beautyContainerView.setContentOffset(CGPoint.init(x: ScreenWidth, y: 0), animated: true)
            self.beautyContainerView.setContentOffset(CGPoint(x: constFormalContent, y: 0), animated: true)
            //: if self.filterListView.selectModel?.strPath.count == 0 {
            if self.filterListView.selectModel?.strPath.count == 0 {
                //: self.beautySlider.isHidden = true
                self.beautySlider.isHidden = true
                //: }else {
            } else {
                //: self.beautySlider.isHidden = false
                self.beautySlider.isHidden = false
                //: self.beautySlider.isEnabled = true
                self.beautySlider.isEnabled = true
                //: self.beautySlider.halfMode = false
                self.beautySlider.halfMode = false
                //: self.beautySlider.configShowValue(value: self.filterListView.selectModel?.showBeautyValue() ?? 0.0)
                self.beautySlider.counterrupt(value: self.filterListView.selectModel?.presentHeadArgumentRender() ?? 0.0)
                //: self.beautySlider.value = Float(self.filterListView.selectModel?.beautyValue ?? 0.0)
                self.beautySlider.value = Float(self.filterListView.selectModel?.beautyValue ?? 0.0)
            }
            //: }else {
        } else {
            //: itemCollectionView.setCurSuiteType(curSuiteType: itemType)
            itemCollectionView.untilTo(curSuiteType: itemType)
            //: self.beautySlider.isHidden = false
            self.beautySlider.isHidden = false
            //: self.beautyContainerView.setContentOffset(CGPoint.init(x: 0, y: 0), animated: true)
            self.beautyContainerView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)

            //: var  model = itemCollectionView.featureItems.first as? GroupLooksModel
            var model = itemCollectionView.featureItems.first as? GroupLooksModel
            //: switch itemType {
            switch itemType {
            //: case .Face:
            case .Face:
                //: if self.faceItem != nil {
                if self.faceItem != nil {
                    //: model = self.faceItem
                    model = self.faceItem
                }
            //: case .Eyes:
            case .Eyes:
                //: if self.eyesItem != nil {
                if self.eyesItem != nil {
                    //: model = self.eyesItem
                    model = self.eyesItem
                }
            //: case .Nose:
            case .Nose:
                //: if self.noseItem != nil {
                if self.noseItem != nil {
                    //: model = self.noseItem
                    model = self.noseItem
                }
            //: case .Lip:
            case .Lip:
                //: if self.lipItem != nil {
                if self.lipItem != nil {
                    //: model = self.lipItem
                    model = self.lipItem
                }
            //: default:
            default:
                //: break
                break
            }

            //: handleSelectFeatureItem(featureItem: model ?? GroupLooksModel.init(), category: self.curFeatureItem?.category ?? .Base)
            fileGrammaticalCategory(featureItem: model ?? GroupLooksModel(), category: self.curFeatureItem?.category ?? .Base)
            //: self.itemCollectionView.curItem = model
            self.itemCollectionView.curItem = model
            //: self.itemCollectionView.reloadData()
            self.itemCollectionView.reloadData()
        }
    }

    /// 选择滤镜
    /// @param featureModel _
    //: func selectFilter(featureModel: GroupLooksModel) {
    func streetwiseProvider(featureModel _: GroupLooksModel) {
        //: if self.filterListView.selectModel?.strPath.count == 0 {
        if self.filterListView.selectModel?.strPath.count == 0 {
            //: self.beautySlider.isHidden = true
            self.beautySlider.isHidden = true
            //: }else {
        } else {
            //: self.beautySlider.isHidden = false
            self.beautySlider.isHidden = false
            //: self.beautySlider.isEnabled = true
            self.beautySlider.isEnabled = true
            //: self.beautySlider.halfMode = false
            self.beautySlider.halfMode = false
            //: self.beautySlider.configShowValue(value: self.filterListView.selectModel?.showBeautyValue() ?? 0.0)
            self.beautySlider.counterrupt(value: self.filterListView.selectModel?.presentHeadArgumentRender() ?? 0.0)
            //: self.beautySlider.value = Float(self.filterListView.selectModel?.beautyValue ?? 0.0)
            self.beautySlider.value = Float(self.filterListView.selectModel?.beautyValue ?? 0.0)
        }
        //: CostServerReactiveCompatible.share.reloadFilterData(model: self.filterListView.selectModel ?? GroupLooksModel.init())
        CostServerReactiveCompatible.share.borderPath(model: self.filterListView.selectModel ?? GroupLooksModel())
        //: NotificationCenter.default.post(name: kNotificationSelectBeautyFilter, object: self.filterListView.selectModel, userInfo: nil)
        NotificationCenter.default.post(name: userSuccessSaltScreenTitle, object: self.filterListView.selectModel, userInfo: nil)
    }

    //: func selectBeauty(model: GroupLooksModel) {
    func selectPost(model: GroupLooksModel) {
        //: if itemCollectionView.curItem == nil {
        if itemCollectionView.curItem == nil {
            //: self.beautySlider.isHidden = true
            self.beautySlider.isHidden = true
            //: }else {
        } else {
            //: self.beautySlider.isHidden = false
            self.beautySlider.isHidden = false
            //: self.beautySlider.isEnabled = true
            self.beautySlider.isEnabled = true
            //: self.beautySlider.halfMode = false
            self.beautySlider.halfMode = false
            //: self.beautySlider.configShowValue(value: itemCollectionView.curItem?.showBeautyValue() ?? 0.0)
            self.beautySlider.counterrupt(value: itemCollectionView.curItem?.presentHeadArgumentRender() ?? 0.0)
            //: self.beautySlider.value = Float(itemCollectionView.curItem?.beautyValue ?? 0.0)
            self.beautySlider.value = Float(itemCollectionView.curItem?.beautyValue ?? 0.0)
            //: self.curFeatureItem = model
            self.curFeatureItem = model
            //: switch self.currentItemType {
            switch self.currentItemType {
            //: case .Face:
            case .Face:
                //: self.faceItem = model
                self.faceItem = model
            //: case .Eyes:
            case .Eyes:
                //: self.eyesItem = model
                self.eyesItem = model
            //: case .Nose:
            case .Nose:
                //: self.noseItem = model
                self.noseItem = model
            //: case .Lip:
            case .Lip:
                //: self.lipItem = model
                self.lipItem = model
            //: default:
            default:
                //: break
                break
            }
        }
    }
}

//: extension STBeautyAdjustView {
extension ViewComelinessTrimObjectProtocol {
    //: func setupSubviews() {
    func vocalisationSubviews() {
        //: self.layoutIfNeeded()
        self.layoutIfNeeded()
        //: self.currentItemType = .Face
        self.currentItemType = .Face
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear

        //: beautyContainerView.frame = CGRect.init(x: 0, y: 50, width: ScreenWidth, height: self.height - 50)
        beautyContainerView.frame = CGRect(x: 0, y: 50, width: constFormalContent, height: self.height - 50)
        //: self.addSubview(beautyContainerView)
        self.addSubview(beautyContainerView)
        //: self.addSubview(topItemView)
        self.addSubview(topItemView)
        //: self.addSubview(beautySlider)
        self.addSubview(beautySlider)
        //: beautyContainerView.addSubview(itemCollectionView)
        beautyContainerView.addSubview(itemCollectionView)

        //: itemCollectionView.setCurSuiteType(curSuiteType: CostServerReactiveCompatible.share.curBeautySuite ?? .Face)
        itemCollectionView.untilTo(curSuiteType: CostServerReactiveCompatible.share.curBeautySuite ?? .Face)
        //: itemCollectionView.selectBeautyBlock = {[weak self] bmodel in
        itemCollectionView.selectBeautyBlock = { [weak self] bmodel in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.selectBeauty(model: bmodel)
            self.selectPost(model: bmodel)
        }
        // 添加滤镜
        //: beautyContainerView.addSubview(filterListView)
        beautyContainerView.addSubview(filterListView)
        //: filterListView.selectFilterBlock = { [weak self] featureItem in
        filterListView.selectFilterBlock = { [weak self] featureItem in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.selectFilter(featureModel: featureItem)
            self.streetwiseProvider(featureModel: featureItem)
        }
        //: filterListView.reLoadSetFilter(model: CostServerReactiveCompatible.share.filterSuite ?? RangeReactiveCompatible.init())
        filterListView.withShow(model: CostServerReactiveCompatible.share.filterSuite ?? RangeReactiveCompatible())
    }
}
