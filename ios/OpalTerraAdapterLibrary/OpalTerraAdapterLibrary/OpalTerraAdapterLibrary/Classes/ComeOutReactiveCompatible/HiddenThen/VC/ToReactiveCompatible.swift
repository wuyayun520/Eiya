
//: Declare String Begin

/*: "Any" :*/
fileprivate let k_whiteMsg:[Character] = ["A","n","y"]

/*: "Reset" :*/
fileprivate let kArrayTitle:String = "let let to string heapReset"

/*: "Search" :*/
fileprivate let kFadeUrl:[Character] = ["S","e","a","r","c","h"]

/*: "18-27" :*/
fileprivate let k_customUrl:String = "18-click7"

/*: "28-37" :*/
fileprivate let k_makePath:[Character] = ["2","8","-","3","7"]

/*: "38-47" :*/
fileprivate let kDayStr:[Character] = ["3","8","-","4","7"]

/*: "48-57" :*/
fileprivate let k_modelPath:String = "48-5image"

/*: "58+" :*/
fileprivate let k_hiddenId:String = "factory+"

/*: "Yes" :*/
fileprivate let k_formalFormat:String = "string userYes"

/*: "Nope" :*/
fileprivate let k_bottomBarData:String = "Nopetrue range"

/*: "Age" :*/
fileprivate let kCenterTitle:String = "clear direction letAge"

/*: "Video Cover" :*/
fileprivate let kSumMsg:String = "Viduser share model"
fileprivate let k_firstId:String = "self makeeo Cover"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToReactiveCompatible.swift
//  AbroadTalking
//
//  Created by young on 2023/5/16.
//

//: import JXPagingView
import JXPagingView
//: import UIKit
import UIKit

// 记录筛选条件
//: var SEARCH_AGE = "Any".localized
var noti_failureValue = (String(k_whiteMsg)).localized
//: var SEARCH_VIDEOCOVER = "Any".localized
var dataMinText = (String(k_whiteMsg)).localized

//: class TalkingSearchDetailViewController: TalkingBaseViewController {
class ToReactiveCompatible: StartThen {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: self.view.backgroundColor = .white
        self.view.backgroundColor = .white
        //: setupSubviews()
        passage()
        //: setupSubViewsConstraint()
        gestureViewsConstraint()
    }

    // MARK: - Lazy Load

    //: private lazy var tableView: UITableView = {
    private lazy var tableView: UITableView = {
        //: let tabV = UITableView(frame: CGRect.zero, style: .plain)
        let tabV = UITableView(frame: CGRect.zero, style: .plain)
        //: tabV.backgroundColor = self.view.backgroundColor
        tabV.backgroundColor = self.view.backgroundColor
        //: tabV.delegate = self
        tabV.delegate = self
        //: tabV.dataSource = self
        tabV.dataSource = self
        //: tabV.separatorStyle = .none
        tabV.separatorStyle = .none
        //: tabV.contentInset = UIEdgeInsets(top: 15, left: 0, bottom: 0, right: 0)
        tabV.contentInset = UIEdgeInsets(top: 15, left: 0, bottom: 0, right: 0)
        //: tabV.tableFooterView = UIView()
        tabV.tableFooterView = UIView()
        //: tabV.sectionFooterHeight = 0
        tabV.sectionFooterHeight = 0
        //: tabV.keyboardDismissMode = .onDrag
        tabV.keyboardDismissMode = .onDrag
        //: tabV.register(TalkingSearchDetailCell.self, forCellReuseIdentifier: TalkingSearchDetailCell.className())
        tabV.register(CellThen.self, forCellReuseIdentifier: CellThen.className())
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: tabV.contentInsetAdjustmentBehavior = .never
            tabV.contentInsetAdjustmentBehavior = .never
        }
        //: tabV.bounces = false
        tabV.bounces = false
        //: return tabV
        return tabV
        //: }()
    }()

    //: private lazy var resetBtn: UIButton = {
    private lazy var resetBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = .white
        btn.backgroundColor = .white
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 16)
        //: btn.setTitle("Reset".localized, for: .normal)
        btn.setTitle((String(kArrayTitle.suffix(5))).localized, for: .normal)
        //: btn.setTitleColor(UIColor.appThemeColor(), for: .normal)
        btn.setTitleColor(UIColor.increase(), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.layer.borderColor = UIColor.appThemeColor().cgColor
        btn.layer.borderColor = UIColor.increase().cgColor
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.addTarget(self, action: #selector(resetButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(indicator), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var searchBtn: UIButton = {
    private lazy var searchBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 18)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 18)
        //: btn.setTitle("Search".localized, for: .normal)
        btn.setTitle((String(kFadeUrl)).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: UIColor.appGradientColor(), size: CGSize(width: actualWidth(w: 150), height: actualWidth(w: 50))), for: .normal)
        btn.setBackgroundImage(UIImage.makeEqual(colors: UIColor.georgiaHomeBoy(), size: CGSize(width: actualWidth(w: 150), height: actualWidth(w: 50))), for: .normal)
        //: btn.layer.cornerRadius = 25
        btn.layer.cornerRadius = 25
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(searchButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(putOff), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var agePicker: TalkingNormalPickerView = {
    private lazy var agePicker: SizePickView = {
        //: let data = ["Any".localized, "18-27", "28-37", "38-47", "48-57", "58+"]
        let data = [(String(k_whiteMsg)).localized, (k_customUrl.replacingOccurrences(of: "click", with: "2")), (String(k_makePath)), (String(kDayStr)), (k_modelPath.replacingOccurrences(of: "image", with: "7")), "58+"]
        //: let v = TalkingNormalPickerView(frame: .zero, data: data)
        let v = SizePickView(frame: .zero, data: data)
        //: v.completionHandle = { [weak self] value in
        v.completionHandle = { [weak self] value in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: SEARCH_AGE = value
            noti_failureValue = value
            //: self.valueArr[0] = SEARCH_AGE
            self.valueArr[0] = noti_failureValue
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var videoCoverPicker: TalkingNormalPickerView = {
    private lazy var videoCoverPicker: SizePickView = {
        //: let data = ["Any".localized, "Yes".localized, "Nope".localized]
        let data = [(String(k_whiteMsg)).localized, (String(k_formalFormat.suffix(3))).localized, (String(k_bottomBarData.prefix(4))).localized]
        //: let v = TalkingNormalPickerView(frame: .zero, data: data)
        let v = SizePickView(frame: .zero, data: data)
        //: v.completionHandle = { [weak self] value in
        v.completionHandle = { [weak self] value in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: SEARCH_VIDEOCOVER = value
            dataMinText = value
            //: self.valueArr[1] = SEARCH_VIDEOCOVER
            self.valueArr[1] = dataMinText
            //: self.tableView.reloadData()
            self.tableView.reloadData()
        }
        //: return v
        return v
        //: }()
    }()

    //: private lazy var titleArr: [String] = {
    private lazy var titleArr: [String] = //: return ["Age".localized, "Video Cover".localized]
        [(String(kCenterTitle.suffix(3))).localized, (String(kSumMsg.prefix(3)) + String(k_firstId.suffix(8))).localized]
    //: }()

    //: private lazy var valueArr: [String] = {
    private lazy var valueArr: [String] = //: return [SEARCH_AGE, SEARCH_VIDEOCOVER]
        [noti_failureValue, dataMinText]
    //: }()
}

// MARK: - Event

//: extension TalkingSearchDetailViewController {
extension ToReactiveCompatible {
    //: @objc private func resetButtonClick() {
    @objc private func indicator() {
        //: SEARCH_AGE = "Any".localized
        noti_failureValue = (String(k_whiteMsg)).localized
        //: SEARCH_VIDEOCOVER = "Any".localized
        dataMinText = (String(k_whiteMsg)).localized
        //: valueArr = [SEARCH_AGE, SEARCH_VIDEOCOVER]
        valueArr = [noti_failureValue, dataMinText]
        //: self.tableView.reloadData()
        self.tableView.reloadData()
    }

    // 通知首页刷新，返回
    //: @objc private func searchButtonClick() {
    @objc private func putOff() {
        //: NotificationCenter.default.post(name: SEARCH_DETAIL_HOMEREFRESH_NOTIFICATION, object: self)
        NotificationCenter.default.post(name: userItemInputText, object: self)
        //: self.navigationController?.popViewController(animated: true)
        self.navigationController?.popViewController(animated: true)
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate

//: extension TalkingSearchDetailViewController: UITableViewDataSource, UITableViewDelegate {
extension ToReactiveCompatible: UITableViewDataSource, UITableViewDelegate {
    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: if DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue {
        if DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue { // 女性用户只展示Age
            //: return 1
            return 1
        }
        //: return titleArr.count
        return titleArr.count
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingSearchDetailCell.className(), for: indexPath) as! TalkingSearchDetailCell
        let cell = tableView.dequeueReusableCell(withIdentifier: CellThen.className(), for: indexPath) as! CellThen
        //: cell.refreshCell(title: titleArr[indexPath.row], value: valueArr[indexPath.row])
        cell.soul(title: titleArr[indexPath.row], value: valueArr[indexPath.row])
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 50
        return 50
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: tableView.deselectRow(at: indexPath, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
        //: if indexPath.row == 0 {
        if indexPath.row == 0 {
            //: agePicker.normalSelectedComponent(value: SEARCH_AGE)
            agePicker.componentUp(value: noti_failureValue)
            //: agePicker.showView()
            agePicker.presentBack()
            //: } else {
        } else {
            //: videoCoverPicker.normalSelectedComponent(value: SEARCH_VIDEOCOVER)
            videoCoverPicker.componentUp(value: dataMinText)
            //: videoCoverPicker.showView()
            videoCoverPicker.presentBack()
        }
    }
}

// MARK: - JXPagingViewListViewDelegate

//: extension TalkingSearchDetailViewController: JXPagingViewListViewDelegate {
extension ToReactiveCompatible: JXPagingViewListViewDelegate {
    //: func listView() -> UIView {
    func listView() -> UIView {
        //: return self.view
        return self.view
    }

    //: func listScrollView() -> UIScrollView {
    func listScrollView() -> UIScrollView {
        //: return UIScrollView()
        return UIScrollView()
    }

    //: func listViewDidScrollCallback(callback: @escaping (UIScrollView) -> Void) {
    func listViewDidScrollCallback(callback _: @escaping (UIScrollView) -> Void) {}
}

// MARK: - Layout

//: extension TalkingSearchDetailViewController {
extension ToReactiveCompatible {
    /// 添加视图
    //: private func setupSubviews() {
    private func passage() {
        //: view.addSubview(tableView)
        view.addSubview(tableView)
        //: view.addSubview(resetBtn)
        view.addSubview(resetBtn)
        //: view.addSubview(searchBtn)
        view.addSubview(searchBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func gestureViewsConstraint() {
        //: tableView.snp.makeConstraints { make in
        tableView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }

        //: resetBtn.snp.makeConstraints { make in
        resetBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(30)
            make.leading.equalTo(30)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 150), height: actualWidth(w: 50)))
            make.size.equalTo(CGSize(width: actualWidth(w: 150), height: actualWidth(w: 50)))
            //: make.bottom.equalTo(-(40+kDeviceSafeBottomHeight))
            make.bottom.equalTo(-(40 + appButtonData))
        }

        //: searchBtn.snp.makeConstraints { make in
        searchBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-30)
            make.trailing.equalTo(-30)
            //: make.size.bottom.equalTo(resetBtn)
            make.size.bottom.equalTo(resetBtn)
        }
    }
}
