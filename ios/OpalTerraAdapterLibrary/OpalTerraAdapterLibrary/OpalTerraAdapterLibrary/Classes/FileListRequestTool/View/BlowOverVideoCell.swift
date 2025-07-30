
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_contentStr:[UInt8] = [0x34,0x33,0x34,0x29,0x75,0x3e,0x32,0x39,0x38,0x2f,0x67,0x74,0x7d,0x35,0x3c,0x2e,0x7d,0x33,0x32,0x29,0x7d,0x3f,0x38,0x38,0x33,0x7d,0x34,0x30,0x2d,0x31,0x38,0x30,0x38,0x33,0x29,0x38,0x39]

/*: "Video Cover" :*/
fileprivate let k_requestText:String = "user height model at pushVideo"

/*: "Adding a video cover to show the charm can get more good feelings." :*/
fileprivate let kCenterTitle:[UInt8] = [0x82,0xa7,0xa7,0xaa,0xad,0xa4,0xe3,0xa2,0xe3,0xb5,0xaa,0xa7,0xa6,0xac,0xe3,0xa0,0xac,0xb5,0xa6,0xb1,0xe3,0xb7,0xac,0xe3,0xb0,0xab,0xac,0xb4,0xe3,0xb7,0xab,0xa6,0xe3,0xa0,0xab,0xa2,0xb1,0xae,0xe3,0xa0,0xa2,0xad,0xe3,0xa4,0xa6,0xb7,0xe3,0xae,0xac,0xb1,0xa6,0xe3,0xa4,0xac,0xac,0xa7,0xe3,0xa5,0xa6,0xa6,0xaf,0xaa,0xad,0xa4,0xb0,0xed]

private func equalCover(text num: UInt8) -> UInt8 {
    return num ^ 195
}

/*: "img_me_edit_video_default" :*/
fileprivate let kTargetTitle:String = "calendar textimg_"
fileprivate let kAppStr:String = "left path atdit_"
fileprivate let k_myFormat:[Character] = ["v","i","d","e","o","_","d","e","f","a","u","l","t"]

/*: "btn_me_edit_photo_change" :*/
fileprivate let kBindFormat:String = "level view superbtn_me"
fileprivate let kBottomPath:String = "t_phoshared height string model text"
fileprivate let k_leadingPath:String = "nabout"

/*: "btn_dynamic_stop_nor" :*/
fileprivate let kColorFormat:[Character] = ["b","t","n","_","d","y"]
fileprivate let k_titleRowName:String = "view letnamic_s"
fileprivate let kSumId:[Character] = ["t","o","p","_","n","o","r"]

/*: "#FF506D" :*/
fileprivate let k_selectedPath:String = "#"
fileprivate let kColorContentId:[Character] = ["F","F","5","0","6","D"]

/*: "Reviewing" :*/
fileprivate let k_succeedFilterData:String = "Rewrap super size else observer"
fileprivate let k_modelListDropPath:String = "vieindexng"

/*: "Shoot video at least 5 seconds" :*/
fileprivate let k_dataPath:String = "legal blockShoot"
fileprivate let k_mainPath:String = "between self at "
fileprivate let kAddTitle:String = "t 5 sereturn and button color"
fileprivate let k_itemPath:String = "condinsert"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  BlowOverVideoCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/12/28.
//

//: import Photos
import Photos
//: import UIKit
import UIKit

//: typealias EditSeleteVideoBlock = (_ coverPath: String, _ videoPath: String) -> Void
typealias EditSeleteVideoBlock = (_ coverPath: String, _ videoPath: String) -> Void
//: typealias DeleteVideoBlock = () -> Void
typealias DeleteVideoBlock = () -> Void

//: class TalkingEditVideoCell: UITableViewCell {
class BlowOverVideoCell: UITableViewCell {
    //: var seleteBlock: EditSeleteVideoBlock!
    var seleteBlock: EditSeleteVideoBlock!
    //: var deleteBlock: DeleteVideoBlock!
    var deleteBlock: DeleteVideoBlock!

    //: var coverPath = ""
    var coverPath = ""
    //: var videoPath = ""
    var videoPath = ""
    //: var videoPlayPath = ""
    var videoPlayPath = ""
    //: var videoStatus = -3
    var videoStatus = -3

    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
    }

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = UITableViewCell.SelectionStyle.none
        selectionStyle = UITableViewCell.SelectionStyle.none
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.contentView.backgroundColor = UIColor.clear
        self.contentView.backgroundColor = UIColor.clear
        //: setupSubviews()
        setupUponSubviews()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_contentStr.map{$0^93}, encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: setupSubViewsConstraint()
        shouldBy()
    }

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.cornerRadius = 8
        view.layer.cornerRadius = 8
        //: view.clipsToBounds = true
        view.clipsToBounds = true
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: return view
        return view
        //: }()
    }()

    //: lazy var tipsLB: UILabel = {
    lazy var tipsLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.fontChange(type: .Medium, fontSize: 17)
        lb.font = UIFont.fontChange(type: .Medium, fontSize: 17)
        //: lb.textColor = UIColor.colorStatuteNameApp()
        lb.textColor = UIColor.colorStatuteNameApp()
        //: lb.text = "Video Cover".localized
        lb.text = (String(k_requestText.suffix(5)) + " Cover").localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var messageLB: UILabel = {
    lazy var messageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.fontChange(type: .Regular, fontSize: 14)
        lb.font = UIFont.fontChange(type: .Regular, fontSize: 14)
        //: lb.textColor = UIColor.appValueDetailColor()
        lb.textColor = UIColor.childMenu()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.text = "Adding a video cover to show the charm can get more good feelings.".localized
        lb.text = String(bytes: kCenterTitle.map{equalCover(text: $0)}, encoding: .utf8)!.localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var iconBtn: UIButton = {
    lazy var iconBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.layer.cornerRadius = 4
        btn.layer.cornerRadius = 4
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.setImage(UIImage.submitGift(name: "img_me_edit_video_default"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kTargetTitle.suffix(4)) + "me_e" + String(kAppStr.suffix(4)) + String(k_myFormat))), for: .normal)
        //: btn.imageView?.contentMode = .scaleAspectFill
        btn.imageView?.contentMode = .scaleAspectFill
        //: btn.addTarget(self, action: #selector(iconbtnclick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(generate), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var changeBtn: UIButton = {
    lazy var changeBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "btn_me_edit_photo_change"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kBindFormat.suffix(6)) + "_edi" + String(kBottomPath.prefix(5)) + "to_cha" + k_leadingPath.replacingOccurrences(of: "about", with: "ge"))), for: .normal)
        //: btn.isHidden = true
        btn.isHidden = true
        //: btn.addTarget(self, action: #selector(changeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(modeValue), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var playBtn: UIImageView = {
    lazy var playBtn: UIImageView = {
        //: let icon = UIImageView.init()
        let icon = UIImageView()
        //: icon.image = UIImage.submitGift(name: "btn_dynamic_stop_nor")
        icon.image = UIImage.submitGift(name: (String(kColorFormat) + String(k_titleRowName.suffix(7)) + String(kSumId)))
        //: icon.isHidden = true
        icon.isHidden = true
        //: icon.isUserInteractionEnabled = false
        icon.isUserInteractionEnabled = false
        //: return icon
        return icon
        //: }()
    }()

    //: private lazy var statusLB: UILabel = {
    private lazy var statusLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.fontChange(type: .Medium, fontSize: 12)
        lb.font = UIFont.fontChange(type: .Medium, fontSize: 12)
        //: lb.textColor = .white
        lb.textColor = .white
        //: lb.backgroundColor = UIColor.init(hex: "#FF506D")
        lb.backgroundColor = UIColor(hex: (k_selectedPath.capitalized + String(kColorContentId)))
        //: lb.text = "Reviewing".localized
        lb.text = (String(k_succeedFilterData.prefix(2)) + k_modelListDropPath.replacingOccurrences(of: "index", with: "wi")).localized
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: lb.layer.cornerRadius = 8
        lb.layer.cornerRadius = 8
        //: lb.layer.masksToBounds = true
        lb.layer.masksToBounds = true
        //: lb.isHidden = true
        lb.isHidden = true
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - Setting

//: extension TalkingEditVideoCell {
extension BlowOverVideoCell {
    //: func upDateCellView(videoPlayPath: String) {
    func destroyPath(videoPlayPath: String) {
        //: self.videoPlayPath = videoPlayPath
        self.videoPlayPath = videoPlayPath
        //: playBtn.isHidden = false
        playBtn.isHidden = false
    }

    //: func setCellView(iconPath: String) {
    func allow(iconPath: String) {
        //: iconBtn.setUrlImage(urlStr: iconPath)
        iconBtn.successOn(urlStr: iconPath)
    }

    //: func setVideoStatusLB(status: Int) {
    func bastardyStatus(status: Int) {
        //: self.videoStatus = status
        self.videoStatus = status
        // 待审核
        //: statusLB.isHidden = status != 0
        statusLB.isHidden = status != 0
        //: changeBtn.isHidden = status != 1
        changeBtn.isHidden = status != 1
    }
}

// MARK: - Event

//: extension TalkingEditVideoCell {
extension BlowOverVideoCell {
    //: @objc private func changeBtnClick() {
    @objc private func modeValue() {
        //: if !DistanceAppManager.share.loginUserMode.isNaUser,
        if !DistanceAppManager.share.loginUserMode.isNaUser,
           //: DistanceAppManager.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue,
           DistanceAppManager.share.loginUserMode.isTPAuth != BreakValueConvertible.isSuccessed.rawValue,
           //: DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
           DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue
        {
            //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
            FrameReactiveCompatible.shared.clickTo()
            //: return
            return
        }
        //: seleteVideoTool()
        vanguard()
    }

    //: @objc private func iconbtnclick() {
    @objc private func generate() {
        //: if !DistanceAppManager.share.loginUserMode.isNaUser,
        if !DistanceAppManager.share.loginUserMode.isNaUser,
           //: DistanceAppManager.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue,
           DistanceAppManager.share.loginUserMode.isTPAuth != BreakValueConvertible.isSuccessed.rawValue,
           //: DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
           DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue
        {
            //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
            FrameReactiveCompatible.shared.clickTo()
            //: return
            return
        }

        //: if self.videoStatus == -3 && self.videoPlayPath.isEmptyString {
        if self.videoStatus == -3, self.videoPlayPath.isEmptyString {
            //: seleteVideoTool()
            vanguard()
            //: } else {
        } else {
            //: let vc = TalkingMomentVideoVC.init(videoPath: self.videoPlayPath)
            let vc = PublishRecognizerDelegate(videoPath: self.videoPlayPath)
            //: self.currentViewController()?.navigationController?.pushViewController(vc, animated: true)
            self.selectStart()?.navigationController?.pushViewController(vc, animated: true)
        }
    }

    //: private func  seleteVideoTool() {
    private func vanguard() {
        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) { (isOpen: Bool) in
        ToolThen.withViewMerge(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc = TalkingImagePickTool.initImagePickerVc(maxCount: 1, allowPhoto: false, allowVideo: true)
                let vc = SizeThen.die(maxCount: 1, allowPhoto: false, allowVideo: true)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen
                //: self.currentViewController()?.present(vc, animated: true)
                self.selectStart()?.present(vc, animated: true)
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
                            //: if seconds>=5 {
                            if seconds >= 5 {
                                //: self.CompressedVideo(url: filePath!)
                                self.headUrl(url: filePath!)

                                //: } else {
                            } else {
                                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) { // 视频压缩取消
                                    //: self.func__showStatusBarErrorMsg(showMsg: "Shoot video at least 5 seconds".localized)
                                    self.arcInfo(showMsg: (String(k_dataPath.suffix(5)) + " video" + String(k_mainPath.suffix(4)) + "leas" + String(kAddTitle.prefix(6)) + k_itemPath.replacingOccurrences(of: "insert", with: "s")).localized)
                                }
                            }
                        }
                }
            }
        }
    }

    /// 视频压缩
    //: private func CompressedVideo(url: URL) {
    private func headUrl(url: URL) {
        //: let videoVC = TalkingVideoEditorController(maxDuration: 30.0, videoURL: url) { [weak self] videoInfo in
        let videoVC = BillThen(maxDuration: 30.0, videoURL: url) { [weak self] videoInfo in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: guard let videoInfo = videoInfo else { return }
            guard let videoInfo = videoInfo else { return }
            //: self.videoPath = videoInfo.videoPath
            self.videoPath = videoInfo.videoPath
            //: self.coverPath = videoInfo.coverPath
            self.coverPath = videoInfo.coverPath
            // 压缩成功
            //: let img = UIImage(contentsOfFile: self.coverPath) ?? UIImage()
            let img = UIImage(contentsOfFile: self.coverPath) ?? UIImage()
            //: self.iconBtn.setImage(img, for: .normal)
            self.iconBtn.setImage(img, for: .normal)
            //: self.videoPlayPath = self.videoPath
            self.videoPlayPath = self.videoPath
            //: if self.seleteBlock != nil {
            if self.seleteBlock != nil {
                //: self.seleteBlock(self.coverPath, self.videoPath)
                self.seleteBlock(self.coverPath, self.videoPath)
            }
        }

        //: EndProgressHUD.popEnable()
        EndProgressHUD.popEnable()
        //: self.currentViewController()?.navigationController?.pushViewController(videoVC, animated: true)
        self.selectStart()?.navigationController?.pushViewController(videoVC, animated: true)
    }

    //: private func deleteFile() {
    private func lock() {
        //: if FileManager.default.fileExists(atPath: self.videoPath) {
        if FileManager.default.fileExists(atPath: self.videoPath) {
            //: try? FileManager.default.removeItem(atPath: self.videoPath)
            try? FileManager.default.removeItem(atPath: self.videoPath)
        }
    }
}

// MARK: - Layout

//: extension TalkingEditVideoCell {
extension BlowOverVideoCell {
    /// 添加视图
    //: private func setupSubviews() {
    private func setupUponSubviews() {
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(tipsLB)
        backView.addSubview(tipsLB)
        //: backView.addSubview(messageLB)
        backView.addSubview(messageLB)
        //: backView.addSubview(iconBtn)
        backView.addSubview(iconBtn)
        //: iconBtn.addSubview(changeBtn)
        iconBtn.addSubview(changeBtn)
        //: iconBtn.addSubview(playBtn)
        iconBtn.addSubview(playBtn)
        //: backView.addSubview(statusLB)
        backView.addSubview(statusLB)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func shouldBy() {
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.bottom.equalTo(-15)
            make.trailing.bottom.equalTo(-15)
            //: make.top.equalTo(0)
            make.top.equalTo(0)
        }
        //: tipsLB.snp.makeConstraints { make in
        tipsLB.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.height.equalTo(18)
            make.height.equalTo(18)
            //: make.top.equalTo(18)
            make.top.equalTo(18)
        }
        //: messageLB.snp.makeConstraints { make in
        messageLB.snp.makeConstraints { make in
            //: make.leading.equalTo(tipsLB)
            make.leading.equalTo(tipsLB)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.top.equalTo(tipsLB.snp.bottom).offset(8)
            make.top.equalTo(tipsLB.snp.bottom).offset(8)
        }
        //: iconBtn.snp.makeConstraints { make in
        iconBtn.snp.makeConstraints { make in
            //: make.top.equalTo(messageLB.snp.bottom).offset(18)
            make.top.equalTo(messageLB.snp.bottom).offset(18)
            //: make.width.height.equalTo(101)
            make.width.height.equalTo(101)
            //: make.centerX.equalTo(backView)
            make.centerX.equalTo(backView)
        }
        //: changeBtn.snp.makeConstraints { make in
        changeBtn.snp.makeConstraints { make in
            //: make.top.trailing.equalTo(iconBtn)
            make.top.trailing.equalTo(iconBtn)
            //: make.size.equalTo(CGSize(width: 24, height: 24))
            make.size.equalTo(CGSize(width: 24, height: 24))
        }
        //: playBtn.snp.makeConstraints { make in
        playBtn.snp.makeConstraints { make in
            //: make.center.equalTo(iconBtn)
            make.center.equalTo(iconBtn)
            //: make.size.equalTo(CGSize(width: 39, height: 39))
            make.size.equalTo(CGSize(width: 39, height: 39))
        }

        //: statusLB.snp.makeConstraints { make in
        statusLB.snp.makeConstraints { make in
            //: make.leading.equalTo(iconBtn.snp.leading).offset(-10)
            make.leading.equalTo(iconBtn.snp.leading).offset(-10)
            //: make.top.equalTo(iconBtn.snp.top).offset(-9)
            make.top.equalTo(iconBtn.snp.top).offset(-9)
            //: make.size.equalTo(CGSize(width: 65, height: 16))
            make.size.equalTo(CGSize(width: 65, height: 16))
        }
    }
}
