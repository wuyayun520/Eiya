
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_fromValue:[UInt8] = [0xae,0xa9,0xae,0xb3,0xef,0xa4,0xa8,0xa3,0xa2,0xb5,0xfd,0xee,0xe7,0xaf,0xa6,0xb4,0xe7,0xa9,0xa8,0xb3,0xe7,0xa5,0xa2,0xa2,0xa9,0xe7,0xae,0xaa,0xb7,0xab,0xa2,0xaa,0xa2,0xa9,0xb3,0xa2,0xa3]

/*: "Text greeting" :*/
fileprivate let kModelValue:[Character] = ["T","e","x","t"," ","g","r","e","e"]
fileprivate let k_photoHomeText:[Character] = ["t","i","n","g"]

/*: "Add" :*/
fileprivate let kSizeData:String = "left viewAdd"

/*: "type" :*/
fileprivate let k_tarId:[Character] = ["t","y","p","e"]

/*: "addStatus" :*/
fileprivate let k_indexPath:[Character] = ["a","d","d","S","t","a","t","u"]
fileprivate let k_femaleFormat:[Character] = ["s"]

/*: "list" :*/
fileprivate let k_rowText:String = "licontent"

/*: "Are you sure to delete this message？" :*/
fileprivate let k_toTopPath:[UInt8] = [0xdd,0xe,0x1,0xbc,0x15,0xb,0x11,0xbc,0xf,0x11,0xe,0x1,0xbc,0x10,0xb,0xbc,0x0,0x1,0x8,0x1,0x10,0x1,0xbc,0x10,0x4,0x5,0xf,0xbc,0x9,0x1,0xf,0xf,0xfd,0x3,0x1,0x8b,0x58,0x3b]

fileprivate func indexLabelMake(count num: UInt8) -> UInt8 {
    let value = Int(num) - 156
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "Cancel" :*/
fileprivate let kTempName:[Character] = ["C","a","n","c","e","l"]

/*: "Delete" :*/
fileprivate let kDataInputEqualText:String = "Deletof size list"
fileprivate let kEqualUrl:String = "view"

/*: "id" :*/
fileprivate let kQuantityryColorPath:String = "ilabel"

/*: "The upper limit has been reached" :*/
fileprivate let k_modelId:[UInt8] = [0xd6,0xea,0xe7,0xa2,0xf7,0xf2,0xf2,0xe7,0xf0,0xa2,0xee,0xeb,0xef,0xeb,0xf6,0xa2,0xea,0xe3,0xf1,0xa2,0xe0,0xe7,0xe7,0xec,0xa2,0xf0,0xe7,0xe3,0xe1,0xea,0xe7,0xe6]

private func topGift(plain num: UInt8) -> UInt8 {
    return num ^ 130
}

/*: "text" :*/
fileprivate let k_videoKey:String = "TEXT"

/*: "Successfully added, please wait for approval" :*/
fileprivate let k_topId:[UInt8] = [0x6c,0x61,0x76,0x6f,0x72,0x70,0x70,0x61,0x20,0x72,0x6f,0x66,0x20,0x74,0x69,0x61,0x77,0x20,0x65,0x73,0x61,0x65,0x6c,0x70,0x20,0x2c,0x64,0x65,0x64,0x64,0x61,0x20,0x79,0x6c,0x6c,0x75,0x66,0x73,0x73,0x65,0x63,0x63,0x75,0x53]

/*: "Any-Hex/Java" :*/
fileprivate let kCenterFormat:String = "total type extension returnAny-He"
fileprivate let k_diskId:[Character] = ["x","/","J","a","v","a"]

/*: "#FF506D" :*/
fileprivate let kRestoreData:String = "bubble scale raw#F"
fileprivate let k_editTempMsg:[Character] = ["F","5","0","6","D"]

/*: "btn_message_delete_nor" :*/
fileprivate let k_numberContent:String = "btn_meself data"
fileprivate let k_rawName:String = "name return type data modele_de"
fileprivate let kMakeText:String = "if storage_nor"

/*: "Click the button below to add\ncontent" :*/
fileprivate let kShareMessage:[UInt8] = [0x9d,0xc6,0xc3,0xbd,0xc5,0x7a,0xce,0xc2,0xbf,0x7a,0xbc,0xcf,0xce,0xce,0xc9,0xc8,0x7a,0xbc,0xbf,0xc6,0xc9,0xd1,0x7a,0xce,0xc9,0x7a,0xbb,0xbe,0xbe,0x64,0xbd,0xc9,0xc8,0xce,0xbf,0xc8,0xce]

fileprivate func logVideoAdd(to num: UInt8) -> UInt8 {
    let value = Int(num) - 90
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "When adding multiple text message, the syst em will send them by turns;slide to the message to delete" :*/
fileprivate let k_filterName:[UInt8] = [0x37,0x8,0x5,0xe,0x40,0x1,0x4,0x4,0x9,0xe,0x7,0x40,0xd,0x15,0xc,0x14,0x9,0x10,0xc,0x5,0x40,0x14,0x5,0x18,0x14,0x40,0xd,0x5,0x13,0x13,0x1,0x7,0x5,0x4c,0x40,0x14,0x8,0x5,0x40,0x13,0x19,0x13,0x14,0x40,0x5,0xd,0x40,0x17,0x9,0xc,0xc,0x40,0x13,0x5,0xe,0x4,0x40,0x14,0x8,0x5,0xd,0x40,0x2,0x19,0x40,0x14,0x15,0x12,0xe,0x13,0x5b,0x13,0xc,0x9,0x4,0x5,0x40,0x14,0xf,0x40,0x14,0x8,0x5,0x40,0xd,0x5,0x13,0x13,0x1,0x7,0x5,0x40,0x14,0xf,0x40,0x4,0x5,0xc,0x5,0x14,0x5]

private func universalPath(message num: UInt8) -> UInt8 {
    return num ^ 96
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/15.
//

//: import UIKit
import UIKit

//: class TalkingGreetTextVC: TalkingBaseViewController {
class ViewReactiveCompatible: StartThen {
    //: var addStatus = -1
    var addStatus = -1
    //: var recordView: TalkingGreetEditTextView?
    var recordView: MenuNameView?

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_fromValue.map{$0^199}, encoding: .utf8)!)
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
        //: self.title = "Text greeting".localized
        self.title = (String(kModelValue) + String(k_photoHomeText)).localized
        //: self.view.backgroundColor = UIColor.postColor()
        self.view.backgroundColor = UIColor.postColor()
        //: designView()
        indexVideo()
        //: getAudioListData()
        need()
    }

    //: deinit {
    deinit {}

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
        btn.setTitle((String(kSizeData.suffix(3))).localized, for: .normal)
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
        btn.addTarget(self, action: #selector(destroy), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingGreetTextVC {
extension ViewReactiveCompatible {
    //: func getAudioListData() {
    func need() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["type"] = 2
        dict[(String(k_tarId))] = 2
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
                self.showDownFill()
            }
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {
                guard let dict = result as? [String: Any] else {
                    //: return
                    return
                }
                //: self.addStatus = dict["addStatus"] as! Int
                self.addStatus = dict[(String(k_indexPath) + String(k_femaleFormat))] as! Int
                //: let array: Array =  dict["list"] as! Array<Any>
                let array: Array = dict[(k_rowText.replacingOccurrences(of: "content", with: "st"))] as! [Any]
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
                //: self.dataSourceArr = dataArr
                self.dataSourceArr = dataArr
                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }

    //: func shoWdeleteAlert(index: Int) {
    func commitQuantity(index: Int) {
        //: let config = ShowAlertConfig()
        let config = VideoAlertConfig()
        //: config.textFont = UIFont.fontChange(type: .Medium, fontSize: 18)
        config.textFont = UIFont.fontChange(type: .Medium, fontSize: 18)
        //: config.textlineBreakMode = .byCharWrapping
        config.textlineBreakMode = .byCharWrapping

        //: TalkingAlertShow.customAlert(message: "Are you sure to delete this message？".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Delete".localized, leftBlock: {
        FrameHiddenReactiveCompatible.systemToConfig(message: String(bytes: k_toTopPath.map{indexLabelMake(count: $0)}, encoding: .utf8)!.localized, leftBtnTitle: (String(kTempName)).localized, rightBtnTitle: (String(kDataInputEqualText.prefix(5)) + kEqualUrl.replacingOccurrences(of: "view", with: "e")).localized, leftBlock: {
            //: TalkingAlertShow.hideAlert()
            FrameHiddenReactiveCompatible.middleText()
            //: }, rightBlock: { [weak self] in
        }, rightBlock: { [weak self] in

            //: guard let self = self else {return}
            guard let self = self else { return }
            //: TalkingAlertShow.hideAlert()
            FrameHiddenReactiveCompatible.middleText()
            //: let model: TalkingGreetModel = self.dataSourceArr[index]
            let model: ResponseHandyJSON = self.dataSourceArr[index]
            //: var dict = Dictionary<String, Any>()
            var dict = [String: Any]()
            //: dict["id"] = model.greetId
            dict["id"] = model.greetId
            //: ProgressHUD.show()
            EndProgressHUD.listHide()
            //: TalkingMeRequestTool.req_DeleteAudio(params: dict) { succeed, result, errorModel in
            FileListRequestTool.platform(params: dict) { succeed, _, _ in
                //: EndProgressHUD.popEnable()
                EndProgressHUD.popEnable()
                //: guard succeed == true else {
                guard succeed == true else {
                    //: return
                    return
                }
                //: self.getAudioListData()
                self.need()
            }
            //: }, config: config)
        }, config: config)
    }
}

// MARK: - Event

//: extension TalkingGreetTextVC {
extension ViewReactiveCompatible {
    //: @objc func addButtonClick() {
    @objc func destroy() {
        //: if (self.addStatus == 4) {
        if self.addStatus == 4 {
            //: self.func__showStatusBarErrorMsg(showMsg: "The upper limit has been reached".localized)
            self.arcInfo(showMsg: String(bytes: k_modelId.map{topGift(plain: $0)}, encoding: .utf8)!.localized)
            //: return
            return
        }
        //: self.recordView = TalkingGreetEditTextView.init(frame: self.view.frame)
        self.recordView = MenuNameView(frame: self.view.frame)
        //: self.recordView?.show()
        self.recordView?.fromRunning()
        //: self.recordView?.textUpload = {[weak self] str in
        self.recordView?.textUpload = { [weak self] str in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: let tempStr = self.unicodeString(str)
            let tempStr = self.audienceName(str)
            //: var dict = Dictionary<String, Any>()
            var dict = [String: Any]()
            //: dict["type"] = 2
            dict[(String(k_tarId))] = 2
            //: dict["text"] = tempStr
            dict[(k_videoKey.lowercased())] = tempStr
            //: ProgressHUD.show()
            EndProgressHUD.listHide()
            //: TalkingMeRequestTool.req_UploadGreetAdd(params: dict) { succeed, result, errorModel in
            FileListRequestTool.eventUp(params: dict) { succeed, _, _ in
                //: EndProgressHUD.popEnable()
                EndProgressHUD.popEnable()
                //: guard succeed == true else {
                guard succeed == true else {
                    //: return
                    return
                }
                //: self.func__showStatusBarSuccessMsg(showMsg: "Successfully added, please wait for approval".localized)
                self.rear(showMsg: String(bytes: k_topId.reversed(), encoding: .utf8)!.localized)
                //: self.getAudioListData()
                self.need()
                //: self.recordView?.dismiss()
                self.recordView?.text()
            }
        }
    }

    //: func unicodeString(_ str: String) -> String {
    func audienceName(_ str: String) -> String {
        //: let mutableStr = NSMutableString(string: str) as CFMutableString
        let mutableStr = NSMutableString(string: str) as CFMutableString
        //: CFStringTransform(mutableStr, nil, "Any-Hex/Java" as CFString, true)
        CFStringTransform(mutableStr, nil, (String(kCenterFormat.suffix(6)) + String(k_diskId)) as CFString, true)
        //: return mutableStr as String
        return mutableStr as String
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingGreetTextVC: UITableViewDelegate, UITableViewDataSource {
extension ViewReactiveCompatible: UITableViewDelegate, UITableViewDataSource {
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
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: let model = self.dataSourceArr[indexPath.section]
        let model = self.dataSourceArr[indexPath.section]
        //: var height: CGFloat = 18+22
        var height: CGFloat = 18 + 22
        //: let rect = model.content.boundingRect(with: CGSize(width: ScreenWidth-60, height: 0), options: [NSStringDrawingOptions.usesLineFragmentOrigin, NSStringDrawingOptions.usesFontLeading, NSStringDrawingOptions.usesDeviceMetrics], attributes: [NSAttributedString.Key.font: UIFont.fontChange(type: .Medium, fontSize: 16)], context: nil)
        let rect = model.content.boundingRect(with: CGSize(width: constFormalContent - 60, height: 0), options: [NSStringDrawingOptions.usesLineFragmentOrigin, NSStringDrawingOptions.usesFontLeading, NSStringDrawingOptions.usesDeviceMetrics], attributes: [NSAttributedString.Key.font: UIFont.fontChange(type: .Medium, fontSize: 16)], context: nil)
        //: height += rect.height
        height += rect.height
        //: if model.status == 0 {
        if model.status == 0 {
            //: height += 16+12
            height += 16 + 12
        }
        //: return height
        return height
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = TalkingGreetTextCell.className()
        let identifier = HighlightReactiveCompatible.className()
        //: let cell: TalkingGreetTextCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! TalkingGreetTextCell
        let cell: HighlightReactiveCompatible = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! HighlightReactiveCompatible

        //: cell.setGreetTextCell(model: self.dataSourceArr[indexPath.section], row: indexPath.section, isLast: indexPath.section == self.dataSourceArr.count-1)
        cell.outlook(model: self.dataSourceArr[indexPath.section], row: indexPath.section, isLast: indexPath.section == self.dataSourceArr.count - 1)
        //: return cell
        return cell
    }

    // ios11以前
    //: func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
    func tableView(_: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        //: let deleteBtn = UITableViewRowAction(style: .normal, title: "Delete".localized) { action, indexP in
        let deleteBtn = UITableViewRowAction(style: .normal, title: (String(kDataInputEqualText.prefix(5)) + kEqualUrl.replacingOccurrences(of: "view", with: "e")).localized) { _, _ in

            //: self.shoWdeleteAlert(index: indexPath.section)
            self.commitQuantity(index: indexPath.section)
        }
        //: deleteBtn.backgroundColor = UIColor(hex: "#FF506D")
        deleteBtn.backgroundColor = UIColor(hex: (String(kRestoreData.suffix(2)) + String(k_editTempMsg)))

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
            self.commitQuantity(index: indexPath.section)
            //: completionHandler(false)
            completionHandler(false)
        }

        //: if let deleteBtnTrashcan =  UIImage.submitGift(name: "btn_message_delete_nor").cgImage {
        if let deleteBtnTrashcan = UIImage.submitGift(name: (String(k_numberContent.prefix(6)) + "ssag" + String(k_rawName.suffix(4)) + "lete" + String(kMakeText.suffix(4)))).cgImage {
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

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.01
        return 0.01
    }
}

// MARK: - Layout

//: extension TalkingGreetTextVC {
extension ViewReactiveCompatible {
    //: private func setupEmptyDataView() {
    private func showDownFill() {
        //: var style = EmptyStyle()
        var style = RemoteEmptyStyle()
        //: style.TipsTitle = "Click the button below to add\ncontent".localized
        style.TipsTitle = String(bytes: kShareMessage.map{logVideoAdd(to: $0)}, encoding: .utf8)!.localized
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
    private func indexVideo() {
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
        //: MainTable.register(TalkingGreetTextCell.self, forCellReuseIdentifier: TalkingGreetTextCell.className())
        MainTable.register(HighlightReactiveCompatible.self, forCellReuseIdentifier: HighlightReactiveCompatible.className())
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

        //: let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: ScreenWidth, height: 100))
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: constFormalContent, height: 100))
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.textColor = UIColor.appValueDetailColor()
        label.textColor = UIColor.childMenu()
        //: label.font = UIFont.pingfangRugularFont(fontSize: 15)
        label.font = UIFont.targetFor(fontSize: 15)
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: let string = "When adding multiple text message, the syst em will send them by turns;slide to the message to delete".localized
        let string = String(bytes: k_filterName.map{universalPath(message: $0)}, encoding: .utf8)!.localized
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
