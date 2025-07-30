
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kDataValue:[UInt8] = [0x5b,0x60,0x5b,0x66,0x1a,0x55,0x61,0x56,0x57,0x64,0x2c,0x1b,0x12,0x5a,0x53,0x65,0x12,0x60,0x61,0x66,0x12,0x54,0x57,0x57,0x60,0x12,0x5b,0x5f,0x62,0x5e,0x57,0x5f,0x57,0x60,0x66,0x57,0x56]

fileprivate func inputGold(cover num: UInt8) -> UInt8 {
    let value = Int(num) - 242
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Photo greeting" :*/
fileprivate let kGiftInfoImageStr:String = "Photfor phone image"
fileprivate let k_pageMinKey:[Character] = ["o"," ","g","r","e","e","t","i","n","g"]

/*: "icon_me_greetSetPhoto_select_nor" :*/
fileprivate let kChangeValue:[UInt8] = [0x10,0xa,0x16,0x15,0x6,0x14,0xc,0x6,0xe,0x19,0xc,0xc,0x1b,0xfa,0xc,0x1b,0xf7,0xf,0x16,0x1b,0x16,0x6,0x1a,0xc,0x13,0xc,0xa,0x1b,0x6,0x15,0x16,0x19]

fileprivate func jumpFrameName(gift num: UInt8) -> UInt8 {
    let value = Int(num) - 167
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "icon_me_greetSetPhoto_select_pre" :*/
fileprivate let k_itemUrl:[UInt8] = [0x68,0x62,0x6e,0x6f,0x5e,0x6c,0x64,0x5e,0x66,0x73,0x64,0x64,0x75,0x52,0x64,0x75,0x51,0x69,0x6e,0x75,0x6e,0x5e,0x72,0x64,0x6d,0x64,0x62,0x75,0x5e,0x71,0x73,0x64]

private func enterCamera(add num: UInt8) -> UInt8 {
    return num ^ 1
}

/*: "  Burn after reading" :*/
fileprivate let k_tableFormat:String = "load"
fileprivate let kBlockMessage:String = " Burvar let break"
fileprivate let k_imageData:String = "r readingreturn more"

/*: "Finish" :*/
fileprivate let kSizeMsg:String = "Finishpath line builder self stack"

/*: "type" :*/
fileprivate let k_indexUrl:String = "hiddenype"

/*: "isBurn" :*/
fileprivate let k_cellMessage:[Character] = ["i","s","B","u","r","n"]

/*: "list" :*/
fileprivate let kAddViewForName:String = "ldatast"

/*: "unlockGift" :*/
fileprivate let kWeeklyMsg:[Character] = ["u","n","l","o","c"]
fileprivate let k_showFormat:String = "var appkGift"

/*: "giftId" :*/
fileprivate let kCancelMessage:String = "class hidden print casegiftId"

/*: "id" :*/
fileprivate let k_sizeKey:String = "iimage"

/*: "content" :*/
fileprivate let k_appStr:[Character] = ["c","o","n","t","e","n","t"]

/*: "status" :*/
fileprivate let kAddTitle:String = "stlocationus"

/*: "photo" :*/
fileprivate let k_fileRecordStr:[Character] = ["p","h","o","t","o"]

/*: "Delete Successfully" :*/
fileprivate let kImageStr:String = "Delete Svideo with recording"
fileprivate let k_seatLoadText:[Character] = ["u","c","c","e","s","s","f","u","l","l","y"]

/*: "unlockGiftId" :*/
fileprivate let k_playValue:[Character] = ["u","n","l","o","c","k"]
fileprivate let kNameContainerStr:String = "let awake self size cellGiftId"

/*: "Upload a beautiful photo of the greeting" :*/
fileprivate let kMakeBorderItemTitle:[UInt8] = [0x74,0x51,0x4d,0x4e,0x40,0x45,0x1,0x40,0x1,0x43,0x44,0x40,0x54,0x55,0x48,0x47,0x54,0x4d,0x1,0x51,0x49,0x4e,0x55,0x4e,0x1,0x4e,0x47,0x1,0x55,0x49,0x44,0x1,0x46,0x53,0x44,0x44,0x55,0x48,0x4f,0x46]

private func clickImage(end num: UInt8) -> UInt8 {
    return num ^ 33
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PitchLimitPhotoVc.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/27.
//

//: import UIKit
import UIKit

//: class TalkingGreetPhotoVC: TalkingBaseViewController {
class PitchLimitPhotoVc: StartThen {
    //: var PhotoArray: [TalkingUserInfoGalleryModel] = []
    var PhotoArray: [TalkingMeasurable] = []
    //: private var giftDic = Dictionary<String, Any>()
    private var giftDic = [String: Any]()
    //: var seleteGiftId = ""  /// 选中的礼物ID
    var seleteGiftId = "" /// 选中的礼物ID
    //: var isBurn = 0
    var isBurn = 0 // 是否阅后即焚：1=是，0=否

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kDataValue.map{inputGold(cover: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Photo greeting".localized
        self.title = (String(kGiftInfoImageStr.prefix(4)) + String(k_pageMinKey)).localized
        //: self.view.backgroundColor = UIColor.postColor()
        self.view.backgroundColor = UIColor.postColor()
        //: setupSubviews()
        digitiser()
        //: setupSubViewsConstraint()
        doing()
        //: bindInteraction()
        medium()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: table.register(TalkingEditPhotoCell.self, forCellReuseIdentifier: TalkingEditPhotoCell.className())
        table.register(StreetSmartViewCell.self, forCellReuseIdentifier: StreetSmartViewCell.className())
        //: table.register(TalkingGreetPhotoTableCell.self, forCellReuseIdentifier: TalkingGreetPhotoTableCell.className())
        table.register(SingleViewCell.self, forCellReuseIdentifier: SingleViewCell.className())
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: return table
        return table
        //: }()
    }()

    //: lazy var seleteBtn: UIButton = {
    lazy var seleteBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "icon_me_greetSetPhoto_select_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: String(bytes: kChangeValue.map{jumpFrameName(gift: $0)}, encoding: .utf8)!), for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "icon_me_greetSetPhoto_select_pre"), for: .selected)
        btn.setImage(UIImage.submitGift(name: String(bytes: k_itemUrl.map{enterCamera(add: $0)}, encoding: .utf8)!), for: .selected)
        //: btn.setTitle("  Burn after reading".localized, for: .normal)
        btn.setTitle((k_tableFormat.replacingOccurrences(of: "load", with: " ") + String(kBlockMessage.prefix(4)) + "n afte" + String(k_imageData.prefix(9))).localized, for: .normal)
        //: btn.setTitleColor(UIColor.colorStatuteNameApp(), for: .normal)
        btn.setTitleColor(UIColor.colorStatuteNameApp(), for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        //: btn.addTarget(self, action: #selector(seleteBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(click), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var finishBtn: UIButton = {
    lazy var finishBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitle("Finish".localized, for: .normal)
        btn.setTitle((String(kSizeMsg.prefix(6))).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 17)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 17)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: ScreenWidth-60, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.makeEqual(colors: UIColor.georgiaHomeBoy(), size: CGSize(width: constFormalContent - 60, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.addTarget(self, action: #selector(finishBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(bottomClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingGreetPhotoVC {
extension PitchLimitPhotoVc {
    //: func getPhotoList(isFreshAll: Bool) {
    func post(isFreshAll: Bool) {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["type"] = 4
        dict[(k_indexUrl.replacingOccurrences(of: "hidden", with: "t"))] = 4
        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: TalkingMeRequestTool.req_GetGreetList(params: dict) {[weak self] succeed, result, errorModel in
        FileListRequestTool.ballBusterLabel(params: dict) { [weak self] succeed, result, _ in
            //: EndProgressHUD.popEnable()
            EndProgressHUD.popEnable()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {
                guard let dict = result as? [String: Any] else {
                    //: return
                    return
                }
                //: self.PhotoArray.removeAll()
                self.PhotoArray.removeAll()
                //: self.isBurn = dict["isBurn"] as? Int ?? 0
                self.isBurn = dict[(String(k_cellMessage))] as? Int ?? 0
                //: self.seleteBtn.isSelected = self.isBurn > 0
                self.seleteBtn.isSelected = self.isBurn > 0
                //: let array: Array =  dict["list"] as? Array<Any> ?? Array.init()
                let array: Array = dict[(kAddViewForName.replacingOccurrences(of: "data", with: "i"))] as? [Any] ?? Array()
                //: let tempGiftDic = dict["unlockGift"] as? [String: Any] ?? Dictionary.init()
                let tempGiftDic = dict[(String(kWeeklyMsg) + String(k_showFormat.suffix(5)))] as? [String: Any] ?? Dictionary()
                //: if self.seleteGiftId.isEmpty {
                if self.seleteGiftId.isEmpty {
                    //: self.seleteGiftId = tempGiftDic["giftId"] as? String ?? ""
                    self.seleteGiftId = tempGiftDic[(String(kCancelMessage.suffix(6)))] as? String ?? ""
                    //: self.giftDic = tempGiftDic
                    self.giftDic = tempGiftDic
                }

                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: let dic  = array[i] as? Dictionary<String, Any>
                    let dic = array[i] as? [String: Any]
                    //: var model = TalkingUserInfoGalleryModel.init()
                    var model = TalkingMeasurable()
                    //: model.uid = dic?["id"] as? String ?? ""
                    model.uid = dic?["id"] as? String ?? ""
                    //: model.url = dic?["content"] as? String ?? ""
                    model.url = dic?[(String(k_appStr))] as? String ?? ""
                    //: model.status = dic?["status"] as? Int ?? 0
                    model.status = dic?[(kAddTitle.replacingOccurrences(of: "location", with: "at"))] as? Int ?? 0
                    //: model.isLocal = false
                    model.isLocal = false
                    //: self.PhotoArray.append(model)
                    self.PhotoArray.append(model)
                }
                //: if isFreshAll {
                if isFreshAll {
                    //: self.MainTable.reloadData()
                    self.MainTable.reloadData()
                    //: }else {
                } else {
                    /// 防止刷新全部，把修改的礼物信息还原
                    //: self.MainTable.reloadSection(0, with: .none)
                    self.MainTable.reloadSection(0, with: .none)
                }
                //: self.examinefinishBtnStatus()
                self.time()
            }
        }
    }
}

// MARK: - Event

//: extension TalkingGreetPhotoVC {
extension PitchLimitPhotoVc {
    //: @objc func finishBtnClick() {
    @objc func bottomClick() {
        //: self.saveInfo()
        self.pic()
    }

    //: @objc func seleteBtnClick() {
    @objc func click() {
        //: seleteBtn.isSelected = !seleteBtn.isSelected
        seleteBtn.isSelected = !seleteBtn.isSelected
        //: examinefinishBtnStatus()
        time()
    }

    //: func examinefinishBtnStatus() {
    func time() {
        //: if  self.PhotoArray.count > 0 && seleteGiftId.count > 0 {
        if self.PhotoArray.count > 0, seleteGiftId.count > 0 {
            //: self.finishBtn.isEnabled = true
            self.finishBtn.isEnabled = true
            //: }else {
        } else {
            //: self.finishBtn.isEnabled = false
            self.finishBtn.isEnabled = false
        }
    }
}

// MARK: - StackServerPhotoDelegate

//: extension TalkingGreetPhotoVC: EditPhotoDelegate {
extension PitchLimitPhotoVc: StackServerPhotoDelegate {
    /// 添加本地图片
    //: func addPhoto(_ icon: [UIImage]) {
    func writeAdd(_ icon: [UIImage]) {
        //: uploadPhoto(icon)
        shadowgraph(icon)
    }

    /// 删除本地相册选择的图片
    //: func deletePhoto(_ icon: UIImage) {
    func sessionBy(_: UIImage) {}

    /// 删除后台相册的图片
    //: func deletePhotoWithUid(_ iconUid: String) {
    func shared(_ iconUid: String) {
        //: var seleteIndex = -1
        var seleteIndex = -1
        //: for i in 0..<PhotoArray.count {
        for i in 0 ..< PhotoArray.count {
            //: if iconUid == PhotoArray[i].uid {
            if iconUid == PhotoArray[i].uid {
                //: seleteIndex =  i
                seleteIndex = i
            }
        }
        //: if seleteIndex>=0 && seleteIndex<PhotoArray.count {
        if seleteIndex >= 0 && seleteIndex < PhotoArray.count {
            //: deletePhoto(index: seleteIndex)
            wearAway(index: seleteIndex)
        }
    }

    /// 上传相册
    //: func uploadPhoto(_ icon: [UIImage]) {
    func shadowgraph(_ icon: [UIImage]) {
        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: DispatchQueue.global().async {
        DispatchQueue.global().async {
            //: let sema = DispatchSemaphore(value: 0)
            let sema = DispatchSemaphore(value: 0)

            //: for i in 0..<icon.count {
            for i in 0 ..< icon.count {
                //: let resultData: NSData = icon[i].compressedImageData()! as NSData
                let resultData: NSData = icon[i].compressedImageData()! as NSData
                //: var dict = Dictionary<String, Any>()
                var dict = [String: Any]()
                //: dict["type"] = 4
                dict[(k_indexUrl.replacingOccurrences(of: "hidden", with: "t"))] = 4
                //: dict["photo"] = resultData
                dict[(String(k_fileRecordStr))] = resultData

                //: TalkingMeRequestTool.req_UploadGreetAdd(params: dict) { succeed, result, errorModel in
                FileListRequestTool.eventUp(params: dict) { succeed, _, _ in

                    //: sema.signal()
                    sema.signal()
                    //: if succeed {
                    if succeed {
                        //: }else {
                    } else {
                        //: EndProgressHUD.popEnable()
                        EndProgressHUD.popEnable()
                    }
                }
                //: sema.wait()
                sema.wait()
            }
            //: DispatchQueue.main.asyncAfter(deadline: .now()+1.0) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                //: self.getPhotoList(isFreshAll: false)
                self.post(isFreshAll: false)
                //: self.examinefinishBtnStatus()
                self.time()
            }
        }
    }

    /// 删除相册
    //: func deletePhoto(index: Int) {
    func wearAway(index: Int) {
        //: let model: TalkingUserInfoGalleryModel = self.PhotoArray[index]
        let model: TalkingMeasurable = self.PhotoArray[index]
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["id"] = model.uid
        dict["id"] = model.uid
        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: TalkingMeRequestTool.req_DeleteAudio(params: dict) { succeed, result, errorModel in
        FileListRequestTool.platform(params: dict) { succeed, _, _ in
            //: EndProgressHUD.popEnable()
            EndProgressHUD.popEnable()
            //: if succeed {
            if succeed {
                //: self.PhotoArray.remove(at: index)
                self.PhotoArray.remove(at: index)
                //: self.func__showStatusBarSuccessMsg(showMsg: "Delete Successfully".localized)
                self.rear(showMsg: (String(kImageStr.prefix(8)) + String(k_seatLoadText)).localized)
                //: self.examinefinishBtnStatus()
                self.time()
            }
            //: self.MainTable.reloadSection(0, with: .none)
            self.MainTable.reloadSection(0, with: .none)
        }
    }

    /// 修改信息
    //: func saveInfo() {
    func pic() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["unlockGiftId"] = seleteGiftId
        dict[(String(k_playValue) + String(kNameContainerStr.suffix(6)))] = seleteGiftId
        //: dict["isBurn"] = seleteBtn.isSelected ? 1:0
        dict[(String(k_cellMessage))] = seleteBtn.isSelected ? 1 : 0
        //: TalkingMeRequestTool.req_UploadGreetExtraSetting(params: dict) { succeed, result, errorModel in
        FileListRequestTool.confirm(params: dict) { succeed, _, _ in
            //: EndProgressHUD.popEnable()
            EndProgressHUD.popEnable()
            //: if succeed {
            if succeed {
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingGreetPhotoVC: UITableViewDelegate, UITableViewDataSource {
extension PitchLimitPhotoVc: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let sizewh = Int((ScreenWidth-30-12*2-9*2)/3)
            let sizewh = Int((constFormalContent - 30 - 12 * 2 - 9 * 2) / 3)
            //: let Y = 46+sizewh*3+18
            let Y = 46 + sizewh * 3 + 18
            //: let cellheiht = Y+12
            let cellheiht = Y + 12
            //: return CGFloat(cellheiht)
            return CGFloat(cellheiht)
            //: }else {
        } else {
            //: return 140
            return 140
        }
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 15
        return 15
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let identifier = TalkingEditPhotoCell.className()
            let identifier = StreetSmartViewCell.className()
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditPhotoCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? StreetSmartViewCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditPhotoCell(style: .default, reuseIdentifier: identifier)
                cell = StreetSmartViewCell(style: .default, reuseIdentifier: identifier)
            }
            //: cell?.setTips(str: "Upload a beautiful photo of the greeting".localized)
            cell?.candid(str: String(bytes: kMakeBorderItemTitle.map{clickImage(end: $0)}, encoding: .utf8)!.localized)
            //: cell?.backBottomOffer = 0
            cell?.backBottomOffer = 0
            //: if PhotoArray.count>0 {
            if PhotoArray.count > 0 {
                //: cell?.setPhoto(selete: PhotoArray)
                cell?.draft(selete: PhotoArray)
                //: }else {
            } else {
                //: cell?.resetPhoto()
                cell?.space()
            }
            //: cell?.delegate = self
            cell?.delegate = self
            //: return cell!
            return cell!
            //: }else {
        } else {
            //: let identifier = TalkingGreetPhotoTableCell.className()
            let identifier = SingleViewCell.className()
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingGreetPhotoTableCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? SingleViewCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingGreetPhotoTableCell(style: .default, reuseIdentifier: identifier)
                cell = SingleViewCell(style: .default, reuseIdentifier: identifier)
            }
            //: if self.giftDic.keys.isEmpty == false {
            if self.giftDic.keys.isEmpty == false {
                //: cell?.setGiftMsgLab(dic: self.giftDic)
                cell?.active(dic: self.giftDic)
            }
            //: cell?.seleteGiftBlock = { [weak self] giftId in
            cell?.seleteGiftBlock = { [weak self] giftId in
                //: guard let self = self else {
                guard let self = self else {
                    //: return
                    return
                }
                //: self.seleteGiftId = giftId
                self.seleteGiftId = giftId
                //: self.examinefinishBtnStatus()
                self.time()
            }
            //: return cell!
            return cell!
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: return UIView.init()
        return UIView()
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }
}

// MARK: - Layout

//: extension TalkingGreetPhotoVC {
extension PitchLimitPhotoVc {
    /// 添加视图
    //: private func setupSubviews() {
    private func digitiser() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: self.view.addSubview(seleteBtn)
        self.view.addSubview(seleteBtn)
        //: self.view.addSubview(finishBtn)
        self.view.addSubview(finishBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func doing() {
        //: finishBtn.snp.makeConstraints { make in
        finishBtn.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-35)
            make.bottom.equalToSuperview().offset(-35)
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.height.equalTo(50)
            make.height.equalTo(50)
        }
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
            //: make.bottom.equalTo(finishBtn.snp.top).offset(-68)
            make.bottom.equalTo(finishBtn.snp.top).offset(-68)
        }
        //: seleteBtn.snp.makeConstraints { make in
        seleteBtn.snp.makeConstraints { make in
            //: make.bottom.equalTo(MainTable.snp.bottom).offset(21)
            make.bottom.equalTo(MainTable.snp.bottom).offset(21)
            //: make.leading.equalTo(18)
            make.leading.equalTo(18)
        }
    }

    /// 事件绑定
    //: private func bindInteraction() {
    private func medium() {
        //: getPhotoList(isFreshAll: true)
        post(isFreshAll: true)
    }
}
