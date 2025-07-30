
//: Declare String Begin

/*: "Personal information" :*/
fileprivate let k_conversationEdgeData:String = "case filter lab equal labelPerson"
fileprivate let k_sharedPath:String = "sizefor"
fileprivate let kCellOriginFormat:String = "MATION"

/*: _ :*/
fileprivate let kTextSumTitle:[Character] = ["_"]

/*: "male" :*/
fileprivate let kAddUrl:[UInt8] = [0x3b,0x37,0x3a,0x33]

private func viewGender(from num: UInt8) -> UInt8 {
    return num ^ 86
}

/*: "female" :*/
fileprivate let k_namePath:String = "fedisplayale"

/*: "sex" :*/
fileprivate let kSharedUrl:[Character] = ["s","e","x"]

/*: "nickname" :*/
fileprivate let k_redStr:[Character] = ["n","i","c","k","n","a","m","e"]

/*: "birthday" :*/
fileprivate let kBeautyUrl:[Character] = ["b","i","r","t","h","d","a","y"]

/*: "%.2d" :*/
fileprivate let kTopShapeMessage:[Character] = ["%",".","2","d"]

/*: - :*/
fileprivate let kActualData:[Character] = ["-"]

/*: "User :*/
fileprivate let kSendShareHideFormat:String = "user borderUser"

/*: "invite_code" :*/
fileprivate let kMakeMessage:[UInt8] = [0xde,0xe3,0xeb,0xde,0xe9,0xda,0xd4,0xd8,0xe4,0xd9,0xda]

fileprivate func bottomResult(video num: UInt8) -> UInt8 {
    let value = Int(num) + 139
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FileResumeReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/30.
//

//: import UIKit
import UIKit

//: class TalkingLoginEditInfoVC: TalkingBaseViewController {
class FileResumeReactiveCompatible: StartThen {
    //: fileprivate let disposeBag = DisposeBag()
    fileprivate let disposeBag = DisposeBag()

    //: override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        //: super.viewDidAppear(animated)
        super.viewDidAppear(animated)
        //: popGesture(isOpen: false)
        outUpAction(isOpen: false)
    }

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        // 返回到此页面时，重新赋值
        //: if editInfoView.nameInputView.text?.count ?? 0 > 0 {
        if editInfoView.nameInputView.text?.count ?? 0 > 0 {
            //: DistanceAppManager.share.userFillInfoMode.nickName = editInfoView.nameInputView.text ?? ""
            DistanceAppManager.share.userFillInfoMode.nickName = editInfoView.nameInputView.text ?? ""
        }
        //: if editInfoView.inviteCodeInputView.text?.count ?? 0 > 0 {
        if editInfoView.inviteCodeInputView.text?.count ?? 0 > 0 {
            //: DistanceAppManager.share.userFillInfoMode.inviteCode = editInfoView.inviteCodeInputView.text ?? ""
            DistanceAppManager.share.userFillInfoMode.inviteCode = editInfoView.inviteCodeInputView.text ?? ""
        }
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: title = "Personal information".localized
        title = (String(k_conversationEdgeData.suffix(6)) + "al i" + k_sharedPath.replacingOccurrences(of: "size", with: "n") + kCellOriginFormat.lowercased()).localized
        //: view.backgroundColor = .white
        view.backgroundColor = .white
        //: setupSubviews()
        block()
        //: setupSubViewsConstraint()
        alongInsideConfinement()
        //: bindInteraction()
        needLoad()
        //: addTapGestureRecognizer()
        viewRecognizer()
    }

    // MARK: - Lazy Load

    //: private lazy var editInfoView: TalkingLoginEditInfoView = {
    private lazy var editInfoView: PerspectiveFieldDelegate = {
        //: let infoView = TalkingLoginEditInfoView()
        let infoView = PerspectiveFieldDelegate()
        //: return infoView
        return infoView
        //: }()
    }()
}

// MARK: - Public Event

//: extension TalkingLoginEditInfoVC {
extension FileResumeReactiveCompatible {
    /// 重写返回按钮事件
    //: override func naviPopback() {
    override func dataText() {
        //: super.naviPopback()
        super.dataText()
        // 埋点
        //: let eventID = "\(click_registration_information1_backBTN)_\(DistanceAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
        let eventID = "\(mainDeviceText)_\(DistanceAppManager.share.userFillInfoMode.sex == ManagerQuickLookable.male.rawValue ? String(bytes: kAddUrl.map{viewGender(from: $0)}, encoding: .utf8)! : (k_namePath.replacingOccurrences(of: "display", with: "m")))"
        //: uploadRecord.uploadRecordEvent(eventID: eventID)
        kSoundName.messUp(eventID: eventID)
    }

    /// next事件
    //: private func commitControlAction() {
    private func television() {
        //: if DistanceAppManager.share.userFillInfoMode.nickName.count <= 0 {
        if DistanceAppManager.share.userFillInfoMode.nickName.count <= 0 {
            //: getRandomNickname()
            haphazard()
        }
        //: var params = [String: Any]()
        var params = [String: Any]()
        //: params["sex"] = DistanceAppManager.share.userFillInfoMode.sex
        params[(String(kSharedUrl))] = DistanceAppManager.share.userFillInfoMode.sex
        //: params["nickname"] = DistanceAppManager.share.userFillInfoMode.nickName
        params[(String(k_redStr))] = DistanceAppManager.share.userFillInfoMode.nickName
        //: params["birthday"] = "\(String(format: "%.2d", DistanceAppManager.share.userFillInfoMode.birthMonth))-\(String(format: "%.2d", DistanceAppManager.share.userFillInfoMode.birthDay))-\(DistanceAppManager.share.userFillInfoMode.birthYear)"
        params[(String(kBeautyUrl))] = "\(String(format: "%.2d", DistanceAppManager.share.userFillInfoMode.birthMonth))-\(String(format: "%.2d", DistanceAppManager.share.userFillInfoMode.birthDay))-\(DistanceAppManager.share.userFillInfoMode.birthYear)"
        //: let VC = TalkingLoginEditPhotoVC()
        let VC = LoginViewController()
        //: VC.params = params
        VC.params = params
        //: currentViewController()?.navigationController?.pushViewController(VC, animated: true)
        selectStart()?.navigationController?.pushViewController(VC, animated: true)
    }

    /// skip事件
    //: private func func__skipBtnAction() {
    private func sinceExecuteAction() {
        //: getRandomNickname()
        haphazard()
        //: DistanceAppManager.share.userFillInfoMode.setBirth()
        DistanceAppManager.share.userFillInfoMode.makeBirth()
        //: DistanceAppManager.share.userFillInfoMode.inviteCode = ""
        DistanceAppManager.share.userFillInfoMode.inviteCode = ""
        //: commitControlAction()
        television()
    }

    /// 获取随机昵称
    //: private func getRandomNickname() {
    private func haphazard() {
        //: let randCode = Int(arc4random_uniform(899999) + 100000)
        let randCode = Int(arc4random_uniform(899_999) + 100_000)
        //: DistanceAppManager.share.userFillInfoMode.nickName = "User\(randCode)"
        DistanceAppManager.share.userFillInfoMode.nickName = (String(kSendShareHideFormat.suffix(4))) + "\(randCode)"
    }
}

// MARK: - Layout

//: extension TalkingLoginEditInfoVC {
extension FileResumeReactiveCompatible {
    // 添加视图
    //: private func setupSubviews() {
    private func block() {
        //: view.addSubview(editInfoView)
        view.addSubview(editInfoView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func alongInsideConfinement() {
        //: editInfoView.snp.makeConstraints { make in
        editInfoView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func needLoad() {
        //: editInfoView.btnBlock = { [weak self] (_ type: EditInfoType) in
        editInfoView.btnBlock = { [weak self] (_ type: FileInfoType) in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: switch type {
            switch type {
            //: case .HeadPic: break
            case .HeadPic: break
            //: case .NickName: break
            case .NickName: break
            //: case .Birth: break
            case .Birth: break
            //: case .Finish:
            case .Finish:
                // 埋点
                //: let eventID = "\(click_registration_information1_nextBTN)_\(DistanceAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
                let eventID = "\(data_beautyMeContent)_\(DistanceAppManager.share.userFillInfoMode.sex == ManagerQuickLookable.male.rawValue ? String(bytes: kAddUrl.map{viewGender(from: $0)}, encoding: .utf8)! : (k_namePath.replacingOccurrences(of: "display", with: "m")))"
                //: uploadRecord.uploadRecordEvent(eventID: eventID)
                kSoundName.messUp(eventID: eventID)

                // 校验验证码
                //: if DistanceAppManager.share.userFillInfoMode.inviteCode.count > 0 {
                if DistanceAppManager.share.userFillInfoMode.inviteCode.count > 0 {
                    //: let params = ["invite_code": DistanceAppManager.share.userFillInfoMode.inviteCode]
                    let params = [String(bytes: kMakeMessage.map{bottomResult(video: $0)}, encoding: .utf8)!: DistanceAppManager.share.userFillInfoMode.inviteCode]
                    //: TalkingLoginRequestTool.req_CheckCodeData(params: params) { succeed, _, _ in
                    IngatheringPullReactiveCompatible.panoramicView(params: params) { succeed, _, _ in
                        //: guard succeed else { return }
                        guard succeed else { return }
                        //: self.commitControlAction()
                        self.television()
                    }

                    //: } else {
                } else {
                    //: self.commitControlAction()
                    self.television()
                }

            //: case .Skip:
            case .Skip:
                // 埋点
                //: let eventID = "\(click_registration_information1_skipBTN)_\(DistanceAppManager.share.userFillInfoMode.sex == Gender.male.rawValue ? "male" : "female")"
                let eventID = "\(kPartyText)_\(DistanceAppManager.share.userFillInfoMode.sex == ManagerQuickLookable.male.rawValue ? String(bytes: kAddUrl.map{viewGender(from: $0)}, encoding: .utf8)! : (k_namePath.replacingOccurrences(of: "display", with: "m")))"
                //: uploadRecord.uploadRecordEvent(eventID: eventID)
                kSoundName.messUp(eventID: eventID)
                //: self.func__skipBtnAction()
                self.sinceExecuteAction()
            }
        }
    }
}
