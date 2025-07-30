
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_textMsg:[UInt8] = [0x4a,0x4d,0x4a,0x57,0xb,0x40,0x4c,0x47,0x46,0x51,0x19,0xa,0x3,0x4b,0x42,0x50,0x3,0x4d,0x4c,0x57,0x3,0x41,0x46,0x46,0x4d,0x3,0x4a,0x4e,0x53,0x4f,0x46,0x4e,0x46,0x4d,0x57,0x46,0x47]

private func backPath(time num: UInt8) -> UInt8 {
    return num ^ 35
}

/*: "SeparationEqualCompartmentView" :*/
fileprivate let k_colorMsg:[Character] = ["S","T","F","i","l","t","e","r","L","i","s","t","I","t","e","m","C","e","l"]
fileprivate let kJoinMsg:String = "data"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FuturismDataSource.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/30.
//

//: import UIKit
import UIKit

//: typealias SelectFilterBlock = (_ model: GroupLooksModel) -> Void
typealias SelectFilterBlock = (_ model: GroupLooksModel) -> Void

//: class STFilterListView: UIView {
class FuturismDataSource: UIView {
    //: var selectModel: GroupLooksModel?
    var selectModel: GroupLooksModel?

    //: var selectFilterBlock: SelectFilterBlock?
    var selectFilterBlock: SelectFilterBlock?

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_textMsg.map{backPath(time: $0)}, encoding: .utf8)!)
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: CostServerReactiveCompatible.share.initFilterData()
        CostServerReactiveCompatible.share.makeInit()
        //: self.selectModel = CostServerReactiveCompatible.share.filterModelArray.first
        self.selectModel = CostServerReactiveCompatible.share.filterModelArray.first
        //: self.selectModel?.isSelected = true
        self.selectModel?.isSelected = true
        //: self.addSubview(collectionView)
        self.addSubview(collectionView)
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.edges.equalTo(self)
            make.edges.equalTo(self)
        }
        //: let layout: STBeautyLayout = collectionView.collectionViewLayout as! STBeautyLayout
        let layout: PulchritudeViewLayout = collectionView.collectionViewLayout as! PulchritudeViewLayout
        //: layout.dataArr = CostServerReactiveCompatible.share.filterModelArray
        layout.dataArr = CostServerReactiveCompatible.share.filterModelArray
        //: collectionView.reloadData()
        collectionView.reloadData()
    }

    //: deinit {
    deinit {}

    //: private lazy var collectionView: UICollectionView = {
    private lazy var collectionView: UICollectionView = {
        //: let layout = STBeautyLayout.init()
        let layout = PulchritudeViewLayout()
        //: layout.scrollDirection = .horizontal
        layout.scrollDirection = .horizontal
        //: let View = UICollectionView.init(frame: .zero, collectionViewLayout: layout)
        let View = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //: View.backgroundColor = .clear
        View.backgroundColor = .clear
        //: View.showsVerticalScrollIndicator = false
        View.showsVerticalScrollIndicator = false
        //: View.delegate = self
        View.delegate = self
        //: View.dataSource = self
        View.dataSource = self
        //: View.register(STFilterListItemCell.self, forCellWithReuseIdentifier: "STFilterListItemCell")
        View.register(SeparationEqualCompartmentView.self, forCellWithReuseIdentifier: (String(k_colorMsg) + kJoinMsg.replacingOccurrences(of: "data", with: "l")))
        //: return View
        return View
        //: }()
    }()
}

//: extension STFilterListView {
extension FuturismDataSource {
    //: func reLoadSetFilter(model: RangeReactiveCompatible) {
    func withShow(model: RangeReactiveCompatible) {
        //: if self.selectModel?.strName == model.filterName {
        if self.selectModel?.strName == model.filterName {
            //: return
            return
        }

        //: for (i, childM) in CostServerReactiveCompatible.share.filterModelArray.enumerated() {
        for (i, childM) in CostServerReactiveCompatible.share.filterModelArray.enumerated() {
            //: var index = i
            var index = i
            //: if childM.strName == model.filterName {
            if childM.strName == model.filterName {
                //: self.selectModel?.isSelected = false
                self.selectModel?.isSelected = false
                //: childM.isSelected = true
                childM.isSelected = true
                //: childM.beautyValue = model.fFilterStrength
                childM.beautyValue = model.fFilterStrength
                //: self.selectModel = childM
                self.selectModel = childM
                //: self.collectionView.reloadData()
                self.collectionView.reloadData()

                //: if (index >= 10) {
                if index >= 10 {
                    //: index = CostServerReactiveCompatible.share.filterModelArray.count-1
                    index = CostServerReactiveCompatible.share.filterModelArray.count - 1
                }
                //: let indexp = NSIndexPath.init(item: index, section: 0)
                let indexp = NSIndexPath(item: index, section: 0)

                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    //: self.collectionView.scrollToItem(at: indexp as IndexPath, at: .bottom, animated: false)
                    self.collectionView.scrollToItem(at: indexp as IndexPath, at: .bottom, animated: false)
                }
                //: break
                break
            }
        }
    }
}

//: extension STFilterListView: UICollectionViewDelegate, UICollectionViewDataSource {
extension FuturismDataSource: UICollectionViewDelegate, UICollectionViewDataSource {
    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        //: return CostServerReactiveCompatible.share.filterModelArray.count
        return CostServerReactiveCompatible.share.filterModelArray.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell: STFilterListItemCell = collectionView.dequeueReusableCell(withReuseIdentifier: "STFilterListItemCell", for: indexPath) as! STFilterListItemCell
        let cell: SeparationEqualCompartmentView = collectionView.dequeueReusableCell(withReuseIdentifier: (String(k_colorMsg) + kJoinMsg.replacingOccurrences(of: "data", with: "l")), for: indexPath) as! SeparationEqualCompartmentView

        //: cell.setCellModel(model: CostServerReactiveCompatible.share.filterModelArray[indexPath.item])
        cell.groupDownData(model: CostServerReactiveCompatible.share.filterModelArray[indexPath.item])
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: let model = CostServerReactiveCompatible.share.filterModelArray[indexPath.item]
        let model = CostServerReactiveCompatible.share.filterModelArray[indexPath.item]
        //: if self.selectModel == model {
        if self.selectModel == model {
            //: return
            return
        }
        //: self.selectModel?.isSelected = false
        self.selectModel?.isSelected = false
        //: self.selectModel = model
        self.selectModel = model
        //: self.selectModel?.isSelected = true
        self.selectModel?.isSelected = true
        //: self.collectionView.reloadData()
        self.collectionView.reloadData()
        //: if self.selectFilterBlock != nil {
        if self.selectFilterBlock != nil {
            //: self.selectFilterBlock!(self.selectModel ?? GroupLooksModel.init())
            self.selectFilterBlock!(self.selectModel ?? GroupLooksModel())
        }
    }
}
