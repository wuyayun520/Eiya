
//: Declare String Begin

/*: "page" :*/
fileprivate let kBetweenInfoErrorMsg:String = "pagcollection"

/*: "list" :*/
fileprivate let kTopPath:String = "llinet"

/*: "badNumber" :*/
fileprivate let k_intervalPath:[UInt8] = [0x4c,0x4f,0x4a,0x60,0x5b,0x43,0x4c,0x4b,0x5c]

private func clearTitle(shared num: UInt8) -> UInt8 {
    return num ^ 46
}

/*: "You've got no like yet." :*/
fileprivate let k_beforeStr:[Character] = ["Y","o","u","\'","v","e"," ","g","o","t"," ","n","o"," ","l","i","k","e"," ","y","e","t","."]

/*: "icon_kong_kong_default" :*/
fileprivate let kBottomMsg:String = "icocrush"
fileprivate let kManagerMessage:String = "gift selfg_kon"
fileprivate let k_nameData:String = "go titleg_de"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameRecognizerDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/12.
//

//: import UIKit
import UIKit

//: class TalkingWhoLikeViewController: TalkingBaseViewController {
class NameRecognizerDelegate: StartThen {
    //: var pageIndex = 0
    var pageIndex = 0
    //: var DataSource: [TalkingWhoLikeMeModel] = []
    var DataSource: [AppMeasurable] = []
    //: var number = 0
    var number = 0
    //: var isdeleteEnd = false
    var isdeleteEnd = false

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = UIColor.clear
        self.view.backgroundColor = UIColor.clear
        //: designView()
        skullSession()
        //: reqData()
        passePartout()
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
        //: table.register(TalkingWhoLikeCell.self, forCellReuseIdentifier: TalkingWhoLikeCell.className())
        table.register(VideoTitleViewCell.self, forCellReuseIdentifier: VideoTitleViewCell.className())
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.dataSource = self
        table.dataSource = self
        //: table.delegate = self
        table.delegate = self
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
            self.headerToRefresh()
        }
        //: table.addFooterRefresh { [weak self] in
        table.addFooterRefresh { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.toRefresh()
        }
        //: return table
        return table
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingWhoLikeViewController {
extension NameRecognizerDelegate {
    //: func reqData() {
    func passePartout() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["page"] = pageIndex
        dict[(kBetweenInfoErrorMsg.replacingOccurrences(of: "collection", with: "e"))] = pageIndex

        //: PlayerRequestTool.req_whoLikeMeList(params: dict) { succeed, result, errorModel in
        PlayerRequestTool.listTo(params: dict) { succeed, result, _ in
            //: self.MainTable.endRefresh()
            self.MainTable.fromEnd()
            //: if succeed {
            if succeed {
                //: let dict: Dictionary =  result as! Dictionary<String, Any>
                let dict: Dictionary = result as! [String: Any]
                //: let array: Array =  dict["list"] as! Array<Any>
                let array: Array = dict[(kTopPath.replacingOccurrences(of: "line", with: "is"))] as! [Any]
                //: if array.count == 0 {
                if array.count == 0 {
                    //: if self.pageIndex > 0 {
                    if self.pageIndex > 0 {
                        //: self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                        self.MainTable.mj_footer?.endRefreshingWithNoMoreData()
                        //: self.MainTable.mj_footer?.isHidden = true
                        self.MainTable.mj_footer?.isHidden = true
                    }
                    //: if self.DataSource.count == 0 &&  self.isdeleteEnd {
                    if self.DataSource.count == 0, self.isdeleteEnd {
                        //: self.setemptyView()
                        self.behindValue()
                    }
                }
                //: var dataArr: [TalkingWhoLikeMeModel] = []
                var dataArr: [AppMeasurable] = []
                //: if let datas = Array<TalkingWhoLikeMeModel>.deserialize(from: array as? Array) {
                if let datas = Array<AppMeasurable>.deserialize(from: array as? Array) {
                    //: dataArr.append(contentsOf: (datas as? [TalkingWhoLikeMeModel])!)
                    dataArr.append(contentsOf: (datas as? [AppMeasurable])!)
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
    func headerToRefresh() {
        //: MainTable.mj_header?.beginRefreshing()
        MainTable.mj_header?.beginRefreshing()
        //: pageIndex = 0
        pageIndex = 0
        //: reqData()
        passePartout()
    }

    //: func footerRefresh() {
    func toRefresh() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        passePartout()
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingWhoLikeViewController: UITableViewDelegate, UITableViewDataSource {
extension NameRecognizerDelegate: UITableViewDelegate, UITableViewDataSource {
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
        //: return UITableView.automaticDimension
        return UITableView.automaticDimension
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let identifier = TalkingWhoLikeCell.className()
        let identifier = VideoTitleViewCell.className()
        //: var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TalkingWhoLikeCell
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? VideoTitleViewCell
        //: if cell == nil {
        if cell == nil {
            //: cell = TalkingWhoLikeCell(style: .default, reuseIdentifier: identifier)
            cell = VideoTitleViewCell(style: .default, reuseIdentifier: identifier)
        }
        //: let model: TalkingWhoLikeMeModel = self.DataSource[indexPath.row]
        let model: AppMeasurable = self.DataSource[indexPath.row]
        //: cell?.setCell(model: model, index: indexPath)
        cell?.putInsideMarginOfSafetyIndex(model: model, index: indexPath)
        //: cell?.delegate = self
        cell?.delegate = self
        //: return cell!
        return cell!
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let model: TalkingWhoLikeMeModel = self.DataSource[indexPath.row]
        let model: AppMeasurable = self.DataSource[indexPath.row]
        //: AddReactiveCompatible.share.func__pushToUserDetailVC(uid: model.uid)
        AddReactiveCompatible.share.afterTo(uid: model.uid)
    }
}

// MARK: - DoingReactiveCompatible

//: extension TalkingWhoLikeViewController: WhoLikeDelegate {
extension NameRecognizerDelegate: DoingReactiveCompatible {
    //: func quickGreetingSeleteIndex(_ index: IndexPath) {
    func aLaCarte(_ index: IndexPath) {
        //: self.DataSource.remove(at: index.row)
        self.DataSource.remove(at: index.row)
        //: MainTable.reloadData()
        MainTable.reloadData()
        //: if self.DataSource.count==0 {
        if self.DataSource.count == 0 {
            //: self.isdeleteEnd = true
            self.isdeleteEnd = true
            //: pageIndex = 0
            pageIndex = 0
            //: reqData()
            passePartout()
        }
        //: number -= 1
        number -= 1
        //: NotificationCenter.default.post(name: WHOLIKEME_BADGENUMBER_NOTIF, object: self, userInfo: ["badNumber": (number)])
        NotificationCenter.default.post(name: notiVideoValue, object: self, userInfo: [String(bytes: k_intervalPath.map{clearTitle(shared: $0)}, encoding: .utf8)!: number])
    }

    //: func likeSeleteIndex(_ index: IndexPath) {
    func groupIndex(_ index: IndexPath) {
        //: quickGreetingSeleteIndex(index)
        aLaCarte(index)
    }
}

// MARK: - UI

//: extension TalkingWhoLikeViewController {
extension NameRecognizerDelegate {
    //: private func designView() {
    private func skullSession() {
        //: self.view.addSubview(MainTable)
        self.view.addSubview(MainTable)
        //: MainTable.snp.makeConstraints { make in
        MainTable.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(12)
            make.top.equalTo(self.view).offset(12)
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }
        //: setemptyView()
        behindValue()
    }

    //: func setemptyView() {
    func behindValue() {
        //: self.emptyView.removeFromSuperview()
        self.emptyView.removeFromSuperview()
        //: var style = EmptyStyle()
        var style = RemoteEmptyStyle()
        //: style.TipsTitle = "You've got no like yet.".localized
        style.TipsTitle = (String(k_beforeStr)).localized
        //: style.TipsIcon = "icon_kong_kong_default"
        style.TipsIcon = (kBottomMsg.replacingOccurrences(of: "crush", with: "n") + "_kon" + String(kManagerMessage.suffix(5)) + String(k_nameData.suffix(4)) + "fault")
        //: self.emptyView = EmptyView.init(frame: CGRect.init(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight), style: style)
        self.emptyView = EmptyView(frame: CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue), style: style)
        //: self.view.addSubview(self.emptyView)
        self.view.addSubview(self.emptyView)
        //: self.view.bringSubviewToFront(self.emptyView)
        self.view.bringSubviewToFront(self.emptyView)
        //: self.emptyView.emptyBlock = {
        self.emptyView.emptyBlock = {
            //: self.MainTable.mj_header?.beginRefreshing()
            self.MainTable.mj_header?.beginRefreshing()
        }
    }
}
