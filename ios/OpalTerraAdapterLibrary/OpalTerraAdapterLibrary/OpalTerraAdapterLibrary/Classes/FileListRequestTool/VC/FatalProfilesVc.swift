
//: Declare String Begin

/*: "nil" :*/
fileprivate let k_hidePath:String = "nibutton"

/*: "Edit profiles" :*/
fileprivate let k_modelId:String = "make count bit readEdit prof"
fileprivate let k_whiteStr:[Character] = ["i","l","e","s"]

/*: "Done" :*/
fileprivate let k_imageName:String = "Doneview random custom in"

/*: "#999999" :*/
fileprivate let kEqualUrl:String = "#itemitemitem"

/*: "uid" :*/
fileprivate let k_cellName:String = "uihandle"

/*: "Save the change?" :*/
fileprivate let kUpMsg:String = "model false view scaleSave t"
fileprivate let kLabelValue:[Character] = ["a","n","g","e","?"]

/*: "Cancel" :*/
fileprivate let kRequestText:String = "type makeCancel"

/*: "Save" :*/
fileprivate let k_soundTaskUrl:String = "Saverequest view"

/*: "nickname" :*/
fileprivate let kFrameUrl:String = "nilistk"

/*: "birthday" :*/
fileprivate let k_fatalFormat:[Character] = ["b"]
fileprivate let kSomethingFormat:[Character] = ["i","r","t","h","d","a","y"]

/*: "desc" :*/
fileprivate let k_applicationPath:String = "DESC"

/*: "Modify the success" :*/
fileprivate let kLeadingValue:String = "min self self sex letModify"
fileprivate let k_infoValueModelFormat:String = "in point succe"
fileprivate let kDataName:String = "text"

/*: "pic" :*/
fileprivate let k_tableTitle:String = "PIC"

/*: "[ :*/
fileprivate let kViewUrl:[Character] = ["["]

/*: ]" :*/
fileprivate let k_listMsg:String = "ting"

/*: "pids" :*/
fileprivate let k_actionText:[Character] = ["p","i","d","s"]

/*: "aboutMe" :*/
fileprivate let k_formatSourceGenderTitle:[Character] = ["a","b","o","u","t","M","e"]

/*: "interest" :*/
fileprivate let k_backgroundFormat:[Character] = ["i","n","t","e","r","e","s","t"]

/*: "tagIds" :*/
fileprivate let kValueUrl:[Character] = ["t","a","g","I","d"]
fileprivate let k_insideGroupMsg:[Character] = ["s"]

/*: "category" :*/
fileprivate let k_imageUserName:String = "view"
fileprivate let k_listNameStreamStr:[Character] = ["a","t","e","g","o","r","y"]

/*: "An error occurred, please try again" :*/
fileprivate let k_nameKey:[UInt8] = [0x6e,0x69,0x61,0x67,0x61,0x20,0x79,0x72,0x74,0x20,0x65,0x73,0x61,0x65,0x6c,0x70,0x20,0x2c,0x64,0x65,0x72,0x72,0x75,0x63,0x63,0x6f,0x20,0x72,0x6f,0x72,0x72,0x65,0x20,0x6e,0x41]

/*: "imgUrl" :*/
fileprivate let k_infoViewFormat:[Character] = ["i","m","g","U","r","l"]

/*: "videoUrl" :*/
fileprivate let kVideoUrl:String = "vidsocial"

/*: "Video cover submitted successfully" :*/
fileprivate let k_targetData:[UInt8] = [0x96,0xa9,0xa4,0xa5,0xaf,0x60,0xa3,0xaf,0xb6,0xa5,0xb2,0x60,0xb3,0xb5,0xa2,0xad,0xa9,0xb4,0xb4,0xa5,0xa4,0x60,0xb3,0xb5,0xa3,0xa3,0xa5,0xb3,0xb3,0xa6,0xb5,0xac,0xac,0xb9]

fileprivate func labPost(value num: UInt8) -> UInt8 {
    let value = Int(num) + 192
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "video_url" :*/
fileprivate let k_broadcastContent:String = "var lie view inside namevideo_ur"
fileprivate let kPickValue:String = "match"

/*: "img_url" :*/
fileprivate let k_liveMsg:[Character] = ["i","m","g","_","u","r","l"]

/*: "status" :*/
fileprivate let k_managerName:String = "stentryus"

/*: "UITableViewCell" :*/
fileprivate let k_emptyId:String = "Ubottom"
fileprivate let k_edgeKey:String = "ablplayer"
fileprivate let kSkinMessage:String = "import self style toCell"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FatalProfilesVc.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/30.
//

//: import UIKit
import UIKit

//: class TalkingEditProfilesVC: TalkingBaseViewController {
class FatalProfilesVc: StartThen {
    //: var seleteAboutme: [UserSeleteTagModel] = []
    var seleteAboutme: [PossibilityEquatable] = []
    //: var seleteInters: [UserSeleteTagModel] = []
    var seleteInters: [PossibilityEquatable] = []

    //: var isdeleteAboutme = false
    var isdeleteAboutme = false
    //: var isdeleteInters = false
    var isdeleteInters = false

    //: var isTips = false
    var isTips = false

    //: var PhotoArray: [TalkingUserInfoGalleryModel] = []
    var PhotoArray: [TalkingMeasurable] = []
    //: var seletePhotoArray: [UIImage] = []
    var seletePhotoArray: [UIImage] = []
    //: var DeletePhotoArray: [String] = []
    var DeletePhotoArray: [String] = []

    //: var nameStr: String = ""
    var nameStr: String = ""
    //: var birthday: String = ""
    var birthday: String = ""
    //: var signStr: String = "nil"
    var signStr: String = (k_hidePath.replacingOccurrences(of: "button", with: "l"))

    //: private var VideoIconPath = ""
    private var VideoIconPath = ""
    //: private var videoPath = ""
    private var videoPath = ""
    //: private var videoStatus = -3
    private var videoStatus = -3 // 视频审核状态：0待审核 1审核通过 -1审核拒绝 -3未上传
    //: private var isChangeVideo = false
    private var isChangeVideo = false

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = false
        self.hideNavi = false
        //: self.view.backgroundColor = UIColor.postColor()
        self.view.backgroundColor = UIColor.postColor()
        //: self.title = "Edit profiles".localized
        self.title = (String(k_modelId.suffix(9)) + String(k_whiteStr)).localized

        //: let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 18))
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 18))
        //: btn.setTitle("Done".localized, for: .normal)
        btn.setTitle((String(k_imageName.prefix(4))).localized, for: .normal)
        //: btn.setTitleColor(UIColor.init(hex: "#999999"), for: .normal)
        btn.setTitleColor(UIColor(hex: (kEqualUrl.replacingOccurrences(of: "item", with: "99"))), for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 15)
        //: btn.addTarget(self, action: #selector(doneBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(than), for: .touchUpInside)
        //: let item = UIBarButtonItem(customView: btn)
        let item = UIBarButtonItem(customView: btn)
        //: self.navigationItem.rightBarButtonItem=item
        self.navigationItem.rightBarButtonItem = item

        //: seleteAboutme = DistanceAppManager.share.loginUserMode.aboutMe!
        seleteAboutme = DistanceAppManager.share.loginUserMode.aboutMe!
        //: seleteInters = DistanceAppManager.share.loginUserMode.interest!
        seleteInters = DistanceAppManager.share.loginUserMode.interest!
        //: designView()
        head()
        //: GetGallery()
        audienceShared()
        //: getVideoInfo()
        bar()

        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardShowBeHidden(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(clickOff(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
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

    //: deinit {
    deinit {
        //: EndProgressHUD.popEnable()
        EndProgressHUD.popEnable()
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: return table
        return table
        //: }()
    }()
}

// MARK: - Laod data

//: extension TalkingEditProfilesVC {
extension FatalProfilesVc {
    //: func GetGallery() {
    func audienceShared() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["uid"] = DistanceAppManager.share.loginUserMode.userID
        dict[(k_cellName.replacingOccurrences(of: "handle", with: "d"))] = DistanceAppManager.share.loginUserMode.userID
        //: TalkingMeRequestTool.req_GalleryByUid(params: dict) { succeed, result, errorModel in
        FileListRequestTool.perspectiveMessage(params: dict) { succeed, result, _ in
            //: if succeed {
            if succeed {
                //: let array: Array =  result as! Array<Any>
                let array: Array = result as! [Any]
                //: if array.count>0 {
                if array.count > 0 {
                    //: self.PhotoArray.removeAll()
                    self.PhotoArray.removeAll()
                }
                //: if let datas = Array<TalkingUserInfoGalleryModel>.deserialize(from: array as? Array) {
                if let datas = Array<TalkingMeasurable>.deserialize(from: array as? Array) {
                    //: self.PhotoArray.append(contentsOf: (datas as? [TalkingUserInfoGalleryModel])!)
                    self.PhotoArray.append(contentsOf: (datas as? [TalkingMeasurable])!)
                }
                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }

    //: override func naviPopback() {
    override func dataText() {
        //: for i in MainTable.visibleCells {
        for i in MainTable.visibleCells {
            //: if i.reuseIdentifier == TalkingEditNameCell.className() {
            if i.reuseIdentifier == DisappearViewCell.className() {
                //: let namecell: TalkingEditNameCell = i as! TalkingEditNameCell
                let namecell: DisappearViewCell = i as! DisappearViewCell
                //: namecell.nameTF.resignFirstResponder()
                namecell.nameTF.resignFirstResponder()
            }
            //: if i.reuseIdentifier == TalkingEditSignCell.className() {
            if i.reuseIdentifier == StreamCoverViewCell.className() {
                //: let namecell: TalkingEditSignCell = i as! TalkingEditSignCell
                let namecell: StreamCoverViewCell = i as! StreamCoverViewCell
                //: namecell.textView.resignFirstResponder()
                namecell.textView.resignFirstResponder()
            }
        }
        //: if (nameStr.count > 0&&DistanceAppManager.share.loginUserMode.nickname != nameStr)||( birthday.count > 0&&DistanceAppManager.share.loginUserMode.birthday != self.birthday)||(signStr != "nil" && DistanceAppManager.share.loginUserMode.signature != signStr)||self.seletePhotoArray.count>0||self.DeletePhotoArray.count>0||isdeleteAboutme||isdeleteInters || isChangeVideo {
        if (nameStr.count > 0 && DistanceAppManager.share.loginUserMode.nickname != nameStr) || (birthday.count > 0 && DistanceAppManager.share.loginUserMode.birthday != self.birthday) || (signStr != (k_hidePath.replacingOccurrences(of: "button", with: "l")) && DistanceAppManager.share.loginUserMode.signature != signStr) || self.seletePhotoArray.count > 0 || self.DeletePhotoArray.count > 0 || isdeleteAboutme || isdeleteInters || isChangeVideo {
            //: let config = ShowAlertConfig()
            let config = VideoAlertConfig()
            //: config.alignment = .center
            config.alignment = .center
            //: TalkingAlertShow.customAlert(message: "Save the change?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Save".localized, leftBlock: { [weak self] in
            FrameHiddenReactiveCompatible.systemToConfig(message: (String(kUpMsg.suffix(6)) + "he ch" + String(kLabelValue)).localized, leftBtnTitle: (String(kRequestText.suffix(6))).localized, rightBtnTitle: (String(k_soundTaskUrl.prefix(4))).localized, leftBlock: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: TalkingAlertShow.hideAlert()
                FrameHiddenReactiveCompatible.middleText()
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)

                //: }, rightBlock: { [weak self] in
            }, rightBlock: { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: TalkingAlertShow.hideAlert()
                FrameHiddenReactiveCompatible.middleText()
                //: self.uploadTool(isBack: true)
                self.human(isBack: true)
                //: }, config: config)
            }, config: config)
            //: } else {
        } else {
            //: self.navigationController?.popViewController(animated: true)
            self.navigationController?.popViewController(animated: true)
        }
    }

    //: @objc func doneBtnClick() {
    @objc func than() {
        //: uploadTool(isBack: false)
        human(isBack: false)
    }

    //: func uploadTool(isBack: Bool) {
    func human(isBack: Bool) {
        //: for i in MainTable.visibleCells {
        for i in MainTable.visibleCells {
            //: if i.reuseIdentifier == TalkingEditNameCell.className() {
            if i.reuseIdentifier == DisappearViewCell.className() {
                //: let namecell: TalkingEditNameCell = i as! TalkingEditNameCell
                let namecell: DisappearViewCell = i as! DisappearViewCell
                //: namecell.nameTF.resignFirstResponder()
                namecell.nameTF.resignFirstResponder()
            }
            //: if i.reuseIdentifier == TalkingEditSignCell.className() {
            if i.reuseIdentifier == StreamCoverViewCell.className() {
                //: let namecell: TalkingEditSignCell = i as! TalkingEditSignCell
                let namecell: StreamCoverViewCell = i as! StreamCoverViewCell
                //: namecell.textView.resignFirstResponder()
                namecell.textView.resignFirstResponder()
            }
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()

        //: if nameStr.count > 0 && DistanceAppManager.share.loginUserMode.nickname != nameStr {
        if nameStr.count > 0, DistanceAppManager.share.loginUserMode.nickname != nameStr {
            //: dict["nickname"] = nameStr
            dict[(kFrameUrl.replacingOccurrences(of: "list", with: "c") + "name")] = nameStr
        }
        //: if birthday.count > 0 && DistanceAppManager.share.loginUserMode.birthday != birthday {
        if birthday.count > 0, DistanceAppManager.share.loginUserMode.birthday != birthday {
            //: dict["birthday"] = birthday
            dict[(String(k_fatalFormat) + String(kSomethingFormat))] = birthday
        }
        //: if signStr != "nil" && DistanceAppManager.share.loginUserMode.signature != signStr {
        if signStr != (k_hidePath.replacingOccurrences(of: "button", with: "l")), DistanceAppManager.share.loginUserMode.signature != signStr {
            //: dict["desc"] = signStr
            dict[(k_applicationPath.lowercased())] = signStr
        }

        //: photoAndTagTool(BackT: isBack, isTips: dict.count == 0)
        equalUser(BackT: isBack, isTips: dict.count == 0)

        //: if VideoIconPath.count>1 && videoPath.count>1 && isChangeVideo == true && DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue {
        if VideoIconPath.count > 1, videoPath.count > 1, isChangeVideo == true, DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue {
            //: uploadVideo()
            self.count()
        }

        //: if dict.count == 0 {
        if dict.count == 0 {
            //: return
            return
        }

        //: ProgressHUD.show()
        EndProgressHUD.listHide()

        //: TalkingMeRequestTool.req_UpdateUserInfo(params: dict) { [weak self] succeed, result, errorModel in
        FileListRequestTool.equalCompletion(params: dict) { [weak self] succeed, _, errorModel in
            //: EndProgressHUD.popEnable()
            EndProgressHUD.popEnable()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if succeed {
            if succeed {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
                self.rear(showMsg: (String(kLeadingValue.suffix(6)) + " the" + String(k_infoValueModelFormat.suffix(6)) + kDataName.replacingOccurrences(of: "text", with: "ss")).localized)

                //: if self.nameStr.count > 0 {
                if self.nameStr.count > 0 {
                    //: DistanceAppManager.share.loginUserMode.nickname = self.nameStr
                    DistanceAppManager.share.loginUserMode.nickname = self.nameStr
                }
                //: if self.birthday.count > 0 {
                if self.birthday.count > 0 {
                    //: DistanceAppManager.share.loginUserMode.birthday = self.birthday
                    DistanceAppManager.share.loginUserMode.birthday = self.birthday
                }
                //: DistanceAppManager.share.loginUserMode.signature = self.signStr
                DistanceAppManager.share.loginUserMode.signature = self.signStr

                //: if isBack {
                if isBack {
                    //: self.navigationController?.popViewController(animated: true)
                    self.navigationController?.popViewController(animated: true)
                }

                //: } else {
            } else {
                //: if errorModel?.errorCode != 100 {
                if errorModel?.errorCode != 100 {
                    //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg )
                    self.arcInfo(showMsg: errorModel!.errorMsg)
                }
            }
        }
    }

    //: func photoAndTagTool(BackT: Bool, isTips: Bool) {
    func equalUser(BackT: Bool, isTips: Bool) {
        //: self.isTips = isTips
        self.isTips = isTips
        //: if self.DeletePhotoArray.count>0 {
        if self.DeletePhotoArray.count > 0 {
            // 先删再加
            //: deletePhoto()
            enableBusinessAs()
            //: } else {
        } else {
            //: if self.seletePhotoArray.count>0 {
            if self.seletePhotoArray.count > 0 {
                //: uploadPhoto()
                editFinish()
            }
        }

        //: if isdeleteAboutme {
        if isdeleteAboutme {
            //: deleteTag(type: 1)
            status(type: 1)
        }
        //: if isdeleteInters {
        if isdeleteInters {
            //: deleteTag(type: 2)
            status(type: 2)
        }
        //: if BackT {
        if BackT {
            //: self.navigationController?.popViewController(animated: true)
            self.navigationController?.popViewController(animated: true)
        }
    }

    /// 上传相册
    //: func uploadPhoto() {
    func editFinish() {
        //: for i in 0..<seletePhotoArray.count {
        for i in 0 ..< seletePhotoArray.count {
            //: var dict = Dictionary<String, Any>()
            var dict = [String: Any]()
            //: let resultData: NSData = seletePhotoArray[i].compressedImageData()! as NSData
            let resultData: NSData = seletePhotoArray[i].compressedImageData()! as NSData
            //: dict["pic"] = resultData
            dict[(k_tableTitle.lowercased())] = resultData
            //: ProgressHUD.show()
            EndProgressHUD.listHide()
            //: TalkingMeRequestTool.req_UploadPic(params: dict) { [weak self] succeed, result, errorModel in
            FileListRequestTool.press(params: dict) { [weak self] succeed, _, _ in
                //: EndProgressHUD.popEnable()
                EndProgressHUD.popEnable()
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if succeed {
                if succeed {
                    //: if  self.isTips {
                    if self.isTips {
                        //: self.isTips = false
                        self.isTips = false
                        //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
                        self.rear(showMsg: (String(kLeadingValue.suffix(6)) + " the" + String(k_infoValueModelFormat.suffix(6)) + kDataName.replacingOccurrences(of: "text", with: "ss")).localized)
                    }
                    //: self.seletePhotoArray.removeAll()
                    self.seletePhotoArray.removeAll()
                    //: self.GetGallery()
                    self.audienceShared()
                }
            }
        }
    }

    /// 删除相册
    //: func deletePhoto() {
    func enableBusinessAs() {
        //: var str = DeletePhotoArray.joined(separator: ",")
        var str = DeletePhotoArray.joined(separator: ",")
        //: str = "[\(str)]"
        str = "[\(str)]"
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["pids"] = str
        dict[(String(k_actionText))] = str
        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: TalkingMeRequestTool.req_DeletePic(params: dict) { [weak self] succeed, result, errorModel in
        FileListRequestTool.cast(params: dict) { [weak self] succeed, _, _ in

            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if self.seletePhotoArray.count>0 {
            if self.seletePhotoArray.count > 0 {
                //: self.uploadPhoto()
                self.editFinish()
                //: } else {
            } else {
                //: EndProgressHUD.popEnable()
                EndProgressHUD.popEnable()
            }
            //: if succeed {
            if succeed {
                //: if  self.isTips {
                if self.isTips {
                    //: self.isTips = false
                    self.isTips = false
                    //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
                    self.rear(showMsg: (String(kLeadingValue.suffix(6)) + " the" + String(k_infoValueModelFormat.suffix(6)) + kDataName.replacingOccurrences(of: "text", with: "ss")).localized)
                }

                //: self.DeletePhotoArray.removeAll()
                self.DeletePhotoArray.removeAll()
                //: self.GetGallery()
                self.audienceShared()
            }
        }
    }

    /// 修改tag
    //: func deleteTag(type: Int) {
    func status(type: Int) {
        //: var array: [UserSeleteTagModel] = []
        var array: [PossibilityEquatable] = []
        //: var category = ""
        var category = ""
        //: if type==1 {
        if type == 1 {
            //: array=seleteAboutme
            array = seleteAboutme
            //: category="aboutMe"
            category = (String(k_formatSourceGenderTitle))
            //: } else {
        } else {
            //: array=seleteInters
            array = seleteInters
            //: category="interest"
            category = (String(k_backgroundFormat))
        }
        //: var str = ""
        var str = ""
        //: for i in 0..<array.count {
        for i in 0 ..< array.count {
            //: let model = array[i]
            let model = array[i]
            //: str += model.tag_id!
            str += model.tag_id!
            //: if i<array.count-1 {
            if i < array.count - 1 {
                //: str += ","
                str += ","
            }
        }
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["tagIds"] = str
        dict[(String(kValueUrl) + String(k_insideGroupMsg))] = str
        //: dict["category"] = category
        dict[(k_imageUserName.replacingOccurrences(of: "view", with: "c") + String(k_listNameStreamStr))] = category
        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: TalkingMeRequestTool.req_EditTag(params: dict) { [weak self] succeed, result, errorModel in
        FileListRequestTool.aperture(params: dict) { [weak self] succeed, _, _ in
            //: EndProgressHUD.popEnable()
            EndProgressHUD.popEnable()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if succeed {
            if succeed {
                //: if  self.isTips {
                if self.isTips {
                    //: self.isTips = false
                    self.isTips = false
                    //: self.func__showStatusBarSuccessMsg(showMsg: "Modify the success".localized)
                    self.rear(showMsg: (String(kLeadingValue.suffix(6)) + " the" + String(k_infoValueModelFormat.suffix(6)) + kDataName.replacingOccurrences(of: "text", with: "ss")).localized)
                }
                //: if type==1 {
                if type == 1 {
                    //: self.isdeleteAboutme = false
                    self.isdeleteAboutme = false
                    //: DistanceAppManager.share.loginUserMode.aboutMe = self.seleteAboutme
                    DistanceAppManager.share.loginUserMode.aboutMe = self.seleteAboutme
                    //: } else {
                } else {
                    //: self.isdeleteInters = false
                    self.isdeleteInters = false
                    //: DistanceAppManager.share.loginUserMode.interest = self.seleteInters
                    DistanceAppManager.share.loginUserMode.interest = self.seleteInters
                }
            }
        }
    }

    /// 上传视频
    //: func uploadVideo() {
    func count() {
        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: TalkingMomentVideoManager.shared.cos_uploadVideo(type: 2, coverPath: self.VideoIconPath, videoPath: self.videoPath) { coverUrl, videoUrl, succeed in
        StartReactiveCompatible.shared.tv(type: 2, coverPath: self.VideoIconPath, videoPath: self.videoPath) { coverUrl, videoUrl, succeed in
            //: guard succeed else {
            guard succeed else {
                //: EndProgressHUD.popEnable()
                EndProgressHUD.popEnable()
                //: self.func__showStatusBarErrorMsg(showMsg: "An error occurred, please try again".localized)
                self.arcInfo(showMsg: String(bytes: k_nameKey.reversed(), encoding: .utf8)!.localized)
                //: return
                return
            }

            //: var dict = Dictionary<String, Any>()
            var dict = [String: Any]()
            //: dict["imgUrl"] = coverUrl
            dict[(String(k_infoViewFormat))] = coverUrl
            //: dict["videoUrl"] = videoUrl
            dict[(kVideoUrl.replacingOccurrences(of: "social", with: "e") + "oUrl")] = videoUrl

            //: TalkingMeRequestTool.uploadVideoUserEdit(params: dict) { [weak self] succeed, result, errorModel in
            FileListRequestTool.shopwindow(params: dict) { [weak self] succeed, _, _ in
                //: EndProgressHUD.popEnable()
                EndProgressHUD.popEnable()
                //: guard let self = self else { return }
                guard let self = self else { return }

                //: guard succeed else {
                guard succeed else {
                    //: self.func__showStatusBarErrorMsg(showMsg: "An error occurred, please try again".localized)
                    self.arcInfo(showMsg: String(bytes: k_nameKey.reversed(), encoding: .utf8)!.localized)
                    //: return
                    return
                }
                //: self.VideoIconPath = ""
                self.VideoIconPath = ""
                //: self.videoPath = ""
                self.videoPath = ""
                //: self.isChangeVideo = false
                self.isChangeVideo = false
                //: self.videoStatus = 0
                self.videoStatus = 0
                //: self.func__showStatusBarSuccessMsg(showMsg: "Video cover submitted successfully".localized)
                self.rear(showMsg: String(bytes: k_targetData.map{labPost(value: $0)}, encoding: .utf8)!.localized)
                //: for i in self.MainTable.visibleCells {
                for i in self.MainTable.visibleCells {
                    //: if i.reuseIdentifier == TalkingEditVideoCell.className() {
                    if i.reuseIdentifier == BlowOverVideoCell.className() {
                        //: let videocell: TalkingEditVideoCell = i as! TalkingEditVideoCell
                        let videocell: BlowOverVideoCell = i as! BlowOverVideoCell
                        //: videocell.upDateCellView(videoPlayPath: dict["videoUrl"] as! String)
                        videocell.destroyPath(videoPlayPath: dict[(kVideoUrl.replacingOccurrences(of: "social", with: "e") + "oUrl")] as! String)
                        //: videocell.setVideoStatusLB(status: self.videoStatus)
                        videocell.bastardyStatus(status: self.videoStatus)
                    }
                }
            }
        }
    }

    //: func getVideoInfo() {
    func bar() {
        //: TalkingMeRequestTool.getUploadVideoInfo { [weak self] succeed, result, errorModel in
        FileListRequestTool.rangeImage { [weak self] succeed, result, _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {return}
                guard let dict = result as? [String: Any] else { return }
                //: self.videoPath = dict["video_url"] as! String
                self.videoPath = dict[(String(k_broadcastContent.suffix(8)) + kPickValue.replacingOccurrences(of: "match", with: "l"))] as! String
                //: self.VideoIconPath = dict["img_url"] as! String
                self.VideoIconPath = dict[(String(k_liveMsg))] as! String
                //: self.videoStatus = dict["status"] as? Int ?? -3
                self.videoStatus = dict[(k_managerName.replacingOccurrences(of: "entry", with: "at"))] as? Int ?? -3
                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }
}

// MARK: - Event

//: extension TalkingEditProfilesVC {
extension FatalProfilesVc {
    //: @objc func keyboardShowBeHidden(notification: NSNotification) {
    @objc func clickOff(notification: NSNotification) {
        //: let info = notification.userInfo
        let info = notification.userInfo
        //: let keyBoardHeight = (info![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.size.height
        let keyBoardHeight = (info![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.size.height

        //: for i in MainTable.visibleCells {
        for i in MainTable.visibleCells {
            //: if i.reuseIdentifier == TalkingEditNameCell.className() {
            if i.reuseIdentifier == DisappearViewCell.className() {
                //: let namecell: TalkingEditNameCell = i as! TalkingEditNameCell
                let namecell: DisappearViewCell = i as! DisappearViewCell
                //: if namecell.nameTF.isFirstResponder {
                if namecell.nameTF.isFirstResponder {
                    //: MainTable.setContentOffset(CGPoint(x: 0, y: namecell.frame.maxY-keyBoardHeight), animated: true)
                    MainTable.setContentOffset(CGPoint(x: 0, y: namecell.frame.maxY - keyBoardHeight), animated: true)
                }
            }
            //: if i.reuseIdentifier == TalkingEditSignCell.className() {
            if i.reuseIdentifier == StreamCoverViewCell.className() {
                //: let namecell: TalkingEditSignCell = i as! TalkingEditSignCell
                let namecell: StreamCoverViewCell = i as! StreamCoverViewCell
                //: if namecell.textView.isFirstResponder {
                if namecell.textView.isFirstResponder {
                    //: MainTable.setContentOffset(CGPoint(x: 0, y: namecell.frame.maxY-keyBoardHeight), animated: true)
                    MainTable.setContentOffset(CGPoint(x: 0, y: namecell.frame.maxY - keyBoardHeight), animated: true)
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingEditProfilesVC: UITableViewDelegate, UITableViewDataSource {
extension FatalProfilesVc: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 7
        return 7
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
            //: if DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue {
            if DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue {
                //: return 226
                return 226
            }
            //: return 0
            return 0

            //: } else if indexPath.section == 1 {
        } else if indexPath.section == 1 {
            //: let sizewh = Int((ScreenWidth-30-12*2-9*2)/3)
            let sizewh = Int((constFormalContent - 30 - 12 * 2 - 9 * 2) / 3)
            //: let Y = 46+sizewh*3+18
            let Y = 46 + sizewh * 3 + 18
            //: let cellheiht = Y+12+26+15
            let cellheiht = Y + 12 + 26 + 15
            //: return CGFloat(cellheiht)
            return CGFloat(cellheiht)
            //: } else if indexPath.section == 2 {
        } else if indexPath.section == 2 {
            //: return 107+15
            return 107 + 15
            //: } else if indexPath.section == 3 {
        } else if indexPath.section == 3 {
            //: return 64
            return 64
            //: } else if indexPath.section == 4 {
        } else if indexPath.section == 4 {
            //: return 176
            return 176
            //: } else if indexPath.section == 5 || indexPath.section == 6 {
        } else if indexPath.section == 5 || indexPath.section == 6 {
            //: if indexPath.section == 5 && seleteAboutme.count>0 {
            if indexPath.section == 5 && seleteAboutme.count > 0 {
                //: return self.computeCellheight(type: 1)+64
                return self.fraction(type: 1) + 64
                //: } else if indexPath.section == 6 && seleteInters.count>0 {
            } else if indexPath.section == 6 && seleteInters.count > 0 {
                //: return self.computeCellheight(type: 2)+64
                return self.fraction(type: 2) + 64
            }
            //: return 64
            return 64
        }
        //: return 56
        return 56
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 56
        return 56
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 0.1
        return 0.1
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.1
        return 0.1
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let identifier = TalkingEditVideoCell.className()
            let identifier = BlowOverVideoCell.className()
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditVideoCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? BlowOverVideoCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditVideoCell(style: .default, reuseIdentifier: identifier)
                cell = BlowOverVideoCell(style: .default, reuseIdentifier: identifier)
            }
            //: cell?.setVideoStatusLB(status: self.videoStatus)
            cell?.bastardyStatus(status: self.videoStatus)
            //: if VideoIconPath.count>1 && videoPath.count>1 {
            if VideoIconPath.count > 1 && videoPath.count > 1 {
                //: cell?.setCellView(iconPath: VideoIconPath)
                cell?.allow(iconPath: VideoIconPath)
                //: cell?.upDateCellView(videoPlayPath: videoPath)
                cell?.destroyPath(videoPlayPath: videoPath)
            }
            //: cell?.seleteBlock = { [weak self] imagPath, VideoPath in
            cell?.seleteBlock = { [weak self] imagPath, VideoPath in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.VideoIconPath = imagPath
                self.VideoIconPath = imagPath
                //: self.videoPath = VideoPath
                self.videoPath = VideoPath
                //: self.isChangeVideo = true
                self.isChangeVideo = true
            }
            //: cell?.deleteBlock = { [weak self] in
            cell?.deleteBlock = { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.VideoIconPath = ""
                self.VideoIconPath = ""
                //: self.videoPath = ""
                self.videoPath = ""
                //: self.isChangeVideo = false
                self.isChangeVideo = false
            }
            //: return cell!
            return cell!

            //: } else if indexPath.section == 1 {
        } else if indexPath.section == 1 {
            //: let identifier = TalkingEditPhotoCell.className()
            let identifier = StreetSmartViewCell.className()
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditPhotoCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? StreetSmartViewCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditPhotoCell(style: .default, reuseIdentifier: identifier)
                cell = StreetSmartViewCell(style: .default, reuseIdentifier: identifier)
            }
            //: if PhotoArray.count>0 {
            if PhotoArray.count > 0 {
                //: cell?.setPhoto(selete: PhotoArray)
                cell?.draft(selete: PhotoArray)
                //: } else {
            } else {
                //: cell?.resetPhoto()
                cell?.space()
            }
            //: cell?.delegate = self
            cell?.delegate = self
            //: return cell!
            return cell!
            //: } else if indexPath.section == 2 {
        } else if indexPath.section == 2 {
            //: let identifier = TalkingEditNameCell.className()
            let identifier = DisappearViewCell.className()
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditNameCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? DisappearViewCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditNameCell(style: .default, reuseIdentifier: identifier)
                cell = DisappearViewCell(style: .default, reuseIdentifier: identifier)
            }
            //: cell?.nameBlock = { [weak self] name in
            cell?.nameBlock = { [weak self] name in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.nameStr = name
                self.nameStr = name
            }
            //: return cell!
            return cell!
            //: } else if indexPath.section == 3 {
        } else if indexPath.section == 3 {
            //: let identifier = TalkingEditBirthdayCell.className()
            let identifier = DateFullPhaseOfTheMoonReactiveCompatible.className()
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditBirthdayCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? DateFullPhaseOfTheMoonReactiveCompatible
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditBirthdayCell(style: .default, reuseIdentifier: identifier)
                cell = DateFullPhaseOfTheMoonReactiveCompatible(style: .default, reuseIdentifier: identifier)
            }
            //: cell?.birthdayBlock = { [weak self] day in
            cell?.birthdayBlock = { [weak self] day in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.birthday = day
                self.birthday = day
            }
            //: return cell!
            return cell!
            //: } else if indexPath.section == 4 {
        } else if indexPath.section == 4 {
            //: let identifier = TalkingEditSignCell.className()
            let identifier = StreamCoverViewCell.className()
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditSignCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? StreamCoverViewCell
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditSignCell(style: .default, reuseIdentifier: identifier)
                cell = StreamCoverViewCell(style: .default, reuseIdentifier: identifier)
            }
            //: cell?.signBlock = { [weak self] sign in
            cell?.signBlock = { [weak self] sign in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: self.signStr = sign
                self.signStr = sign
            }

            //: return cell!
            return cell!
            //: } else if indexPath.section == 5 || indexPath.section == 6 {
        } else if indexPath.section == 5 || indexPath.section == 6 {
            //: let identifier = TalkingEditAboutMeCell.className()
            let identifier = ViewThen.className()
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingEditAboutMeCell
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? ViewThen
            //: if cell == nil {
            if cell == nil {
                //: cell = TalkingEditAboutMeCell(style: .default, reuseIdentifier: identifier)
                cell = ViewThen(style: .default, reuseIdentifier: identifier)
            }
            //: if indexPath.section == 5 {
            if indexPath.section == 5 {
                //: cell!.tagtype = .AboutMe
                cell!.tagtype = .AboutMe
                //: } else {
            } else {
                //: cell!.tagtype = .Interests
                cell!.tagtype = .Interests
            }
            //: cell?.setTitle()
            cell?.logEnable()
            //: if seleteAboutme.count>0 && indexPath.section == 5 {
            if seleteAboutme.count > 0 && indexPath.section == 5 {
                //: cell?.setMessage(seleteAboutme)
                cell?.runShort(seleteAboutme)
            }
            //: if seleteInters.count>0 && indexPath.section == 6 {
            if seleteInters.count > 0 && indexPath.section == 6 {
                //: cell?.setMessage(seleteInters)
                cell?.runShort(seleteInters)
            }
            //: cell?.editBtnBlock = { [weak self] in
            cell?.editBtnBlock = { [weak self] in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: let vc = TalkingEditTagVC.init()
                let vc = CancelNameLayoutDelegate()
                //: vc.delegate = self
                vc.delegate = self
                //: if indexPath.section == 5 {
                if indexPath.section == 5 {
                    //: vc.tagtype = .AboutMe
                    vc.tagtype = .AboutMe
                    //: } else {
                } else {
                    //: vc.tagtype = .Interests
                    vc.tagtype = .Interests
                }
                //: self.navigationController!.pushViewController(vc, animated: true)
                self.navigationController!.pushViewController(vc, animated: true)
            }
            //: cell?.deleteBlock = { [weak self] tag in
            cell?.deleteBlock = { [weak self] tag in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: if indexPath.section == 5 {
                if indexPath.section == 5 {
                    //: if  self.seleteAboutme.contains(where: { $0.equals(compareTo: tag)}) {
                    if self.seleteAboutme.contains(where: { $0.studyEqual(compareTo: tag) }) {
                        //: self.seleteAboutme.removeAll(where: {$0.equals(compareTo: tag)})
                        self.seleteAboutme.removeAll(where: { $0.studyEqual(compareTo: tag) })
                        //: self.isdeleteAboutme = true
                        self.isdeleteAboutme = true
                    }
                    //: } else {
                } else {
                    //: if  self.seleteInters.contains(where: { $0.equals(compareTo: tag)}) {
                    if self.seleteInters.contains(where: { $0.studyEqual(compareTo: tag) }) {
                        //: self.seleteInters.removeAll(where: {$0.equals(compareTo: tag)})
                        self.seleteInters.removeAll(where: { $0.studyEqual(compareTo: tag) })
                        //: self.isdeleteInters = true
                        self.isdeleteInters = true
                    }
                }
            }
            //: return cell!
            return cell!
            //: } else {
        } else {
            //: let identifier = "UITableViewCell"
            let identifier = (k_emptyId.replacingOccurrences(of: "bottom", with: "IT") + k_edgeKey.replacingOccurrences(of: "player", with: "e") + "View" + String(kSkinMessage.suffix(4)))
            //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
            //: if cell == nil {
            if cell == nil {
                //: cell = UITableViewCell(style: .default, reuseIdentifier: identifier)
                cell = UITableViewCell(style: .default, reuseIdentifier: identifier)
            }
            //: return cell!
            return cell!
        }
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}

    //: func computeCellheight(type: Int) -> CGFloat {
    func fraction(type: Int) -> CGFloat {
        //: let itemSpacing = CGFloat(8)
        let itemSpacing = CGFloat(8)
        //: var contentWidthInRow = CGFloat(0)
        var contentWidthInRow = CGFloat(0)
        //: var array = Array<UserSeleteTagModel>()
        var array = [PossibilityEquatable]()
        //: if type == 1 {
        if type == 1 {
            //: array = self.seleteAboutme
            array = self.seleteAboutme
            //: } else {
        } else {
            //: array = self.seleteInters
            array = self.seleteInters
        }
        //: var contentHeightInRow = CGFloat(30)
        var contentHeightInRow = CGFloat(30)

        //: for item in array {
        for item in array {
            //: var tag_name = ""
            var tag_name = ""
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
            if UserViewToolThen.share.interfaceLang == PlayerSubqueryConvertible.ar.rawValue {
                //: tag_name = item.tag_name_ar
                tag_name = item.tag_name_ar
                //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
            } else if UserViewToolThen.share.interfaceLang == PlayerSubqueryConvertible.es.rawValue {
                //: tag_name = item.tag_name_es
                tag_name = item.tag_name_es
                //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
            } else if UserViewToolThen.share.interfaceLang == PlayerSubqueryConvertible.pt.rawValue {
                //: tag_name = item.tag_name_pt
                tag_name = item.tag_name_pt
            }
            //: if tag_name.count <= 0 {
            if tag_name.count <= 0 {
                //: tag_name = item.tag_name
                tag_name = item.tag_name
            }
            //: let rect = (tag_name as NSString).boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.fontChange(type: .Regular, fontSize: 15)], context: nil)
            let rect = (tag_name as NSString).boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: UIFont.fontChange(type: .Regular, fontSize: 15)], context: nil)
            //: let tagWidth = rect.width + 30
            let tagWidth = rect.width + 30
            //: if contentWidthInRow + tagWidth + itemSpacing > ScreenWidth-54 {
            if contentWidthInRow + tagWidth + itemSpacing > constFormalContent - 54 {
                // 需要换行
                //: contentHeightInRow += (10 + 30)
                contentHeightInRow += (10 + 30)
                //: contentWidthInRow = itemSpacing
                contentWidthInRow = itemSpacing
                //: } else {
            } else {
                //: contentWidthInRow += (tagWidth+itemSpacing)
                contentWidthInRow += (tagWidth + itemSpacing)
            }
        }
        //: if array.count == 10 {
        if array.count == 10 {
            //: contentHeightInRow += 40
            contentHeightInRow += 40
        }
        //: return contentHeightInRow + 12
        return contentHeightInRow + 12
    }
}

// MARK: - GroupThen

//: extension TalkingEditProfilesVC: EditTagDelegate {
extension FatalProfilesVc: GroupThen {
    //: func freshSeleteTag() {
    func app() {
        //: seleteAboutme =  DistanceAppManager.share.loginUserMode.aboutMe!
        seleteAboutme = DistanceAppManager.share.loginUserMode.aboutMe!
        //: seleteInters =  DistanceAppManager.share.loginUserMode.interest!
        seleteInters = DistanceAppManager.share.loginUserMode.interest!
        //: self.MainTable .reloadData()
        self.MainTable.reloadData()
    }
}

// MARK: - StackServerPhotoDelegate

//: extension TalkingEditProfilesVC: EditPhotoDelegate {
extension FatalProfilesVc: StackServerPhotoDelegate {
    /// 添加本地图片
    //: func addPhoto(_ icon: [UIImage]) {
    func writeAdd(_ icon: [UIImage]) {
        //: for i in icon {
        for i in icon {
            //: self.seletePhotoArray.append(i)
            self.seletePhotoArray.append(i)
            //: var model = TalkingUserInfoGalleryModel.init()
            var model = TalkingMeasurable()
            //: model.imagePic = i
            model.imagePic = i
            //: model.isLocal = true
            model.isLocal = true
            //: PhotoArray.append(model)
            PhotoArray.append(model)
        }
    }

    /// 删除本地相册选择的图片
    //: func deletePhoto(_ icon: UIImage) {
    func sessionBy(_ icon: UIImage) {
        //: if  seletePhotoArray.contains(where: {$0 == icon}) {
        if seletePhotoArray.contains(where: { $0 == icon }) {
            //: seletePhotoArray.removeAll(where: {$0 == icon})
            seletePhotoArray.removeAll(where: { $0 == icon })
        }
        //: var seleteIndex = -1
        var seleteIndex = -1
        //: for i in 0..<PhotoArray.count {
        for i in 0 ..< PhotoArray.count {
            //: if icon == PhotoArray[i].imagePic {
            if icon == PhotoArray[i].imagePic {
                //: seleteIndex =  i
                seleteIndex = i
                //: break
                break
            }
        }
        //: if seleteIndex>=0 && seleteIndex<PhotoArray.count {
        if seleteIndex >= 0 && seleteIndex < PhotoArray.count {
            //: PhotoArray.remove(at: seleteIndex)
            PhotoArray.remove(at: seleteIndex)
            //: self.MainTable.reloadData()
            self.MainTable.reloadData()
        }
    }

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
                //: self.DeletePhotoArray.append(iconUid)
                self.DeletePhotoArray.append(iconUid)
            }
        }
        //: if seleteIndex>=0 && seleteIndex<PhotoArray.count {
        if seleteIndex >= 0 && seleteIndex < PhotoArray.count {
            //: PhotoArray.remove(at: seleteIndex)
            PhotoArray.remove(at: seleteIndex)
            //: self.MainTable.reloadData()
            self.MainTable.reloadData()
        }
    }
}

// MARK: - UI

//: extension TalkingEditProfilesVC {
extension FatalProfilesVc {
    //: private func designView() {
    private func head() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingEditVideoCell.self, forCellReuseIdentifier: TalkingEditVideoCell.className())
        MainTable.register(BlowOverVideoCell.self, forCellReuseIdentifier: BlowOverVideoCell.className())
        //: MainTable.register(TalkingEditPhotoCell.self, forCellReuseIdentifier: TalkingEditPhotoCell.className())
        MainTable.register(StreetSmartViewCell.self, forCellReuseIdentifier: StreetSmartViewCell.className())
        //: MainTable.register(TalkingEditNameCell.self, forCellReuseIdentifier: TalkingEditNameCell.className())
        MainTable.register(DisappearViewCell.self, forCellReuseIdentifier: DisappearViewCell.className())
        //: MainTable.register(TalkingEditBirthdayCell.self, forCellReuseIdentifier: TalkingEditBirthdayCell.className())
        MainTable.register(DateFullPhaseOfTheMoonReactiveCompatible.self, forCellReuseIdentifier: DateFullPhaseOfTheMoonReactiveCompatible.className())
        //: MainTable.register(TalkingEditSignCell.self, forCellReuseIdentifier: TalkingEditSignCell.className())
        MainTable.register(StreamCoverViewCell.self, forCellReuseIdentifier: StreamCoverViewCell.className())
        //: MainTable.register(TalkingEditAboutMeCell.self, forCellReuseIdentifier: TalkingEditAboutMeCell.className())
        MainTable.register(ViewThen.self, forCellReuseIdentifier: ViewThen.className())
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.leading.trailing.bottom.equalTo(self.view)
            make.leading.trailing.bottom.equalTo(self.view)
            //: make.top.equalTo(self.view).offset(20)
            make.top.equalTo(self.view).offset(20)
        }
    }
}
