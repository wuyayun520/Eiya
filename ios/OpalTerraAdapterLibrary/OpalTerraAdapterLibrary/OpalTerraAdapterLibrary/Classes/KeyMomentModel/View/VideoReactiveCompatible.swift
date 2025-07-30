
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_textFormat:[UInt8] = [0xa0,0xa5,0xa0,0xab,0x5f,0x9a,0xa6,0x9b,0x9c,0xa9,0x71,0x60,0x57,0x9f,0x98,0xaa,0x57,0xa5,0xa6,0xab,0x57,0x99,0x9c,0x9c,0xa5,0x57,0xa0,0xa4,0xa7,0xa3,0x9c,0xa4,0x9c,0xa5,0xab,0x9c,0x9b]

fileprivate func toolCancel(log num: UInt8) -> UInt8 {
    let value = Int(num) - 55
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "btn_dynamic_stop_nor" :*/
fileprivate let kConstraintName:String = "btn_manager size any pop lab"
fileprivate let k_areaName:[Character] = ["i","c","_","s","t","o","p","_","n","o","r"]

/*: "icon_Topping_bg" :*/
fileprivate let k_contentMessage:[Character] = ["i","c","o","n","_","T"]
fileprivate let kQuantityLabKey:String = "page user disableopping_bg"

/*: "#F5F5F5" :*/
fileprivate let k_kitKey:String = "net return image each#F5F5F5"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  VideoReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/4.
//

//: import SwiftUI
import SwiftUI
//: import UIKit
import UIKit

//: class TalkingMomentVideoCell: UIView {
class VideoReactiveCompatible: UIView {
    //: var isPlaying = false
    var isPlaying = false
    //: var videoUrl = ""
    var videoUrl = ""
    //: var isListTableCell = true
    var isListTableCell = true
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.showClose()
        //: self.setupSubViewsConstraint()
        self.pointTitle()
        //: self.bindInteraction()
        self.cardNumbereraction()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_textFormat.map{toolCancel(log: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化
    //: lazy var player: TalkingVideoPlayerManager = {
    lazy var player: DecisionMakerThen = {
        //: var  player: TalkingVideoPlayerManager
        var player: DecisionMakerThen
        //: if isListTableCell {
        if isListTableCell {
            //: player = TalkingVideoPlayerManager.shared
            player = DecisionMakerThen.shared
            //: }else {
        } else {
            //: player = TalkingVideoPlayerManager.init()
            player = DecisionMakerThen()
        }
        //: player.delegate = self
        player.delegate = self
        //: player.setMute(bEnable: true)
        player.setFor(bEnable: true)
        //: return player
        return player
        //: }()
    }()

    //: lazy var coverView: UIImageView = {
    lazy var coverView: UIImageView = {
        //: let  imag = UIImageView.init()
        let imag = UIImageView()
        //: imag.backgroundColor = .black
        imag.backgroundColor = .black
        //: imag.contentMode = .scaleAspectFill
        imag.contentMode = .scaleAspectFill
        //: self.addSubview(imag)
        self.addSubview(imag)
        //: imag.snp.remakeConstraints { make in
        imag.snp.remakeConstraints { make in
            //: make.edges.equalTo(0)
            make.edges.equalTo(0)
        }
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var playimageView: UIImageView = {
    lazy var playimageView: UIImageView = {
        //: let  imag = UIImageView.init(image: UIImage.submitGift(name: "btn_dynamic_stop_nor"))
        let imag = UIImageView(image: UIImage.submitGift(name: (String(kConstraintName.prefix(4)) + "dynam" + String(k_areaName))))
        //: coverView.addSubview(imag)
        coverView.addSubview(imag)
        //: return imag
        return imag
        //: }()
    }()

    //: lazy var topImage: UIImageView = {
    lazy var topImage: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: img.image = UIImage.submitGift(name: "icon_Topping_bg")
        img.image = UIImage.submitGift(name: (String(k_contentMessage) + String(kQuantityLabKey.suffix(9))))
        //: coverView.addSubview(img)
        coverView.addSubview(img)
        //: return img
        return img
        //: }()
    }()
}

//: extension TalkingMomentVideoCell {
extension VideoReactiveCompatible {
    //: @objc func enterBackgroundNotification() {
    @objc func withNotification() {
        //: if self.player.isPlaying {
        if self.player.isPlaying {
            //: self.player.pause()
            self.player.imageThe()
        }
    }

    //: @objc func enterForegroundNotification() {
    @objc func lightNotification() {
        //: if self.currentViewController()!.isKind(of: TalkingMomentViewController.self) {
        if self.selectStart()!.isKind(of: EndNavigationDelegate.self) {
            //: self.player.resume()
            self.player.nearFileInfo()
        }
    }

    //: func configModel(model: TalkingMomentVideoModel, isTop: Bool = false) {
    func equalKey(model: TouchFrameTransformable, isTop: Bool = false) {
        //: videoUrl = model.videoUrl
        videoUrl = model.videoUrl
        //: self.coverView.backgroundColor = .white
        self.coverView.backgroundColor = .white
        //: self.coverView.setUrlImage(urlStr: model.imgUrl, placeImg: nil)
        self.coverView.setUrlImage(urlStr: model.imgUrl, placeImg: nil)
        //: topImage.isHidden = !isTop
        topImage.isHidden = !isTop
    }

    //: func setupPlayer() {
    func adjustPlayerImage() {
        //: self.coverView.isHidden = true
        self.coverView.isHidden = true
        //: self.player.playerWithUrlAndVideoView(url: videoUrl, view: self)
        self.player.dataView(url: videoUrl, view: self)
        //: self.player.setMute(bEnable: true)
        self.player.setFor(bEnable: true)
        //: self.isPlaying = true
        self.isPlaying = true
        //: self.player.delegate = self
        self.player.delegate = self
        //: self.player.setRenderMode(renderMode: .FILL_SCREEN)
        self.player.sharedMode(renderMode: .FILL_SCREEN)
    }

    //: func stopPlay() {
    func tablePlace() {
        //: self.coverView.isHidden = false
        self.coverView.isHidden = false
        //: self.player.stopPlay()
        self.player.halt()
        //: self.isPlaying = false
        self.isPlaying = false
        //: self.playimageView.isHidden = false
        self.playimageView.isHidden = false
        //: self.player.setMute(bEnable: true)
        self.player.setFor(bEnable: true)
    }

    //: func pausePlay() {
    func golem() {
        //: if self.player.isPlaying {
        if self.player.isPlaying {
            //: self.player.pause()
            self.player.imageThe()
        }
    }

    //: func resume() {
    func barTo() {
        //: self.coverView.isHidden = true
        self.coverView.isHidden = true
        // 进入详情会改变播放模式会有声音
        //: self.player.setMute(bEnable: true)
        self.player.setFor(bEnable: true)
        //: self.player.resume()
        self.player.nearFileInfo()
    }
}

//: extension TalkingMomentVideoCell: TalkingVideoPlayerDelegate {
extension VideoReactiveCompatible: PlayerMakeThen {
    //: func func__playerStatus(player: TalkingVideoPlayerManager, status: VideoPlayerStatus) {
    func menu(player _: DecisionMakerThen, status: ObjectPlayerStatus) {
        //: if (status == .Playing) {
        if status == .Playing {
            //: if self.player.isMute == false {
            if self.player.isMute == false {
                //: self.player.setMute(bEnable: true)
                self.player.setFor(bEnable: true)
            }
            //: self.playimageView.isHidden = true
            self.playimageView.isHidden = true
            //: self.player.setRenderMode(renderMode: .FILL_SCREEN)
            self.player.sharedMode(renderMode: .FILL_SCREEN)
            //: }else if (status == .Pausing) {
        } else if status == .Pausing {
            //: self.playimageView.isHidden = false
            self.playimageView.isHidden = false
        }
    }

    //: func func__playerDuration(player: TalkingVideoPlayerManager, duration: Int, currentTime: Int) {
    func decisionMaker(player _: DecisionMakerThen, duration _: Int, currentTime _: Int) {}

    //: func func__playerProgress(player: TalkingVideoPlayerManager, progress: CGFloat) {
    func playerAction(player _: DecisionMakerThen, progress _: CGFloat) {}
}

//: extension TalkingMomentVideoCell {
extension VideoReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func showClose() {
        //: self.backgroundColor = UIColor.init(hex: "#F5F5F5" )
        self.backgroundColor = UIColor(hex: (String(k_kitKey.suffix(7))))
        //: self.layer.cornerRadius = 4
        self.layer.cornerRadius = 4
        //: self.layer.masksToBounds = true
        self.layer.masksToBounds = true
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func pointTitle() {
        //: playimageView.snp.remakeConstraints { make in
        playimageView.snp.remakeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.size.equalTo(CGSize.init(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
        //: topImage.snp.remakeConstraints { make in
        topImage.snp.remakeConstraints { make in
            //: make.top.equalTo(0)
            make.top.equalTo(0)
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.size.equalTo(CGSize.init(width: 50, height: 20))
            make.size.equalTo(CGSize(width: 50, height: 20))
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func cardNumbereraction() {
        //: NotificationCenter.default.addObserver(self, selector: #selector(enterBackgroundNotification), name: UIApplication.willResignActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(withNotification), name: UIApplication.willResignActiveNotification, object: nil)

        //: NotificationCenter.default.addObserver(self, selector: #selector(enterForegroundNotification), name: UIApplication.didBecomeActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(lightNotification), name: UIApplication.didBecomeActiveNotification, object: nil)
    }
}
