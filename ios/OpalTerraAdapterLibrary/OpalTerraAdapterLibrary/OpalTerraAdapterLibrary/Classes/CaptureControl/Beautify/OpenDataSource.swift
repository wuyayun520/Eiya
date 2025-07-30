
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_voiceText:[UInt8] = [0xe9,0xee,0xe9,0xf4,0xa8,0xe3,0xef,0xe4,0xe5,0xf2,0xba,0xa9,0xa0,0xe8,0xe1,0xf3,0xa0,0xee,0xef,0xf4,0xa0,0xe2,0xe5,0xe5,0xee,0xa0,0xe9,0xed,0xf0,0xec,0xe5,0xed,0xe5,0xee,0xf4,0xe5,0xe4]

private func selfUser(bottom num: UInt8) -> UInt8 {
    return num ^ 128
}

/*: "featureCell" :*/
fileprivate let k_appValue:String = "normaleat"

/*: "placeholder" :*/
fileprivate let k_scaleUrl:String = "pmaxceh"
fileprivate let kBrightData:[Character] = ["o","l","d","e","r"]

/*: "suiteCell" :*/
fileprivate let kMagnitudeeractionToolKey:[Character] = ["s","u"]
fileprivate let kSelectedId:String = "iteCellname let"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OpenDataSource.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/31.
//

//: import UIKit
import UIKit

//: typealias DidSelectHandler = (_ featureItem: GroupLooksModel) -> Void
typealias DidSelectHandler = (_ featureItem: GroupLooksModel) -> Void

//: class STBeautyCollectionView: UICollectionView {
class OpenDataSource: UICollectionView {
    //: var curSuiteType = BeautyItemType.Face
    var curSuiteType = JoinHashableRepresentation.Face
    //: var featureItems = Array<Any>()
    var featureItems = [Any]()
    //: var curItem: GroupLooksModel?
    var curItem: GroupLooksModel?
    //: var selectBeautyBlock: SelectFilterBlock?
    var selectBeautyBlock: SelectFilterBlock?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_voiceText.map{selfUser(bottom: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
    override init(frame: CGRect, collectionViewLayout _: UICollectionViewLayout) {
        //: let layout = STBeautyLayout.init()
        let layout = PulchritudeViewLayout()
        //: layout.scrollDirection = .horizontal
        layout.scrollDirection = .horizontal

        //: super.init(frame: frame, collectionViewLayout: layout)
        super.init(frame: frame, collectionViewLayout: layout)

        //: setupSubviews()
        correlationTable()
    }

    //: deinit {
    deinit {}
}

//: extension STBeautyCollectionView {
extension OpenDataSource {
    //: func setupData() {
    func userData() {
        //: let tmp = NSMutableArray.init()
        let tmp = NSMutableArray()
        //: switch (self.curSuiteType) {
        switch self.curSuiteType {
        //: case .Face:
        case .Face:
            //: let faceArr  = GroupLooksModel.init().arrayOfFeatureModelWith(categoryType: .Base)
            let faceArr = GroupLooksModel().attributeTapWith(categoryType: .Base)
            //: tmp.addObjects(from: faceArr)
            tmp.addObjects(from: faceArr)

        //: case .Eyes:
        case .Eyes:
            //: let faceArr  = GroupLooksModel.init().arrayOfFeatureModelWith(categoryType: .Shape)
            let faceArr = GroupLooksModel().attributeTapWith(categoryType: .Shape)
            //: tmp.addObjects(from: faceArr)
            tmp.addObjects(from: faceArr)

        //: case .Nose:
        case .Nose:
            //: let faceArr  = GroupLooksModel.init().arrayOfFeatureModelWith(categoryType: .MicroSurgery)
            let faceArr = GroupLooksModel().attributeTapWith(categoryType: .MicroSurgery)
            //: tmp.addObjects(from: faceArr)
            tmp.addObjects(from: faceArr)

        //: case .Lip:
        case .Lip:
            //: let faceArr  = GroupLooksModel.init().arrayOfFeatureModelWith(categoryType: .MakeUp)
            let faceArr = GroupLooksModel().attributeTapWith(categoryType: .MakeUp)
            //: tmp.addObjects(from: faceArr)
            tmp.addObjects(from: faceArr)

        //: default:
        default:
            //: featureItems = Array()
            featureItems = Array()
            //: break
        }

        //: featureItems = tmp as! [Any]
        featureItems = tmp as! [Any]
        //: configDefaultSelectItem()
        fieldItem()

        //: let layout: STBeautyLayout = self.collectionViewLayout as! STBeautyLayout
        let layout: PulchritudeViewLayout = self.collectionViewLayout as! PulchritudeViewLayout
        //: layout.dataArr = featureItems
        layout.dataArr = featureItems
        //: self.reloadData()
        self.reloadData()
    }

    //: func configDefaultSelectItem() {
    func fieldItem() {
        /*!
         * 1、找到当前featureType对应的item
         * 2、没有找到，就使用数组firstObject
         */
        //: var curFeature = CostServerReactiveCompatible.share.curFeature
        var curFeature = CostServerReactiveCompatible.share.curFeature
        //: self.curItem?.isSelected = false
        self.curItem?.isSelected = false
        //: curFeature = self.curItem?.featureType
        curFeature = self.curItem?.featureType

        // 1
        //: for aFeature in featureItems {
        for aFeature in featureItems {
            //: let tfeature = aFeature as! GroupLooksModel
            let tfeature = aFeature as! GroupLooksModel
            //: if (curFeature == tfeature.featureType) {
            if curFeature == tfeature.featureType {
                //: tfeature.isSelected = true
                tfeature.isSelected = true
                //: self.curItem = tfeature
                self.curItem = tfeature
                //: break
                break
            }
        }

        // 2
        //: if (self.curItem == nil) {
        if self.curItem == nil {
            //: let aFeature: GroupLooksModel = featureItems.first as! GroupLooksModel
            let aFeature: GroupLooksModel = featureItems.first as! GroupLooksModel
            //: aFeature.isSelected = true
            aFeature.isSelected = true
            //: self.curItem = aFeature
            self.curItem = aFeature
        }
    }

    //: func setCurSuiteType(curSuiteType: BeautyItemType) {
    func untilTo(curSuiteType: JoinHashableRepresentation) {
        //: self.curSuiteType = curSuiteType
        self.curSuiteType = curSuiteType
        //: setupData()
        userData()
    }

    //: func resetDefaultBeautySuite() {
    func operatePost() {
        //: self.curSuiteType = .Face
        self.curSuiteType = .Face
        //: setupData()
        userData()
        //: let aFeature: GroupLooksModel = featureItems.first as! GroupLooksModel
        let aFeature: GroupLooksModel = featureItems.first as! GroupLooksModel
        //: aFeature.isSelected = true
        aFeature.isSelected = true
        //: self.curItem = aFeature
        self.curItem = aFeature
    }
}

//: extension STBeautyCollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
extension OpenDataSource: UICollectionViewDelegate, UICollectionViewDataSource {
    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return featureItems.count
        return featureItems.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell: STBeautyIconTitleCell = collectionView.dequeueReusableCell(withReuseIdentifier: "featureCell", for: indexPath) as! STBeautyIconTitleCell
        let cell: DistanceThen = collectionView.dequeueReusableCell(withReuseIdentifier: (k_appValue.replacingOccurrences(of: "normal", with: "f") + "ureCell"), for: indexPath) as! DistanceThen

        //: let item: GroupLooksModel = featureItems[indexPath.row] as! GroupLooksModel
        let item: GroupLooksModel = featureItems[indexPath.row] as! GroupLooksModel
        //: item.isSelected  = (item.featureType == self.curItem?.featureType)
        item.isSelected = (item.featureType == self.curItem?.featureType)
        //: cell.setFeatureItem(featureItem: item)
        cell.positionItem(featureItem: item)
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: if (indexPath.row < featureItems.count) {
        if indexPath.row < featureItems.count {
            //: let item: GroupLooksModel = featureItems[indexPath.row] as! GroupLooksModel
            let item: GroupLooksModel = featureItems[indexPath.row] as! GroupLooksModel
            //: self.curItem?.isSelected = false
            self.curItem?.isSelected = false
            //: item.isSelected = true
            item.isSelected = true

            //: self.curItem = item
            self.curItem = item // setter
            //: if self.selectBeautyBlock != nil {
            if self.selectBeautyBlock != nil {
                //: self.selectBeautyBlock!(self.curItem ?? GroupLooksModel.init())
                self.selectBeautyBlock!(self.curItem ?? GroupLooksModel())
            }
            //: self.reloadData()
            self.reloadData()
        }
    }
}

//: extension STBeautyCollectionView {
extension OpenDataSource {
    //: func setupSubviews() {
    func correlationTable() {
        //: self.backgroundColor = .clear
        self.backgroundColor = .clear
        //: self.isPagingEnabled = true
        self.isPagingEnabled = true
        //: self.showsHorizontalScrollIndicator = false
        self.showsHorizontalScrollIndicator = false
        //: self.showsVerticalScrollIndicator = false
        self.showsVerticalScrollIndicator = false
        //: self.delegate = self
        self.delegate = self
        //: self.dataSource = self
        self.dataSource = self
//        self.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: 0)
        //: self.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "placeholder")
        self.register(UICollectionViewCell.self, forCellWithReuseIdentifier: (k_scaleUrl.replacingOccurrences(of: "max", with: "la") + String(kBrightData)))
        //: self.register(STBeautyIconTitleCell.self, forCellWithReuseIdentifier: "featureCell")
        self.register(DistanceThen.self, forCellWithReuseIdentifier: (k_appValue.replacingOccurrences(of: "normal", with: "f") + "ureCell"))
        //: self.register(STBeautyIconTitleCell.self, forCellWithReuseIdentifier: "suiteCell")
        self.register(DistanceThen.self, forCellWithReuseIdentifier: (String(kMagnitudeeractionToolKey) + String(kSelectedId.prefix(7))))
    }
}
