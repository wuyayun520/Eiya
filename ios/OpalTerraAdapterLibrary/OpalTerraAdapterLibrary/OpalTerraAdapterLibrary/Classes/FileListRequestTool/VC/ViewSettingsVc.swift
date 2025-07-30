
//: Declare String Begin

/*: "Beautify Settings" :*/
fileprivate let kIndexTitle:[Character] = ["B","e","a","u","t","i","f","y"," ","S","e","t","t","i","n","g","s"]

/*: "icon_me_videoSet_beauty" :*/
fileprivate let k_quoteMessage:String = "effect var self inicon_m"
fileprivate let kStartCompleteKey:String = "eoSet_beaskin comment"
fileprivate let kToPathTitle:[Character] = ["u","t","y"]

/*: "Video Settings" :*/
fileprivate let kAppAddClickUrl:[Character] = ["V","i","d","e","o"," ","S","e"]
fileprivate let kUserMsg:[Character] = ["t","t","i","n","g","s"]

/*: "Enter " :*/
fileprivate let kCurrentValue:[Character] = ["E","n","t","e","r"," "]

/*: "Settings" :*/
fileprivate let k_clickVideoName:String = "title let listSe"
fileprivate let kSexPath:String = "TTINGS"

/*: " and open " :*/
fileprivate let kStrengthUrl:[Character] = [" ","a","n","d"]
fileprivate let k_managerAppFormat:String = "var language view self open "

/*: "Camera" :*/
fileprivate let kConvertStr:String = "color self view selfCamera"

/*: " permission to use this function normally" :*/
fileprivate let k_addTitle:[UInt8] = [0x79,0x6c,0x6c,0x61,0x6d,0x72,0x6f,0x6e,0x20,0x6e,0x6f,0x69,0x74,0x63,0x6e,0x75,0x66,0x20,0x73,0x69,0x68,0x74,0x20,0x65,0x73,0x75,0x20,0x6f,0x74,0x20,0x6e,0x6f,0x69,0x73,0x73,0x69,0x6d,0x72,0x65,0x70,0x20]

/*: "Cancel" :*/
fileprivate let k_submitName:String = "manager"
fileprivate let k_dataName:[Character] = ["a","n","c","e","l"]

/*: "Purple means turn on the call invitation, grey means turn off the call invitation." :*/
fileprivate let k_constraintData:[UInt8] = [0x32,0x17,0x10,0x12,0xe,0x7,0x42,0xf,0x7,0x3,0xc,0x11,0x42,0x16,0x17,0x10,0xc,0x42,0xd,0xc,0x42,0x16,0xa,0x7,0x42,0x1,0x3,0xe,0xe,0x42,0xb,0xc,0x14,0xb,0x16,0x3,0x16,0xb,0xd,0xc,0x4e,0x42,0x5,0x10,0x7,0x1b,0x42,0xf,0x7,0x3,0xc,0x11,0x42,0x16,0x17,0x10,0xc,0x42,0xd,0x4,0x4,0x42,0x16,0xa,0x7,0x42,0x1,0x3,0xe,0xe,0x42,0xb,0xc,0x14,0xb,0x16,0x3,0x16,0xb,0xd,0xc,0x4c]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewSettingsVc.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/10/25.
//

//: import UIKit
import UIKit

//: class TalkingVideoSettingsVC: TalkingBaseViewController {
class ViewSettingsVc: StartThen {
    // MARK: - life cycle

    //: private var headerData = [("Beautify Settings", "icon_me_videoSet_beauty"),
    private var headerData = [((String(kIndexTitle)), (String(k_quoteMessage.suffix(6)) + "e_vid" + String(kStartCompleteKey.prefix(9)) + String(kToPathTitle))),
                              //: ("", ""),
                              ("", ""),
                              //: ("", "")]
                              ("", "")]

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.view.backgroundColor = UIColor.postColor()
        self.view.backgroundColor = UIColor.postColor()
        //: self.title = "Video Settings".localized
        self.title = (String(kAppAddClickUrl) + String(kUserMsg)).localized
        //: self.setupSubviews()
        self.subviewsInfo()
        //: self.setupSubViewsConstraint()
        self.selected()
    }

    // MARK: - Lazy load

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: .zero, style: .grouped)
        let table = UITableView(frame: .zero, style: .grouped)
        //: table.backgroundColor = UIColor.postColor()
        table.backgroundColor = UIColor.postColor()
        //: table.register(TalkingSettingReceiveVideoCell.self, forCellReuseIdentifier: TalkingSettingReceiveVideoCell.className())
        table.register(SceneViewCell.self, forCellReuseIdentifier: SceneViewCell.className())
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

// MARK: - private methods

//: extension TalkingVideoSettingsVC {
extension ViewSettingsVc {
    func getListStr() -> String {
        return (String(kCurrentValue)) + "\"" + (String(k_clickVideoName.suffix(2)) + kSexPath.lowercased()) + "\"" + (String(kStrengthUrl) + String(k_managerAppFormat.suffix(6))) + "\"" + (String(kConvertStr.suffix(6))) + "\"" + String(bytes: k_addTitle.reversed(), encoding: .utf8)!.localized
    }
    
    //: func judgeCameraAuthorization() {
    func result() {
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { (isOpen: Bool) in
        ToolThen.represent(false) { (isOpen: Bool) in
            //: if isOpen {
            if isOpen {
                //: guard TalkingSocketManager.shared.isSpace == false else {
                guard ListSocketManager.shared.isSpace == false else {
                    //: self.func__showStatusBarErrorMsg(showMsg: kMessage_videoTalking_limit)
                    self.arcInfo(showMsg: kTopReplaceHeightData)
                    //: return
                    return
                }
                //: let vc = TalkingMyBeautyVC()
                let vc = EqualViewController()
                //: self.navigationController?.pushViewController(vc, animated: true)
                self.navigationController?.pushViewController(vc, animated: true)
                //: } else {
            } else {
                //: TalkingAlertShow.alert(title: nil, message: "Enter \"Settings\" and open \"Camera\" permission to use this function normally".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Settings".localized) {
                FrameHiddenReactiveCompatible.theory(title: nil, message: self.getListStr(), leftBtnTitle: (k_submitName.replacingOccurrences(of: "manager", with: "C") + String(k_dataName)).localized, rightBtnTitle: (String(k_clickVideoName.suffix(2)) + kSexPath.lowercased()).localized) {
                    //: TalkingAlertShow.hideAlert()
                    FrameHiddenReactiveCompatible.middleText()
                    //: } rightBlock: {
                } rightBlock: {
                    //: TalkingAlertShow.hideAlert()
                    FrameHiddenReactiveCompatible.middleText()
                    //: let url = URL(string: UIApplication.openSettingsURLString)
                    let url = URL(string: UIApplication.openSettingsURLString)
                    //: if  UIApplication.shared.canOpenURL(url!) {
                    if UIApplication.shared.canOpenURL(url!) {
                        //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                        UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                    }
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingVideoSettingsVC: UITableViewDelegate, UITableViewDataSource {
extension ViewSettingsVc: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return headerData.count
        return headerData.count
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 0
            return 0
            //: } else if section == 1 {
        } else if section == 1 {
            //: return 2
            return 2
            //: } else if section == 2 {
        } else if section == 2 {
            //: return 1
            return 1
        }
        //: return 0
        return 0
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 1 || indexPath.section == 2 {
        if indexPath.section == 1 || indexPath.section == 2 {
            //: return 65
            return 65
        }
        //: return 0
        return 0
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        //: if (section == 0 && SenseTime_Use) {
        if section == 0 && mainUserValue {
            //: return 75
            return 75
        }
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        //: if section == 1 {
        if section == 1 {
            //: return actualWidth(w: 50.0)
            return actualWidth(w: 50.0)
        }
        //: return 0.01
        return 0.01
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: if indexPath.section == 1 || indexPath.section == 2 {
        if indexPath.section == 1 || indexPath.section == 2 {
            //: let cell: TalkingSettingReceiveVideoCell = tableView.dequeueReusableCell(withIdentifier: TalkingSettingReceiveVideoCell.className(), for: indexPath) as! TalkingSettingReceiveVideoCell
            let cell: SceneViewCell = tableView.dequeueReusableCell(withIdentifier: SceneViewCell.className(), for: indexPath) as! SceneViewCell
            //: if indexPath.section == 1 {
            if indexPath.section == 1 {
                //: if indexPath.row == 0 {
                if indexPath.row == 0 {
                    //: cell.refreshCell(type: .video)
                    cell.graduatedTable(type: .video)
                    //: } else if indexPath.row == 1 {
                } else if indexPath.row == 1 {
                    //: cell.refreshCell(type: .voice)
                    cell.graduatedTable(type: .voice)
                }
                //: } else if indexPath.section == 2 {
            } else if indexPath.section == 2 {
                //: cell.refreshCell(type: .randomVideo)
                cell.graduatedTable(type: .randomVideo)
            }
            //: return cell
            return cell
        }

        //: return UITableViewCell()
        return UITableViewCell()
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: guard (section == 0 && SenseTime_Use) else { return nil }
        guard section == 0 && mainUserValue else { return nil }
        //: let headeView: TalkingVideoSettingHeaderCell = TalkingVideoSettingHeaderCell.init(style: .default, reuseIdentifier: nil)
        let headeView = MenuResumeReactiveCompatible(style: .default, reuseIdentifier: nil)
        //: let data = self.headerData[section]
        let data = self.headerData[section]
        //: headeView.setViewData(title: data.0, icon: data.1)
        headeView.arrayAll(title: data.0, icon: data.1)
        //: if section == 0 {
        if section == 0 {
            //: headeView.setTips(isHidden: true)
            headeView.move(isHidden: true)
        }
        //: headeView.touchBlock = { [weak self] in
        headeView.touchBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: if section == 0 && SenseTime_Use {
            if section == 0 && mainUserValue {
                //: self.judgeCameraAuthorization()
                self.result()
            }
        }
        //: return headeView
        return headeView
    }

    //: func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForFooterInSection section: Int) -> UIView? {
        //: guard section == 1 else { return UIView() }
        guard section == 1 else { return UIView() }
        //: let view = UIView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: actualWidth(w: 50.0)))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: constFormalContent, height: actualWidth(w: 50.0)))
        //: view.backgroundColor = UIColor.postColor()
        view.backgroundColor = UIColor.postColor()
        //: let title = UILabel()
        let title = UILabel()
        //: title.backgroundColor = UIColor.clear
        title.backgroundColor = UIColor.clear
        //: title.font = UIFont.pingfangRugularFont(fontSize: 14)
        title.font = UIFont.targetFor(fontSize: 14)
        //: title.textColor = UIColor.appValueDetailColor()
        title.textColor = UIColor.childMenu()
        //: title.text = "Purple means turn on the call invitation, grey means turn off the call invitation.".localized
        title.text = String(bytes: k_constraintData.map{$0^98}, encoding: .utf8)!.localized
        //: title.numberOfLines = 0
        title.numberOfLines = 0
        //: title.textAlignment = .center
        title.textAlignment = .center
        //: view.addSubview(title)
        view.addSubview(title)
        //: title.snp.makeConstraints { make in
        title.snp.makeConstraints { make in
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.trailing.equalTo(-15)
            make.trailing.equalTo(-15)
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
        }
        //: return view
        return view
    }
}

// MARK: - Layout

//: extension TalkingVideoSettingsVC {
extension ViewSettingsVc {
    /// 添加视图
    //: private func setupSubviews() {
    private func subviewsInfo() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func selected() {
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
