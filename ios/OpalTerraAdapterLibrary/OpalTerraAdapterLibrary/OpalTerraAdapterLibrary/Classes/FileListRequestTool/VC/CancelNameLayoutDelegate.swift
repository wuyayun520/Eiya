
//: Declare String Begin

/*: "About me" :*/
fileprivate let kOfModelMessage:String = "submit var appAbout m"
fileprivate let k_textUrl:String = "share"

/*: "My interests" :*/
fileprivate let k_frameMsg:[Character] = ["M","y"," ","i","n","t","e","r","e","s","t","s"]

/*: "Done" :*/
fileprivate let k_blindId:String = "after name elseDone"

/*: "aboutMe" :*/
fileprivate let kButtonName:[Character] = ["a","b","o","u","t","M"]
fileprivate let kInfoFormat:String = "tool"

/*: "interest" :*/
fileprivate let k_neverMessage:String = "giftnte"

/*: "tagIds" :*/
fileprivate let k_enableUrl:[Character] = ["t","a","g","I","d"]
fileprivate let k_userValue:[Character] = ["s"]

/*: "category" :*/
fileprivate let k_makeValue:String = "data"
fileprivate let k_beginTitle:String = "ategorapp"

/*: "Save the change?" :*/
fileprivate let kMaxName:String = "Saitem add bottom"
fileprivate let kWithUrl:[Character] = ["v","e"," ","t","h","e"," ","c","h","a","n","g","e","?"]

/*: "Cancel" :*/
fileprivate let k_windowRawStr:String = "Cancelremove status"

/*: "Save" :*/
fileprivate let kConversationLayerData:[Character] = ["S","a","v","e"]

/*: "No more than 10 tags" :*/
fileprivate let k_managerUrl:String = "No morview return"
fileprivate let k_greetStartText:String = " application0 "

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CancelNameLayoutDelegate.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/8/31.
//

//: import UIKit
import UIKit

//: public protocol EditTagDelegate: NSObject {
public protocol GroupThen: NSObject {
    //: func freshSeleteTag()
    func app()
}

//: class TalkingEditTagVC: TalkingBaseViewController {
class CancelNameLayoutDelegate: StartThen {
    //: open weak var delegate: EditTagDelegate?
    open weak var delegate: GroupThen?
    //: var tagtype: TagType = .AboutMe
    var tagtype: StartMagnitudeLiteral = .AboutMe
    //: var seleteCellArray: [UserSeleteTagModel] = []
    var seleteCellArray: [PossibilityEquatable] = []
    //: var isChange = false
    var isChange = false
    //: var titles: Array<UserTagTypeModel> = Array()
    var titles: [CoequalTransformable] = Array()

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()

        //: self.view.backgroundColor = UIColor.white
        self.view.backgroundColor = UIColor.white
        //: switch tagtype {
        switch tagtype {
        //: case .AboutMe:
        case .AboutMe:
            //: self.title = "About me".localized
            self.title = (String(kOfModelMessage.suffix(7)) + k_textUrl.replacingOccurrences(of: "share", with: "e")).localized
        //: break
        //: case .Interests:
        case .Interests:
            //: self.title = "My interests".localized
            self.title = (String(k_frameMsg)).localized
            //: break
        }

        //: let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 18))
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 18))
        //: btn.setTitle("Done".localized, for: .normal)
        btn.setTitle((String(k_blindId.suffix(4))).localized, for: .normal)
        //: btn.setTitleColor(UIColor.appThemeColor(), for: .normal)
        btn.setTitleColor(UIColor.increase(), for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 15)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 15)
        //: btn.addTarget(self, action: #selector(doneBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(dealClick), for: .touchUpInside)
        //: let item = UIBarButtonItem(customView: btn)
        let item = UIBarButtonItem(customView: btn)
        //: self.navigationItem.rightBarButtonItem = item
        self.navigationItem.rightBarButtonItem = item

        //: collectionView.register(TalkingTagCell.self, forCellWithReuseIdentifier: TalkingTagCell.className())
        collectionView.register(IndividualViewCell.self, forCellWithReuseIdentifier: IndividualViewCell.className())
        //: collectionView.register(TalkingTagHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: TalkingTagHeaderView.className())
        collectionView.register(DisappearHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: DisappearHeaderView.className())
        //: collectionView.dataSource = self
        collectionView.dataSource = self
        //: collectionView.delegate = self
        collectionView.delegate = self
        //: collectionView.backgroundColor = .clear
        collectionView.backgroundColor = .clear
        //: self.view.addSubview(collectionView)
        self.view.addSubview(collectionView)
        //: collectionView.snp.makeConstraints {
        collectionView.snp.makeConstraints {
            //: $0.edges.equalToSuperview().inset(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
            $0.edges.equalToSuperview().inset(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        }

        //: reqdata()
        counteractionReqdata()
    }

    // MARK: - Lazy load

    //: lazy var layout: TalkingTagLayout = {
    lazy var layout: AddThen = {
        //: let temp = TalkingTagLayout()
        let temp = AddThen()
        //: temp.delegate = self
        temp.delegate = self
        //: return temp
        return temp
        //: }()
    }()

    //: private(set) lazy var collectionView: UICollectionView = {
    private(set) lazy var collectionView: UICollectionView = {
        //: let layout = self.layout
        let layout = self.layout
        //: let temp = UICollectionView(frame: .zero, collectionViewLayout: layout)
        let temp = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //: return temp
        return temp
        //: }()
    }()
}

// MARK: - Load data

//: extension TalkingEditTagVC {
extension CancelNameLayoutDelegate {
    //: func reqdata() {
    func counteractionReqdata() {
        //: if DistanceAppManager.share.func__loadUserTagCacheData() == nil {
        if DistanceAppManager.share.numerousness() == nil {
            //: } else {
        } else {
            //: let tagModel: UserTagModel=DistanceAppManager.share.func__loadUserTagCacheData() as! UserTagModel
            let tagModel: ServerMeasurable = DistanceAppManager.share.numerousness() as! ServerMeasurable
            //: switch tagtype {
            switch tagtype {
            //: case .AboutMe:
            case .AboutMe:
                //: titles = tagModel.aboutMe
                titles = tagModel.aboutMe
                //: setLastSelete(type: 1)
                isochronous(type: 1)
            //: break
            //: case .Interests:
            case .Interests:
                //: titles = tagModel.interest
                titles = tagModel.interest
                //: setLastSelete(type: 2)
                isochronous(type: 2)
                //: break
            }
        }
    }

    //: func uploadTag() {
    func complete() {
        //: guard let customDelegate = self.delegate else {
        guard let customDelegate = self.delegate else {
            //: return
            return
        }
        //: var category = ""
        var category = ""
        //: if self.tagtype == .AboutMe {
        if self.tagtype == .AboutMe {
            //: category = "aboutMe"
            category = (String(kButtonName) + kInfoFormat.replacingOccurrences(of: "tool", with: "e"))
            //: } else {
        } else {
            //: category = "interest"
            category = (k_neverMessage.replacingOccurrences(of: "gift", with: "i") + "rest")
        }
        //: var str = ""
        var str = ""
        //: for i in 0..<self.seleteCellArray.count {
        for i in 0 ..< self.seleteCellArray.count {
            //: let model = self.seleteCellArray[i]
            let model = self.seleteCellArray[i]
            //: str += model.tag_id!
            str += model.tag_id!
            //: if i<self.seleteCellArray.count-1 {
            if i < self.seleteCellArray.count - 1 {
                //: str += ","
                str += ","
            }
        }
        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["tagIds"] = str
        dict[(String(k_enableUrl) + String(k_userValue))] = str
        //: dict["category"] = category
        dict[(k_makeValue.replacingOccurrences(of: "data", with: "c") + k_beginTitle.replacingOccurrences(of: "app", with: "y"))] = category
        //: ProgressHUD.show()
        EndProgressHUD.listHide()
        //: TalkingMeRequestTool.req_EditTag(params: dict) { [self] succeed, result, errorModel in
        FileListRequestTool.aperture(params: dict) { [self] succeed, _, _ in
            //: EndProgressHUD.popEnable()
            EndProgressHUD.popEnable()
            //: if succeed {
            if succeed {
                //: if self.tagtype == .AboutMe {
                if self.tagtype == .AboutMe {
                    //: DistanceAppManager.share.loginUserMode.aboutMe = self.seleteCellArray
                    DistanceAppManager.share.loginUserMode.aboutMe = self.seleteCellArray
                    //: } else {
                } else {
                    //: DistanceAppManager.share.loginUserMode.interest = self.seleteCellArray
                    DistanceAppManager.share.loginUserMode.interest = self.seleteCellArray
                }
                //: customDelegate.freshSeleteTag()
                customDelegate.app()
                //: self.navigationController!.popViewController(animated: true)
                self.navigationController!.popViewController(animated: true)
            }
        }
    }
}

// MARK: - Event

//: extension TalkingEditTagVC {
extension CancelNameLayoutDelegate {
    //: override func naviPopback() {
    override func dataText() {
        //: var modelArray: Array<UserSeleteTagModel> = []
        var modelArray: [PossibilityEquatable] = []
        //: switch tagtype {
        switch tagtype {
        //: case .AboutMe:
        case .AboutMe:
            //: modelArray = DistanceAppManager.share.loginUserMode.aboutMe!
            modelArray = DistanceAppManager.share.loginUserMode.aboutMe!
        //: break
        //: case .Interests:
        case .Interests:
            //: modelArray = DistanceAppManager.share.loginUserMode.interest!
            modelArray = DistanceAppManager.share.loginUserMode.interest!
            //: break
        }

        //: if !isChange {
        if !isChange {
            //: self.navigationController?.popViewController(animated: true)
            self.navigationController?.popViewController(animated: true)
            //: } else {
        } else {
            //: let config = ShowAlertConfig()
            let config = VideoAlertConfig()
            //: config.alignment = .center
            config.alignment = .center
            //: TalkingAlertShow.customAlert(message: "Save the change?".localized, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Save".localized, leftBlock: {
            FrameHiddenReactiveCompatible.systemToConfig(message: (String(kMaxName.prefix(2)) + String(kWithUrl)).localized, leftBtnTitle: (String(k_windowRawStr.prefix(6))).localized, rightBtnTitle: (String(kConversationLayerData)).localized, leftBlock: {
                //: TalkingAlertShow.hideAlert()
                FrameHiddenReactiveCompatible.middleText()
                //: self.navigationController?.popViewController(animated: true)
                self.navigationController?.popViewController(animated: true)
                //: }, rightBlock: {
            }, rightBlock: {
                //: TalkingAlertShow.hideAlert()
                FrameHiddenReactiveCompatible.middleText()
                //: self.uploadTag()
                self.complete()
                //: }, config: config)
            }, config: config)
        }
    }

    //: func setLastSelete(type: Int) {
    func isochronous(type: Int) {
        //: var modelArray: Array<UserSeleteTagModel> = []
        var modelArray: [PossibilityEquatable] = []
        //: if type == 1 {
        if type == 1 {
            //: modelArray = DistanceAppManager.share.loginUserMode.aboutMe!
            modelArray = DistanceAppManager.share.loginUserMode.aboutMe!
            //: } else {
        } else {
            //: modelArray = DistanceAppManager.share.loginUserMode.interest!
            modelArray = DistanceAppManager.share.loginUserMode.interest!
        }
        //: for i in 0..<modelArray.count {
        for i in 0 ..< modelArray.count {
            //: let modeli = modelArray[i]
            let modeli = modelArray[i]
            //: for j in 0..<titles.count {
            for j in 0 ..< titles.count {
                //: let modelj = titles[j]
                let modelj = titles[j]
                //: let list = modelj.list
                let list = modelj.list
                //: for z in 0..<list!.count {
                for z in 0 ..< list!.count {
                    //: var modelz = list?[z]
                    var modelz = list?[z]
                    //: if modeli.equals(compareTo: modelz!) {
                    if modeli.studyEqual(compareTo: modelz!) {
                        //: modelz?.isSelete = true
                        modelz?.isSelete = true
                        //: titles[j].list[z] = modelz!
                        titles[j].list[z] = modelz!
                        //: seleteCellArray.append(modelz!)
                        seleteCellArray.append(modelz!)
                    }
                }
            }
        }
    }

    //: @objc func doneBtnClick() {
    @objc func dealClick() {
        //: uploadTag()
        complete()
    }
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource

//: extension TalkingEditTagVC: UICollectionViewDelegate, UICollectionViewDataSource {
extension CancelNameLayoutDelegate: UICollectionViewDelegate, UICollectionViewDataSource {
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return titles.count
        return titles.count
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //: let model = titles[section]
        let model = titles[section]
        //: return model.list.count
        return model.list.count
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TalkingTagCell.className(), for: indexPath) as! TalkingTagCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: IndividualViewCell.className(), for: indexPath) as! IndividualViewCell
        //: let model = self.titles[indexPath.section]
        let model = self.titles[indexPath.section]
        //: let title: UserSeleteTagModel = model.list[indexPath.row]
        let title: PossibilityEquatable = model.list[indexPath.row]
        //: var tag_name = ""
        var tag_name = ""
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
        if UserViewToolThen.share.interfaceLang == PlayerSubqueryConvertible.ar.rawValue {
            //: tag_name = title.tag_name_ar
            tag_name = title.tag_name_ar
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
        } else if UserViewToolThen.share.interfaceLang == PlayerSubqueryConvertible.es.rawValue {
            //: tag_name = title.tag_name_es
            tag_name = title.tag_name_es
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
        } else if UserViewToolThen.share.interfaceLang == PlayerSubqueryConvertible.pt.rawValue {
            //: tag_name = title.tag_name_pt
            tag_name = title.tag_name_pt
        }
        //: if tag_name.count <= 0 {
        if tag_name.count <= 0 {
            //: tag_name = title.tag_name
            tag_name = title.tag_name
        }
        //: cell.fill(title: tag_name )
        cell.column(title: tag_name)
        //: cell.tagBtnClick(isSelete: title.isSelete)
        cell.ticket(isSelete: title.isSelete)
        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: let cell: TalkingTagCell = collectionView.cellForItem(at: indexPath)as! TalkingTagCell
        let cell: IndividualViewCell = collectionView.cellForItem(at: indexPath) as! IndividualViewCell

        //: var model = self.titles[indexPath.section]
        var model = self.titles[indexPath.section]
        //: var title = model.list[indexPath.row]
        var title = model.list[indexPath.row]
        //: if  seleteCellArray.contains(where: { $0.equals(compareTo: title)}) {
        if seleteCellArray.contains(where: { $0.studyEqual(compareTo: title) }) {
            //: seleteCellArray.removeAll(where: {$0.equals(compareTo: title)})
            seleteCellArray.removeAll(where: { $0.studyEqual(compareTo: title) })
            //: isChange = true
            isChange = true
            //: title.isSelete =  false
            title.isSelete = false
            //: } else {
        } else {
            //: if seleteCellArray.count>=10 {
            if seleteCellArray.count >= 10 {
                //: self.func__showStatusBarErrorMsg(showMsg: "No more than 10 tags".localized)
                self.arcInfo(showMsg: (String(k_managerUrl.prefix(6)) + "e than" + k_greetStartText.replacingOccurrences(of: "application", with: "1") + "tags").localized)
                //: return
                return
            }
            //: seleteCellArray.append(title)
            seleteCellArray.append(title)
            //: isChange = true
            isChange = true
            //: title.isSelete =  true
            title.isSelete = true
        }
        //: model.list[indexPath.row] = title
        model.list[indexPath.row] = title
        //: self.titles[indexPath.section] = model
        self.titles[indexPath.section] = model
        //: cell.tagBtnClick()
        cell.nameTag()
        //: if self.titles.count>0 {
        if self.titles.count > 0 {
            //: self.navigationItem.rightBarButtonItem?.isEnabled = true
            self.navigationItem.rightBarButtonItem?.isEnabled = true
            //: } else {
        } else {
            //: self.navigationItem.rightBarButtonItem?.isEnabled = false
            self.navigationItem.rightBarButtonItem?.isEnabled = false
        }
    }

    //: func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        //: switch kind {
        switch kind {
        //: case UICollectionView.elementKindSectionHeader:
        case UICollectionView.elementKindSectionHeader:
            //: let headView: TalkingTagHeaderView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: TalkingTagHeaderView.className(), for: indexPath) as! TalkingTagHeaderView
            let headView: DisappearHeaderView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: DisappearHeaderView.className(), for: indexPath) as! DisappearHeaderView
            //: headView.backgroundColor = UIColor.clear
            headView.backgroundColor = UIColor.clear
            //: let model = self.titles[indexPath.section]
            let model = self.titles[indexPath.section]
            //: var name = model.name
            var name = model.name
            //: if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
            if UserViewToolThen.share.interfaceLang == PlayerSubqueryConvertible.ar.rawValue {
                //: name = model.name_ar
                name = model.name_ar
                //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
            } else if UserViewToolThen.share.interfaceLang == PlayerSubqueryConvertible.es.rawValue {
                //: name = model.name_es
                name = model.name_es
                //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
            } else if UserViewToolThen.share.interfaceLang == PlayerSubqueryConvertible.pt.rawValue {
                //: name = model.name_pt
                name = model.name_pt
            }
            //: headView.label.text = name
            headView.label.text = name
            //: return headView
            return headView
        //: default:
        default:
            //: return UICollectionReusableView()
            return UICollectionReusableView()
        }
    }
}

// MARK: - RemotePullThen

//: extension TalkingEditTagVC: TagLayoutDelegate {
extension CancelNameLayoutDelegate: RemotePullThen {
    /// 标签内边距
    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, tagInnerMarginForItemAt indexPath: IndexPath) -> CGFloat {
    func purchaseData(_: AddThen, collectionView _: UICollectionView, tagInnerMarginForItemAt _: IndexPath) -> CGFloat {
        //: return CGFloat(25)
        return CGFloat(25)
    }

    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, sizeForSupplementaryElementOfKind kind: String, at section: Int) -> CGSize {
    func below(_: AddThen, collectionView _: UICollectionView, sizeForSupplementaryElementOfKind kind: String, at _: Int) -> CGSize {
        //: switch kind {
        switch kind {
        //: case UICollectionView.elementKindSectionHeader:
        case UICollectionView.elementKindSectionHeader:
            //: return CGSize(width: 250, height: 32)
            return CGSize(width: 250, height: 32)
        //: case UICollectionView.elementKindSectionFooter:
        case UICollectionView.elementKindSectionFooter:
            //: return CGSize(width: 250, height: 40)
            return CGSize(width: 250, height: 40)
        //: default:
        default:
            //: return CGSize(width: 250, height: 40)
            return CGSize(width: 250, height: 40)
        }
    }

    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, textForItemAt indexPath: IndexPath) -> String {
    func all(_: AddThen, collectionView _: UICollectionView, textForItemAt indexPath: IndexPath) -> String {
        //: let model = self.titles[indexPath.section]
        let model = self.titles[indexPath.section]
        //: let title = model.list[indexPath.row]
        let title = model.list[indexPath.row]
        //: var tag_name = ""
        var tag_name = ""
        //: if TalkingRequestAddrTool.share.interfaceLang == LangType.ar.rawValue {
        if UserViewToolThen.share.interfaceLang == PlayerSubqueryConvertible.ar.rawValue {
            //: tag_name = title.tag_name_ar
            tag_name = title.tag_name_ar
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.es.rawValue {
        } else if UserViewToolThen.share.interfaceLang == PlayerSubqueryConvertible.es.rawValue {
            //: tag_name = title.tag_name_es
            tag_name = title.tag_name_es
            //: } else if TalkingRequestAddrTool.share.interfaceLang == LangType.pt.rawValue {
        } else if UserViewToolThen.share.interfaceLang == PlayerSubqueryConvertible.pt.rawValue {
            //: tag_name = title.tag_name_pt
            tag_name = title.tag_name_pt
        }
        //: if tag_name.count <= 0 {
        if tag_name.count <= 0 {
            //: tag_name = title.tag_name
            tag_name = title.tag_name
        }
        //: return tag_name
        return tag_name
    }

    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, heightBottomAt section: Int) -> CGFloat {
    func fixingAt(_: AddThen, collectionView _: UICollectionView, heightBottomAt _: Int) -> CGFloat {
        //: return 24
        return 24
    }

    //: func tagLayout(_ layout: TalkingTagLayout, collectionView: UICollectionView, leftSapceAt section: Int) -> CGFloat {
    func tap(_: AddThen, collectionView _: UICollectionView, leftSapceAt _: Int) -> CGFloat {
        //: return 15
        return 15
    }
}
