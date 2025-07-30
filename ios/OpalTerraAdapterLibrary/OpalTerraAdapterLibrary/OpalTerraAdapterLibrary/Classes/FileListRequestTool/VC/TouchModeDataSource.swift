
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kUpName:[UInt8] = [0xee,0xe9,0xee,0xf3,0xaf,0xe4,0xe8,0xe3,0xe2,0xf5,0xbd,0xae,0xa7,0xef,0xe6,0xf4,0xa7,0xe9,0xe8,0xf3,0xa7,0xe5,0xe2,0xe2,0xe9,0xa7,0xee,0xea,0xf7,0xeb,0xe2,0xea,0xe2,0xe9,0xf3,0xe2,0xe3]

private func strengthTotal(control num: UInt8) -> UInt8 {
    return num ^ 135
}

/*: "Price Settings" :*/
fileprivate let kGestureFormat:String = "Pricetransform let"
fileprivate let kImageMessage:String = "ticolorgs"

/*: "5.00" :*/
fileprivate let k_liveMessage:[Character] = ["5",".","0","0"]

/*: "30" :*/
fileprivate let kLabelDataContent:[Character] = ["3","0"]

/*: "20" :*/
fileprivate let kImagePath:[Character] = ["2","0"]

/*: "Chat price settings" :*/
fileprivate let kCenterKey:String = "Chat pinput tag text"
fileprivate let kLaunchValue:String = "frame title caserice "
fileprivate let kModeContainerUrl:String = "nameettingname"

/*: "Video call price settings" :*/
fileprivate let k_giftFormat:String = "Videcontrast begin camera from"
fileprivate let kArcStr:String = "ll ptable if self"
fileprivate let k_pushCountervalStr:String = "voicet"
fileprivate let kAddPath:String = "tincollections"

/*: "Voice call price settings" :*/
fileprivate let k_timeTitle:String = "Voicnow to view height let"
fileprivate let k_flexibleStr:String = "let lab return pri"
fileprivate let k_iconHiddenStr:[Character] = ["t","t","i","n","g","s"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TouchModeDataSource.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/12/15.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class TalkingFemalePriceSetVC: TalkingBaseViewController {
class TouchModeDataSource: StartThen {
    // MARK: - 属性声明 & 生命周期方法

    //: lazy var messageArray: [ChatPriceModel] = []
    lazy var messageArray: [ViewHandyJSON] = []
    //: lazy var videoArray: [ChatPriceModel] = []
    lazy var videoArray: [ViewHandyJSON] = []
    //: lazy var voiceArray: [ChatPriceModel] = []
    lazy var voiceArray: [ViewHandyJSON] = []

    //: init() {
    init() {
        //: super.init(nibName: nil, bundle: nil)
        super.init(nibName: nil, bundle: nil)
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kUpName.map{strengthTotal(control: $0)}, encoding: .utf8)!)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
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

        //: self.hideNavi = false
        self.hideNavi = false
        //: self.title = "Price Settings".localized
        self.title = (String(kGestureFormat.prefix(5)) + " Set" + kImageMessage.replacingOccurrences(of: "color", with: "n")).localized

        //: self.setupSubviews()
        self.dismantle()
        //: self.setupSubViewsConstraint()
        self.modelColor()
        //: self.bindInteraction()
        self.observe()
        //: self.setupData()
        self.animateBeing()
    }

    //: deinit {
    deinit {}

    // MARK: - Lazy load

    //: lazy var mainTableView = UITableView.init(frame: .zero, style: .plain).then {
    lazy var mainTableView = UITableView(frame: .zero, style: .plain).then {
        //: $0.backgroundColor = UIColor.postColor()
        $0.backgroundColor = UIColor.postColor()
        //: $0.separatorStyle = .none
        $0.separatorStyle = .none
        //: $0.delegate = self
        $0.delegate = self
        //: $0.dataSource = self
        $0.dataSource = self
        //: $0.register(TalkingFemalePriceSetCell.self, forCellReuseIdentifier: TalkingFemalePriceSetCell.className())
        $0.register(RangeThen.self, forCellReuseIdentifier: RangeThen.className())
        //: view.addSubview($0)
        view.addSubview($0)
        //: $0.snp.makeConstraints { make in
        $0.snp.makeConstraints { make in
            //: make.edges.equalTo(self.view)
            make.edges.equalTo(self.view)
        }
    }
}

// MARK: data

//: extension TalkingFemalePriceSetVC {
extension TouchModeDataSource {
    //: private func setupData() {
    private func animateBeing() {
        //: for tempModel in DistanceAppManager.share.appUserConfigMode.chatPriceSettings {
        for tempModel in DistanceAppManager.share.appUserConfigMode.chatPriceSettings {
            //: if tempModel.price == Int(Double(DistanceAppManager.share.loginUserMode.messagePrice ?? "5.00")!) {
            if tempModel.price == Int(Double(DistanceAppManager.share.loginUserMode.messagePrice ?? (String(k_liveMessage)))!) {
                //: tempModel.isSelected = true
                tempModel.isSelected = true
            }
            //: messageArray.append(tempModel)
            messageArray.append(tempModel)
        }
        //: for tempModel in DistanceAppManager.share.appUserConfigMode.videoPriceSettings {
        for tempModel in DistanceAppManager.share.appUserConfigMode.videoPriceSettings {
            //: if tempModel.price == Int(Double(DistanceAppManager.share.loginUserMode.videoPrice ?? "30")!) {
            if tempModel.price == Int(Double(DistanceAppManager.share.loginUserMode.videoPrice ?? "30")!) {
                //: tempModel.isSelected = true
                tempModel.isSelected = true
            }
            //: videoArray.append(tempModel)
            videoArray.append(tempModel)
        }
        //: for tempModel in DistanceAppManager.share.appUserConfigMode.voicePriceSettings {
        for tempModel in DistanceAppManager.share.appUserConfigMode.voicePriceSettings {
            //: if tempModel.price == Int(Double(DistanceAppManager.share.loginUserMode.voicePrice ?? "20")!) {
            if tempModel.price == Int(Double(DistanceAppManager.share.loginUserMode.voicePrice ?? "20")!) {
                //: tempModel.isSelected = true
                tempModel.isSelected = true
            }
            //: voiceArray.append(tempModel)
            voiceArray.append(tempModel)
        }
        //: self.mainTableView.reloadData()
        self.mainTableView.reloadData()
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingFemalePriceSetVC: UITableViewDelegate, UITableViewDataSource {
extension TouchModeDataSource: UITableViewDelegate, UITableViewDataSource {
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
        //: return 127
        return 127
    }

    //: func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    func tableView(_: UITableView, heightForHeaderInSection _: Int) -> CGFloat {
        //: return 45
        return 45
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingFemalePriceSetCell.className(), for: indexPath) as! TalkingFemalePriceSetCell
        let cell = tableView.dequeueReusableCell(withIdentifier: RangeThen.className(), for: indexPath) as! RangeThen
        //: var price = 0
        var price = 0
        //: var level = 0
        var level = 0
        //: switch indexPath.section {
        switch indexPath.section {
        //: case 0:
        case 0:
            //: for model in messageArray {
            for model in messageArray {
                //: if model.isSelected {
                if model.isSelected {
                    //: price = model.price
                    price = model.price
                    //: level = model.levelLimit
                    level = model.levelLimit
                }
            }
        //: break
        //: case 1:
        case 1:
            //: for model in videoArray {
            for model in videoArray {
                //: if model.isSelected {
                if model.isSelected {
                    //: price = model.price
                    price = model.price
                    //: level = model.levelLimit
                    level = model.levelLimit
                }
            }
        //: break
        //: case 2:
        case 2:
            //: for model in voiceArray {
            for model in voiceArray {
                //: if model.isSelected {
                if model.isSelected {
                    //: price = model.price
                    price = model.price
                    //: level = model.levelLimit
                    level = model.levelLimit
                }
            }
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: cell.setCellData(index: indexPath.section, price: price, leve: level)
        cell.actionName(index: indexPath.section, price: price, leve: level)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    func tableView(_: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        //: let headerView = UIView.init(frame: CGRect(x: 0.0, y: 0.0, width: ScreenWidth, height: 45))
        let headerView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: constFormalContent, height: 45))
        //: headerView.backgroundColor = UIColor.postColor()
        headerView.backgroundColor = UIColor.postColor()

        //: let titleLab = UILabel.init(frame: CGRect(x: 15, y: 16, width: ScreenWidth-30, height: 20))
        let titleLab = UILabel(frame: CGRect(x: 15, y: 16, width: constFormalContent - 30, height: 20))
        //: switch section {
        switch section {
        //: case 0:
        case 0:
            //: titleLab.text = "Chat price settings".localized
            titleLab.text = (String(kCenterKey.prefix(6)) + String(kLaunchValue.suffix(5)) + kModeContainerUrl.replacingOccurrences(of: "name", with: "s")).localized
        //: break
        //: case 1:
        case 1:
            //: titleLab.text = "Video call price settings".localized
            titleLab.text = (String(k_giftFormat.prefix(4)) + "o ca" + String(kArcStr.prefix(4)) + "rice s" + k_pushCountervalStr.replacingOccurrences(of: "voice", with: "e") + kAddPath.replacingOccurrences(of: "collection", with: "g")).localized
        //: break
        //: case 2:
        case 2:
            //: titleLab.text = "Voice call price settings".localized
            titleLab.text = (String(k_timeTitle.prefix(4)) + "e call" + String(k_flexibleStr.suffix(4)) + "ce se" + String(k_iconHiddenStr)).localized
        //: break
        //: default:
        default:
            //: break
            break
        }

        //: titleLab.textColor = .appValueDetailColor()
        titleLab.textColor = .childMenu()
        //: titleLab.font = .fontChange(type: .Regular, fontSize: 16)
        titleLab.font = .fontChange(type: .Regular, fontSize: 16)
        //: headerView.addSubview(titleLab)
        headerView.addSubview(titleLab)
        //: return headerView
        return headerView
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let vc = TalkingFemaleChatSetView.init(frame: self.view.frame)
        let vc = MakeDataSource(frame: self.view.frame)
        //: switch indexPath.section {
        switch indexPath.section {
        //: case 0:
        case 0:
            //: vc.dataArray = messageArray
            vc.dataArray = messageArray
        //: break
        //: case 1:
        case 1:
            //: vc.dataArray = videoArray
            vc.dataArray = videoArray
        //: break
        //: case 2:
        case 2:
            //: vc.dataArray = voiceArray
            vc.dataArray = voiceArray
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: vc.showType = indexPath.section
        vc.showType = indexPath.section
        //: vc.showView()
        vc.mentalImage()
        //: vc.seletePriceBlock = {[weak self] (seletemodel) in
        vc.seletePriceBlock = { [weak self] _ in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.mainTableView.reloadData()
            self.mainTableView.reloadData()
        }
    }
}

// MARK: - Request & 数据处理

//: extension TalkingFemalePriceSetVC {
extension TouchModeDataSource {}

// MARK: - Public Event

//: extension TalkingFemalePriceSetVC {
extension TouchModeDataSource {}

// MARK: - Privete Event

//: extension TalkingFemalePriceSetVC {
extension TouchModeDataSource {}

// MARK: - Delegate

//: extension TalkingFemalePriceSetVC {
extension TouchModeDataSource {}

// MARK: - Layout

//: extension TalkingFemalePriceSetVC{
extension TouchModeDataSource {
    // 添加视图
    //: private func setupSubviews() {
    private func dismantle() {
        //: self.mainTableView.reloadData()
        self.mainTableView.reloadData()
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func modelColor() {}

    // 添加事件
    //: private func bindInteraction() {
    private func observe() {}
}
