
//: Declare String Begin

/*: "Follow" :*/
fileprivate let k_nameStr:[Character] = ["F","o","l","l","o","w"]

/*: "Tip: Can't earn points if you follow each other~" :*/
fileprivate let k_locationTitle:[UInt8] = [0x7e,0x72,0x65,0x68,0x74,0x6f,0x20,0x68,0x63,0x61,0x65,0x20,0x77,0x6f,0x6c,0x6c,0x6f,0x66,0x20,0x75,0x6f,0x79,0x20,0x66,0x69,0x20,0x73,0x74,0x6e,0x69,0x6f,0x70,0x20,0x6e,0x72,0x61,0x65,0x20,0x74,0x27,0x6e,0x61,0x43,0x20,0x3a,0x70,0x69,0x54]

/*: "Tip:" :*/
fileprivate let kViewTitle:String = "path image collectionTip:"

/*: "Favorite each other" :*/
fileprivate let k_endInnerGuardTitle:String = "Favorilet way"
fileprivate let k_frameStr:String = " otherif path"

/*: " chat will be free" :*/
fileprivate let kUserKey:String = "show for cha"
fileprivate let k_sizeNameData:String = " be self height self class let"
fileprivate let k_addStr:String = "giftee"

/*: "targetUid" :*/
fileprivate let kLabelSexMsg:String = "tacrop"
fileprivate let k_ofData:String = "data voice mode name sizeetUid"

/*: "type" :*/
fileprivate let kAttributeId:String = "typmodel"

/*: "attentionType" :*/
fileprivate let kInfoPath:[Character] = ["a","t","t","e","n","t","i","o","n","T","y","p","e"]

/*: "limit" :*/
fileprivate let kDimensionNamePath:String = "llocationmlocationt"

/*: "20" :*/
fileprivate let k_ofMessage:String = "2view"

/*: "page" :*/
fileprivate let k_picValue:String = "appge"

/*: "You've got no favourite yet." :*/
fileprivate let kLeadingUrl:String = "You\'"
fileprivate let kMakeName:String = "ot no than direction message time"
fileprivate let k_viewValue:String = "URITE"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameAtRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/13.
//

//: import JXPagingView
import JXPagingView
//: import UIKit
import UIKit

//: class TalkingAttentionVC: TalkingBaseViewController {
class NameAtRecognizerDelegate: StartThen {
    //: var pageIndex = 0
    var pageIndex = 0
    //: var DataSource: [TalkingAttentionModel] = []
    var DataSource: [KeyHandyJSON] = []

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.title = "Follow".localized
        self.title = (String(k_nameStr)).localized
        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: designView()
        nameView()
        //: reqData()
        photoValue()
    }

    // MARK: - Lazy load

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: let view = EmptyView()
        let view = EmptyView()
        //: return view
        return view
        //: }()
    }()

    //: lazy var MainTable: UITableView = {
    lazy var MainTable: UITableView = {
        //: let table = UITableView(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: UITableView.Style.plain)
        let table = UITableView(frame: CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue), style: UITableView.Style.plain)
        //: table.backgroundColor = UIColor.clear
        table.backgroundColor = UIColor.clear
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.addHeaderRefresh { [weak self] in
        table.addHeaderRefresh { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.sharedTempRefresh()
        }
        //: table.addFooterRefresh { [weak self] in
        table.addFooterRefresh { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.repay()
        }
        //: return table
        return table
        //: }()
    }()

    //: lazy var bottomView: UIView = {
    lazy var bottomView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.backgroundColor = UIColor(red: 138/255.0, green: 121/255.0, blue: 249/255.0, alpha: 0.2)
        view.backgroundColor = UIColor(red: 138 / 255.0, green: 121 / 255.0, blue: 249 / 255.0, alpha: 0.2)
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .fontChange(type: .Regular, fontSize: 15)
        label.font = .fontChange(type: .Regular, fontSize: 15)
        //: label.textColor = UIColor.appThemeColor()
        label.textColor = UIColor.increase()
        //: if DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue {
        if DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue {
            //: label.text = "Tip: Can't earn points if you follow each other~".localized
            label.text = String(bytes: k_locationTitle.reversed(), encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "Tip:\"Favorite each other\" chat will be free".localized
            label.text = getString()
        }
        //: label.numberOfLines = 0
        label.numberOfLines = 0
        //: view.addSubview(label)
        view.addSubview(label)
        //: label.snp.makeConstraints { make in
        label.snp.makeConstraints { make in
            //: make.top.equalTo(view).offset(4)
            make.top.equalTo(view).offset(4)
            //: make.bottom.equalTo(view.snp.bottom).offset(-4)
            make.bottom.equalTo(view.snp.bottom).offset(-4)
            //: make.leading.equalTo(view).offset(15)
            make.leading.equalTo(view).offset(15)
            //: make.trailing.equalTo(view.snp.trailing).offset(-15)
            make.trailing.equalTo(view.snp.trailing).offset(-15)
        }

        //: return view
        return view
        //: }()
    }()
    
    func getString() -> String {
        return (String(kViewTitle.suffix(4))) + "\"" + (String(k_endInnerGuardTitle.prefix(6)) + "te each" + String(k_frameStr.prefix(6))) + "\"" + (String(kUserKey.suffix(4)) + "t will" + String(k_sizeNameData.prefix(4)) + k_addStr.replacingOccurrences(of: "gift", with: "fr")).localized
    }
}

// MARK: - Load Data

//: extension TalkingAttentionVC {
extension NameAtRecognizerDelegate {
    //: func reqData() {
    func photoValue() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["targetUid"] = DistanceAppManager.share.loginUserMode.userID
        dict[(kLabelSexMsg.replacingOccurrences(of: "crop", with: "rg") + String(k_ofData.suffix(5)))] = DistanceAppManager.share.loginUserMode.userID
        //: dict["type"] = "1"
        dict[(kAttributeId.replacingOccurrences(of: "model", with: "e"))] = "1"
        //: dict["attentionType"] = "1"
        dict[(String(kInfoPath))] = "1"
        //: dict["limit"] = "20"
        dict[(kDimensionNamePath.replacingOccurrences(of: "location", with: "i"))] = "20"
        //: dict["page"] = String(pageIndex)
        dict[(k_picValue.replacingOccurrences(of: "app", with: "pa"))] = String(pageIndex)

        //: PlayerRequestTool.req_atationList(params: dict) { succeed, result, errorModel in
        PlayerRequestTool.permission(params: dict) { succeed, result, _ in
            //: self.MainTable.endRefresh()
            self.MainTable.fromEnd()
            //: if succeed {
            if succeed {
                //: let array: Array =  result as! Array<Any>
                let array: Array = result as! [Any]
                //: if array.count == 0 && self.pageIndex > 0 {
                if array.count == 0, self.pageIndex > 0 {
                    //: self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                    self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                }
                //: var dataArr: [TalkingAttentionModel] = []
                var dataArr: [KeyHandyJSON] = []
                //: if let datas = Array<TalkingAttentionModel>.deserialize(from: array as? Array) {
                if let datas = Array<KeyHandyJSON>.deserialize(from: array as? Array) {
                    //: dataArr.append(contentsOf: (datas as? [TalkingAttentionModel])!)
                    dataArr.append(contentsOf: (datas as? [KeyHandyJSON])!)
                }
                //: if self.pageIndex == 0 {
                if self.pageIndex == 0 {
                    //: self.DataSource = dataArr
                    self.DataSource = dataArr
                    //: if dataArr.count>0 {
                    if dataArr.count > 0 {
                        //: self.emptyView.removeFromSuperview()
                        self.emptyView.removeFromSuperview()
                    }
                    //: } else {
                } else {
                    //: self.DataSource.append(contentsOf: dataArr)
                    self.DataSource.append(contentsOf: dataArr)
                }

                //: self.MainTable.reloadData()
                self.MainTable.reloadData()
            }
        }
    }

    //: func headerRefresh() {
    func sharedTempRefresh() {
        //: MainTable.mj_header?.beginRefreshing()
        MainTable.mj_header?.beginRefreshing()
        //: pageIndex = 0
        pageIndex = 0
        //: reqData()
        photoValue()
    }

    //: func footerRefresh() {
    func repay() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        photoValue()
    }
}

// MARK: - JXPagingViewListViewDelegate

//: extension TalkingAttentionVC: JXPagingViewListViewDelegate {
extension NameAtRecognizerDelegate: JXPagingViewListViewDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self.view
        return self.view
    }

    //: func listScrollView() -> UIScrollView {
    func listScrollView() -> UIScrollView {
        //: return self.MainTable
        return self.MainTable
    }

    //: func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
    func listViewDidScrollCallback(callback _: @escaping (UIScrollView) -> Void) {}
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingAttentionVC: UITableViewDelegate, UITableViewDataSource {
extension NameAtRecognizerDelegate: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.DataSource.count
        return self.DataSource.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 76
        return 76
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = TalkingAttentionCell.className()
        let identifier = StreamViewCell.className()
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingAttentionCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? StreamViewCell
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingAttentionCell(style: .default, reuseIdentifier: identifier)
            cell = StreamViewCell(style: .default, reuseIdentifier: identifier)
        }
        //: let model: TalkingAttentionModel = self.DataSource[indexPath.row]
        let model: KeyHandyJSON = self.DataSource[indexPath.row]
        //: cell?.setCell(model: model, index: indexPath, Atype: .attention)
        cell?.showTo(model: model, index: indexPath, Atype: .attention)
        //: cell?.delegate = self
        cell?.delegate = self

        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}
}

// MARK: - ResumeAttentionDelegate

//: extension TalkingAttentionVC: AttentionDelegate {
extension NameAtRecognizerDelegate: ResumeAttentionDelegate {
    //: func cancelAtationSeleteIndex(_ index: IndexPath) {
    func touchPoint(_ index: IndexPath) {
        //: self.DataSource.remove(at: index.row)
        self.DataSource.remove(at: index.row)
        //: self.MainTable.reloadData()
        self.MainTable.reloadData()
    }

    //: func belikeAtationSeleteIndex(_ index: IndexPath) {
    func marginOfError(_: IndexPath) {}
}

// MARK: - UI

//: extension TalkingAttentionVC {
extension NameAtRecognizerDelegate {
    //: private func designView() {
    private func nameView() {
        //: var style = EmptyStyle()
        var style = RemoteEmptyStyle()
        //: style.TipsTitle = "You've got no favourite yet.".localized
        style.TipsTitle = (kLeadingUrl + "ve g" + String(kMakeName.prefix(6)) + "favo" + k_viewValue.lowercased() + " yet.").localized
        //: emptyView = EmptyView.init(frame: self.view.frame, style: style)
        emptyView = EmptyView(frame: self.view.frame, style: style)
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: emptyView.emptyBlock = {
        emptyView.emptyBlock = {
            //: self.MainTable.mj_header?.beginRefreshing()
            self.MainTable.mj_header?.beginRefreshing()
        }
        //: self.view.addSubview(bottomView)
        self.view.addSubview(bottomView)
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-(KDeviceIsIphoneX ? 34 + 49-44  : 49))
            make.bottom.equalTo(self.view.snp.bottom).offset(-(constScreenName ? 34 + 49 - 44 : 49))
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
            //: make.height.equalTo(54)
            make.height.equalTo(54)
        }
        //: bottomView.isHidden = DistanceAppManager.share.appStatus != AppSkinStatus.normal.rawValue
        bottomView.isHidden = DistanceAppManager.share.appStatus != NameQuickLookable.normal.rawValue

        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.register(TalkingAttentionCell.self, forCellReuseIdentifier: TalkingAttentionCell.className())
        MainTable.register(StreamViewCell.self, forCellReuseIdentifier: StreamViewCell.className())
        //: MainTable.separatorStyle = .none
        MainTable.separatorStyle = .none
        //: MainTable.dataSource = self
        MainTable.dataSource = self
        //: MainTable.delegate = self
        MainTable.delegate = self
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(12)
            make.top.equalTo(self.view).offset(12)
            //: make.bottom.equalTo(bottomView.snp.top)
            make.bottom.equalTo(bottomView.snp.top)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }

        //: self.view.bringSubviewToFront(emptyView)
        self.view.bringSubviewToFront(emptyView)
    }
}
