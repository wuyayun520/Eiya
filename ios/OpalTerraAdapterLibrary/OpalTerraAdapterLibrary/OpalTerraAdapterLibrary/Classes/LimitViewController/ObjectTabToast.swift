
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kWrapMsg:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "btn_live_toast_bg" :*/
fileprivate let kStatusName:String = "self target style with makebtn_"
fileprivate let kLiveValue:String = "medium self true fragmentoast_bg"

/*: "btn_live_toast_arrow" :*/
fileprivate let kCollectionKey:String = "btn_livadd number gift image now"
fileprivate let kFlushTitle:String = "kit lab for scalee_toas"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ObjectTabToast.swift
//  AbroadTalking
//
//  Created by young on 2023/6/15.
//

//: import UIKit
import UIKit

/// （内存保存）记录此次运行是否展示过女性直播提示
//: var LIVETABTOASTISSHOW = false
var userDeviceContent = false

//: class TalkingLiveTabToast: UIView {
class ObjectTabToast: UIView {
    // 气泡间距
    //: private let bubbleInsets = UIEdgeInsets(top: 6, left: 11, bottom: 6, right: 11)
    private let bubbleInsets = UIEdgeInsets(top: 6, left: 11, bottom: 6, right: 11)

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: setupSubviews()
        countroduceVoiceSubviews()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kWrapMsg.reversed(), encoding: .utf8)!)
    }

    // MARK: - Lazy Load

    //: private lazy var bubbleImgView: UIImageView = {
    private lazy var bubbleImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: var img = UIImage.submitGift(name: "btn_live_toast_bg").resizableImage(withCapInsets: bubbleInsets, resizingMode: .stretch)
        var img = UIImage.submitGift(name: (String(kStatusName.suffix(4)) + "live_t" + String(kLiveValue.suffix(7)))).resizableImage(withCapInsets: bubbleInsets, resizingMode: .stretch)
        //: imgV.image = img
        imgV.image = img
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var arrowImgView: UIImageView = {
    private lazy var arrowImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image = UIImage.submitGift(name: "btn_live_toast_arrow")
        imgV.image = UIImage.submitGift(name: (String(kCollectionKey.prefix(7)) + String(kFlushTitle.suffix(6)) + "t_arrow"))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var textLab: UILabel = {
    private lazy var textLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.font = UIFont.pingfangMediumFont(fontSize: 15)
        lab.font = UIFont.tapShared(fontSize: 15)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.numberOfLines = 0
        lab.numberOfLines = 0
        //: return lab
        return lab
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingLiveTabToast {
extension ObjectTabToast {
    /// 展示视图，5s后自动移除
    //: func show(superView: UIView) {
    func superApp(superView: UIView) {
        //: guard LIVETABTOASTISSHOW == false else { return }
        guard userDeviceContent == false else { return }
        //: guard DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue else { return }
        //: guard DistanceAppManager.share.appUserConfigMode.liveTabTips.count > 0 else { return }
        guard DistanceAppManager.share.appUserConfigMode.liveTabTips.count > 0 else { return }
        //: LIVETABTOASTISSHOW = true
        userDeviceContent = true

        //: textLab.text = DistanceAppManager.share.appUserConfigMode.liveTabTips
        textLab.text = DistanceAppManager.share.appUserConfigMode.liveTabTips
        //: let maxWidth = ScreenWidth - 48
        let maxWidth = constFormalContent - 48
        //: let maxSize = CGSize(width: maxWidth, height: CGFloat.greatestFiniteMagnitude)
        let maxSize = CGSize(width: maxWidth, height: CGFloat.greatestFiniteMagnitude)
        //: let contentSize = textLab.sizeThatFits(maxSize)
        let contentSize = textLab.sizeThatFits(maxSize)
        //: let bubble_w = max(contentSize.width+bubbleInsets.left+bubbleInsets.right, 67)
        let bubble_w = max(contentSize.width + bubbleInsets.left + bubbleInsets.right, 67)
        //: let bubble_h = max(contentSize.height+bubbleInsets.top+bubbleInsets.bottom, 35)
        let bubble_h = max(contentSize.height + bubbleInsets.top + bubbleInsets.bottom, 35)
        //: let bubbleSize = CGSize(width: bubble_w, height: bubble_h)
        let bubbleSize = CGSize(width: bubble_w, height: bubble_h)

        //: superView.addSubview(self)
        superView.addSubview(self)
        //: self.snp.remakeConstraints { make in
        self.snp.remakeConstraints { make in
            //: make.bottom.equalTo(superView.snp.top).offset(-14)
            make.bottom.equalTo(superView.snp.top).offset(-14)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.width.equalTo(bubbleSize.width)
            make.width.equalTo(bubbleSize.width)
            //: make.height.equalTo(bubbleSize.height+5)
            make.height.equalTo(bubbleSize.height + 5)
        }
        //: self.arrowImgView.snp.remakeConstraints { make in
        self.arrowImgView.snp.remakeConstraints { make in
            //: make.bottom.centerX.equalToSuperview()
            make.bottom.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 11, height: 5))
            make.size.equalTo(CGSize(width: 11, height: 5))
        }
        //: self.bubbleImgView.snp.remakeConstraints { make in
        self.bubbleImgView.snp.remakeConstraints { make in
            //: make.bottom.equalTo(arrowImgView.snp.top)
            make.bottom.equalTo(arrowImgView.snp.top)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(bubbleSize)
            make.size.equalTo(bubbleSize)
        }
        //: self.textLab.snp.remakeConstraints { make in
        self.textLab.snp.remakeConstraints { make in
            //: make.leading.equalTo(bubbleInsets.left)
            make.leading.equalTo(bubbleInsets.left)
            //: make.top.equalTo(bubbleInsets.top)
            make.top.equalTo(bubbleInsets.top)
            //: make.size.equalTo(contentSize)
            make.size.equalTo(contentSize)
        }

        // 5s后自动移除
        //: DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            //: self.isHidden = true
            self.isHidden = true
        }
    }
}

// MARK: - Layout

//: extension TalkingLiveTabToast {
extension ObjectTabToast {
    /// 添加视图
    //: private func setupSubviews() {
    private func countroduceVoiceSubviews() {
        //: self.addSubview(bubbleImgView)
        self.addSubview(bubbleImgView)
        //: self.addSubview(arrowImgView)
        self.addSubview(arrowImgView)
        //: bubbleImgView.addSubview(textLab)
        bubbleImgView.addSubview(textLab)
    }
}
