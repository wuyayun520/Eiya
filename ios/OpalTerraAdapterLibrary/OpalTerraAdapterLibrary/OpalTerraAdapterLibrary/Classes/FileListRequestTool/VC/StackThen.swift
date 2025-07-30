
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_gestureMsg:[UInt8] = [0xbd,0xba,0xbd,0xa0,0xfc,0xb7,0xbb,0xb0,0xb1,0xa6,0xee,0xfd,0xf4,0xbc,0xb5,0xa7,0xf4,0xba,0xbb,0xa0,0xf4,0xb6,0xb1,0xb1,0xba,0xf4,0xbd,0xb9,0xa4,0xb8,0xb1,0xb9,0xb1,0xba,0xa0,0xb1,0xb0]

private func equalUser(round num: UInt8) -> UInt8 {
    return num ^ 212
}

/*: "Greeting Message Settings" :*/
fileprivate let k_bottomByData:[Character] = ["G","r","e","e","t","i","n","g"," ","M","e","s","s","a","g","e"," ","S"]
fileprivate let kLabelId:String = "ettingleading"

/*: "Voice greeting" :*/
fileprivate let kManagerValue:String = "like"
fileprivate let kEndKey:[Character] = ["o","i","c","e"," ","g","r","e","e","t","i","n","g"]

/*: "icon_me_greet_vioce" :*/
fileprivate let kStartButtonKey:String = "icitem"
fileprivate let kModelMessage:String = "eet_vioceself success number"

/*: "Text greeting" :*/
fileprivate let k_frameTitle:String = "kit else voice caseText "
fileprivate let kRawUrl:String = "withng"

/*: "icon_me_greet_text" :*/
fileprivate let kManagerEmptyCornerValue:String = "iccenter"
fileprivate let kApplicationValue:String = "view clear extension enginereet_te"
fileprivate let kHalfKey:String = "xbeauty"

/*: "Photo greeting" :*/
fileprivate let kButtonFormat:String = "Photoinfo view if class"
fileprivate let k_cornerData:String = " greetingstrength turn image change"

/*: "icon_me_greet_photo" :*/
fileprivate let k_loadRegularMsg:String = "icon_mlet custom"
fileprivate let kMoveDataText:[Character] = ["h","o","t","o"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StackThen.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/9.
//

//: import UIKit
import UIKit

//: class TalkingAutoGreetSettingVC: TalkingBaseViewController {
class StackThen: StartThen {
    //: var settingModel = TalkingSettingModel()
    var settingModel = RawDataHandyJSON()

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_gestureMsg.map{equalUser(round: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: getSettingData()
        kitSize()
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
        //: self.title = "Greeting Message Settings".localized
        self.title = (String(k_bottomByData) + kLabelId.replacingOccurrences(of: "leading", with: "s")).localized
        //: self.view.backgroundColor = UIColor.postColor()
        self.view.backgroundColor = UIColor.postColor()
        //: setupSubviews()
        actionGift()
        //: setupSubViewsConstraint()
        stopConstraint()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-TabBarViewHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue - dataImageItemValue), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: table.register(TalkingGreetingSetTableCell.self, forCellReuseIdentifier: TalkingGreetingSetTableCell.className())
        table.register(AddWillViewCell.self, forCellReuseIdentifier: AddWillViewCell.className())
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
}

// MARK: - Request & 数据处理

//: extension TalkingAutoGreetSettingVC {
extension StackThen {
    //: func getSettingData() {
    func kitSize() {
        //: let dict = Dictionary<String, Any>()
        let dict = [String: Any]()
        //: TalkingMeRequestTool.req_GetGreetSetting(params: dict) { succeed, result, errorModel in
        FileListRequestTool.garrison(params: dict) { succeed, result, _ in
            //: if succeed {
            if succeed {
                //: self.settingModel = JSONDeserializer<TalkingSettingModel>.deserializeFrom(dict: result as? Dictionary<String, Any>, designatedPath: nil)!
                self.settingModel = JSONDeserializer<RawDataHandyJSON>.deserializeFrom(dict: result as? [String: Any], designatedPath: nil)!
                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingAutoGreetSettingVC: UITableViewDelegate, UITableViewDataSource {
extension StackThen: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 3
        return 3
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return actualHeight(h: 50)
        return actualHeight(h: 50)
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 15
        return 15
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection _: Int) -> CGFloat {
        //: return 0.1
        return 0.1
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell: TalkingGreetingSetTableCell = tableView.dequeueReusableCell(withIdentifier: TalkingGreetingSetTableCell.className(), for: indexPath) as! TalkingGreetingSetTableCell
        let cell: AddWillViewCell = tableView.dequeueReusableCell(withIdentifier: AddWillViewCell.className(), for: indexPath) as! AddWillViewCell

        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: cell.setCellMessage(titile: "Voice greeting".localized, iconStr: "icon_me_greet_vioce", isShowDet: self.settingModel.audioIsSet != 0)
            cell.nameSet(titile: (kManagerValue.replacingOccurrences(of: "like", with: "V") + String(kEndKey)).localized, iconStr: (kStartButtonKey.replacingOccurrences(of: "item", with: "on") + "_me_gr" + String(kModelMessage.prefix(9))), isShowDet: self.settingModel.audioIsSet != 0)

            //: } else if indexPath.section == 1 {
        } else if indexPath.section == 1 {
            //: cell.setCellMessage(titile: "Text greeting".localized, iconStr: "icon_me_greet_text", isShowDet: self.settingModel.textIsSet != 0)
            cell.nameSet(titile: (String(k_frameTitle.suffix(5)) + "gree" + kRawUrl.replacingOccurrences(of: "with", with: "ti")).localized, iconStr: (kManagerEmptyCornerValue.replacingOccurrences(of: "center", with: "on") + "_me_g" + String(kApplicationValue.suffix(7)) + kHalfKey.replacingOccurrences(of: "beauty", with: "t")), isShowDet: self.settingModel.textIsSet != 0)
            //: } else if indexPath.section == 2 {
        } else if indexPath.section == 2 {
            //: cell.setCellMessage(titile: "Photo greeting".localized, iconStr: "icon_me_greet_photo", isShowDet: self.settingModel.intimatePhotoIsSet != 0)
            cell.nameSet(titile: (String(kButtonFormat.prefix(5)) + String(k_cornerData.prefix(9))).localized, iconStr: (String(k_loadRegularMsg.prefix(6)) + "e_greet_p" + String(kMoveDataText)), isShowDet: self.settingModel.intimatePhotoIsSet != 0)
        }
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: if indexPath.section == 0 {
        if indexPath.section == 0 {
            //: let vc = TalkingGreetAudioVC.init()
            let vc = PitchDataSource()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if indexPath.section == 1 {
        } else if indexPath.section == 1 {
            //: let vc = TalkingGreetTextVC.init()
            let vc = ViewReactiveCompatible()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
            //: } else if indexPath.section == 2 {
        } else if indexPath.section == 2 {
            //: let vc = TalkingGreetPhotoVC.init()
            let vc = PitchLimitPhotoVc()
            //: self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection _: Int) -> UIView? {
        //: let view = UIView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: 15))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: constFormalContent, height: 15))
        //: view.backgroundColor = UIColor.clear
        view.backgroundColor = UIColor.clear
        //: return view
        return view
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForFooterInSection _: Int) -> UIView? {
        //: return UIView.init()
        return UIView()
    }
}

// MARK: - Layout

//: extension TalkingAutoGreetSettingVC {
extension StackThen {
    //: private func setupSubviews() {
    private func actionGift() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
    }

    //: private func setupSubViewsConstraint() {
    private func stopConstraint() {
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
        //: MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
        MainTable.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 36, right: 0)
    }
}
