
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kTopTableText:[UInt8] = [0xdb,0xdc,0xdb,0xc6,0x9a,0xd1,0xdd,0xd6,0xd7,0xc0,0x88,0x9b,0x92,0xda,0xd3,0xc1,0x92,0xdc,0xdd,0xc6,0x92,0xd0,0xd7,0xd7,0xdc,0x92,0xdb,0xdf,0xc2,0xde,0xd7,0xdf,0xd7,0xdc,0xc6,0xd7,0xd6]

/*: "Not reaching the required level" :*/
fileprivate let k_insideOnLetKey:[UInt8] = [0x27,0x48,0x4d,0xf9,0x4b,0x3e,0x3a,0x3c,0x41,0x42,0x47,0x40,0xf9,0x4d,0x41,0x3e,0xf9,0x4b,0x3e,0x4a,0x4e,0x42,0x4b,0x3e,0x3d,0xf9,0x45,0x3e,0x4f,0x3e,0x45]

fileprivate func makeMagnitudeo(media num: UInt8) -> UInt8 {
    let value = Int(num) - 217
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "text_fee" :*/
fileprivate let kCenterKey:String = "class center selftext_"
fileprivate let k_minValue:[Character] = ["f","e","e"]

/*: "video_fee" :*/
fileprivate let kColorArrayStr:String = "vinfoe"
fileprivate let k_systemKey:[Character] = ["o","_","f","e","e"]

/*: "voice_fee" :*/
fileprivate let k_fileKey:[Character] = ["v","o","i","c","e","_","f","e","e"]

/*: "value" :*/
fileprivate let k_increaseAddName:[Character] = ["v","a","l","u","e"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeDataSource.swift
//  AbroadTalking
//
//  Created by Bolo on 2022/9/1.
//

//: import Then
import Then
//: import UIKit
import UIKit

//: class TalkingFemaleChatSetView: UIView {
class MakeDataSource: UIView {
    //: lazy var dataArray: [ChatPriceModel] = []
    lazy var dataArray: [ViewHandyJSON] = []
    //: var price: Int = -1
    var price: Int = -1
    //: var popView = TalkingPopView()
    var popView = DataPopView()
    //: var contentHeight = kDeviceSafeBottomHeight
    var contentHeight = appButtonData
    //: var showType: Int = -1
    var showType: Int = -1

    //: var seletePriceBlock: ((_ model: ChatPriceModel) -> Void)?
    var seletePriceBlock: ((_ model: ViewHandyJSON) -> Void)?

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.modeSubviews()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kTopTableText.map{$0^178}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {}

    // 懒加载初始化

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
        //: $0.register(TalkingFemaleChatSetCell.self, forCellReuseIdentifier: TalkingFemaleChatSetCell.className())
        $0.register(WithViewCell.self, forCellReuseIdentifier: WithViewCell.className())
        //: self.addSubview($0)
        self.addSubview($0)
    }
}

// MARK: - UITableViewDelegate, UITableViewDataSource

//: extension TalkingFemaleChatSetView: UITableViewDelegate, UITableViewDataSource {
extension MakeDataSource: UITableViewDelegate, UITableViewDataSource {
    //: func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        //: return dataArray.count
        return dataArray.count
    }

    //: func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    func tableView(_: UITableView, heightForRowAt _: IndexPath) -> CGFloat {
        //: return 54
        return 54
    }

    //: func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //: let cell = tableView.dequeueReusableCell(withIdentifier: TalkingFemaleChatSetCell.className(), for: indexPath) as! TalkingFemaleChatSetCell
        let cell = tableView.dequeueReusableCell(withIdentifier: WithViewCell.className(), for: indexPath) as! WithViewCell
        //: let model: ChatPriceModel = self.dataArray[indexPath.row]
        let model: ViewHandyJSON = self.dataArray[indexPath.row]
        //: cell.updateCellModel(cellModel: model, index: self.showType)
        cell.behindLeave(cellModel: model, index: self.showType)
        //: return cell
        return cell
    }

    //: func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        //: let curModel: ChatPriceModel = self.dataArray[indexPath.row]
        let curModel: ViewHandyJSON = self.dataArray[indexPath.row]
        //: if curModel.levelLimit > (Int(DistanceAppManager.share.loginUserMode.level) ?? 1) {
        if curModel.levelLimit > (Int(DistanceAppManager.share.loginUserMode.level) ?? 1) {
            //: self.func__showStatusBarErrorMsg(showMsg: "Not reaching the required level".localized)
            self.arcInfo(showMsg: String(bytes: k_insideOnLetKey.map{makeMagnitudeo(media: $0)}, encoding: .utf8)!.localized)
            //: return
            return
        }
        //: EditPrice(model: curModel)
        saveModel(model: curModel)
    }

    //: func  EditPrice(model: ChatPriceModel) {
    func saveModel(model: ViewHandyJSON) {
        //: if price == model.price {
        if price == model.price {
            //: return
            return
        }
        //: ProgressHUD.show()
        EndProgressHUD.listHide()

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: switch self.showType {
        switch self.showType {
        //: case 0:
        case 0:
            //: dict["key"] = "text_fee"
            dict["key"] = (String(kCenterKey.suffix(5)) + String(k_minValue))
        //: break
        //: case 1:
        case 1:
            //: dict["key"] = "video_fee"
            dict["key"] = (kColorArrayStr.replacingOccurrences(of: "info", with: "id") + String(k_systemKey))
        //: break
        //: case 2:
        case 2:
            //: dict["key"] = "voice_fee"
            dict["key"] = (String(k_fileKey))
        //: break
        //: default:
        default:
            //: break
            break
        }
        //: dict["value"] = model.price
        dict[(String(k_increaseAddName))] = model.price

        //: TalkingMeRequestTool.req_EditInfo(params: dict) { succeed, result, errorModel in
        FileListRequestTool.substanceCompletion(params: dict) { succeed, _, errorModel in
            //: EndProgressHUD.popEnable()
            EndProgressHUD.popEnable()

            //: if succeed {
            if succeed {
                //: for model in self.dataArray {
                for model in self.dataArray {
                    //: model.isSelected = false
                    model.isSelected = false
                }
                //: model.isSelected = true
                model.isSelected = true
                //: self.price = model.price
                self.price = model.price
                //: self.mainTableView.reloadData()
                self.mainTableView.reloadData()
                //: if self.seletePriceBlock != nil {
                if self.seletePriceBlock != nil {
                    //: self.seletePriceBlock!(model)
                    self.seletePriceBlock!(model)
                }
                //: self.dismissView()
                self.dismissShared()

                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.arcInfo(showMsg: errorModel!.errorMsg)
            }
        }
    }
}

//: extension TalkingFemaleChatSetView {
extension MakeDataSource {
    // 添加视图
    //: private func setupSubviews() {
    private func modeSubviews() {
        //: self.mainTableView.frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: self.contentHeight)
        self.mainTableView.frame = CGRect(x: 0, y: user_recordMarginValue, width: constFormalContent, height: self.contentHeight)
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: self.mainTableView.layer.maskedCorners = CACornerMask(rawValue: CACornerMask.layerMinXMinYCorner.rawValue | CACornerMask.layerMaxXMinYCorner.rawValue)
            self.mainTableView.layer.maskedCorners = CACornerMask(rawValue: CACornerMask.layerMinXMinYCorner.rawValue | CACornerMask.layerMaxXMinYCorner.rawValue)
            //: self.mainTableView.layer.cornerRadius = 15
            self.mainTableView.layer.cornerRadius = 15
            //: } else {
        } else {
            // Fallback on earlier versions
        }

        //: popView.frame = UIScreen.main.bounds
        popView.frame = UIScreen.main.bounds
        //: popView.initWithView(view: self)
        popView.smart(view: self)
        //: popView.showInView(view: UserTextMacroDefine.getWindow())
        popView.academePosition(view: UserTextMacroDefine.clearstoryNo())
    }

    //: @objc func dismissView() {
    @objc func dismissShared() {
        //: UIView.animate(withDuration: 0.3) {[weak self ] in
        UIView.animate(withDuration: 0.3) { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.alpha = 0
            self.alpha = 0
            //: self.mainTableView.frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: self.contentHeight)
            self.mainTableView.frame = CGRect(x: 0, y: user_recordMarginValue, width: constFormalContent, height: self.contentHeight)
            //: } completion: { _ in
        } completion: { _ in

            //: self.removeFromSuperview()
            self.removeFromSuperview()
            //: self.popView.dismissView()
            self.popView.upView()
        }
    }

    //: func showView() {
    func mentalImage() {
        //: UIView.animate(withDuration: 0.3, animations: { [weak self ] in
        UIView.animate(withDuration: 0.3, animations: { [weak self] in
            //: guard let self = self else {return}
            guard let self = self else { return }
            //: self.alpha = 1.0
            self.alpha = 1.0
            //: switch self.showType {
            switch self.showType {
            //: case 0:
            case 0:
                //: self.contentHeight += actualHeight(h: 500)
                self.contentHeight += actualHeight(h: 500)
            //: break
            //: case 1, 2:
            case 1, 2:
                //: self.contentHeight += actualHeight(h: 350)
                self.contentHeight += actualHeight(h: 350)
            //: break
            //: default:
            default:
                //: break
                break
            }
            //: self.mainTableView.frame = CGRect(x: 0, y: ScreenHeight-self.contentHeight, width: ScreenWidth, height: self.contentHeight)
            self.mainTableView.frame = CGRect(x: 0, y: user_recordMarginValue - self.contentHeight, width: constFormalContent, height: self.contentHeight)

            //: }, completion: nil)
        }, completion: nil)
    }
}
