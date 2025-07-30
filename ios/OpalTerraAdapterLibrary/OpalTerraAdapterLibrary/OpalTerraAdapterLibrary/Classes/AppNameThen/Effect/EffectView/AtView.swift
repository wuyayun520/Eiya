
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kIndexStr:[UInt8] = [0x3f,0x38,0x3f,0x22,0x7e,0x35,0x39,0x32,0x33,0x24,0x6c,0x7f,0x76,0x3e,0x37,0x25,0x76,0x38,0x39,0x22,0x76,0x34,0x33,0x33,0x38,0x76,0x3f,0x3b,0x26,0x3a,0x33,0x3b,0x33,0x38,0x22,0x33,0x32]

private func byInfo(icon num: UInt8) -> UInt8 {
    return num ^ 86
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  AtView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/7.
//

//: import UIKit
import UIKit

//: protocol GiftAnimatItemViewDelegate: NSObject {
protocol SizeJoinThen: NSObject {
    // 资源下载成功，开始播放动效
    //: func giftEffectItemView(effectItemView: TalkingGiftAnimatItemView, success: Bool)
    func happeningSuccess(effectItemView: AtView, success: Bool)

    // 资源下载失败 或 播放完成
    //: func didFinishAnimationOfGift(effectItemView: TalkingGiftAnimatItemView)
    func sectionEnd(effectItemView: AtView)
}

/// 礼物动画效果的加载类，基类，定义了基础的开始，停止，清除的方法；具体动效根据effectMsgModel信息加载对应子类
//: class TalkingGiftAnimatItemView: UIView {
class AtView: UIView {
    //: var effectMsgModel: TalkingAnimatMsgModel?
    var effectMsgModel: DisappearMsgModel?
    //: var giftEffectModel: TalkingGiftAnimatModel?
    var giftEffectModel: MakeHandyJSON?
    //: open weak var delegate: GiftAnimatItemViewDelegate?
    open weak var delegate: SizeJoinThen?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kIndexStr.map{byInfo(icon: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    //: func startAnimating() {
    func toAnimating() {}

    //: func stopAnimating() {
    func specs() {}

    //: func cleanAnimating() {
    func kindMaxPin() {}

    //: func pauseAnimation() {
    func indexTool() {}

    //: func resumeAnimation() ->Bool {
    func administrator() -> Bool {
        //: return false
        return false
    }

    //: func func__filePathOfName(fileName: String) ->String {
    func upToDatenessApp(fileName: String) -> String {
        //: return TalkingGiftAnimatTool.shared.filePathOfNameWithAnimatMsgModel(fileName: fileName, model: self.effectMsgModel!)
        return FinancialAidThen.shared.rent(fileName: fileName, model: self.effectMsgModel!)
    }
}
