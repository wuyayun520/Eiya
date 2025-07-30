
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kMemberUrl:[UInt8] = [0xf6,0xf1,0xf6,0xeb,0xb7,0xfc,0xf0,0xfb,0xfa,0xed,0xa5,0xb6,0xbf,0xf7,0xfe,0xec,0xbf,0xf1,0xf0,0xeb,0xbf,0xfd,0xfa,0xfa,0xf1,0xbf,0xf6,0xf2,0xef,0xf3,0xfa,0xf2,0xfa,0xf1,0xeb,0xfa,0xfb]

private func valueEdge(shared num: UInt8) -> UInt8 {
    return num ^ 159
}

/*: "img_loading_lose" :*/
fileprivate let k_beSendData:String = "background sinceimg_loa"
fileprivate let k_mainMsg:String = "ding_losedata type"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FirstView.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/13.
//

//: import Kingfisher
import Kingfisher
//: import Then
import Then
//: import UIKit
import UIKit

//: class TPreviewPhotosCell: UICollectionViewCell {
class FirstView: UICollectionViewCell {
    //: var singleTapImageBlock: (() -> Void)?
    var singleTapImageBlock: (() -> Void)?
    //: var doubleTap:UITapGestureRecognizer?
    var doubleTap: UITapGestureRecognizer?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)

        //: self.setupSubviews()
        self.startDisable()
        //: self.bindInteraction()
        self.actionCleave()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kMemberUrl.map{valueEdge(shared: $0)}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: self.zoomScrollView.frame = CGRect(x: 10, y: 0, width: self.width-20, height: self.height)
        self.zoomScrollView.frame = CGRect(x: 10, y: 0, width: self.width - 20, height: self.height)
        //: self.recoverSubviews()
        self.magnitudeerchangeTo()
    }

    // MARK: - Lazy load

    //: lazy var imgContainerView = UIView().then {
    lazy var imgContainerView = UIView().then {
        //: $0.backgroundColor = .cyan
        $0.backgroundColor = .cyan
    }

    //: lazy var imgView = UIImageView().then {
    lazy var imgView = UIImageView().then {
        //: $0.backgroundColor = .yellow
        $0.backgroundColor = .yellow
        //: $0.contentMode = .scaleAspectFit
        $0.contentMode = .scaleAspectFit
    }

    //: lazy var zoomScrollView = UIScrollView.init(frame: CGRect(x: 10, y: 0, width: self.width-20, height: self.height)).then {
    lazy var zoomScrollView = UIScrollView(frame: CGRect(x: 10, y: 0, width: self.width - 20, height: self.height)).then {
        //: $0.delegate = self
        $0.delegate = self
        //: $0.showsVerticalScrollIndicator = false
        $0.showsVerticalScrollIndicator = false
        //: $0.showsHorizontalScrollIndicator = false
        $0.showsHorizontalScrollIndicator = false
        //: $0.scrollsToTop = false
        $0.scrollsToTop = false
        //: $0.bouncesZoom = true
        $0.bouncesZoom = true
        //: $0.maximumZoomScale = 2.5
        $0.maximumZoomScale = 2.5
        //: $0.minimumZoomScale = 1.0
        $0.minimumZoomScale = 1.0
        //: $0.isMultipleTouchEnabled = true
        $0.isMultipleTouchEnabled = true
        //: $0.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        $0.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //: $0.delaysContentTouches = true
        $0.delaysContentTouches = true
        //: $0.alwaysBounceVertical = false
        $0.alwaysBounceVertical = false
        //: $0.canCancelContentTouches = true
        $0.canCancelContentTouches = true
    }
}

// MARK: - Bind && Event

//: extension TPreviewPhotosCell {
extension FirstView {
    //: private func bindInteraction() {
    private func actionCleave() {
        //: let singleTap = UITapGestureRecognizer(target: self, action: #selector(singleTapAction))
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(transect))

        //: doubleTap = UITapGestureRecognizer(target: self, action: #selector(doubleTapAction)).then {
        doubleTap = UITapGestureRecognizer(target: self, action: #selector(style)).then {
            //: $0.numberOfTapsRequired = 2
            $0.numberOfTapsRequired = 2
        }
        //: self.addGestureRecognizer(singleTap)
        self.addGestureRecognizer(singleTap)
        //: self.addGestureRecognizer(doubleTap!)
        self.addGestureRecognizer(doubleTap!)
        //: singleTap.require(toFail: doubleTap!)
        singleTap.require(toFail: doubleTap!)
    }

    //: @objc func singleTapAction() {
    @objc func transect() {
        //: if singleTapImageBlock != nil {
        if singleTapImageBlock != nil {
            //: singleTapImageBlock!()
            singleTapImageBlock!()
        }
    }

    //: @objc func doubleTapAction() {
    @objc func style() {
        //: if self.zoomScrollView.zoomScale > self.zoomScrollView.minimumZoomScale {
        if self.zoomScrollView.zoomScale > self.zoomScrollView.minimumZoomScale {
            //: self.zoomScrollView.contentInset = .zero
            self.zoomScrollView.contentInset = .zero
            //: self.zoomScrollView.setZoomScale(self.zoomScrollView.minimumZoomScale, animated: true)
            self.zoomScrollView.setZoomScale(self.zoomScrollView.minimumZoomScale, animated: true)
            //: } else {
        } else {
            //: let touchPoint = doubleTap!.location(in: self.imgView)
            let touchPoint = doubleTap!.location(in: self.imgView)
            //: let newScale = self.zoomScrollView.maximumZoomScale
            let newScale = self.zoomScrollView.maximumZoomScale
            //: let width = self.frame.size.width / newScale
            let width = self.frame.size.width / newScale
            //: let height = self.frame.size.height / newScale
            let height = self.frame.size.height / newScale
            //: self.zoomScrollView.zoom(to: CGRect(x: touchPoint.x-width/2, y: touchPoint.y-height/2, width: width, height: height), animated: true)
            self.zoomScrollView.zoom(to: CGRect(x: touchPoint.x - width / 2, y: touchPoint.y - height / 2, width: width, height: height), animated: true)
        }
    }
}

// MARK: - update

//: extension TPreviewPhotosCell {
extension FirstView {
    //: func updateWithImgModel(imgModel: TalkingUserInfoGalleryModel) {
    func bottomModel(imgModel: TalkingMeasurable) {
        //: if imgModel.imagePic != nil {
        if imgModel.imagePic != nil {
            //: imgView.image =  imgModel.imagePic
            imgView.image = imgModel.imagePic
            //: } else {
        } else {
            //: imgView.kf.setImage(with: URL(string: imgModel.url), placeholder: UIImage(named: "img_loading_lose"), options: [.keepCurrentImageWhileLoading]) { result in
            imgView.kf.setImage(with: URL(string: imgModel.url), placeholder: UIImage(named: (String(k_beSendData.suffix(7)) + String(k_mainMsg.prefix(9)))), options: [.keepCurrentImageWhileLoading]) { _ in
                //: self.recoverSubviews()
                self.magnitudeerchangeTo()
            }
        }
    }

    //: func updateWithImgUrl(imgUrl: String) {
    func refreshAcross(imgUrl: String) {
        //: imgView.kf.setImage(with: URL(string: imgUrl), placeholder: UIImage(named: "img_loading_lose"), options: [.keepCurrentImageWhileLoading]) { result in
        imgView.kf.setImage(with: URL(string: imgUrl), placeholder: UIImage(named: (String(k_beSendData.suffix(7)) + String(k_mainMsg.prefix(9)))), options: [.keepCurrentImageWhileLoading]) { _ in
            //: self.recoverSubviews()
            self.magnitudeerchangeTo()
        }
    }
}

// MARK: - UIScrollViewDelegate, UIGestureRecognizerDelegate

//: extension TPreviewPhotosCell: UIScrollViewDelegate, UIGestureRecognizerDelegate {
extension FirstView: UIScrollViewDelegate, UIGestureRecognizerDelegate {
    //: func viewForZooming(in scrollView: UIScrollView) -> UIView? {
    func viewForZooming(in _: UIScrollView) -> UIView? {
        //: return self.imgContainerView
        return self.imgContainerView
    }

    //: func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?) {
    func scrollViewWillBeginZooming(_: UIScrollView, with _: UIView?) {
        //: self.zoomScrollView.contentInset = .zero
        self.zoomScrollView.contentInset = .zero
    }

    //: func scrollViewDidZoom(_ scrollView: UIScrollView) {
    func scrollViewDidZoom(_: UIScrollView) {
        //: let offsetX = (self.zoomScrollView.width > self.zoomScrollView.contentSize.width) ? (self.zoomScrollView.width - self.zoomScrollView.contentSize.width) * 0.5 : 0.0
        let offsetX = (self.zoomScrollView.width > self.zoomScrollView.contentSize.width) ? (self.zoomScrollView.width - self.zoomScrollView.contentSize.width) * 0.5 : 0.0
        //: let offsetY = (self.zoomScrollView.height > self.zoomScrollView.contentSize.height) ? (self.zoomScrollView.height - self.zoomScrollView.contentSize.height) * 0.5 : 0.0
        let offsetY = (self.zoomScrollView.height > self.zoomScrollView.contentSize.height) ? (self.zoomScrollView.height - self.zoomScrollView.contentSize.height) * 0.5 : 0.0

        //: let pointX = self.zoomScrollView.contentSize.width * 0.5 + offsetX
        let pointX = self.zoomScrollView.contentSize.width * 0.5 + offsetX
        //: let pointY = self.zoomScrollView.contentSize.height * 0.5 + offsetY
        let pointY = self.zoomScrollView.contentSize.height * 0.5 + offsetY

        //: self.imgContainerView.center = CGPoint(x: pointX, y: pointY)
        self.imgContainerView.center = CGPoint(x: pointX, y: pointY)
    }
}

// MARK: Layout

//: extension TPreviewPhotosCell {
extension FirstView {
    //: private func setupSubviews() {
    private func startDisable() {
        //: self.addSubview(zoomScrollView)
        self.addSubview(zoomScrollView)
        //: zoomScrollView.addSubview(imgContainerView)
        zoomScrollView.addSubview(imgContainerView)
        //: imgContainerView.addSubview(imgView)
        imgContainerView.addSubview(imgView)
    }

    //: func recoverSubviews() {
    func magnitudeerchangeTo() {
        //: self.zoomScrollView .setZoomScale(self.zoomScrollView.minimumZoomScale, animated: false)
        self.zoomScrollView.setZoomScale(self.zoomScrollView.minimumZoomScale, animated: false)

        //: let tempImg = self.imgView.image
        let tempImg = self.imgView.image

        //: var newW = ScreenWidth
        var newW = constFormalContent
        //: var newH = ScreenWidth * tempImg!.size.height / tempImg!.size.width
        var newH = constFormalContent * tempImg!.size.height / tempImg!.size.width

        //: if newH > ScreenHeight {
        if newH > user_recordMarginValue {
            //: newH = ScreenHeight
            newH = user_recordMarginValue
            //: newW = tempImg!.size.width * ScreenHeight / tempImg!.size.height
            newW = tempImg!.size.width * user_recordMarginValue / tempImg!.size.height
        }

        //: self.zoomScrollView.contentSize = CGSize(width: newW, height: newH)
        self.zoomScrollView.contentSize = CGSize(width: newW, height: newH)
        //: self.zoomScrollView.scrollRectToVisible(self.bounds, animated: false)
        self.zoomScrollView.scrollRectToVisible(self.bounds, animated: false)
        //: self.zoomScrollView.alwaysBounceVertical = self.imgContainerView.height <= self.height ? false : true
        self.zoomScrollView.alwaysBounceVertical = self.imgContainerView.height <= self.height ? false : true

        //: self.imgContainerView.origin = CGPoint(x: (ScreenWidth-newW)/2.0, y: (ScreenHeight-newH)/2)
        self.imgContainerView.origin = CGPoint(x: (constFormalContent - newW) / 2.0, y: (user_recordMarginValue - newH) / 2)
        //: self.imgContainerView.size = CGSize(width: newW, height: newH)
        self.imgContainerView.size = CGSize(width: newW, height: newH)
        //: self.imgView.frame = self.imgContainerView.bounds
        self.imgView.frame = self.imgContainerView.bounds
    }
}
