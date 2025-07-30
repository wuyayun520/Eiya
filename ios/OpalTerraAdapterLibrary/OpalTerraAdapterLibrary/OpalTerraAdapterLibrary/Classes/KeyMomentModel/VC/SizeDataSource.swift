
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kLayerUrl:[UInt8] = [0xbf,0xc4,0xbf,0xca,0x7e,0xb9,0xc5,0xba,0xbb,0xc8,0x90,0x7f,0x76,0xbe,0xb7,0xc9,0x76,0xc4,0xc5,0xca,0x76,0xb8,0xbb,0xbb,0xc4,0x76,0xbf,0xc3,0xc6,0xc2,0xbb,0xc3,0xbb,0xc4,0xca,0xbb,0xba]

fileprivate func textAddApp(section num: UInt8) -> UInt8 {
    let value = Int(num) + 170
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "There's no posts yet." :*/
fileprivate let kLabUrl:[Character] = ["T","h","e","r","e","\'","s"," ","n","o"," ","p"]
fileprivate let kMarginTextMessage:[Character] = ["o","s","t","s"," ","y","e","t","."]

/*: "uid" :*/
fileprivate let kDataPath:String = "ucomment"

/*: "page" :*/
fileprivate let kNameShapeId:[Character] = ["p","a","g","e"]

/*: "list" :*/
fileprivate let k_colorMsg:[Character] = ["l","i","s","t"]

/*: "nickname" :*/
fileprivate let kShareTitle:String = "nicknaview"

/*: "age" :*/
fileprivate let kInfoFormat:[Character] = ["a","g","e"]

/*: "sex" :*/
fileprivate let k_giftUrl:String = "morex"

/*: "isTPAuth" :*/
fileprivate let kOriginKey:[Character] = ["i","s","T","P","A"]
fileprivate let kCenterTitle:String = "utbackground"

/*: "headPic" :*/
fileprivate let k_userPath:String = "bottom"
fileprivate let k_managerStr:[Character] = ["e","a","d","P","i","c"]

/*: "pinCount" :*/
fileprivate let kCountimateMsg:[Character] = ["p","i","n","C","o","u","n","t"]

/*: "model" :*/
fileprivate let kBagTimeKey:[Character] = ["m","o","d","e","l"]

/*: "Unpin from profile" :*/
fileprivate let k_listPath:String = "case view name typeUnpin "
fileprivate let kFromMsg:[Character] = [" ","p","r","o","f","i","l","e"]

/*: "Delete Post" :*/
fileprivate let kAppId:String = "Deletcase make input size"
fileprivate let k_submitUrl:String = "e Postcell target with top"

/*: "Pin to profile" :*/
fileprivate let kLabelMakeValue:[Character] = ["P","i","n"," ","t","o"," ","p"]
fileprivate let k_resistanceFormat:String = "rofitoe"

/*: "id" :*/
fileprivate let kValueData:String = "ipath"

/*: "momentId" :*/
fileprivate let kKeyName:String = "countocounte"

/*: "status" :*/
fileprivate let k_stateKey:String = "useratus"

/*: "Your post has been pinned" :*/
fileprivate let kMakePath:[Character] = ["Y"]
fileprivate let k_qualifyStr:[Character] = ["o","u","r"," ","p","o","s","t"," ","h","a","s"," ","b","e","e","n"," ","p","i","n","n","e","d"]

/*: "Your post has been Unpinned" :*/
fileprivate let k_iconName:String = "Yourview else info bottom false"
fileprivate let k_videoData:String = "has beenif height bottom in"
fileprivate let k_toWillUrl:String = "left var self Unpi"

/*: "Posts" :*/
fileprivate let k_managerData:[Character] = ["P","o","s","t","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  SizeDataSource.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/22.
//

//: import UIKit
import UIKit

// MARK: - 属性声明 & 生命周期方法

//: class TalkingUserMomentVC: TalkingBaseViewController {
class SizeDataSource: StartThen {
    //: var uid = ""
    var uid = ""
    //: var pageIndex = 0
    var pageIndex = 0
    //: var disposeBag = DisposeBag()
    var disposeBag = DisposeBag()
    //: var dataSourceArr: [TalkingMomentModel] = []
    var dataSourceArr: [KeyMomentModel] = []

    //: init(uid: String) {
    init(uid: String) {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
        //: self.uid = uid
        self.uid = uid
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kLayerUrl.map{textAddApp(section: $0)}, encoding: .utf8)!)
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        price()
        //: setupSubViewsConstraint()
        roundMenuTime()
        //: bindInteraction()
        bindForNumbererplay()
        //: reqData()
        cellEqual()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    //: lazy var mainTableView: UITableView = {
    lazy var mainTableView: UITableView = {
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
        //: return table
        return table
        //: }()
    }()

    //: lazy var emptyView: EmptyView = {
    lazy var emptyView: EmptyView = {
        //: var style = EmptyStyle()
        var style = RemoteEmptyStyle()
        //: style.TipsTitle = "There's no posts yet."
        style.TipsTitle = (String(kLabUrl) + String(kMarginTextMessage))
        //: let view = EmptyView.init(frame: self.view.frame, style: style)
        let view = EmptyView(frame: self.view.frame, style: style)
        //: return view
        return view
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingUserMomentVC {
extension SizeDataSource {
    //: func reqData() {
    func cellEqual() {
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["uid"] = uid
        dict[(kDataPath.replacingOccurrences(of: "comment", with: "id"))] = uid
        //: dict["page"] = pageIndex
        dict[(String(kNameShapeId))] = pageIndex
        //: TalkingMomentRequestTool.req_UserMomentList(params: dict) { succeed, result, errorModel in
        TvThen.doEffect(params: dict) { succeed, result, errorModel in

            //: self.mainTableView.endRefresh()
            self.mainTableView.fromEnd()
            //: if succeed {
            if succeed {
                //: guard let dict = result as? Dictionary<String, Any> else {
                guard let dict = result as? [String: Any] else {
                    //: if self.pageIndex > 0 {
                    if self.pageIndex > 0 {
                        //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                        self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    }
                    //: return
                    return
                }

                //: guard let array = dict["list"] as? Array<Any> else {
                guard let array = dict[(String(k_colorMsg))] as? [Any] else {
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    //: return
                    return
                }
                //: var dataArr: [TalkingMomentModel] = []
                var dataArr: [KeyMomentModel] = []
                //: for i in 0..<array.count {
                for i in 0 ..< array.count {
                    //: if var model = JSONDeserializer<TalkingMomentModel>.deserializeFrom(dict: array[i] as? Dictionary<String, Any>, designatedPath: nil) {
                    if var model = JSONDeserializer<KeyMomentModel>.deserializeFrom(dict: array[i] as? [String: Any], designatedPath: nil) {
                        //: model.nickname = dict["nickname"] as? String
                        model.nickname = dict[(kShareTitle.replacingOccurrences(of: "view", with: "me"))] as? String
                        //: model.age = dict["age"] as? Int
                        model.age = dict[(String(kInfoFormat))] as? Int
                        //: model.sex = dict["sex"] as? String
                        model.sex = dict[(k_giftUrl.replacingOccurrences(of: "more", with: "se"))] as? String
                        //: model.uid = dict["uid"] as? String
                        model.uid = dict[(kDataPath.replacingOccurrences(of: "comment", with: "id"))] as? String
                        //: model.isTPAuth = dict["isTPAuth"] as? Bool ?? false
                        model.isTPAuth = dict[(String(kOriginKey) + kCenterTitle.replacingOccurrences(of: "background", with: "h"))] as? Bool ?? false
                        //: model.headPic = dict["headPic"] as? String
                        model.headPic = dict[(k_userPath.replacingOccurrences(of: "bottom", with: "h") + String(k_managerStr))] as? String
                        //: model.pinCount = dict["pinCount"] as! Int
                        model.pinCount = dict[(String(kCountimateMsg))] as! Int
                        //: model.caculateItemHeight()
                        model.titleBy()
                        //: if model.uid == DistanceAppManager.share.loginUserMode.userID {
                        if model.uid == DistanceAppManager.share.loginUserMode.userID {
                            //: model.isUserDetail = true
                            model.isUserDetail = true
                        }
                        //: dataArr.append(model)
                        dataArr.append(model)
                    }
                }

                //: if dataArr.count < 20 {
                if dataArr.count < 20 { // 不足一页，隐藏更多
                    //: self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                    self.mainTableView.mj_footer?.endRefreshingWithNoMoreData()
                }

                //: if self.pageIndex == 0 {
                if self.pageIndex == 0 {
                    //: self.dataSourceArr = dataArr
                    self.dataSourceArr = dataArr
                    //: if dataArr.count>0 {
                    if dataArr.count > 0 {
                        //: self.emptyView.removeFromSuperview()
                        self.emptyView.removeFromSuperview()
                    }
                    //: } else {
                } else {
                    //: self.dataSourceArr.append(contentsOf: dataArr)
                    self.dataSourceArr.append(contentsOf: dataArr)
                }

                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg )
                self.arcInfo(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

// MARK: - 事件方法

//: extension TalkingUserMomentVC {
extension SizeDataSource {
    //: func headerRefresh() {
    func customer() {
        //: pageIndex = 0
        pageIndex = 0
        //: mainTableView.mj_header?.beginRefreshing()
        mainTableView.mj_header?.beginRefreshing()
        //: reqData()
        cellEqual()
    }

    //: func footerRefresh() {
    func nonaccomplishment() {
        //: pageIndex += 1
        pageIndex += 1
        //: reqData()
        cellEqual()
    }

    //: @objc func updateLikeNumber(notification: NSNotification) -> Void {
    @objc func dataNotification(notification: NSNotification) {
        //: let userinfo = notification.userInfo as![String: AnyObject]
        let userinfo = notification.userInfo as! [String: AnyObject]
        //: var model: TalkingMomentModel = userinfo["model"] as! TalkingMomentModel
        var model: KeyMomentModel = userinfo[(String(kBagTimeKey))] as! KeyMomentModel
        //: if model.uid == DistanceAppManager.share.loginUserMode.userID {
        if model.uid == DistanceAppManager.share.loginUserMode.userID {
            //: model.isUserDetail = true
            model.isUserDetail = true
        }
        //: for i in 0..<self.dataSourceArr.count {
        for i in 0 ..< self.dataSourceArr.count {
            //: let tmodel = self.dataSourceArr[i]
            let tmodel = self.dataSourceArr[i]
            //: if model.mid == tmodel.mid {
            if model.mid == tmodel.mid {
                //: self.dataSourceArr[i] = model
                self.dataSourceArr[i] = model
                //: self.mainTableView.reloadRows(at: [IndexPath.init(row: i, section: 0)], with: .none)
                self.mainTableView.reloadRows(at: [IndexPath(row: i, section: 0)], with: .none)
                //: return
                return
            }
        }
    }

    //: func deleteCell(model: TalkingMomentModel, index: Int) {
    func startIndex(model: KeyMomentModel, index: Int) {
        //: let vc = TalkingMunuPopView.init(frame: self.view.frame)
        let vc = LipogramViewDelegate(frame: self.view.frame)

        //: if model.pinCount<3 {
        if model.pinCount < 3 {
            //: if model.pinStatus {
            if model.pinStatus {
                //: vc.initwithList(cellTitleList: ["Unpin from profile".localized, "Delete Post".localized])
                vc.listEffect(cellTitleList: [(String(k_listPath.suffix(6)) + "from" + String(kFromMsg)).localized, (String(kAppId.prefix(5)) + String(k_submitUrl.prefix(6))).localized])
                //: } else {
            } else {
                //: vc.initwithList(cellTitleList: ["Pin to profile".localized, "Delete Post".localized])
                vc.listEffect(cellTitleList: [(String(kLabelMakeValue) + k_resistanceFormat.replacingOccurrences(of: "to", with: "l")).localized, (String(kAppId.prefix(5)) + String(k_submitUrl.prefix(6))).localized])
            }
            //: } else {
        } else {
            //: if model.pinStatus {
            if model.pinStatus {
                //: vc.initwithList(cellTitleList: ["Unpin from profile".localized, "Delete Post".localized])
                vc.listEffect(cellTitleList: [(String(k_listPath.suffix(6)) + "from" + String(kFromMsg)).localized, (String(kAppId.prefix(5)) + String(k_submitUrl.prefix(6))).localized])
                //: } else {
            } else {
                //: vc.initwithList(cellTitleList: ["Delete Post".localized])
                vc.listEffect(cellTitleList: [(String(kAppId.prefix(5)) + String(k_submitUrl.prefix(6))).localized])
            }
        }

        //: vc.munuBlock = { [weak self] index, str in
        vc.munuBlock = { [weak self] index, str in
            //: guard let self = self else {return}
            guard let self = self else { return }

            //: if str == "Unpin from profile".localized {
            if str == (String(k_listPath.suffix(6)) + "from" + String(kFromMsg)).localized {
                //: self.topMoment(isTop: 0, model: model)
                self.targetModel(isTop: 0, model: model)
                //: } else if str == "Pin to profile".localized {
            } else if str == (String(kLabelMakeValue) + k_resistanceFormat.replacingOccurrences(of: "to", with: "l")).localized {
                //: self.topMoment(isTop: 1, model: model)
                self.targetModel(isTop: 1, model: model)
                //: } else if str == "Delete Post".localized {
            } else if str == (String(kAppId.prefix(5)) + String(k_submitUrl.prefix(6))).localized {
                //: ProgressHUD.show()
                EndProgressHUD.listHide()
                //: var dict = Dictionary<String, Any>()
                var dict = [String: Any]()
                //: dict["id"] = model.mid
                dict["id"] = model.mid
                //: TalkingMomentRequestTool.req_DeleteMoment(params: dict) { succeed, result, errorModel in
                TvThen.extragalacticNebula(params: dict) { succeed, _, errorModel in
                    //: EndProgressHUD.popEnable()
                    EndProgressHUD.popEnable()
                    //: if succeed {
                    if succeed {
                        //: if index<self.dataSourceArr.count {
                        if index < self.dataSourceArr.count {
                            //: self.disposeBag = DisposeBag()
                            self.disposeBag = DisposeBag()
                            //: self.mainTableView.mj_header?.beginRefreshing()
                            self.mainTableView.mj_header?.beginRefreshing()
                            //: } else if self.dataSourceArr.count == 1 {
                        } else if self.dataSourceArr.count == 1 {
                            //: self.dataSourceArr.removeAll()
                            self.dataSourceArr.removeAll()
                            //: self.disposeBag = DisposeBag()
                            self.disposeBag = DisposeBag()
                            //: self.view.addSubview(self.emptyView)
                            self.view.addSubview(self.emptyView)
                        }
                        //: } else {
                    } else {
                        //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                        self.arcInfo(showMsg: errorModel!.errorMsg)
                    }
                }
            }
        }
    }

    //: func topMoment(isTop: Int, model: TalkingMomentModel) {
    func targetModel(isTop: Int, model: KeyMomentModel) {
        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["momentId"] = model.mid
        dict[(kKeyName.replacingOccurrences(of: "count", with: "m") + "ntId")] = model.mid
        //: dict["status"] = isTop
        dict[(k_stateKey.replacingOccurrences(of: "user", with: "st"))] = isTop
        //: TalkingMomentRequestTool.req_TopMoment(params: dict) { succeed, result, errorModel in
        TvThen.videoCompletion(params: dict) { succeed, _, errorModel in
            //: EndProgressHUD.popEnable()
            EndProgressHUD.popEnable()
            //: if succeed {
            if succeed {
                //: let str = isTop==1 ? "Your post has been pinned".localized : "Your post has been Unpinned".localized
                let str = isTop == 1 ? (String(kMakePath) + String(k_qualifyStr)).localized : (String(k_iconName.prefix(4)) + " post " + String(k_videoData.prefix(8)) + String(k_toWillUrl.suffix(5)) + "nned").localized
                //: self.func__showStatusBarSuccessMsg(showMsg: str)
                self.rear(showMsg: str)
                //: self.disposeBag = DisposeBag()
                self.disposeBag = DisposeBag()
                //: self.mainTableView.mj_header?.beginRefreshing()
                self.mainTableView.mj_header?.beginRefreshing()
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.arcInfo(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

// MARK: - UITableViewDelegate,UITableViewdataSourceArr

//: extension TalkingUserMomentVC: UITableViewDelegate, UITableViewDataSource {
extension SizeDataSource: UITableViewDelegate, UITableViewDataSource {
    //: func numberOfSections(in tableView: UITableView) -> Int {
    func numberOfSections(in _: UITableView) -> Int {
        //: return 1
        return 1
    }

    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return self.dataSourceArr.count
        return self.dataSourceArr.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //: let model = self.dataSourceArr[indexPath.row]
        let model = self.dataSourceArr[indexPath.row]
        //: return model.itemHeight ?? 56
        return model.itemHeight ?? 56
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = TalkingMomentItemCell(style: .default, reuseIdentifier: TalkingMomentItemCell.className(), isMyHost: true)
        let cell = AppView(style: .default, reuseIdentifier: AppView.className(), isMyHost: true)
        //: let model: TalkingMomentModel = self.dataSourceArr[indexPath.row]
        let model: KeyMomentModel = self.dataSourceArr[indexPath.row]
        //: cell.configCell(model: model)
        cell.numberNext(model: model)
        //: cell.userInfoView.deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
        cell.userInfoView.deleteBtn.rx.tap.subscribe(onNext: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.deleteCell(model: model, index: indexPath.row)
            self.startIndex(model: model, index: indexPath.row)
            //: }).disposed(by: cell.cellDisposeBag )
        }).disposed(by: cell.cellDisposeBag)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, willDisplay _: UITableViewCell, forRowAt _: IndexPath) {}

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let model = self.dataSourceArr[indexPath.row]
        let model = self.dataSourceArr[indexPath.row]
        //: let vc =  TalkingMomentDetailVC.init(model: model)
        let vc = MatterViewController(model: model)
        //: vc.delegete = { [weak self] in
        vc.delegete = { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: if indexPath.row<self.dataSourceArr.count {
            if indexPath.row < self.dataSourceArr.count {
                //: self.dataSourceArr.remove(at: indexPath.row)
                self.dataSourceArr.remove(at: indexPath.row)
                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: self.disposeBag = DisposeBag()
                self.disposeBag = DisposeBag()
            }
        }
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - Layout

//: extension TalkingUserMomentVC {
extension SizeDataSource {
    // 添加视图
    //: private func setupSubviews() {
    private func price() {
        //: self.view.backgroundColor = UIColor.postColor()
        self.view.backgroundColor = UIColor.postColor()
        //: self.title = "Posts".localized
        self.title = (String(k_managerData)).localized
        //: self.view.addSubview(emptyView)
        self.view.addSubview(emptyView)

        //: self.view.addSubview(mainTableView)
        self.view.addSubview(mainTableView)
        //: mainTableView.register(TalkingMomentItemCell.self, forCellReuseIdentifier: TalkingMomentItemCell.className())
        mainTableView.register(AppView.self, forCellReuseIdentifier: AppView.className())
        //: mainTableView.dataSource = self
        mainTableView.dataSource = self
        //: mainTableView.delegate = self
        mainTableView.delegate = self
        //: self.view.bringSubviewToFront(emptyView)
        self.view.bringSubviewToFront(emptyView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func roundMenuTime() {
        //: mainTableView.snp.makeConstraints { make in
        mainTableView.snp.makeConstraints { make in
            //: make.top.equalTo(self.view).offset(12)
            make.top.equalTo(self.view).offset(12)
            //: make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            make.bottom.equalTo(self.view.snp.bottom).offset(-12)
            //: make.leading.trailing.equalTo(self.view)
            make.leading.trailing.equalTo(self.view)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func bindForNumbererplay() {
        //: mainTableView.addHeaderRefresh { [weak self] in
        mainTableView.addHeaderRefresh { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.headerRefresh()
            self.customer()
        }
        //: mainTableView.addFooterRefresh { [weak self] in
        mainTableView.addFooterRefresh { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.footerRefresh()
            self.nonaccomplishment()
        }

        //: emptyView.emptyBlock = { [weak self] in
        emptyView.emptyBlock = { [weak self] in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: self.mainTableView.mj_header?.beginRefreshing()
            self.mainTableView.mj_header?.beginRefreshing()
        }
        //: NotificationCenter.default.addObserver(self, selector: #selector(updateLikeNumber(notification:)), name: UPDATE_LIKE_NUMBER_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(dataNotification(notification:)), name: dataTabText, object: nil)
    }
}
