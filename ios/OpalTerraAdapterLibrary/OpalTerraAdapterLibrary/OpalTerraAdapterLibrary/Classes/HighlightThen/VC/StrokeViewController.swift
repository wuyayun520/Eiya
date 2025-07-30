
//: Declare String Begin

/*: "Fans" :*/
fileprivate let k_imageModelFormat:[Character] = ["F","a","n","s"]

/*: "Tip: Can't earn points if you follow each other~" :*/
fileprivate let kIconName:[UInt8] = [0x7e,0x72,0x65,0x68,0x74,0x6f,0x20,0x68,0x63,0x61,0x65,0x20,0x77,0x6f,0x6c,0x6c,0x6f,0x66,0x20,0x75,0x6f,0x79,0x20,0x66,0x69,0x20,0x73,0x74,0x6e,0x69,0x6f,0x70,0x20,0x6e,0x72,0x61,0x65,0x20,0x74,0x27,0x6e,0x61,0x43,0x20,0x3a,0x70,0x69,0x54]

/*: "Tip:" :*/
fileprivate let kBeautyMessage:String = "Tip:image else image error to"

/*: "Favorite each other" :*/
fileprivate let kAttentionUrl:[Character] = ["F","a","v","o","r","i","t"]
fileprivate let k_afterMsg:[Character] = ["e"," ","e"]
fileprivate let k_normalFormat:String = "ach oframe content label me model"

/*: " chat will be free" :*/
fileprivate let k_insideTitle:String = " chat device for image guard"
fileprivate let k_femaleLabelDataUrl:String = " be select up female harvest image"
fileprivate let kMainTitle:[Character] = ["f","r","e","e"]

/*: "targetUid" :*/
fileprivate let k_colorMsg:[Character] = ["t","a","r","g","e","t"]
fileprivate let kAtPath:[Character] = ["U","i","d"]

/*: "type" :*/
fileprivate let kBottomData:String = "bagpe"

/*: "limit" :*/
fileprivate let kSendViewText:String = "lnumberit"

/*: "20" :*/
fileprivate let kAddTitle:String = "2ok"

/*: "page" :*/
fileprivate let kDeletePath:[Character] = ["p","a","g","e"]

/*: "You've got no Be liked yet." :*/
fileprivate let k_voiceId:[Character] = ["Y","o","u","\'","v","e"," ","g","o","t"," ","n","o"," ","B","e"," ","l","i"]
fileprivate let k_submitUserValue:String = "ked max make to make"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  StrokeViewController.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/13.
//

//: import JXPagingView
import JXPagingView
//: import UIKit
import UIKit

//: class TalkingBeAttentionVC: TalkingBaseViewController {
class StrokeViewController: StartThen {
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
        //: self.title = "Fans"
        self.title = (String(k_imageModelFormat))
        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: designView()
        outFile()
        //: reqData()
        fact()
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
            self.nameCheck()
        }
        //: table.addFooterRefresh { [weak self] in
        table.addFooterRefresh { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.labelFlush()
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
            label.text = String(bytes: kIconName.reversed(), encoding: .utf8)!.localized
            //: } else {
        } else {
            //: label.text = "Tip:\"Favorite each other\" chat will be free".localized
            label.text = self.getString()
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
        return (String(kBeautyMessage.prefix(4))) + "\"" + (String(kAttentionUrl) + String(k_afterMsg) + String(k_normalFormat.prefix(5)) + "ther") + "\"" + (String(k_insideTitle.prefix(6)) + "will" + String(k_femaleLabelDataUrl.prefix(4)) + String(kMainTitle)).localized
    }
}

// MARK: - Load Data

//: extension TalkingBeAttentionVC {
extension StrokeViewController {
    //: func reqData() {
    func fact() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["targetUid"] = DistanceAppManager.share.loginUserMode.userID
        dict[(String(k_colorMsg) + String(kAtPath))] = DistanceAppManager.share.loginUserMode.userID
        //: dict["type"] = "2"
        dict[(kBottomData.replacingOccurrences(of: "bag", with: "ty"))] = "2"
        //: dict["limit"] = "20"
        dict[(kSendViewText.replacingOccurrences(of: "number", with: "im"))] = "20"
        //: dict["page"] = String(pageIndex)
        dict[(String(kDeletePath))] = String(pageIndex)

        //: PlayerRequestTool.req_atationList(params: dict) { succeed, result, errorModel in
        PlayerRequestTool.permission(params: dict) { succeed, result, _ in
            //: self.MainTable.endRefresh()
            self.MainTable.fromEnd()
            //: if succeed {
            if succeed {
                //: let array: Array = result as! Array<Any>
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
    func nameCheck() {
        //: MainTable.mj_header?.beginRefreshing()
        MainTable.mj_header?.beginRefreshing()
        //: pageIndex = 0
        pageIndex = 0
        //: reqData()
        fact()
    }

    //: func footerRefresh() {
    func labelFlush() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        fact()
    }
}

// MARK: - JXPagingViewListViewDelegate

//: extension TalkingBeAttentionVC: JXPagingViewListViewDelegate {
extension StrokeViewController: JXPagingViewListViewDelegate {
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

//: extension TalkingBeAttentionVC: UITableViewDelegate, UITableViewDataSource {
extension StrokeViewController: UITableViewDelegate, UITableViewDataSource {
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
        //: cell?.setCell(model: model, index: indexPath, Atype: .beLike)
        cell?.showTo(model: model, index: indexPath, Atype: .beLike)
        //: cell?.delegate = self
        cell?.delegate = self

        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt _: IndexPath) {}
}

// MARK: - ResumeAttentionDelegate

//: extension TalkingBeAttentionVC: AttentionDelegate {
extension StrokeViewController: ResumeAttentionDelegate {
    //: func cancelAtationSeleteIndex(_ index: IndexPath) {
    func touchPoint(_: IndexPath) {}

    //: func belikeAtationSeleteIndex(_ index: IndexPath) {
    func marginOfError(_ index: IndexPath) {
        //: var model = self.DataSource[index.row]
        var model = self.DataSource[index.row]
        //: model.mutualAtt = !model.mutualAtt!
        model.mutualAtt = !model.mutualAtt!
        //: self.DataSource[index.row] = model
        self.DataSource[index.row] = model
    }
}

// MARK: - UI

//: extension TalkingBeAttentionVC {
extension StrokeViewController {
    //: private func designView() {
    private func outFile() {
        //: var style = EmptyStyle()
        var style = RemoteEmptyStyle()
        //: style.TipsTitle = "You've got no Be liked yet.".localized
        style.TipsTitle = (String(k_voiceId) + String(k_submitUserValue.prefix(4)) + "yet.").localized
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
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-(KDeviceIsIphoneX ? 34 + 49 - 44 : 49))
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
