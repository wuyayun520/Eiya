
//: Declare String Begin

/*: "#F4F6FA" :*/
fileprivate let k_dataConStr:[Character] = ["#","F","4","F","6","F"]
fileprivate let kStyleCenterMessage:String = "live"

/*: "You've got no list yet." :*/
fileprivate let k_succeedMakeFormat:[Character] = ["Y","o","u","\'","v","e"," ","g","o","t"," ","n","o"," ","l","i","s","t"," ","y","e","t","."]

/*: "page" :*/
fileprivate let k_voiceMessage:[Character] = ["p","a","g","e"]

/*: "limit" :*/
fileprivate let k_sectionUrl:[Character] = ["l","i","m","i","t"]

/*: "20" :*/
fileprivate let kProgressStr:String = "2title"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  GopViewControllerDataSource.swift
//  OpalTerraAdapterLibrary
//
//  Created by Hemming on 2024/9/24.
//

//: import UIKit
import UIKit

//: class PartyListViewController: TalkingBaseViewController {
class GopViewControllerDataSource: StartThen {
    //: var pageIndex = 0
    var pageIndex = 0
    //: var dataArr: [PartyListModel] = []
    var dataArr: [WithListModel] = []
    //: var scrollback: ScrollCallback?
    var scrollback: ScrollCallback?

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: setupSubviews()
        subviewsWith()
        //: setupSubViewsConstraint()
        withDrop()
        //: bindInteraction()
        pathTotaleraction()
        //: reqData()
        listing()
    }

    //: lazy var tableView: UITableView = {
    lazy var tableView: UITableView = {
        //: let tableView = UITableView.init(frame: .zero, style: .plain)
        let tableView = UITableView(frame: .zero, style: .plain)
        //: tableView.backgroundColor = .clear
        tableView.backgroundColor = .clear
        //: tableView.delegate = self
        tableView.delegate = self
        //: tableView.dataSource = self
        tableView.dataSource = self
        //: tableView.register(PartyListCell.self, forCellReuseIdentifier: PartyListCell.className())
        tableView.register(SharedListCell.self, forCellReuseIdentifier: SharedListCell.className())
        //: tableView.sectionIndexColor = .appValueColor()
        tableView.sectionIndexColor = .scaleValueTo()
        //: tableView.backgroundColor  = UIColor.init(hex: "#F4F6FA")
        tableView.backgroundColor = UIColor(hex: (String(k_dataConStr) + kStyleCenterMessage.replacingOccurrences(of: "live", with: "A")))
        //: tableView.separatorStyle = .none
        tableView.separatorStyle = .none
        //: tableView.addHeaderRefresh { [weak self] in
        tableView.addHeaderRefresh { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.pageIndex = 0
            self.pageIndex = 0
            //: self.reqData()
            self.listing()
        }
        //: tableView.addFooterRefresh { [weak self] in
        tableView.addFooterRefresh { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.reqData()
            self.listing()
        }
        //: return tableView
        return tableView
        //: }()
    }()

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = RemoteEmptyStyle()
        //: style.TipsTitle = "You've got no list yet.".localized
        style.TipsTitle = (String(k_succeedMakeFormat)).localized
        //: let view = EmptyView.init(frame: self.view.frame, style: style)
        let view = EmptyView(frame: self.view.frame, style: style)
        //: return view
        return view
        //: }()
    }()
}

//: extension PartyListViewController {
extension GopViewControllerDataSource {
    /// 添加视图
    //: private func setupSubviews() {
    private func subviewsWith() {
        // 导航底部渐变背景
        //: self.view.addSubview(tableView)
        self.view.addSubview(tableView)
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeLanguageManager.shared.direction == .rightToLeft {
            //: self.view.transform = CGAffineTransform(scaleX: -1, y: 1)
            self.view.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func withDrop() {
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: emptyView.snp.makeConstraints { make in
        emptyView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func pathTotaleraction() {
        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.pageIndex = 0
            self.pageIndex = 0
            //: self.reqData()
            self.listing()
        }
    }

    //: func reqData() {
    func listing() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["page"] = pageIndex
        dict[(String(k_voiceMessage))] = pageIndex
        //: dict["limit"] = "20"
        dict[(String(k_sectionUrl))] = "20"

        //: TalkingVoiceRoomReqTool.req_partyList(params: dict, completion: { succeed, result, errorModel in
        EnableReqTool.greenbackParty(params: dict, completion: { succeed, result, _ in

            //: self.tableView.endRefresh()
            self.tableView.fromEnd()
            //: if succeed {
            if succeed {
                //: let array: Array =  result as! Array<Any>
                let array: Array = result as! [Any]
                //: if array.count == 0 && self.pageIndex > 0 {
                if array.count == 0, self.pageIndex > 0 {
                    //: self.tableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.tableView.mj_footer?.endRefreshingWithNoMoreData()
                }
                //: var tempArr: [PartyListModel] = []
                var tempArr: [WithListModel] = []
                //: if let datas = Array<PartyListModel>.deserialize(from: array as? Array) {
                if let datas = Array<WithListModel>.deserialize(from: array as? Array) {
                    //: tempArr.append(contentsOf: (datas as? [PartyListModel])!)
                    tempArr.append(contentsOf: (datas as? [WithListModel])!)
                }
                //: if self.pageIndex == 0 {
                if self.pageIndex == 0 {
                    //: self.dataArr = tempArr
                    self.dataArr = tempArr
                    //: } else {
                } else {
                    //: self.dataArr.append(contentsOf: tempArr)
                    self.dataArr.append(contentsOf: tempArr)
                }
                //: self.emptyView.isHidden = self.dataArr.count != 0
                self.emptyView.isHidden = self.dataArr.count != 0
                //: self.pageIndex += 1
                self.pageIndex += 1
                //: self.tableView.reloadData()
                self.tableView.reloadData()
            }
            //: })
        })
    }
}

//: extension PartyListViewController: UITableViewDelegate, UITableViewDataSource {
extension GopViewControllerDataSource: UITableViewDelegate, UITableViewDataSource {
    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return dataArr.count
        return dataArr.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: PartyListCell.className(), for: indexPath) as! PartyListCell
        let cell = tableView.dequeueReusableCell(withIdentifier: SharedListCell.className(), for: indexPath) as! SharedListCell

        //: if let listModel = dataArr[safe: indexPath.row] {
        if let listModel = dataArr[safe: indexPath.row] {
            //: cell.listModel = listModel
            cell.listModel = listModel
        }
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 88
        return 88
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: if let listModel = dataArr[safe: indexPath.row] {
        if let listModel = dataArr[safe: indexPath.row] {
            //: AddReactiveCompatible.share.func_pushToVoiceRoomVC(roomId: String(listModel.roomId))
            AddReactiveCompatible.share.photoTo(roomId: String(listModel.roomId))
        }
    }
}

//: extension PartyListViewController: JXPagingViewListViewDelegate {
extension GopViewControllerDataSource: JXPagingViewListViewDelegate {
    //: func listScrollView() -> UIScrollView {
    func listScrollView() -> UIScrollView {
        //: return tableView
        return tableView
    }

    //: func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> ()) {
    func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
        //: self.scrollback = callback
        self.scrollback = callback
    }

    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self.view
        return self.view
    }
}
