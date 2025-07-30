
//: Declare String Begin

/*: "bg_shouye_misanguang_default" :*/
fileprivate let kMakeModeTitle:[Character] = ["b","g","_","s","h","o","u","y","e","_","m","i","s","a","n","g","u","a","n"]
fileprivate let k_modelEqualViewData:String = "g_deheight array"

/*: "Popular" :*/
fileprivate let kValueMsg:String = "self popular awake locationPopul"
fileprivate let k_leadingValue:[Character] = ["a","r"]

/*: "777777" :*/
fileprivate let k_tableName:[Character] = ["7","7","7","7","7","7"]

/*: "icon_moment_news_nor" :*/
fileprivate let k_managerKey:String = "titleon"
fileprivate let k_rawMsg:[Character] = ["_","n","e","w","s","_","n","o","r"]

/*: "icon_free_pre" :*/
fileprivate let kLabStr:String = "usecon"
fileprivate let k_colorMsg:String = "_preread kit make equal"

/*: "num" :*/
fileprivate let k_inviteMsg:[Character] = ["n","u","m"]

/*: "99+" :*/
fileprivate let kInputModelCellId:[UInt8] = [0x2b,0x2b,0x39]

private func cameraScale(path num: UInt8) -> UInt8 {
    return num ^ 18
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  EndNavigationDelegate.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/1/20.
//

//: import UIKit
import UIKit

// MARK: - 属性声明 & 生命周期方法

//: class TalkingMomentViewController: TalkingBaseViewController {
class EndNavigationDelegate: StartThen {
    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: setupSubviews()
        brush()
        //: setupSubViewsConstraint()
        finishConstraint()
        //: NotificationCenter.default.addObserver(self, selector: #selector(freeNotif), name: FREEBTN_UPLOAD_POST_NOTIFICATION, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(instance), name: main_bottomName, object: nil)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: load_remindNum()
        clickNum()
    }

    //: private lazy var bottomImgView: UIImageView = {
    private lazy var bottomImgView: UIImageView = {
        //: let imgV = UIImageView(image: UIImage.submitGift(name: "bg_shouye_misanguang_default"))
        let imgV = UIImageView(image: UIImage.submitGift(name: (String(kMakeModeTitle) + String(k_modelEqualViewData.prefix(4)) + "fault")))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var slideVC: QYSlideNavigationViewController = {
    private lazy var slideVC: FileViewController = {
        //: let vc = QYSlideNavigationViewController()
        let vc = FileViewController()
        //: vc.topDistance = NavigationBarHeight
        vc.topDistance = showBottomDailyValue
        //: vc.controllerItems = [TalkingPopularMomentVC()]
        vc.controllerItems = [DisappearDataSource()]
        //: vc.titleItems = ["Popular".localized]
        vc.titleItems = [(String(kValueMsg.suffix(5)) + String(k_leadingValue)).localized]
        //: vc.titleViewBackgroundColor = .clear
        vc.titleViewBackgroundColor = .clear
        //: vc.titleFont = .fontChange(type: .Medium, fontSize: 16)
        vc.titleFont = .fontChange(type: .Medium, fontSize: 16)
        //: vc.selectTitleFont = .fontChange(type: .Medium, fontSize: 18)
        vc.selectTitleFont = .fontChange(type: .Medium, fontSize: 18)
        //: vc.normalColor = UIColor(hex: "777777")!
        vc.normalColor = UIColor(hex: (String(k_tableName)))!
        //: vc.selectedColor = UIColor.colorStatuteNameApp()
        vc.selectedColor = UIColor.colorStatuteNameApp()
        //: vc.hasBttomTabBar = true
        vc.hasBttomTabBar = true
        //: vc.delegate = self
        vc.delegate = self
        //: vc.scrollEnabled = false
        vc.scrollEnabled = false
        //: return vc
        return vc
        //: }()
    }()

    //: private lazy var newsBtn: UIButton = {
    private lazy var newsBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setImage(UIImage.submitGift(name: "icon_moment_news_nor"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (k_managerKey.replacingOccurrences(of: "title", with: "ic") + "_moment" + String(k_rawMsg))), for: .normal)
        //: btn.addTarget(self, action: #selector(newsBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(toALowerPlace), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var newsBadgeLab: BadgeLab = {
    private lazy var newsBadgeLab: SinglePitchThen = {
        //: let label = BadgeLab()
        let label = SinglePitchThen()
        //: label.isHidden = true
        label.isHidden = true
        //: return label
        return label
        //: }()
    }()

    //: private lazy var freeBtn: UIButton = {
    private lazy var freeBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.submitGift(name: "icon_free_pre"), for: .normal)
        btn.setBackgroundImage(UIImage.submitGift(name: (kLabStr.replacingOccurrences(of: "use", with: "i") + "_free" + String(k_colorMsg.prefix(4)))), for: .normal)
        //: btn.addTarget(self, action: #selector(freeBtnClickEvent), for: .touchUpInside)
        btn.addTarget(self, action: #selector(info), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Load Data

//: extension TalkingMomentViewController {
extension EndNavigationDelegate {
    /// 获取用户当前未读动态数量
    //: private func load_remindNum() {
    private func clickNum() {
        //: TalkingMomentRequestTool.req_getRemindNum { succeed, result, errorModel in
        TvThen.extra { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [])
            let json = JSON(result ?? [])
            //: self.refreshNewsbadge(num: json["num"].intValue)
            self.nonePullInput(num: json[(String(k_inviteMsg))].intValue)
        }
    }
}

// MARK: - Event

//: extension TalkingMomentViewController {
extension EndNavigationDelegate {
    /// 跳转到动态通知列表
    //: @objc private func newsBtnClickEvent() {
    @objc private func toALowerPlace() {
        //: refreshNewsbadge(num: 0)
        nonePullInput(num: 0)
        //: let vc = TalkingMomentNewsFeedViewController()
        let vc = WayViewController()
        //: self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
    }

    /// 发布通知
    //: @objc func freeNotif() {
    @objc func instance() {
        //: freeBtnClickEvent()
        info()
    }

    /// 发布
    //: @objc func freeBtnClickEvent() {
    @objc func info() {
        //: if DistanceAppManager.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue, DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue, DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue {
        if DistanceAppManager.share.loginUserMode.isTPAuth != BreakValueConvertible.isSuccessed.rawValue, DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue, DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue {
            //: AppManagerRequest.func__requestUserInfo { _, _, _ in
            ModelThen.applicationCompletion { _, _, _ in
                //: if !DistanceAppManager.share.loginUserMode.isNaUser,
                if !DistanceAppManager.share.loginUserMode.isNaUser,
                   //: DistanceAppManager.share.loginUserMode.isTPAuth != TPUserAuth.isSuccessed.rawValue
                   DistanceAppManager.share.loginUserMode.isTPAuth != BreakValueConvertible.isSuccessed.rawValue
                {
                    /// 真人认证提示弹窗
                    //: TalkingPopupWindowManager.shared.faceVerificationPopUpWindow()
                    FrameReactiveCompatible.shared.clickTo()
                    //: return
                    return
                        //: } else {
                } else {
                    //: self.pushFreeVC()
                    self.doingEqual()
                }
            }
            //: } else {
        } else {
            //: pushFreeVC()
            doingEqual()
        }
    }

    //: private func pushFreeVC() {
    private func doingEqual() {
        //: let isShow = Defaults.bool(forKey: TalkingFreeTipsViewIsShow)
        let isShow = show_blockText.bool(forKey: const_displayName)
        //: let freeVC = TalkingFreeViewController()
        let freeVC = ConcertThen()
        //: freeVC.delegate = slideVC.controllerItems.first as? any TalkingFreeViewControllerDelegate
        freeVC.delegate = slideVC.controllerItems.first as? any IndependentControllerDelegate
        //: guard isShow == false else {
        guard isShow == false else { // 已展示过
            //: navigationController?.pushViewController(freeVC, animated: true)
            navigationController?.pushViewController(freeVC, animated: true)
            //: return
            return
        }
        //: TalkingFreeTipsView().showView {
        GoView().effect {
            //: self.navigationController?.pushViewController(freeVC, animated: true)
            self.navigationController?.pushViewController(freeVC, animated: true)
        }
    }
}

// MARK: - ModeGlideNavigationDelegate

//: extension TalkingMomentViewController: QYSlideNavigationDelegate {
extension EndNavigationDelegate: ModeGlideNavigationDelegate {
    //: func selectedViewController(_ viewController: UIViewController, index: Int) {}
    func page(_: UIViewController, index _: Int) {}
}

// MARK: - Layout

//: extension TalkingMomentViewController {
extension EndNavigationDelegate {
    /// 刷新动态通知角标
    //: func refreshNewsbadge(num: Int) {
    func nonePullInput(num: Int) {
        //: newsBadgeLab.isHidden = num > 0 ? false:true
        newsBadgeLab.isHidden = num > 0 ? false : true
        //: newsBadgeLab.text = num > 99 ? "99+":String(num)
        newsBadgeLab.text = num > 99 ? "99+" : String(num)
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func brush() {
        //: hideNavi = true
        hideNavi = true
        //: view.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        // 导航底部渐变背景
        //: view.addSubview(bottomImgView)
        view.addSubview(bottomImgView)
        //: addChild(slideVC)
        addChild(slideVC)
        //: view.addSubview(slideVC.view)
        view.addSubview(slideVC.view)
        //: view.addSubview(newsBtn)
        view.addSubview(newsBtn)
        //: view.addSubview(newsBadgeLab)
        view.addSubview(newsBadgeLab)
        //: view.addSubview(freeBtn)
        view.addSubview(freeBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func finishConstraint() {
        //: bottomImgView.snp.makeConstraints { make in
        bottomImgView.snp.makeConstraints { make in
            //: make.leading.top.width.equalToSuperview()
            make.leading.top.width.equalToSuperview()
            //: make.height.equalTo(145+StatusBarHeight)
            make.height.equalTo(145 + main_netValue)
        }
        //: newsBtn.snp.makeConstraints { make in
        newsBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight)
            make.top.equalTo(main_netValue)
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.size.equalTo(CGSize(width: 40, height: 40))
            make.size.equalTo(CGSize(width: 40, height: 40))
        }
        //: newsBadgeLab.snp.makeConstraints { make in
        newsBadgeLab.snp.makeConstraints { make in
            //: make.leading.equalTo(newsBtn.snp.trailing).offset(-20)
            make.leading.equalTo(newsBtn.snp.trailing).offset(-20)
            //: make.top.equalTo(newsBtn).offset(2)
            make.top.equalTo(newsBtn).offset(2)
            //: make.height.equalTo(16)
            make.height.equalTo(16)
            //: make.width.greaterThanOrEqualTo(16)
            make.width.greaterThanOrEqualTo(16)
        }
        //: freeBtn.snp.makeConstraints { make in
        freeBtn.snp.makeConstraints { make in
            //: make.trailing.equalTo(-10)
            make.trailing.equalTo(-10)
            //: make.bottom.equalTo(-115)
            make.bottom.equalTo(-115)
            //: make.size.equalTo(CGSize(width: 55, height: 55))
            make.size.equalTo(CGSize(width: 55, height: 55))
        }
    }
}
