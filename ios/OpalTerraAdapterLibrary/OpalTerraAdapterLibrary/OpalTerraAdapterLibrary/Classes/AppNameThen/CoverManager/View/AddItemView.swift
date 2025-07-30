
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kTimeUrl:[UInt8] = [0x8,0xf,0x8,0x15,0x49,0x2,0xe,0x5,0x4,0x13,0x5b,0x48,0x41,0x9,0x0,0x12,0x41,0xf,0xe,0x15,0x41,0x3,0x4,0x4,0xf,0x41,0x8,0xc,0x11,0xd,0x4,0xc,0x4,0xf,0x15,0x4,0x5]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AddItemView.swift
//  OpalTerraAdapterLibrary
//
//  Created by DouXiu on 2024/9/23.
//

//: import UIKit
import UIKit

//: class TalkingVoiceRoomMikePositionView: UIView {
class AddItemView: UIView {
    //: public var showUserCardBlock: ((_ uid: Int) -> Void)?
    public var showUserCardBlock: ((_ uid: Int) -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        wedge()
    }

    //: @available(*, unavailable)
    @available(*, unavailable)
    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kTimeUrl.map{$0^97}, encoding: .utf8)!)
    }
}

// MARK: - Event

//: extension TalkingVoiceRoomMikePositionView {
extension AddItemView {
    /// 刷新全部麦位视图
    //: func refreshAllMikeView() {
    func afterExamine() {
        //: let dict = TalkingVoiceRoomManager.shared().getAllMikePositions()
        let dict = CoverManager.byRest().each()
        //: dict.forEach { (key: Int, model: TalkingMikeListItemModel) in
        dict.forEach { (key: Int, model: ItemMeasurable) in
            //: let itemView = self.viewWithTag(100 + key) as? TalkingMikePositionItemView
            let itemView = self.viewWithTag(100 + key) as? PitchThen
            //: itemView?.refreshMikeItemView(key, model: model)
            itemView?.factor(key, model: model)
        }
    }

    /// 刷新单个麦位视图
    /// - Parameter position: 麦位
    //: func refreshSingleMikeView(position: Int) {
    func textClick(position: Int) {
        //: guard let model = TalkingVoiceRoomManager.shared().getMikePosition(key: position) else { return }
        guard let model = CoverManager.byRest().nextLandmark(key: position) else { return }
        //: let itemView = self.viewWithTag(100 + position) as? TalkingMikePositionItemView
        let itemView = self.viewWithTag(100 + position) as? PitchThen
        //: itemView?.refreshMikeItemView(position, model: model)
        itemView?.factor(position, model: model)
    }

    /// 刷新声浪等级动效
    /// - Parameters:
    ///   - position: 麦位
    ///   - level: 声浪值
    //: func refreshSoundLevelAnimation(position: Int, level: NSNumber) {
    func upCell(position: Int, level: NSNumber) {
        //: guard let model = TalkingVoiceRoomManager.shared().getMikePosition(key: position) else { return }
        guard let model = CoverManager.byRest().nextLandmark(key: position) else { return }
        //: guard model.mikeStatus == 2 else { return }
        guard model.mikeStatus == 2 else { return }
        //: let itemView = self.viewWithTag(100 + position) as? TalkingMikePositionItemView
        let itemView = self.viewWithTag(100 + position) as? PitchThen
        //: itemView?.animateCircle(withAmplitude: CGFloat(truncating: level))
        itemView?.isEllipse(withAmplitude: CGFloat(truncating: level))
    }
}

// MARK: - Layout

//: extension TalkingVoiceRoomMikePositionView {
extension AddItemView {
    /// 添加视图
    //: private func setupSubviews() {
    private func wedge() {
        //: for index in 0 ..< MIKE_SEAT_COUNT {
        for index in 0 ..< data_ofAddHeightValue {
            //: let row = index / 4
            let row = index / 4
            //: let column = index % 4
            let column = index % 4
            //: var startX = 17.5 + CGFloat(column) * MikePositionItemView_Size.width
            var startX = 17.5 + CGFloat(column) * showHalfContent.width
            //: if LanguageManager.shared.direction == .rightToLeft {
            if MakeLanguageManager.shared.direction == .rightToLeft {
                //: startX = ScreenWidth - startX - MikePositionItemView_Size.width
                startX = constFormalContent - startX - showHalfContent.width
            }
            //: let item = TalkingMikePositionItemView()
            let item = PitchThen()
            //: item.origin = CGPoint(
            item.origin = CGPoint(
                //: x: startX,
                x: startX,
                //: y: CGFloat(row) * MikePositionItemView_Size.height
                y: CGFloat(row) * showHalfContent.height
            )
            //: item.size = MikePositionItemView_Size
            item.size = showHalfContent
            //: item.tag = index + 100
            item.tag = index + 100
            //: item.showUserCardBlock = { [weak self] uid in
            item.showUserCardBlock = { [weak self] uid in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.showUserCardBlock?(uid)
                self.showUserCardBlock?(uid)
            }
            //: self.addSubview(item)
            self.addSubview(item)
        }
    }
}
