
//: Declare String Begin

/*: "Online List" :*/
fileprivate let kObserverText:String = "error request modelOnl"
fileprivate let kTabMessage:String = "app typeine "

/*: "Select @ Numbers" :*/
fileprivate let k_viewKey:[Character] = ["S","e","l","e","c"]
fileprivate let k_valueKey:String = "t @ Nuphoto to for"

/*: "Nobody can @" :*/
fileprivate let kCurrentStr:[Character] = ["N","o","b","o","d","y"," ","c","a"]
fileprivate let k_colorData:String = "button style gift letn @"

/*: "roomId" :*/
fileprivate let kStartName:String = "roomIdbottom background"

/*: "type" :*/
fileprivate let k_infoData:[Character] = ["t","y","p","e"]

/*: "page" :*/
fileprivate let kInsideSharedData:String = "pagbutton"

/*: "uid" :*/
fileprivate let kMakeStr:[UInt8] = [0x66,0x7a,0x77]

/*: "name" :*/
fileprivate let k_labImageUrl:[UInt8] = [0xb1,0xbe,0xb2,0xba]

private func userShare(by num: UInt8) -> UInt8 {
    return num ^ 223
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LimitViewDelegate.swift
//  AbroadTalking
//
//  Created by young on 2023/4/6.
//

//: import UIKit
import UIKit

//: enum TitleType: String {
enum CoverEquatable: String {
    //: case normal
    case normal // 在线列表
    //: case callNumber
    case callNumber // 群聊@
}

//: typealias OnlineSelectedBlock = (_ dict: [String: Any]) -> Void
typealias OnlineSelectedBlock = (_ dict: [String: Any]) -> Void

//: class TalkingChatRoomOnlineListController: TalkingBaseViewController {
class LimitViewDelegate: StartThen {
    //: var roomID = ""
    var roomID = ""
    //: var titleType: TitleType = .normal
    var titleType: CoverEquatable = .normal
    //: var selectedBlock: OnlineSelectedBlock?
    var selectedBlock: OnlineSelectedBlock?
    //: fileprivate var dataArray = NSMutableArray.init()
    fileprivate var dataArray = NSMutableArray()
    //: private var pageIndex = 0
    private var pageIndex = 0

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        pushSub()
        //: setupSubViewsConstraint()
        voiceStatus()
        //: self.mainTableView.mj_header?.beginRefreshing()
        self.mainTableView.mj_header?.beginRefreshing()

        //: switch titleType {
        switch titleType {
        //: case .normal: self.title = "Online List".localized
        case .normal: self.title = (String(kObserverText.suffix(3)) + String(kTabMessage.suffix(4)) + "List").localized
        //: case .callNumber: self.title = "Select @ Numbers".localized
        case .callNumber: self.title = (String(k_viewKey) + String(k_valueKey.prefix(6)) + "mbers").localized
        }
    }

    // MARK: - Lazy Load

    //: lazy var mainTableView: UITableView = {
    lazy var mainTableView: UITableView = {
        //: let table = UITableView(frame: .zero, style: UITableView.Style.plain)
        let table = UITableView(frame: .zero, style: UITableView.Style.plain)
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: table.contentInsetAdjustmentBehavior = .never
            table.contentInsetAdjustmentBehavior = .never
            //: table.delegate = self
            table.delegate = self
            //: table.dataSource = self
            table.dataSource = self
            //: } else {
        } else {
            //: self.automaticallyAdjustsScrollViewInsets = false
            self.automaticallyAdjustsScrollViewInsets = false
        }
        //: table.showsVerticalScrollIndicator = true
        table.showsVerticalScrollIndicator = true
        //: table.estimatedRowHeight = 0
        table.estimatedRowHeight = 0
        //: table.estimatedSectionFooterHeight = 0
        table.estimatedSectionFooterHeight = 0
        //: table.estimatedSectionHeaderHeight = 0
        table.estimatedSectionHeaderHeight = 0
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        table.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //: table.backgroundColor = .clear
        table.backgroundColor = .clear
        //: table.separatorStyle = .none
        table.separatorStyle = .none
        //: table.addFooterRefresh { [weak self] in
        table.addFooterRefresh { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.footerRefresh()
            self.loadRefresh()
        }
        //: table.addHeaderRefresh { [weak self] in
        table.addHeaderRefresh { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.headerRefresh()
            self.header()
        }
        //: table.register(TalkingChatRoomOnlineListCell.self, forCellReuseIdentifier: TalkingChatRoomOnlineListCell.className())
        table.register(RemoteViewCell.self, forCellReuseIdentifier: RemoteViewCell.className())

        //: return table
        return table
        //: }()
    }()

    //: private lazy var emptyView: EmptyView = {
    private lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = RemoteEmptyStyle()
        //: style.TipsTitle = "Nobody can @"
        style.TipsTitle = (String(kCurrentStr) + String(k_colorData.suffix(3)))
        //: let emptyView = EmptyView.init(frame: self.view.frame, style: style)
        let emptyView = EmptyView(frame: self.view.frame, style: style)
        //: emptyView.isHidden = true
        emptyView.isHidden = true
        //: return emptyView
        return emptyView
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingChatRoomOnlineListController {
extension LimitViewDelegate {
    //: func headerRefresh() {
    func header() {
        //: pageIndex = 0
        pageIndex = 0
        //: mainTableView.mj_header?.beginRefreshing()
        mainTableView.mj_header?.beginRefreshing()
        //: reqData()
        sharedData()
    }

    //: private func footerRefresh() {
    private func loadRefresh() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        sharedData()
    }

    //: func reqData() {
    func sharedData() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["roomId"] = roomID
        dict[(String(kStartName.prefix(6)))] = roomID
        //: if titleType == .normal {
        if titleType == .normal {
            //: dict["type"] = "1"
            dict[(String(k_infoData))] = "1"
            //: } else {
        } else {
            //: dict["type"] = "2"
            dict[(String(k_infoData))] = "2"
        }
        //: dict["page"] = String(pageIndex)
        dict[(kInsideSharedData.replacingOccurrences(of: "button", with: "e"))] = String(pageIndex)

        //: TalkingChatGiftManager.share.getChatRoomMemberSData(params: dict, completion: { array in
        AppNameGiftManager.share.messageMake(params: dict, completion: { array in
            //: self.mainTableView.endRefresh()
            self.mainTableView.fromEnd()
            //: guard let arr = array else {
            guard let arr = array else {
                //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                //: return
                return
            }

            //: if self.pageIndex == 0 {
            if self.pageIndex == 0 {
                //: self.dataArray.removeAllObjects()
                self.dataArray.removeAllObjects()
            }

            //: if arr.count<=0 {
            if arr.count <= 0 {
                //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                //: self.mainTableView.mj_footer?.isHidden = true
                self.mainTableView.mj_footer?.isHidden = true
                //: } else {
            } else {
                //: self.dataArray.addObjects(from: arr)
                self.dataArray.addObjects(from: arr)
            }

            //: self.mainTableView.reloadData()
            self.mainTableView.reloadData()

            // @列表缺省
            //: if self.titleType == .callNumber && self.dataArray.count == 0 {
            if self.titleType == .callNumber, self.dataArray.count == 0 {
                //: self.emptyView.isHidden = false
                self.emptyView.isHidden = false
                //: } else {
            } else {
                //: self.emptyView.isHidden = true
                self.emptyView.isHidden = true
            }
            //: })
        })
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingChatRoomOnlineListController: UITableViewDelegate, UITableViewDataSource {
extension LimitViewDelegate: UITableViewDelegate, UITableViewDataSource {
    //: public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    public func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return dataArray.count
        return dataArray.count
    }

    //: public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    public func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 76
        return 76
    }

    //: public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingChatRoomOnlineListCell.className(), for: indexPath) as! TalkingChatRoomOnlineListCell
        let cell = tableView.dequeueReusableCell(withIdentifier: RemoteViewCell.className(), for: indexPath) as! RemoteViewCell
        //: var cellModel = TalkingChatRoomMemberModel()
        var cellModel = RunOutMemberModel()
        //: cellModel = dataArray[indexPath.row] as! TalkingChatRoomMemberModel
        cellModel = dataArray[indexPath.row] as! RunOutMemberModel
        //: cell.setOnlineListCell(model: cellModel, type: self.titleType)
        cell.keyType(model: cellModel, type: self.titleType)
        //: return cell
        return cell
    }

    //: public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: let cellModel = dataArray[indexPath.row] as! TalkingChatRoomMemberModel
        let cellModel = dataArray[indexPath.row] as! RunOutMemberModel
        //: switch self.titleType {
        switch self.titleType {
        //: case .normal:
        case .normal:
            //: AddReactiveCompatible.share.func__pushToUserDetailVC(uid: cellModel.uid)
            AddReactiveCompatible.share.afterTo(uid: cellModel.uid)

        //: case .callNumber:
        case .callNumber:
            //: guard let block = selectedBlock else { return }
            guard let block = selectedBlock else { return }
            //: let dict = ["uid": cellModel.uid, "name": cellModel.nickname]
            let dict = [String(bytes: kMakeStr.map{$0^19}, encoding: .utf8)!: cellModel.uid, String(bytes: k_labImageUrl.map{userShare(by: $0)}, encoding: .utf8)!: cellModel.nickname]
            //: block(dict)
            block(dict)
        }
    }
}

// MARK: - Layout

//: extension TalkingChatRoomOnlineListController {
extension LimitViewDelegate {
    // 添加视图
    //: private func setupSubviews() {
    private func pushSub() {
        //: self.view.addSubview(self.mainTableView)
        self.view.addSubview(self.mainTableView)
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)
        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.mainTableView.mj_header?.beginRefreshing()
            self.mainTableView.mj_header?.beginRefreshing()
        }
    }

    //: private func setupSubViewsConstraint() {
    private func voiceStatus() {
        //: mainTableView.snp.makeConstraints { make in
        mainTableView.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
    }
}
