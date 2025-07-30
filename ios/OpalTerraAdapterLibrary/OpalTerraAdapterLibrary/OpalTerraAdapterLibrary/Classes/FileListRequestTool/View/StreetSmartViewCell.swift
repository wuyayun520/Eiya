
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_recordContent:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "#333333" :*/
fileprivate let kOffName:String = "#addaddadd"

/*: "My photos" :*/
fileprivate let k_handleResultKey:String = "succeed sub screenMy ph"
fileprivate let kNumberimateName:String = "oenables"

/*: "#999999" :*/
fileprivate let kFileFormat:String = "#9"
fileprivate let k_nameMessage:[Character] = ["9","9","9","9","9"]

/*: "Click to change or delete photo." :*/
fileprivate let kViewContent:[UInt8] = [0xf,0x20,0x25,0x2f,0x27,0x6c,0x38,0x23,0x6c,0x2f,0x24,0x2d,0x22,0x2b,0x29,0x6c,0x23,0x3e,0x6c,0x28,0x29,0x20,0x29,0x38,0x29,0x6c,0x3c,0x24,0x23,0x38,0x23,0x62]

private func modeModel(time num: UInt8) -> UInt8 {
    return num ^ 76
}

/*: "btn_me_edit_photo_add_nor" :*/
fileprivate let k_managerStr:String = "btn_meview sex user cell"
fileprivate let k_bottomId:String = "currency height view true content_phot"
fileprivate let k_modelTitle:[Character] = ["r"]

/*: "btn_me_edit_photo_add_pre" :*/
fileprivate let kTotalimateStr:[Character] = ["b","t","n","_","m","e","_","e","d","i","t","_"]
fileprivate let kImageText:[Character] = ["p","h","o","t","o","_","a","d","d","_","p","r","e"]

/*: "btn_me_edit_photo_delete" :*/
fileprivate let k_modelPath:String = "btn_mbirthday gift"
fileprivate let k_viewWhiteMsg:String = "let double right kitit_pho"
fileprivate let k_objectOfPath:[Character] = ["e","t","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StreetSmartViewCell.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/30.
//

//: import UIKit
import UIKit

//: public protocol EditPhotoDelegate: NSObject {
public protocol StackServerPhotoDelegate: NSObject {
    /// 图片add
    //: func addPhoto(_ icon: [UIImage])
    func writeAdd(_ icon: [UIImage])
    /// 图片本地delete
    //: func deletePhoto(_ icon: UIImage)
    func sessionBy(_ icon: UIImage)
    /// 图片后台delete
    //: func deletePhotoWithUid(_ iconUid: String)
    func shared(_ iconUid: String)
}

//: class TalkingEditPhotoCell: UITableViewCell {
class StreetSmartViewCell: UITableViewCell {
    //: let disposeBag = DisposeBag()
    let disposeBag = DisposeBag()
    //: var count = 0
    var count = 0
    //: open weak var delegate: EditPhotoDelegate?
    open weak var delegate: StackServerPhotoDelegate?
    //: var allPhoto = Array<Any>()
    var allPhoto = [Any]()
    //: var backBottomOffer = -41
    var backBottomOffer = -41

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
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.addSubview(titleBLB)
        backView.addSubview(titleBLB)
        //: self.addSubview(messageLB)
        self.addSubview(messageLB)
//        showMessageView()
    }

    //: required init?(coder aDecoder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_recordContent.reversed(), encoding: .utf8)!)
    }

    //: override func layoutSubviews() {
    override func layoutSubviews() {
        //: super.layoutSubviews()
        super.layoutSubviews()
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(self).offset(15)
            make.leading.equalTo(self).offset(15)
            //: make.trailing.equalTo(self.snp.trailing).offset(-15)
            make.trailing.equalTo(self.snp.trailing).offset(-15)
            //: make.top.equalTo(self)
            make.top.equalTo(self)
            //: make.bottom.equalTo(self.snp.bottom).offset(backBottomOffer)
            make.bottom.equalTo(self.snp.bottom).offset(backBottomOffer)
        }
        //: titleBLB.snp.makeConstraints { make in
        titleBLB.snp.makeConstraints { make in
            //: make.leading.equalTo(backView).offset(12)
            make.leading.equalTo(backView).offset(12)
            //: make.top.equalTo(backView).offset(12)
            make.top.equalTo(backView).offset(12)
            //: make.height.equalTo(24)
            make.height.equalTo(24)
        }
        //: messageLB.snp.makeConstraints { make in
        messageLB.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.top.equalTo(backView.snp.bottom).offset(6)
            make.top.equalTo(backView.snp.bottom).offset(6)
            //: make.height.equalTo(20)
            make.height.equalTo(20)
        }
    }

    // MARK: - Lazy load

    //: lazy var backView: UIView = {
    lazy var backView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        //: view.clipsToBounds = true
        view.clipsToBounds = true
        //: view.layer.cornerRadius  = 8
        view.layer.cornerRadius = 8
        //: return view
        return view
        //: }()
    }()

    //: lazy var titleBLB: UILabel = {
    lazy var titleBLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.fontChange(type: .Medium, fontSize: 17)
        lb.font = UIFont.fontChange(type: .Medium, fontSize: 17)
        //: lb.textColor = UIColor.init(hex: "#333333")
        lb.textColor = UIColor(hex: (kOffName.replacingOccurrences(of: "add", with: "33")))
        //: lb.text = "My photos".localized
        lb.text = (String(k_handleResultKey.suffix(5)) + kNumberimateName.replacingOccurrences(of: "enable", with: "to")).localized
        //: return lb
        return lb
        //: }()
    }()

    //: lazy var messageLB: UILabel = {
    lazy var messageLB: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.font = UIFont.fontChange(type: .Regular, fontSize: 12)
        lb.font = UIFont.fontChange(type: .Regular, fontSize: 12)
        //: lb.textColor = UIColor.init(hex: "#999999")
        lb.textColor = UIColor(hex: (kFileFormat.capitalized + String(k_nameMessage)))
        //: lb.text = "Click to change or delete photo.".localized
        lb.text = String(bytes: kViewContent.map{modeModel(time: $0)}, encoding: .utf8)!.localized
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingEditPhotoCell {
extension StreetSmartViewCell {
    //: func showMessageView () {
    func messageKeyTap() {
        //: let sizewh = Int((ScreenWidth-30-12*2-9*2)/3)
        let sizewh = Int((constFormalContent - 30 - 12 * 2 - 9 * 2) / 3)

        //: let xa = 12
        let xa = 12 // x 初始值
        //: let ya = 46
        let ya = 46 // y 初始值
        //: let xz = 9
        let xz = 9 // 横向间隔
        //: let yz = 9
        let yz = 9 // 纵向间隔

        //: for  i in 0..<9 {
        for i in 0 ..< 9 {
            //: let X = xa+(xz + sizewh)*(i%3)
            let X = xa + (xz + sizewh) * (i % 3)
            //: let Y = ya+(yz + sizewh)*(i/3)
            let Y = ya + (yz + sizewh) * (i / 3)
            //: let frame = CGRect.init(x: X, y: Y, width: sizewh, height: sizewh)
            let frame = CGRect(x: X, y: Y, width: sizewh, height: sizewh)

            //: let colorBtn = UIButton.init(frame: frame)
            let colorBtn = UIButton(frame: frame)
            //: colorBtn.setBackgroundImage(.submitGift(name: "btn_me_edit_photo_add_nor"), for: .normal)
            colorBtn.setBackgroundImage(.submitGift(name: (String(k_managerStr.prefix(6)) + "_edit" + String(k_bottomId.suffix(5)) + "o_add_no" + String(k_modelTitle))), for: .normal)
            //: colorBtn.setBackgroundImage(.submitGift(name: "btn_me_edit_photo_add_pre"), for: .highlighted)
            colorBtn.setBackgroundImage(.submitGift(name: (String(kTotalimateStr) + String(kImageText))), for: .highlighted)
            //: colorBtn.imageView?.contentMode = .scaleAspectFill
            colorBtn.imageView?.contentMode = .scaleAspectFill
            //: colorBtn.layer.cornerRadius = 4
            colorBtn.layer.cornerRadius = 4
            //: colorBtn.clipsToBounds = true
            colorBtn.clipsToBounds = true
            //: backView.addSubview(colorBtn)
            backView.addSubview(colorBtn)
            //: allPhoto.append(colorBtn)
            allPhoto.append(colorBtn)
            //: colorBtn.rx.tap.subscribe(onNext: { [weak self] in
            colorBtn.rx.tap.subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.seleteBtnClick(sender: colorBtn)
                self.pop(sender: colorBtn)
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)

            //: let deleteBtn = UIButton.init(frame: CGRect.init(x: colorBtn.frame.size.width-24, y: 0, width: 24, height: 24))
            let deleteBtn = UIButton(frame: CGRect(x: colorBtn.frame.size.width - 24, y: 0, width: 24, height: 24))
            //: deleteBtn.isHidden = true
            deleteBtn.isHidden = true
            //: deleteBtn.setBackgroundImage(.submitGift(name: "btn_me_edit_photo_delete"), for: .normal)
            deleteBtn.setBackgroundImage(.submitGift(name: (String(k_modelPath.prefix(5)) + "e_ed" + String(k_viewWhiteMsg.suffix(6)) + "to_del" + String(k_objectOfPath))), for: .normal)
            //: colorBtn.addSubview(deleteBtn)
            colorBtn.addSubview(deleteBtn)
            //: deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
            deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.deleteBtnClick(sender: deleteBtn)
                self.beauty(sender: deleteBtn)
                //: }).disposed(by: disposeBag)
            }).disposed(by: disposeBag)
        }
    }

    //: @objc func seleteBtnClick(sender: UIButton) {
    @objc func pop(sender: UIButton) {
        //: if !DistanceAppManager.share.loginUserMode.isNaUser,
        if !DistanceAppManager.share.loginUserMode.isNaUser,
           //: DistanceAppManager.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue,
           DistanceAppManager.share.loginUserMode.isTPAuth != BreakValueConvertible.isSuccessed.rawValue,
           //: DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue,
           DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue,
           //: DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
           DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue
        {
            //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
            FrameReactiveCompatible.shared.clickTo()
            //: return
            return
        }
        //: var isReturn = false
        var isReturn = false
        //: _ = sender.subviews.map { view in
        _ = sender.subviews.map { view in
            //: if (view is UIButton) {
            if view is UIButton {
                //: if view.isHidden == false {
                if view.isHidden == false {
                    //: isReturn = true
                    isReturn = true
                }
            }
        }
        //: if isReturn {
        if isReturn {
            //: return
            return
        }

        //: TalkingPermissionTool.func__openAlbumServiceWithBlock(true) {  (isOpen: Bool) in
        ToolThen.withViewMerge(true) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: let vc =  TalkingImagePickTool.initImagePickerVc(maxCount: 9-self.count, allowPhoto: true, allowVideo: false)
                let vc = SizeThen.die(maxCount: 9 - self.count, allowPhoto: true, allowVideo: false)
                //: vc.modalPresentationStyle = .fullScreen
                vc.modalPresentationStyle = .fullScreen

                //: self.currentViewController()?.present(vc, animated: true)
                self.selectStart()?.present(vc, animated: true)

                //: vc.didFinishPickingPhotosHandle = { [weak self] ( photos: Array<UIImage>?,
                vc.didFinishPickingPhotosHandle = { [weak self] (photos: [UIImage]?,
                                                                 //: assets: Array<Any>?,
                                                                 _: [Any]?,
                                                                 //: isSelectOriginalPhoto: Bool?)  in
                                                                 _: Bool?) in
                        //: guard let self = self else {return}
                        guard let self = self else { return }

                        //: if photos!.count > 0 {
                        if photos!.count > 0 {
                            //: if self.count<self.allPhoto.count {
                            if self.count < self.allPhoto.count {
                                //: for j in 0..<photos!.count {
                                for j in 0 ..< photos!.count {
                                    //: let Btn: UIButton = self.allPhoto[self.count] as! UIButton
                                    let Btn: UIButton = self.allPhoto[self.count] as! UIButton
                                    //: Btn .setImage(photos?[j], for: .normal)
                                    Btn.setImage(photos?[j], for: .normal)
                                    //: Btn .setImage(photos?[j], for: .highlighted)
                                    Btn.setImage(photos?[j], for: .highlighted)
                                    //: _ = Btn.subviews.map { view in
                                    _ = Btn.subviews.map { view in
                                        //: if (view is UIButton) {
                                        if view is UIButton {
                                            //: view.isHidden = false
                                            view.isHidden = false
                                        }
                                    }
                                    //: self.count+=1
                                    self.count += 1
                                }
                            }
                            //: self.delegate?.addPhoto(photos!)
                            self.delegate?.writeAdd(photos!)
                        }
                        //: return
                }
            }
        }
    }

    //: @objc func deleteBtnClick(sender: UIButton) {
    @objc func beauty(sender: UIButton) {
        //: if !DistanceAppManager.share.loginUserMode.isNaUser,
        if !DistanceAppManager.share.loginUserMode.isNaUser,
           //: DistanceAppManager.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue,
           DistanceAppManager.share.loginUserMode.isTPAuth != BreakValueConvertible.isSuccessed.rawValue,
           //: DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue,
           DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue,
           //: DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
           DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue
        {
            //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
            FrameReactiveCompatible.shared.clickTo()
            //: return
            return
        }
        //: let superBtn: UIButton = sender.superview as! UIButton
        let superBtn: UIButton = sender.superview as! UIButton

        //: self.delegate?.deletePhoto(superBtn.imageView?.image ?? UIImage.init())
        self.delegate?.sessionBy(superBtn.imageView?.image ?? UIImage())

        //: self.delegate?.deletePhotoWithUid(String(superBtn.tag))
        self.delegate?.shared(String(superBtn.tag))

        //: superBtn.setImage(UIImage.init(), for: .normal)
        superBtn.setImage(UIImage(), for: .normal)
        //: superBtn.setImage(UIImage.init(), for: .highlighted)
        superBtn.setImage(UIImage(), for: .highlighted)
        //: sender.isHidden = true
        sender.isHidden = true
    }

    //: func setPhoto(selete: Array<TalkingUserInfoGalleryModel>) {
    func draft(selete: [TalkingMeasurable]) {
        //: _ = backView.subviews.map { view in
        _ = backView.subviews.map { view in
            //: if (view is UIButton) {
            if view is UIButton {
                //: view.removeFromSuperview()
                view.removeFromSuperview()
            }
        }
        //: allPhoto.removeAll()
        allPhoto.removeAll()
        //: showMessageView()
        messageKeyTap()

        //: count = selete.count
        count = selete.count
        //: for i in 0..<selete.count {
        for i in 0 ..< selete.count {
            //: if i<allPhoto.count {
            if i < allPhoto.count {
                //: let Btn: UIButton = allPhoto[i] as! UIButton
                let Btn: UIButton = allPhoto[i] as! UIButton
                //: Btn.tag = Int(selete[i].uid) ?? 0
                Btn.tag = Int(selete[i].uid) ?? 0
                //: if selete[i].isLocal {
                if selete[i].isLocal {
                    //: Btn.setImage(selete[i].imagePic, for: .normal)
                    Btn.setImage(selete[i].imagePic, for: .normal)
                    //: } else {
                } else {
                    //: Btn.setUrlImage(urlStr: selete[i].url)
                    Btn.successOn(urlStr: selete[i].url)
                }
                //: _ = Btn.subviews.map { view in
                _ = Btn.subviews.map { view in
                    //: if (view is UIButton) {
                    if view is UIButton {
                        //: view.isHidden = false
                        view.isHidden = false
                    }
                }
            }
        }
    }

    //: func setTips(str: String) {
    func candid(str: String) {
        //: titleBLB.text = str
        titleBLB.text = str
        //: messageLB.isHidden = true
        messageLB.isHidden = true
    }

    //: func resetPhoto() {
    func space() {
        //: count = 0
        count = 0
        //: allPhoto.removeAll()
        allPhoto.removeAll()
        //: showMessageView()
        messageKeyTap()
    }
}
