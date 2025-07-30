
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_componentStr:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "Voice greeting" :*/
fileprivate let k_leadingName:[Character] = ["V","o","i","c","e"," ","g","r","e","e","t","i","n","g"]

/*: "Add" :*/
fileprivate let k_coverTitle:String = "self letAdd"

/*: "type" :*/
fileprivate let k_viewEndLabMsg:[Character] = ["t","y","p","e"]

/*: "addStatus" :*/
fileprivate let k_showMessage:String = "addStchange version make record"
fileprivate let k_marginIllegalNameFormat:[Character] = ["a","t","u","s"]

/*: "list" :*/
fileprivate let kLengthStr:[Character] = ["l","i","s","t"]

/*: "audio" :*/
fileprivate let kDataStr:String = "audwhite"

/*: "length" :*/
fileprivate let k_ofId:String = "sizeength"

/*: "url" :*/
fileprivate let k_equalMessage:String = "URL"

/*: "Successfully added, please wait for approval" :*/
fileprivate let kZoneEdgeLabelMsg:[UInt8] = [0xd5,0xf7,0xe5,0xe5,0xe7,0xf5,0xf5,0xe8,0xf7,0xee,0xee,0xfb,0xa2,0xe3,0xe6,0xe6,0xe7,0xe6,0xae,0xa2,0xf2,0xee,0xe7,0xe3,0xf5,0xe7,0xa2,0xf9,0xe3,0xeb,0xf6,0xa2,0xe8,0xf1,0xf4,0xa2,0xe3,0xf2,0xf2,0xf4,0xf1,0xf8,0xe3,0xee]

fileprivate func cineCameraList(model num: UInt8) -> UInt8 {
    let value = Int(num) + 126
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Are you sure to delete this message？" :*/
fileprivate let kValidData:[UInt8] = [0x12,0x43,0x36,0xf1,0x4a,0x40,0x46,0xf1,0x44,0x46,0x43,0x36,0xf1,0x45,0x40,0xf1,0x35,0x36,0x3d,0x36,0x45,0x36,0xf1,0x45,0x39,0x3a,0x44,0xf1,0x3e,0x36,0x44,0x44,0x32,0x38,0x36,0xc0,0x8d,0x70]

fileprivate func sizeRequest(gift num: UInt8) -> UInt8 {
    let value = Int(num) + 47
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "Cancel" :*/
fileprivate let kFileMsg:[Character] = ["C","a","n","c","e","l"]

/*: "Delete" :*/
fileprivate let kColorValue:String = "d"
fileprivate let kAddValue:[Character] = ["e","l","e","t","e"]

/*: "id" :*/
fileprivate let kFillProfileKey:[Character] = ["i","d"]

/*: "Please wait for the audit result" :*/
fileprivate let k_clearMessage:[UInt8] = [0x47,0x7b,0x72,0x76,0x64,0x72,0x37,0x60,0x76,0x7e,0x63,0x37,0x71,0x78,0x65,0x37,0x63,0x7f,0x72,0x37,0x76,0x62,0x73,0x7e,0x63,0x37,0x65,0x72,0x64,0x62,0x7b,0x63]

/*: "The upper limit has been reached" :*/
fileprivate let kDomainCellData:[UInt8] = [0x8c,0xb0,0xbd,0xf8,0xad,0xa8,0xa8,0xbd,0xaa,0xf8,0xb4,0xb1,0xb5,0xb1,0xac,0xf8,0xb0,0xb9,0xab,0xf8,0xba,0xbd,0xbd,0xb6,0xf8,0xaa,0xbd,0xb9,0xbb,0xb0,0xbd,0xbc]

/*: "filePath" :*/
fileprivate let k_backMsg:String = "filePatyou if type"
fileprivate let k_bottomMsg:[Character] = ["h"]

/*: "time" :*/
fileprivate let k_videoDataUrl:String = "timtitle"

/*: "#FF506D" :*/
fileprivate let k_ofFormat:[Character] = ["#","F","F","5","0","6","D"]

/*: "btn_message_delete_nor" :*/
fileprivate let kSizePath:String = "btn_manager self table string var"
fileprivate let kSelectStr:String = "ge_din raw"
fileprivate let kButtonFormat:String = "net return equal info detail_nor"

/*: "Currently mute" :*/
fileprivate let k_submitUrl:String = "Currentlto let with since"
fileprivate let kMenuUrl:String = "y mutelet live custom"

/*: "Edit Title" :*/
fileprivate let kTableChildFormat:String = "from valueEdit"
fileprivate let k_pureFormat:String = " Titlecoordinate type else"

/*: "OK" :*/
fileprivate let k_nameMessage:String = "labelK"

/*: "remark" :*/
fileprivate let kTotalKey:[Character] = ["r","e","m","a","r","k"]

/*: "Click the button below to add\ncontent" :*/
fileprivate let k_titleKey:[UInt8] = [0x50,0x7f,0x7a,0x70,0x78,0x33,0x67,0x7b,0x76,0x33,0x71,0x66,0x67,0x67,0x7c,0x7d,0x33,0x71,0x76,0x7f,0x7c,0x64,0x33,0x67,0x7c,0x33,0x72,0x77,0x77,0x19,0x70,0x7c,0x7d,0x67,0x76,0x7d,0x67]

private func subjectMatter(gender num: UInt8) -> UInt8 {
    return num ^ 19
}

/*: "Add multiple voice greetings, and the system will send voice messages by turns;\nClick the bubble to play the voice, slide to the voice area to delete it, and the voice title can be edited." :*/
fileprivate let kNameKey:[UInt8] = [0xf8,0xdd,0xdd,0x99,0xd4,0xcc,0xd5,0xcd,0xd0,0xc9,0xd5,0xdc,0x99,0xcf,0xd6,0xd0,0xda,0xdc,0x99,0xde,0xcb,0xdc,0xdc,0xcd,0xd0,0xd7,0xde,0xca,0x95,0x99,0xd8,0xd7,0xdd,0x99,0xcd,0xd1,0xdc,0x99,0xca,0xc0,0xca,0xcd,0xdc,0xd4,0x99,0xce,0xd0,0xd5,0xd5,0x99,0xca,0xdc,0xd7,0xdd,0x99,0xcf,0xd6,0xd0,0xda,0xdc,0x99,0xd4,0xdc,0xca,0xca,0xd8,0xde,0xdc,0xca,0x99,0xdb,0xc0,0x99,0xcd,0xcc,0xcb,0xd7,0xca,0x82,0xb3,0xfa,0xd5,0xd0,0xda,0xd2,0x99,0xcd,0xd1,0xdc,0x99,0xdb,0xcc,0xdb,0xdb,0xd5,0xdc,0x99,0xcd,0xd6,0x99,0xc9,0xd5,0xd8,0xc0,0x99,0xcd,0xd1,0xdc,0x99,0xcf,0xd6,0xd0,0xda,0xdc,0x95,0x99,0xca,0xd5,0xd0,0xdd,0xdc,0x99,0xcd,0xd6,0x99,0xcd,0xd1,0xdc,0x99,0xcf,0xd6,0xd0,0xda,0xdc,0x99,0xd8,0xcb,0xdc,0xd8,0x99,0xcd,0xd6,0x99,0xdd,0xdc,0xd5,0xdc,0xcd,0xdc,0x99,0xd0,0xcd,0x95,0x99,0xd8,0xd7,0xdd,0x99,0xcd,0xd1,0xdc,0x99,0xcf,0xd6,0xd0,0xda,0xdc,0x99,0xcd,0xd0,0xcd,0xd5,0xdc,0x99,0xda,0xd8,0xd7,0x99,0xdb,0xdc,0x99,0xdc,0xdd,0xd0,0xcd,0xdc,0xdd,0x97]

private func headShow(progress num: UInt8) -> UInt8 {
    return num ^ 185
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  PitchDataSource.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/9.
//

//: import UIKit
import UIKit

//: class TalkingGreetAudioVC: TalkingBaseViewController {
class PitchDataSource: StartThen {
    //: var addStatus = -1
    var addStatus = -1 // 1：可以添加；2：已有正在审核中得音频，不能添加；3：已有20条审核通过的音频，不能添加；4：已有20条审核通过的文字，不能添加；5：已有20条审核中或审核通过的图片，不能添加；
    //: var recordView: TalkingGreetRecordAudioView?
    var recordView: SingleToolDelegate?
    //: var isPlaying = false
    var isPlaying = false
    //: var playIndex: IndexPath?
    var playIndex: IndexPath?
    //: var player: TalkingAudioPlayTool?
    var player: WillPlayTool?
    //: var isMute = false
    var isMute = false
    //: var currenCell: TalkingGreetAudioCell?
    var currenCell: ObserverView?
    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_componentStr.reversed(), encoding: .utf8)!)
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
        //: self.title = "Voice greeting".localized
        self.title = (String(k_leadingName)).localized
        //: self.view.backgroundColor = UIColor.postColor()
        self.view.backgroundColor = UIColor.postColor()
        //: designView()
        makeDesign()
        //: getAudioListData()
        startDetail()
        //: setMutedDetection()
        equipment()
        //: NotificationCenter.default.addObserver(self, selector: #selector(cancelPlayerAudio(notification:)), name: SOCKET_VIDEOCHAT_REQUESTCALL_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(dataFormat(notification:)), name: app_plainValue, object: nil)

        //: NotificationCenter.default.addObserver(self, selector: #selector(interruptionChange(notification:)), name: AVAudioSession.interruptionNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(task(notification:)), name: AVAudioSession.interruptionNotification, object: nil)

        // 添加接收到音视频通话通知
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(stopPlay),
                                               selector: #selector(camera),
                                               //: name: SOCKET_VIDEOCHAT_REQUESTCALL_NOTIFICATION,
                                               name: app_plainValue,
                                               //: object: nil)
                                               object: nil)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
        //: if isPlaying {
        if isPlaying {
            //: self.player?.stopPlay()
            self.player?.atMake()
        }
    }

    // MARK: - Lazy load

    //: private lazy var dataSourceArr: [TalkingGreetModel] = {
    private lazy var dataSourceArr: [ResponseHandyJSON] = {
        //: var array = [TalkingGreetModel]()
        var array = [ResponseHandyJSON]()
        //: return array
        return array
        //: }()
    }()

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-88), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue - 88), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: return table
        return table
        //: }()
    }()

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: let view = EmptyView()
        let view = EmptyView()
        //: return view
        return view
        //: }()
    }()

    //: lazy var addButton: UIButton = {
    lazy var addButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.setTitle("Add".localized, for: .normal)
        btn.setTitle((String(k_coverTitle.suffix(3))).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 18)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: 267, height: 50)), for: .normal)
        btn.setBackgroundImage(UIImage.makeEqual(colors: UIColor.georgiaHomeBoy(), size: CGSize(width: 267, height: 50)), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(addButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(liveSnap), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingGreetAudioVC {
extension PitchDataSource {
    //: func getAudioListData() {
    func startDetail() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["type"] = 1
        dict[(String(k_viewEndLabMsg))] = 1
        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: TalkingMeRequestTool.req_GetGreetList(params: dict) {[weak self] succeed, result, errorModel in
        FileListRequestTool.ballBusterLabel(params: dict) { [weak self] succeed, result, _ in

            //: EndProgressHUD.popEnable()
            EndProgressHUD.popEnable()
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if (self.MainTable.backgroundView == nil) {
            if self.MainTable.backgroundView == nil {
                //: self.setupEmptyDataView()
                self.setupAndView()
            }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {
                guard let dict = result as? [String: Any] else {
                    //: return
                    return
                }
                //: self.addStatus = dict["addStatus"] as! Int
                self.addStatus = dict[(String(k_showMessage.prefix(5)) + String(k_marginIllegalNameFormat))] as! Int
                //: let array: Array =  dict["list"] as! Array<Any>
                let array: Array = dict[(String(kLengthStr))] as! [Any]
                //: var dataArr: [TalkingGreetModel] = []
                var dataArr: [ResponseHandyJSON] = []
                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: if let model = JSONDeserializer<TalkingGreetModel>.deserializeFrom(dict: array[i] as? Dictionary<String, Any>, designatedPath: nil) {
                    if let model = JSONDeserializer<ResponseHandyJSON>.deserializeFrom(dict: array[i] as? [String: Any], designatedPath: nil) {
                        //: dataArr.append(model)
                        dataArr.append(model)
                    }
                }
                //: self.player = nil
                self.player = nil
                //: self.dataSourceArr = dataArr
                self.dataSourceArr = dataArr
                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }

    //: func requestUploadAudioFileData(data: NSData, time: String) {
    func appear(data: NSData, time: String) {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["type"] = 1
        dict[(String(k_viewEndLabMsg))] = 1
        //: dict["audio"] = data
        dict[(kDataStr.replacingOccurrences(of: "white", with: "io"))] = data
        //: dict["length"] = Int(time)
        dict[(k_ofId.replacingOccurrences(of: "size", with: "l"))] = Int(time)

        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: TalkingMeRequestTool.req_UploadGreetAdd(params: dict) {[weak self] succeed, result, errorModel in
        FileListRequestTool.eventUp(params: dict) { [weak self] _, result, _ in

            //: EndProgressHUD.popEnable()
            EndProgressHUD.popEnable()
            //: guard let self = self else {return}
            guard let self = self else { return }

            //: guard let dict = result as? Dictionary<String, Any> else {
            guard let dict = result as? [String: Any] else {
                //: return
                return
            }
            //: let url: String = dict["url"] as! String
            let url: String = dict[(k_equalMessage.lowercased())] as! String
            //: if !url.isEmptyString {
            if !url.isEmptyString {
                //: self.func__showStatusBarSuccessMsg(showMsg: "Successfully added, please wait for approval".localized)
                self.rear(showMsg: String(bytes: kZoneEdgeLabelMsg.map{cineCameraList(model: $0)}, encoding: .utf8)!.localized)
                //: self.getAudioListData()
                self.startDetail()
                //: self.recordView?.dismiss()
                self.recordView?.nameResultDismiss()
                //: self.recordView = nil
                self.recordView = nil
            }
        }
    }

    //: func shoWdeleteAlert(index: Int) {
    func indexImage(index: Int) {
        //: let config = ShowAlertConfig()
        let config = VideoAlertConfig()
        //: config.textFont = UIFont.fontChange(type: .Medium, fontSize: 18)
        config.textFont = UIFont.fontChange(type: .Medium, fontSize: 18)
        //: config.textlineBreakMode = .byCharWrapping
        config.textlineBreakMode = .byCharWrapping

        //: TalkingAlertShow.customAlert(message: "Are you sure to delete this message？".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Delete".localized, leftBlock: {
        FrameHiddenReactiveCompatible.systemToConfig(message: String(bytes: kValidData.map{sizeRequest(gift: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(kFileMsg)).localized, rightBtnTitle: (kColorValue.uppercased() + String(kAddValue)).localized, leftBlock: {
            //: TalkingAlertShow.hideAlert()
            FrameHiddenReactiveCompatible.middleText()
            //: }, rightBlock: { [weak self] in
        }, rightBlock: { [weak self] in

            //: guard let self = self else {return}
            guard let self = self else { return }
            //: TalkingAlertShow.hideAlert()
            FrameHiddenReactiveCompatible.middleText()
            //: self.stopPlay()
            self.camera()

            //: let model: TalkingGreetModel = self.dataSourceArr[index]
            let model: ResponseHandyJSON = self.dataSourceArr[index]
            //: var dict = Dictionary<String, Any>()
            var dict = [String: Any]()
            //: dict["id"] = model.greetId
            dict["id"] = model.greetId
            //: TalkingMeRequestTool.req_DeleteAudio(params: dict) { succeed, result, errorModel in
            FileListRequestTool.platform(params: dict) { succeed, _, _ in
                //: guard succeed == true else {
                guard succeed == true else {
                    //: return
                    return
                }
                //: self.getAudioListData()
                self.startDetail()
            }
            //: }, config: config)
        }, config: config)
    }
}

// MARK: - Event

//: extension TalkingGreetAudioVC {
extension PitchDataSource {
    //: @objc func cancelPlayerAudio(notification: NSNotification) -> Void {
    @objc func dataFormat(notification _: NSNotification) {
        //: stopPlay()
        camera()
    }

    /// 播放过程中中断
    //: @objc func interruptionChange(notification: NSNotification) -> Void {
    @objc func task(notification: NSNotification) {
        //: let dic = notification.userInfo as![String: AnyObject]
        let dic = notification.userInfo as! [String: AnyObject]

        //: let changeReason = dic[AVAudioSessionInterruptionTypeKey]
        let changeReason = dic[AVAudioSessionInterruptionTypeKey]
        //: if changeReason?.intValue ?? 0 == AVAudioSession.InterruptionType.began.rawValue {
        if changeReason?.intValue ?? 0 == AVAudioSession.InterruptionType.began.rawValue {
            //: stopPlay()
            camera()
        }
    }

    //: @objc func addButtonClick() {
    @objc func liveSnap() {
        //: guard TalkingSocketManager.shared.isSpace == false else {
        guard ListSocketManager.shared.isSpace == false else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.arcInfo(showMsg: kTopReplaceHeightData)
            //: return
            return
        }

        //: TalkingPermissionTool.func__openRecordServiceWithBlock(true) { isOpen in
        ToolThen.cellTact(true) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: self.func__showStatusBarErrorMsg(showMsg: kMessage_permissions_error)
                self.arcInfo(showMsg: main_intimateName)
                //: return
                return
            }
            //: if self.addStatus == 2 {
            if self.addStatus == 2 {
                //: self.func__showStatusBarErrorMsg(showMsg: "Please wait for the audit result".localized)
                self.arcInfo(showMsg: String(bytes: k_clearMessage.map{$0^23}, encoding: .utf8)!.localized)
                //: return
                return
                    //: }else if (self.addStatus == 3) {
            } else if self.addStatus == 3 {
                //: self.func__showStatusBarErrorMsg(showMsg: "The upper limit has been reached".localized)
                self.arcInfo(showMsg: String(bytes: kDomainCellData.map{$0^216}, encoding: .utf8)!.localized)
                //: return
                return
            }
            //: self.stopPlay()
            self.camera()
            //: self.recordView = TalkingGreetRecordAudioView.init(frame: self.view.frame)
            self.recordView = SingleToolDelegate(frame: self.view.frame)
            //: self.recordView?.show()
            self.recordView?.musterOut()
            //: self.recordView?.audioFileUpload = {[weak self] dict in
            self.recordView?.audioFileUpload = { [weak self] dict in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: let data = NSData.init(contentsOfFile: dict["filePath"] as! String)
                let data = NSData(contentsOfFile: dict[(String(k_backMsg.prefix(7)) + String(k_bottomMsg))] as! String)
                //: guard data != nil else {
                guard data != nil else {
                    //: return
                    return
                }
                //: self.requestUploadAudioFileData(data: data!, time: dict["time"] as! String)
                self.appear(data: data!, time: dict[(k_videoDataUrl.replacingOccurrences(of: "title", with: "e"))] as! String)
            }
        }
    }
}

//: extension TalkingGreetAudioVC {
extension PitchDataSource {
    //: func setMutedDetection() {
    func equipment() {
        //: RBDMuteSwitch.shared.detectMuteSwitch()
        TouchThen.shared.placeTitle()
        //: RBDMuteSwitch.shared.isMutedBlock = { [weak self] mute in
        TouchThen.shared.isMutedBlock = { [weak self] mute in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.isMute = mute
            self.isMute = mute
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingGreetAudioVC: UITableViewDelegate, UITableViewDataSource {
extension PitchDataSource: UITableViewDelegate, UITableViewDataSource {
    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return 1
        return 1
    }

    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: MainTable.backgroundView?.isHidden = dataSourceArr.count > 0
        MainTable.backgroundView?.isHidden = dataSourceArr.count > 0
        //: MainTable.bounces = dataSourceArr.count > 0
        MainTable.bounces = dataSourceArr.count > 0
        //: return dataSourceArr.count
        return dataSourceArr.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 101
        return 101
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = TalkingGreetAudioCell.className()
        let identifier = ObserverView.className()
        //: let cell: TalkingGreetAudioCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! TalkingGreetAudioCell
        let cell: ObserverView = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! ObserverView

        //: cell.setGreetAudioCell(model: self.dataSourceArr[indexPath.section], row: indexPath.section, isLast: indexPath.section == self.dataSourceArr.count-1)
        cell.overdo(model: self.dataSourceArr[indexPath.section], row: indexPath.section, isLast: indexPath.section == self.dataSourceArr.count - 1)

        //: if isPlaying && playIndex?.row == indexPath.section {
        if isPlaying && playIndex?.row == indexPath.section {
            //: cell.syncPlayState(isPlaying: true)
            cell.recording(isPlaying: true)
            //: }else {
        } else {
            //: cell.syncPlayState(isPlaying: false)
            cell.recording(isPlaying: false)
        }

        //: cell.audioPlayActionBlock = { [weak self] in
        cell.audioPlayActionBlock = { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: RBDMuteSwitch.shared.detectMuteSwitch()
            TouchThen.shared.placeTitle()
            //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                //: self.playAudio(index: indexPath)
                self.audio(index: indexPath)
            }
        }
        //: cell.editActionBlock = { [weak self] in
        cell.editActionBlock = { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.stopPlay()
            self.camera()
            //: self.editTitle(index: indexPath.section)
            self.object(index: indexPath.section)
        }
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}

    // ios11以前
    //: func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
    func tableView(_: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        //: let deleteBtn = UITableViewRowAction(style: .normal, title: "Delete".localized) { action, indexP in
        let deleteBtn = UITableViewRowAction(style: .normal, title: (kColorValue.uppercased() + String(kAddValue)).localized) { _, _ in

            //: self.shoWdeleteAlert(index: indexPath.section)
            self.indexImage(index: indexPath.section)
        }
        //: deleteBtn.backgroundColor = UIColor(hex: "#FF506D")
        deleteBtn.backgroundColor = UIColor(hex: (String(k_ofFormat)))

        //: return [deleteBtn]
        return [deleteBtn]
    }

    //: @available(iOS 11.0, *)
    @available(iOS 11.0, *)
    //: func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    func tableView(_: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        //: let deleteBtn = UIContextualAction(style: .normal, title: nil) { action, view, completionHandler in
        let deleteBtn = UIContextualAction(style: .normal, title: nil) { _, _, completionHandler in

            //: self.shoWdeleteAlert(index: indexPath.section)
            self.indexImage(index: indexPath.section)
            //: completionHandler(false)
            completionHandler(false)
        }

        //: if let deleteBtnTrashcan =  UIImage.submitGift(name: "btn_message_delete_nor").cgImage {
        if let deleteBtnTrashcan = UIImage.submitGift(name: (String(kSizePath.prefix(4)) + "messa" + String(kSelectStr.prefix(4)) + "elete" + String(kButtonFormat.suffix(4)))).cgImage {
            //: deleteBtn.image = ImageWithoutRender(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
            deleteBtn.image = FlauntThen(cgImage: deleteBtnTrashcan, scale: UIScreen.main.nativeScale, orientation: .up)
        }
        //: deleteBtn.backgroundColor = .white
        deleteBtn.backgroundColor = .white
        //: let actions = [deleteBtn]
        let actions = [deleteBtn]
        //: let config = UISwipeActionsConfiguration(actions: actions)
        let config = UISwipeActionsConfiguration(actions: actions)
        //: config.performsFirstActionWithFullSwipe = false
        config.performsFirstActionWithFullSwipe = false
        //: return config
        return config
    }

    //: func playAudio(index: IndexPath) {
    func audio(index: IndexPath) {
        //: guard !TalkingSocketManager.shared.isSpace else {
        guard !ListSocketManager.shared.isSpace else {
            //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
            self.arcInfo(showMsg: kTopReplaceHeightData)
            //: return
            return
        }
        //: if isPlaying && playIndex == index {
        if isPlaying && playIndex == index {
            //: isPlaying = false
            isPlaying = false
            //: MainTable.reloadData()
            MainTable.reloadData()
            //: self.player?.stopPlay()
            self.player?.atMake()
            //: return
            return
        }
        //: if isPlaying {
        if isPlaying {
            //: currenCell = MainTable.cellForRow(at: playIndex ?? IndexPath()) as? TalkingGreetAudioCell
            currenCell = MainTable.cellForRow(at: playIndex ?? IndexPath()) as? ObserverView
            //: if currenCell != nil {
            if currenCell != nil {
                //: currenCell?.syncPlayState(isPlaying: false)
                currenCell?.recording(isPlaying: false)
            }
        }

        //: playIndex = index
        playIndex = index
        //: let model = self.dataSourceArr[index.section]
        let model = self.dataSourceArr[index.section]

        //: if isMute || AVAudioSession.sharedInstance().outputVolume <= 0 {
        if isMute || AVAudioSession.sharedInstance().outputVolume <= 0 {
            //: self.func__showStatusBarErrorMsg(showMsg: "Currently mute".localized)
            self.arcInfo(showMsg: (String(k_submitUrl.prefix(8)) + String(kMenuUrl.prefix(6))).localized)
            //: return
            return
        }
        //: if self.player == nil {
        if self.player == nil {
            //: self.player = TalkingAudioPlayTool.shared
            self.player = WillPlayTool.shared
            //: self.player?.delegate = self
            self.player?.delegate = self
        }
        //: self.player?.stopPlay()
        self.player?.atMake()
        //: self.player?.play(urlStr: model.content)
        self.player?.work(urlStr: model.content)
        //: isPlaying = true
        isPlaying = true
        //: currenCell = MainTable.cellForRow(at: playIndex ?? IndexPath()) as? TalkingGreetAudioCell
        currenCell = MainTable.cellForRow(at: playIndex ?? IndexPath()) as? ObserverView
        //: if currenCell != nil {
        if currenCell != nil {
            //: currenCell?.syncPlayState(isPlaying: true)
            currenCell?.recording(isPlaying: true)
        }
    }

    //: func editTitle(index: Int) {
    func object(index: Int) {
        //: let view = TalkingEditAlertView.init(title: "Edit Title".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "OK".localized, config: nil)
        let view = WillViewDelegate(title: (String(kTableChildFormat.suffix(4)) + String(k_pureFormat.prefix(6))).localized, leftBtnTitle: (String(kFileMsg)).localized, rightBtnTitle: "OK".localized, config: nil)
        //: view.show()
        view.afterwardsShow()

        //: view.rightBlock = { [weak self] text in
        view.rightBlock = { [weak self] text in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: ProgressHUD.show()
            EndProgressHUD.listHide()

            //: var model: TalkingGreetModel = self.dataSourceArr[index]
            var model: ResponseHandyJSON = self.dataSourceArr[index]
            //: var dict = Dictionary<String, Any>()
            var dict = [String: Any]()
            //: dict["id"] = model.greetId
            dict["id"] = model.greetId
            //: dict["remark"] = text
            dict[(String(kTotalKey))] = text

            //: TalkingMeRequestTool.req_UpdateAudioRemark(params: dict) { succeed, result, errorModel in
            FileListRequestTool.array(params: dict) { succeed, _, _ in
                //: EndProgressHUD.popEnable()
                EndProgressHUD.popEnable()
                //: if succeed {
                if succeed {
                    //: model.remark = text
                    model.remark = text
                    //: self.dataSourceArr[index] = model
                    self.dataSourceArr[index] = model
                    //: self.MainTable.reloadData()
                    self.MainTable.reloadData()
                }
            }
        }
    }

    //: @objc func stopPlay() {
    @objc func camera() {
        //: if isPlaying {
        if isPlaying {
            //: isPlaying = false
            isPlaying = false
            //: self.player?.stopPlay()
            self.player?.atMake()
            //: if currenCell != nil {
            if currenCell != nil {
                //: currenCell?.syncPlayState(isPlaying: false)
                currenCell?.recording(isPlaying: false)
            }
        }
    }
}

//: extension TalkingGreetAudioVC: TalkingAudioPlayToolDelegate {
extension PitchDataSource: EqualToolDelegate {
    //: func playerStatusChange(status: AudioPlayerStatus) {
    func cell(status: EquationViewSubscriptType) {
        //: switch status {
        switch status {
        //: case .PlayerFinish:
        case .PlayerFinish:
            //: stopPlay()
            camera()
        //: break
        //: case .PlayerInterruption:
        case .PlayerInterruption:
            //: stopPlay()
            camera()
        //: break
        //: default:
        default:
            //: break
            break
        }
    }
}

// MARK: - Layout

//: extension TalkingGreetAudioVC {
extension PitchDataSource {
    //: private func setupEmptyDataView() {
    private func setupAndView() {
        //: var style = EmptyStyle()
        var style = RemoteEmptyStyle()
        //: style.TipsTitle = "Click the button below to add\ncontent".localized
        style.TipsTitle = String(bytes: k_titleKey.map{subjectMatter(gender: $0)}, encoding: .utf8)!.localized
        //: emptyView = EmptyView.init(frame: self.view.frame, style: style)
        emptyView = EmptyView(frame: self.view.frame, style: style)
        //: emptyView.isHidden = true
        emptyView.isHidden = true
        //: emptyView.isScrollEnabled = false
        emptyView.isScrollEnabled = false
        //: emptyView.backgroundColor = .postColor()
        emptyView.backgroundColor = .postColor()
        //: MainTable.backgroundView = emptyView
        MainTable.backgroundView = emptyView

        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.MainTable.mj_header?.beginRefreshing()
            self.MainTable.mj_header?.beginRefreshing()
        }
    }

    //: private func designView() {
    private func makeDesign() {
        //: self.view.addSubview(addButton)
        self.view.addSubview(addButton)
        //: addButton.snp.makeConstraints { make in
        addButton.snp.makeConstraints { make in
            //: make.bottom.equalToSuperview().offset(-34)
            make.bottom.equalToSuperview().offset(-34)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: 267, height: 50))
            make.size.equalTo(CGSize(width: 267, height: 50))
        }
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingGreetAudioCell.self, forCellReuseIdentifier: TalkingGreetAudioCell.className())
        MainTable.register(ObserverView.self, forCellReuseIdentifier: ObserverView.className())
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
            //: make.bottom.equalTo(addButton.snp.top).offset(-16)
            make.bottom.equalTo(addButton.snp.top).offset(-16)
        }
        //: MainTable.tableFooterView = UIView.init()
        MainTable.tableFooterView = UIView()

        //: let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: ScreenWidth, height: 145))
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: constFormalContent, height: 145))
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.textColor = UIColor.appValueDetailColor()
        label.textColor = UIColor.childMenu()
        //: label.font = UIFont.pingfangRugularFont(fontSize: 15)
        label.font = UIFont.targetFor(fontSize: 15)
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: let string = "Add multiple voice greetings, and the system will send voice messages by turns;\nClick the bubble to play the voice, slide to the voice area to delete it, and the voice title can be edited.".localized
        let string = String(bytes: kNameKey.map{headShow(progress: $0)}, encoding: .utf8)!.localized
        //: let attri = NSMutableAttributedString.init(string: string)
        let attri = NSMutableAttributedString(string: string)
        //: let style = NSMutableParagraphStyle.init()
        let style = NSMutableParagraphStyle()
        //: style.lineSpacing = 2
        style.lineSpacing = 2
        //: attri.yy_paragraphStyle = style
        attri.yy_paragraphStyle = style
        //: label.attributedText = attri
        label.attributedText = attri
        //: headerView.addSubview(label)
        headerView.addSubview(label)
        //: label.snp.makeConstraints { make in
        label.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.bottom.equalTo(-16)
            make.bottom.equalTo(-16)
            //: make.top.equalTo(12)
            make.top.equalTo(12)
        }
        //: MainTable.tableHeaderView = headerView
        MainTable.tableHeaderView = headerView
    }
}
