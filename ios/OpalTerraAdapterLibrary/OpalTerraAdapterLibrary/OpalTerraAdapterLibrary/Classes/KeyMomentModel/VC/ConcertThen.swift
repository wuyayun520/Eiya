
//: Declare String Begin

/*: "Cancel" :*/
fileprivate let k_sectionValue:String = "Cancelapp action self"

/*: "Post" :*/
fileprivate let kAddPath:String = "Postvar make data equal lab"

/*: "Upload failed" :*/
fileprivate let kBackgroundValue:String = "Uploadcontent normal route path in"
fileprivate let kAppValue:String = "data"

/*: "imgUrl" :*/
fileprivate let kAtName:[Character] = ["i","m","g","U","r","l"]

/*: "videoUrl" :*/
fileprivate let kModelId:[Character] = ["v","i","d"]
fileprivate let kMakeData:String = "let anyeoUrl"

/*: "content" :*/
fileprivate let k_rowUrl:String = "contequaln"
fileprivate let kTitleData:[Character] = ["t"]

/*: "location" :*/
fileprivate let k_formalStr:String = "lomodea"

/*: "Video review in progress" :*/
fileprivate let kAcceptMessage:String = "Video recolor view path"
fileprivate let k_faceColorUrl:String = "vcontentw"
fileprivate let kImageName:String = "rotextress"

/*: "Shoot video at least 5 seconds" :*/
fileprivate let k_endUrl:String = "data makeShoo"
fileprivate let k_labelStr:String = "t viany let var"
fileprivate let k_mediaIncomeContent:String = " leaadd size will size"
fileprivate let kEqualData:String = "sesizeonds"

/*: "Camera" :*/
fileprivate let kViewInfoData:String = "Cameramanager attribute progress"

/*: "Photo" :*/
fileprivate let kPlayerMessage:[Character] = ["P","h","o","t","o"]

/*: "Video" :*/
fileprivate let kIconName:[Character] = ["V","i","d","e","o"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ConcertThen.swift
//  AbroadTalking
//
//  Created by young on 2022/9/21.
//

//: import AVFoundation
import AVFoundation
//: import CoreServices
import CoreServices
//: import ModelIO
import ModelIO
//: import Photos
import Photos
//: import UIKit
import UIKit

//: protocol TalkingFreeViewControllerDelegate: NSObjectProtocol {
protocol IndependentControllerDelegate: NSObjectProtocol {
    // 发布成功
    //: func ShareSucceed()
    func totalercalate()
}

// MARK: - 属性声明 & 生命周期方法

//: class TalkingFreeViewController: TalkingBaseViewController {
class ConcertThen: StartThen {
    //: weak var delegate: TalkingFreeViewControllerDelegate?
    weak var delegate: IndependentControllerDelegate?

    //: private var videoPath = ""
    private var videoPath = ""
    //: private var coverPath = ""
    private var coverPath = ""

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: createUI()
        moreBy()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy load

    //: private lazy var reqManager: TalkingMomentRequestTool = {
    private lazy var reqManager: TvThen = //: return TvThen()
        .init()
    //: }()

    //: private lazy var cancelBtn: UIButton = {
    private lazy var cancelBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("Cancel".localized, for: .normal)
        btn.setTitle((String(k_sectionValue.prefix(6))).localized, for: .normal)
        //: btn.setTitleColor(.appValueColor(), for: .normal)
        btn.setTitleColor(.scaleValueTo(), for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 15)
        //: btn.addTarget(self, action: #selector(cancelBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(pressCover), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var postBtn: UIButton = {
    private lazy var postBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setTitle("Post".localized, for: .normal)
        btn.setTitle((String(kAddPath.prefix(4))).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 15)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 70, height: 30)), for: .normal)
        btn.setBackgroundImage(UIImage.makeEqual(colors: UIColor.georgiaHomeBoy(), size: CGSize(width: 70, height: 30)), for: .normal)
        //: btn.layer.cornerRadius = 15
        btn.layer.cornerRadius = 15
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(postBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(vessel), for: .touchUpInside)
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var collectionView: FreeCollectionView = {
    private lazy var collectionView: DataViewDelegate = {
        //: let collectionView = FreeCollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout())
        let collectionView = DataViewDelegate(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout())
        //: collectionView.backgroundColor = .clear
        collectionView.backgroundColor = .clear
        //: collectionView.delegte = self
        collectionView.delegte = self
        //: collectionView.deleteActionBlock = { [weak self] in
        collectionView.deleteActionBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if self.collectionView.imageArray.count == 0 {
            if self.collectionView.imageArray.count == 0 {
                //: self.collectionView.contentType = MomentType.nones
                self.collectionView.contentType = ObserverItemContentConvertible.nones
                //: self.videoPath = ""
                self.videoPath = ""
                //: self.coverPath = ""
                self.coverPath = ""
            }
            //: self.updataImageNumber()
            self.random()
        }
        //: return collectionView
        return collectionView
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingFreeViewController {
extension ConcertThen {
    /// 发布动态
    //: func requestReleaseMoment() {
    func upScreen() {
        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: let content = self.collectionView.headerView?.textView.text ?? ""
        let content = self.collectionView.headerView?.textView.text ?? ""
        //: reqManager.releasePhotosMoment(photos: self.collectionView.imageArray, content: content) { [weak self] succeed, result, errorModel in
        reqManager.titleCompletion(photos: self.collectionView.imageArray, content: content) { [weak self] succeed, _, _ in
            //: EndProgressHUD.popEnable()
            EndProgressHUD.popEnable()
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.postBtn.isEnabled = true
            self.postBtn.isEnabled = true
            //: guard succeed else {
            guard succeed else {
                //: return
                return
            }
            //: self.navigationController?.popViewController(animated: true)
            self.navigationController?.popViewController(animated: true)
            //: NotificationCenter.default.post(name: POST_EXPLORE_SUCCESS_NOTIFICATION, object: self, userInfo: nil)
            NotificationCenter.default.post(name: userVideoCancelData, object: self, userInfo: nil)
        }
    }

    /// 上传视频到腾讯云COS
    //: func uploadVideo() {
    func by() {
        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: let content = self.collectionView.headerView?.textView.text ?? ""
        let content = self.collectionView.headerView?.textView.text ?? ""
        //: TalkingMomentVideoManager.shared.cos_uploadVideo(type: 1, coverPath: self.coverPath, videoPath: self.videoPath) { coverUrl, videoUrl, succeed in
        StartReactiveCompatible.shared.tv(type: 1, coverPath: self.coverPath, videoPath: self.videoPath) { coverUrl, videoUrl, succeed in
            //: guard succeed else {
            guard succeed else {
                //: EndProgressHUD.popEnable()
                EndProgressHUD.popEnable()
                //: self.func__showStatusBarErrorMsg(showMsg: "Upload failed".localized)
                self.arcInfo(showMsg: (String(kBackgroundValue.prefix(6)) + " faile" + kAppValue.replacingOccurrences(of: "data", with: "d")).localized)
                //: return
                return
            }

            //: var dict = Dictionary<String, Any>()
            var dict = [String: Any]()
            //: dict["imgUrl"] = coverUrl
            dict[(String(kAtName))] = coverUrl
            //: dict["videoUrl"] = videoUrl
            dict[(String(kModelId) + String(kMakeData.suffix(5)))] = videoUrl
            //: dict["content"] = content
            dict[(k_rowUrl.replacingOccurrences(of: "equal", with: "e") + String(kTitleData))] = content
            //: dict["location"] = ""
            dict[(k_formalStr.replacingOccurrences(of: "mode", with: "c") + "tion")] = ""

            //: TalkingMomentRequestTool.releaseVideoMoment(params: dict) {[weak self] succeed, result, errorModel in
            TvThen.messageRequest(params: dict) { [weak self] succeed, _, _ in
                //: EndProgressHUD.popEnable()
                EndProgressHUD.popEnable()
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: self.postBtn.isEnabled = true
                self.postBtn.isEnabled = true
                //: guard succeed else {
                guard succeed else {
                    //: return
                    return
                }
                //: self.deleteFile()
                self.tillIndex()
                //: self.func__showStatusBarSuccessMsg(showMsg: "Video review in progress".localized)
                self.rear(showMsg: (String(kAcceptMessage.prefix(8)) + k_faceColorUrl.replacingOccurrences(of: "content", with: "ie") + " in p" + kImageName.replacingOccurrences(of: "text", with: "g")).localized)
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
                //: self.delegate?.ShareSucceed()
                self.delegate?.totalercalate()
                //: NotificationCenter.default.post(name: POST_EXPLORE_SUCCESS_NOTIFICATION, object: self, userInfo: nil)
                NotificationCenter.default.post(name: userVideoCancelData, object: self, userInfo: nil)
            }
        }
    }
}

// MARK: Event事件

//: extension TalkingFreeViewController {
extension ConcertThen {
    //: @objc func cancelBtnClickEvent() {
    @objc func pressCover() { // 返回
        //: TalkingMomentVideoManager.shared.stopCompressVideo()
        StartReactiveCompatible.shared.response()
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }

    //: @objc func postBtnClickEvent() {
    @objc func vessel() { // 发布
        //: postBtn.isEnabled = false
        postBtn.isEnabled = false
        //: collectionView.headerView?.textView.resignFirstResponder()
        collectionView.headerView?.textView.resignFirstResponder()
        //: if self.collectionView.contentType == .Photo {
        if self.collectionView.contentType == .Photo {
            //: requestReleaseMoment()
            upScreen()
            //: } else if self.collectionView.contentType == .Video {
        } else if self.collectionView.contentType == .Video {
            //: uploadVideo()
            by()
        }
    }

    /// 更新发布按钮状态
    //: func updataImageNumber() {
    func random() {
        //: postBtn.isEnabled = collectionView.imageArray.count > 0 ? true:false
        postBtn.isEnabled = collectionView.imageArray.count > 0 ? true : false
        //: collectionView.reloadData()
        collectionView.reloadData()
    }

    // MARK: - 相机、相册

    //: func openCamera() {
    func receiveTable() {
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(true) { (isOpen: Bool) in
        ToolThen.represent(true) { (isOpen: Bool) in
            //: guard isOpen else { return }
            guard isOpen else { return }

            //: let cameraPicker = UIImagePickerController()
            let cameraPicker = UIImagePickerController()
            //: cameraPicker.delegate = self
            cameraPicker.delegate = self
            //: cameraPicker.sourceType = .camera
            cameraPicker.sourceType = .camera
            //: switch self.collectionView.contentType {
            switch self.collectionView.contentType {
            //: case .Photo:
            case .Photo:
                //: cameraPicker.cameraCaptureMode = .photo
                cameraPicker.cameraCaptureMode = .photo
            //: break
            //: default:
            default:
                //: cameraPicker.mediaTypes = [kUTTypeMovie as String, kUTTypeImage as String]
                cameraPicker.mediaTypes = [kUTTypeMovie as String, kUTTypeImage as String]
                //: cameraPicker.cameraCaptureMode = .video
                cameraPicker.cameraCaptureMode = .video
                //: cameraPicker.videoQuality = .typeMedium
                cameraPicker.videoQuality = .typeMedium
                //: cameraPicker.videoMaximumDuration = 30
                cameraPicker.videoMaximumDuration = 30
                //: break
            }
            //: cameraPicker.modalPresentationStyle = .fullScreen
            cameraPicker.modalPresentationStyle = .fullScreen
            //: self.present(cameraPicker, animated: true)
            self.present(cameraPicker, animated: true)
        }
    }

    //: func openAlbum() {
    func thread() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        ToolThen.withViewMerge(true) { (isOpen: Bool) in
            //: guard isOpen else { return }
            guard isOpen else { return }
            //: let count = 9 - self.collectionView.imageArray.count
            let count = 9 - self.collectionView.imageArray.count
            //: let vc = TalkingImagePickTool.initImagePickerVc(maxCount: count, allowPhoto: true, allowVideo: false)
            let vc = SizeThen.die(maxCount: count, allowPhoto: true, allowVideo: false)
            //: vc.modalPresentationStyle = .fullScreen
            vc.modalPresentationStyle = .fullScreen
            //: self.present(vc, animated: true)
            self.present(vc, animated: true)
            //: vc.didFinishPickingPhotosHandle = { [weak self] ( photos: Array<UIImage>?,
            vc.didFinishPickingPhotosHandle = { [weak self] (photos: [UIImage]?,
                                                             //: assets: Array<Any>?,
                                                             _: [Any]?,
                                                             //: isSelectOriginalPhoto: Bool?)  in
                                                             _: Bool?) in
                    //: guard let self = self else {return}
                    guard let self = self else { return }
                    //: guard let photos = photos else { return }
                    guard let photos = photos else { return }

                    //: for img in photos {
                    for img in photos {
                        //: self.collectionView.imageArray.append(img)
                        self.collectionView.imageArray.append(img)
                    }
                    //: self.collectionView.MaxImagesCount = 9
                    self.collectionView.MaxImagesCount = 9
                    //: self.collectionView.contentType = .Photo
                    self.collectionView.contentType = .Photo
                    //: self.updataImageNumber()
                    self.random()
            }
        }
    }

    //: func openVideo() {
    func videoRandom() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        ToolThen.withViewMerge(true) { (isOpen: Bool) in
            //: guard isOpen else { return }
            guard isOpen else { return }
            //: let vc = TalkingImagePickTool.initImagePickerVc(maxCount: 1, allowPhoto: false, allowVideo: true)
            let vc = SizeThen.die(maxCount: 1, allowPhoto: false, allowVideo: true)
            //: vc.modalPresentationStyle = .fullScreen
            vc.modalPresentationStyle = .fullScreen
            //: self.present(vc, animated: true)
            self.present(vc, animated: true)
            //: vc.didFinishPickingVideoHandle = { [weak self] ( coverImage: UIImage?,
            vc.didFinishPickingVideoHandle = { [weak self] (_: UIImage?,
                                                            //: assets: PHAsset?)  in
                                                            assets: PHAsset?) in
                    //: guard let self = self else {return}
                    guard let self = self else { return }
                    //: TalkingImagePickTool.getVideoPath(asset: assets) { filePath in
                    SizeThen.titleMessage(asset: assets) { filePath in
                        //: guard filePath != nil else { return }
                        guard filePath != nil else { return }
                        //: let asset = AVURLAsset.init(url: filePath!)
                        let asset = AVURLAsset(url: filePath!)
                        //: let time = asset.duration
                        let time = asset.duration
                        //: let seconds = Int(roundf(Float(CMTimeGetSeconds(time))))
                        let seconds = Int(roundf(Float(CMTimeGetSeconds(time))))
                        //: if seconds >= 5 {
                        if seconds >= 5 {
                            //: self.CompressedVideo(url: filePath!)
                            self.be(url: filePath!)
                            //: } else {
                        } else {
                            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                                //: self.func__showStatusBarErrorMsg(showMsg: "Shoot video at least 5 seconds".localized)
                                self.arcInfo(showMsg: (String(k_endUrl.suffix(4)) + String(k_labelStr.prefix(4)) + "deo at" + String(k_mediaIncomeContent.prefix(4)) + "st 5 " + kEqualData.replacingOccurrences(of: "size", with: "c")).localized)
                            }
                        }
                    }
            }
        }
    }

    /// 视频编辑+压缩
    //: func CompressedVideo(url: URL) {
    func be(url: URL) {
        //: let videoVC = TalkingVideoEditorController(maxDuration: 60.0, videoURL: url) { videoInfo in
        let videoVC = BillThen(maxDuration: 60.0, videoURL: url) { videoInfo in
            //: guard let videoInfo = videoInfo else { return }
            guard let videoInfo = videoInfo else { return }
            //: self.videoPath = videoInfo.videoPath
            self.videoPath = videoInfo.videoPath
            //: self.coverPath = videoInfo.coverPath
            self.coverPath = videoInfo.coverPath
            //: self.collectionView.contentType = .Video
            self.collectionView.contentType = .Video
            //: let img = UIImage.init(contentsOfFile: self.coverPath) ?? UIImage.init()
            let img = UIImage(contentsOfFile: self.coverPath) ?? UIImage()
            //: self.collectionView.imageArray.append(img)
            self.collectionView.imageArray.append(img)
            //: self.collectionView.MaxImagesCount = 1
            self.collectionView.MaxImagesCount = 1
            //: self.updataImageNumber()
            self.random()
        }
        //: EndProgressHUD.popEnable()
        EndProgressHUD.popEnable()
        //: videoVC.modalPresentationStyle = .fullScreen
        videoVC.modalPresentationStyle = .fullScreen
        //: self.present(videoVC, animated: true)
        self.present(videoVC, animated: true)
    }

    //: func deleteFile() {
    func tillIndex() {
        //: if FileManager.default.fileExists(atPath: self.videoPath) {
        if FileManager.default.fileExists(atPath: self.videoPath) {
            //: try? FileManager.default.removeItem(atPath: self.videoPath)
            try? FileManager.default.removeItem(atPath: self.videoPath)
        }
    }
}

// MARK: - UIImagePickerControllerDelegate

//: extension TalkingFreeViewController: UIImagePickerControllerDelegate & UINavigationControllerDelegate {
extension ConcertThen: UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    //: func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
    func imagePickerController(_: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        //: self.dismiss(animated: true) {
        self.dismiss(animated: true) {
            //: let mediaType = info[.mediaType] as! String
            let mediaType = info[.mediaType] as! String

            //: if mediaType == kUTTypeMovie as String {
            if mediaType == kUTTypeMovie as String {
                //: let asset = AVURLAsset.init(url: info[.mediaURL] as! URL)
                let asset = AVURLAsset(url: info[.mediaURL] as! URL)
                //: let time = asset.duration
                let time = asset.duration
                //: let seconds = Int(roundf(Float(CMTimeGetSeconds(time))))
                let seconds = Int(roundf(Float(CMTimeGetSeconds(time))))
                //: if seconds>=5 {
                if seconds >= 5 {
                    //: ProgressHUD.show()
                    EndProgressHUD.listHide()
                    //: self.CompressedVideo(url: info[.mediaURL]! as! URL)
                    self.be(url: info[.mediaURL]! as! URL)

                    //: } else {
                } else {
                    //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) { // 视频压缩取消
                        //: self.func__showStatusBarErrorMsg(showMsg: "Shoot video at least 5 seconds".localized)
                        self.arcInfo(showMsg: (String(k_endUrl.suffix(4)) + String(k_labelStr.prefix(4)) + "deo at" + String(k_mediaIncomeContent.prefix(4)) + "st 5 " + kEqualData.replacingOccurrences(of: "size", with: "c")).localized)
                    }
                }
                //: }else if mediaType == kUTTypeImage as String {
            } else if mediaType == kUTTypeImage as String {
                //: guard let image = info[.originalImage] as? UIImage else {
                guard let image = info[.originalImage] as? UIImage else {
                    //: return
                    return
                }
                //: DispatchQueue.main.async {
                DispatchQueue.main.async {
                    //: self.collectionView.MaxImagesCount = 9
                    self.collectionView.MaxImagesCount = 9
                    //: self.collectionView.contentType = .Photo
                    self.collectionView.contentType = .Photo
                    //: self.collectionView.imageArray.append(image)
                    self.collectionView.imageArray.append(image)
                    //: self.updataImageNumber()
                    self.random()
                }
            }
        }
    }
}

// MARK: - DrawInViewDelegate

//: extension TalkingFreeViewController: FreeCollectionViewDelegate {
extension ConcertThen: DrawInViewDelegate {
    /// 选择图片
    //: func needSelectReleaseImages() {
    func pin() {
        //: let vc = TalkingMunuPopView.init(frame: self.view.frame)
        let vc = LipogramViewDelegate(frame: self.view.frame)
        //: if self.collectionView.contentType == .Photo {
        if self.collectionView.contentType == .Photo {
            //: vc.initwithList(cellTitleList: ["Camera".localized, "Photo".localized])
            vc.listEffect(cellTitleList: [(String(kViewInfoData.prefix(6))).localized, (String(kPlayerMessage)).localized])
            //: }else {
        } else {
            //: vc.initwithList(cellTitleList: ["Camera".localized, "Photo".localized, "Video".localized])
            vc.listEffect(cellTitleList: [(String(kViewInfoData.prefix(6))).localized, (String(kPlayerMessage)).localized, (String(kIconName)).localized])
        }

        //: vc.munuBlock = { [weak self] index, str in
        vc.munuBlock = { [weak self] index, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if index == 0 {
            if index == 0 {
                //: self.openCamera()
                self.receiveTable()
                //: } else if index == 1 {
            } else if index == 1 {
                //: self.openAlbum()
                self.thread()
                //: } else if index == 2 {
            } else if index == 2 {
                //: self.openVideo()
                self.videoRandom()
            }
        }
    }

    /// 展示当前选中图片
    //: func needShowCurrentImage(index: IndexPath) {
    func tillMedia(index: IndexPath) {
        //: let vc = TalkingMomentPhotosVC.init(images: self.collectionView.imageArray, index: index.row, type: .publish)
        let vc = LimitJoinViewDelegate(images: self.collectionView.imageArray, index: index.row, type: .publish)
        // 删除按钮block
        //: vc.deleteBlock = { index in
        vc.deleteBlock = { index in
            //: guard self.collectionView.imageArray.count > index else {
            guard self.collectionView.imageArray.count > index else {
                //: return
                return
            }
            //: self.collectionView.imageArray.remove(at: index)
            self.collectionView.imageArray.remove(at: index)
            //: self.updataImageNumber()
            self.random()
            //: self.collectionView.contentType = MomentType.nones
            self.collectionView.contentType = ObserverItemContentConvertible.nones
        }
        //: vc.modalPresentationStyle = .fullScreen
        vc.modalPresentationStyle = .fullScreen
        //: self.present(vc, animated: true)
        self.present(vc, animated: true)
    }

    /// 展示当前选中视频
    //: func needShowCurrentVideo() {
    func cur() {
        //: let vc = TalkingMomentVideoVC.init(videoPath: self.videoPath)
        let vc = PublishRecognizerDelegate(videoPath: self.videoPath)
        //: vc.modalPresentationStyle = .fullScreen
        vc.modalPresentationStyle = .fullScreen
        //: self.present(vc, animated: true)
        self.present(vc, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingFreeViewController {
extension ConcertThen {
    //: func createUI() {
    func moreBy() {
        //: self.view.addSubview(cancelBtn)
        self.view.addSubview(cancelBtn)
        //: cancelBtn.snp.makeConstraints { make in
        cancelBtn.snp.makeConstraints { make in
            //: make.leading.equalToSuperview()
            make.leading.equalToSuperview()
            //: make.top.equalTo(StatusBarHeight+7)
            make.top.equalTo(main_netValue + 7)
            //: make.size.equalTo(CGSize(width: 80, height: 30))
            make.size.equalTo(CGSize(width: 80, height: 30))
        }

        //: self.view.addSubview(postBtn)
        self.view.addSubview(postBtn)
        //: postBtn.snp.makeConstraints { make in
        postBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.top.equalTo(StatusBarHeight+7)
            make.top.equalTo(main_netValue + 7)
            //: make.size.equalTo(CGSize(width: 70, height: 30))
            make.size.equalTo(CGSize(width: 70, height: 30))
        }

        //: self.view.addSubview(collectionView)
        self.view.addSubview(collectionView)
        //: collectionView.snp.makeConstraints { make in
        collectionView.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(StatusBarNavigationBarHeight)
            make.top.equalToSuperview().offset(appTurnName)
            //: make.leading.trailing.bottom.equalTo(0)
            make.leading.trailing.bottom.equalTo(0)
        }
    }
}
