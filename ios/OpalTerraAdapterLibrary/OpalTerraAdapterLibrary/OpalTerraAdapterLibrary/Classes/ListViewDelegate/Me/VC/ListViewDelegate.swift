
//: Declare String Begin

/*: "mfBean" :*/
fileprivate let k_giftGestureKey:[UInt8] = [0x1c,0x17,0x33,0x14,0x10,0x1f]

/*: "bannerList" :*/
fileprivate let kViewKey:String = "baemptye"
fileprivate let kCenterName:String = "frame view if heightrList"

/*: "icon_me_chatsettings" :*/
fileprivate let k_onTimeLabTitle:String = "icon_view let make"
fileprivate let kMessageMsg:String = "iteme"
fileprivate let kLogMsg:String = "_chatsleft product in at route"

/*: "icon_me_automatic" :*/
fileprivate let k_readStr:[Character] = ["i","c","o","n","_","m","e","_"]
fileprivate let kConstraintId:[Character] = ["a","u","t"]
fileprivate let kDateId:String = "omtabletic"

/*: "icon_me_settings" :*/
fileprivate let kArrayMessage:[Character] = ["i","c","o","n","_","m","e","_","s"]
fileprivate let k_makeValue:String = "ettcenterngs"

/*: "icon_me_tc" :*/
fileprivate let k_landmarkPath:String = "float selficon_me"
fileprivate let k_scaleValue:String = "in manager leading raw to_tc"

/*: "icon_me_videoSet" :*/
fileprivate let k_viewAcceptTitle:String = "remove bubble view case timeicon_"
fileprivate let k_cellMessage:String = "component input fromideoSet"

/*: "icon_me_bs" :*/
fileprivate let kAppStr:String = "icon_super image"
fileprivate let kChangeTimeMsg:[Character] = ["m","e","_","b","s"]

/*: "Enter " :*/
fileprivate let k_modelMessage:String = "Enter let male string name"

/*: "Settings" :*/
fileprivate let kStopName:String = "player groupSettings"

/*: " and open " :*/
fileprivate let kManagerStr:String = " and opmake count frame color"
fileprivate let k_modeName:String = "en skin m in var to"

/*: "Camera" :*/
fileprivate let kRankFormat:String = "c"
fileprivate let kTitleValue:String = "amebirtha"

/*: " permission to use this function normally" :*/
fileprivate let kManagerPath:[UInt8] = [0x79,0x6c,0x6c,0x61,0x6d,0x72,0x6f,0x6e,0x20,0x6e,0x6f,0x69,0x74,0x63,0x6e,0x75,0x66,0x20,0x73,0x69,0x68,0x74,0x20,0x65,0x73,0x75,0x20,0x6f,0x74,0x20,0x6e,0x6f,0x69,0x73,0x73,0x69,0x6d,0x72,0x65,0x70,0x20]

/*: "Cancel" :*/
fileprivate let k_messageKey:String = "Canceright error comment user number"
fileprivate let k_actionTitle:String = "on"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ListViewDelegate.swift
//  AbroadTalking
//
//  Created by young on 2023/4/25.
//

//: import UIKit
import UIKit

//: class TalkingMeViewController: TalkingBaseViewController {
class ListViewDelegate: StartThen {
    //: private var tupleData = [(CenterItemType, String)]()
    private var tupleData = [(CaptureTextProtocol, String)]()
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = UIColor.postColor()
        self.view.backgroundColor = UIColor.postColor()
        //: reloadLocalData()
        equivalent()
        //: func__reqBanner()
        vacantBanner()
        //: setupSubviews()
        pastMessage()
        //: setupSubViewsConstraint()
        characterization()

        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(pushEdit),
                                               selector: #selector(writtenRecord),
                                               //: name: PUSH_MEEDIT_NOTIFICATION,
                                               name: show_barVoiceClickTitle,
                                               //: object: nil)
                                               object: nil)
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(func__requestUserInfo),
                                               selector: #selector(userOrientation),
                                               //: name: USER_UPDATE_LOUNGEPLUSINFO_NOTIFICATION,
                                               name: main_infoSessionName,
                                               //: object: nil)
                                               object: nil)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: func__requestUserInfo()
        userOrientation()
    }

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    // MARK: - Lazy Load

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: .plain)
        let table = UITableView(frame: .zero, style: .plain)
        //: table.backgroundColor = .clear
        table.backgroundColor = .clear
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.tableHeaderView = UIView()
        table.tableHeaderView = UIView()
        //: table.sectionHeaderHeight = 0
        table.sectionHeaderHeight = 0
        //: table.sectionFooterHeight = 0
        table.sectionFooterHeight = 0
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
        //: table.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 12, right: 0)
        table.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 12, right: 0)
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: if #available(iOS 15.0, *) {
            if #available(iOS 15.0, *) {
                //: UITableView.appearance().sectionHeaderTopPadding = 0
                UITableView.appearance().sectionHeaderTopPadding = 0
            }
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.className())
        table.register(UITableViewCell.self, forCellReuseIdentifier: UITableViewCell.className())
        //: table.register(TalkingMeTopCell.self, forCellReuseIdentifier: TalkingMeTopCell.className())
        table.register(UserPullTopCell.self, forCellReuseIdentifier: UserPullTopCell.className())
        //: table.register(TalkingMeBannerCell.self, forCellReuseIdentifier: TalkingMeBannerCell.className())
        table.register(CaptureView.self, forCellReuseIdentifier: CaptureView.className())
        //: table.register(TalkingMeTwoColumnsCell.self, forCellReuseIdentifier: TalkingMeTwoColumnsCell.className())
        table.register(DisplayThen.self, forCellReuseIdentifier: DisplayThen.className())
        //: table.register(TalkingMeThreeColumnsCell.self, forCellReuseIdentifier: TalkingMeThreeColumnsCell.className())
        table.register(EndViewDelegate.self, forCellReuseIdentifier: EndViewDelegate.className())
        //: table.register(TalkingUserCenterCell.self, forCellReuseIdentifier: TalkingUserCenterCell.className())
        table.register(BreakReactiveCompatible.self, forCellReuseIdentifier: BreakReactiveCompatible.className())
        //: table.addHeaderRefresh { [weak self] in
        table.addHeaderRefresh { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.headerRefresh()
            self.momentum()
        }
        //: return table
        return table
        //: }()
    }()

    //: lazy var bannerListData: [SocialAdBannerModel] = {
    lazy var bannerListData: [AdMeasurable] = //: return Array<AdMeasurable>()
        .init()
    //: }()
}

// MARK: - Request

//: extension TalkingMeViewController {
extension ListViewDelegate {
    /// 下拉刷新
    //: private func headerRefresh() {
    private func momentum() {
        //: tableView.mj_header?.beginRefreshing()
        tableView.mj_header?.beginRefreshing()
        //: func__requestUserInfo()
        userOrientation()
    }

    /// 刷新个人资料接口
    //: @objc private func func__requestUserInfo() {
    @objc private func userOrientation() {
        //: AppManagerRequest.func__requestUserInfo { succeed, result, errorModel in
        ModelThen.applicationCompletion { _, _, _ in
            //: self.reloadLocalData()
            self.equivalent()
            //: self.tableView.endRefresh()
            self.tableView.fromEnd()
            //: self.tableView.reloadData()
            self.tableView.reloadData()

            //: if TalkingLiveManager.shared().isLive {
            if ValueThen.kindShared().isLive {
                //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": 0.0])
                NotificationCenter.default.post(name: app_userText, object: nil, userInfo: [String(bytes: k_giftGestureKey.map{$0^113}, encoding: .utf8)!: 0.0])
            }
        }
    }

    /// banner
    //: func func__reqBanner() {
    func vacantBanner() {
        //: SocialRequestManager.init().req_adBanner(position: 2) { [weak self] succeed, result, errorModel in
        SumRequestManager().prolusion(position: 2) { [weak self] _, result, _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard let result = result as? Dictionary<String, Any> else {
            guard let result = result as? [String: Any] else {
                //: return
                return
            }
            //: let array = JSON(result["bannerList"] ?? []).arrayValue
            let array = JSON(result[(kViewKey.replacingOccurrences(of: "empty", with: "nn") + String(kCenterName.suffix(5)))] ?? []).arrayValue
            //: self.bannerListData.removeAll()
            self.bannerListData.removeAll()
            //: for dict in array {
            for dict in array {
                //: if let model = SocialAdBannerModel.deserialize(from: dict.dictionaryObject) {
                if let model = AdMeasurable.deserialize(from: dict.dictionaryObject) {
                    //: self.bannerListData.append(model)
                    self.bannerListData.append(model)
                }
            }
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
    }

    /// 重载本地数据
    //: private func reloadLocalData() {
    private func equivalent() {
        //: if DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue && DistanceAppManager.share.appStatus != AppSkinStatus.special.rawValue {
        if DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue, DistanceAppManager.share.appStatus != NameQuickLookable.special.rawValue { // 女性 && 非审核模式
            //: tupleData = [(.My_Chat_Settings, "icon_me_chatsettings"),
            tupleData = [(.My_Chat_Settings, (String(k_onTimeLabTitle.prefix(5)) + kMessageMsg.replacingOccurrences(of: "item", with: "m") + String(kLogMsg.prefix(6)) + "ettings")),
                         //: (.My_Automatic, "icon_me_automatic"),
                         (.My_Automatic, (String(k_readStr) + String(kConstraintId) + kDateId.replacingOccurrences(of: "table", with: "a"))),
                         //: (.My_Settings, "icon_me_settings")]
                         (.My_Settings, (String(kArrayMessage) + k_makeValue.replacingOccurrences(of: "center", with: "i")))]

            //: } else {
        } else {
            //: tupleData = [(.My_Settings, "icon_me_settings")]
            tupleData = [(.My_Settings, (String(kArrayMessage) + k_makeValue.replacingOccurrences(of: "center", with: "i")))]
        }
        //: if DistanceAppManager.share.appUserConfigMode.showTaskCenter {
        if DistanceAppManager.share.appUserConfigMode.showTaskCenter {
            //: tupleData.insert((.Task_Center, "icon_me_tc"), at: 0)
            tupleData.insert((.Task_Center, (String(k_landmarkPath.suffix(7)) + String(k_scaleValue.suffix(3)))), at: 0)
        }
        //: if DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue {
        if DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue {
            //: tupleData.insert((.My_VideoSetting, "icon_me_videoSet"), at: tupleData.count-1)
            tupleData.insert((.My_VideoSetting, (String(k_viewAcceptTitle.suffix(5)) + "me_v" + String(k_cellMessage.suffix(7)))), at: tupleData.count - 1)
            //: } else {
        } else {
            //: if SenseTime_Use && tupleData.count > 0 {
            if mainUserValue, tupleData.count > 0 {
                //: tupleData.insert((.My_Beautify, "icon_me_bs"), at: tupleData.count-1)
                tupleData.insert((.My_Beautify, (String(kAppStr.prefix(5)) + String(kChangeTimeMsg))), at: tupleData.count - 1)
            }
        }
    }
}

//: extension TalkingMeViewController {
extension ListViewDelegate {
    //: @objc func pushEdit() {
    @objc func writtenRecord() {
        //: let editvc = TalkingEditProfilesVC()
        let editvc = FatalProfilesVc()
        //: self.navigationController?.pushViewController(editvc, animated: true)
        self.navigationController?.pushViewController(editvc, animated: true)
    }

    func showAlert() -> String {
        return (String(k_modelMessage.prefix(6))) + "\"" + (String(kStopName.suffix(8))) + "\"" + (String(kManagerStr.prefix(7)) + String(k_modeName.prefix(3))) + "\"" + (kRankFormat.uppercased() + kTitleValue.replacingOccurrences(of: "birth", with: "r")) + "\"" + String(bytes: kManagerPath.reversed(), encoding: .utf8)!.localized
    }
    
    //: func judgeCameraAuthorization() {
    func invite() {
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
                FrameHiddenReactiveCompatible.theory(title: nil, message: self.showAlert(), leftBtnTitle: (String(k_messageKey.prefix(5)) + k_actionTitle.replacingOccurrences(of: "on", with: "l")).localized, rightBtnTitle: (String(kStopName.suffix(8))).localized) {
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
                        //: if #available(iOS 10, *) {
                        if #available(iOS 10, *) {
                            //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                            UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                            //: } else {
                        } else {
                            //: UIApplication.shared.openURL(url!)
                            UIApplication.shared.openURL(url!)
                        }
                    }
                }
            }
        }
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingMeViewController: UITableViewDelegate, UITableViewDataSource {
extension ListViewDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 2
        return 2
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        //: if section == 0 {
        if section == 0 {
            //: return 4
            return 4
        }
        //: return tupleData.count
        return tupleData.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: guard indexPath.section == 0 else {
        guard indexPath.section == 0 else {
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingUserCenterCell.className(), for: indexPath) as! TalkingUserCenterCell
            let cell = tableView.dequeueReusableCell(withIdentifier: BreakReactiveCompatible.className(), for: indexPath) as! BreakReactiveCompatible
            //: let data = tupleData[indexPath.row]
            let data = tupleData[indexPath.row]
            //: let isLast = tupleData.count == (indexPath.row+1)
            let isLast = tupleData.count == (indexPath.row + 1)
            //: cell.setViewData(title: data.0.rawValue, icon: data.1, row: indexPath.row, isLast: isLast)
            cell.geologicalFormation(title: data.0.rawValue, icon: data.1, row: indexPath.row, isLast: isLast)
            //: if data.0 ==  .Task_Center {
            if data.0 == .Task_Center {
                //: cell.setTaskCenterBtn()
                cell.caravanQuickPoliticalUnitBtn()
            }
            //: return cell
            return cell
        }

        //: switch(indexPath.row) {
        switch indexPath.row {
        //: case 0:
        case 0:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeTopCell.className(), for: indexPath) as! TalkingMeTopCell
            let cell = tableView.dequeueReusableCell(withIdentifier: UserPullTopCell.className(), for: indexPath) as! UserPullTopCell
            //: cell.setViewData()
            cell.receiveSuccess()
            //: return cell
            return cell
        //: case 1:
        case 1:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeBannerCell.className(), for: indexPath) as! TalkingMeBannerCell
            let cell = tableView.dequeueReusableCell(withIdentifier: CaptureView.className(), for: indexPath) as! CaptureView
            //: cell.setViewData(bannerData: self.bannerListData)
            cell.stopResource(bannerData: self.bannerListData)
            //: return cell
            return cell
        //: case 2:
        case 2:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeTwoColumnsCell.className(), for: indexPath) as! TalkingMeTwoColumnsCell
            let cell = tableView.dequeueReusableCell(withIdentifier: DisplayThen.className(), for: indexPath) as! DisplayThen
            //: cell.setViewData()
            cell.towardFirst()
            //: return cell
            return cell
        //: case 3:
        case 3:
            //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingMeThreeColumnsCell.className(), for: indexPath) as! TalkingMeThreeColumnsCell
            let cell = tableView.dequeueReusableCell(withIdentifier: EndViewDelegate.className(), for: indexPath) as! EndViewDelegate
            //: cell.setViewData()
            cell.putDownData()
            //: return cell
            return cell

        //: default:
        default:
            //: break
            break
        }

        //: let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.className(), for: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: UITableViewCell.className(), for: indexPath)
        //: cell.backgroundColor = .clear
        cell.backgroundColor = .clear
        //: cell.selectionStyle = .none
        cell.selectionStyle = .none
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: if indexPath.section == 0 && indexPath.row == 1 && self.bannerListData.count <= 0 {
        if indexPath.section == 0 && indexPath.row == 1 && self.bannerListData.count <= 0 {
            //: return 0
            return 0
        }
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, estimatedHeightForRowAt _: IndexPath) -> CGFloat {
        //: return 80
        return 80
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: guard indexPath.section == 1 else { return }
        guard indexPath.section == 1 else { return }
        //: let data = tupleData[indexPath.row]
        let data = tupleData[indexPath.row]
        //: switch data.0 {
        switch data.0 {
        //: case .My_Chat_Settings:
        case .My_Chat_Settings:
            //: let vc = TalkingFemalePriceSetVC()
            let vc = TouchModeDataSource()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .My_Automatic:
        case .My_Automatic:
            //: let vc = TalkingAutoGreetSettingVC()
            let vc = StackThen()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .My_Settings:
        case .My_Settings:
            //: let vc = TalkingSettingsVC()
            let vc = FirstRecognizerDelegate()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: case .Task_Center:
        case .Task_Center:
            //: AddReactiveCompatible.share.func__pushToWebVC(webViewType: .TaskCenter)
            AddReactiveCompatible.share.overCapacity(webViewType: .TaskCenter)

        //: case .My_Beautify:
        case .My_Beautify:
            //: judgeCameraAuthorization()
            invite()

        //: case .My_VideoSetting:
        case .My_VideoSetting:
            //: let vc = TalkingVideoSettingsVC.init()
            let vc = ViewSettingsVc()
            //: navigationController?.pushViewController(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)

        //: default: break
        default: break
        }
    }
}

// MARK: - Layout

//: extension TalkingMeViewController {
extension ListViewDelegate {
    /// 添加视图
    //: private func setupSubviews() {
    private func pastMessage() {
        //: self.view.addSubview(tableView)
        self.view.addSubview(tableView)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func characterization() {
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }
}
