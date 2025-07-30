
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_loadUrl:[UInt8] = [0x5b,0x5c,0x5b,0x46,0x1a,0x51,0x5d,0x56,0x57,0x40,0x8,0x1b,0x12,0x5a,0x53,0x41,0x12,0x5c,0x5d,0x46,0x12,0x50,0x57,0x57,0x5c,0x12,0x5b,0x5f,0x42,0x5e,0x57,0x5f,0x57,0x5c,0x46,0x57,0x56]

private func textAdd(text num: UInt8) -> UInt8 {
    return num ^ 50
}

/*: "#292929" :*/
fileprivate let k_menuContent:[Character] = ["#","2","9","2","9","2","9"]

/*: "9999999" :*/
fileprivate let kThePath:String = "9999999"

/*: "icon_coin" :*/
fileprivate let k_appViewKey:String = "tip"
fileprivate let kKindTitle:String = "var height acon_coin"

/*: "icon_gift_more_arrow" :*/
fileprivate let k_colorMsg:String = "icomanager"
fileprivate let k_addMsg:String = "t_moregift make open create input"

/*: "Hot" :*/
fileprivate let kCellValue:[Character] = ["H","o","t"]

/*: "VIP" :*/
fileprivate let kLabelId:String = "Vgesture"

/*: "Bags" :*/
fileprivate let k_indicatorId:[Character] = ["B","a","g","s"]

/*: "icon_gift_num_arrow" :*/
fileprivate let kSoundValue:String = "icon_hide view next app label"
fileprivate let k_partyMessage:String = "extra male let the content_num"

/*: "Send" :*/
fileprivate let k_colorFormat:String = "Sendclass add"

/*: "nav_back_black_nor" :*/
fileprivate let k_pointImageWithId:[Character] = ["n","a","v","_","b"]
fileprivate let k_replyMsg:[Character] = ["a","c","k","_","b","l","a","c","k","_","n","o","r"]

/*: "The number of gifts cannot be less than 1" :*/
fileprivate let kErrBlockName:[UInt8] = [0x1a,0x26,0x2b,0x6e,0x20,0x3b,0x23,0x2c,0x2b,0x3c,0x6e,0x21,0x28,0x6e,0x29,0x27,0x28,0x3a,0x3d,0x6e,0x2d,0x2f,0x20,0x20,0x21,0x3a,0x6e,0x2c,0x2b,0x6e,0x22,0x2b,0x3d,0x3d,0x6e,0x3a,0x26,0x2f,0x20,0x6e,0x7f]

/*: "Please select a gift" :*/
fileprivate let k_dataFormat:[Character] = ["P","l","e","a","s","e"," ","s"]
fileprivate let k_genderValue:String = "valuelvaluec"
fileprivate let kBottomExtraValue:String = "t a gifttext main layer"

/*: "Please select an object" :*/
fileprivate let kLayerUrl:[Character] = ["P","l"]
fileprivate let kStageFormat:[Character] = ["e","a","s","e"," ","s","e","l","e","c","t"," ","a","n"," ","o","b","j","e","c","t"]

/*: "Select the desired gift to unlock" :*/
fileprivate let kPageMessage:[UInt8] = [0x83,0xb5,0xbc,0xb5,0xb3,0xa4,0xf0,0xa4,0xb8,0xb5,0xf0,0xb4,0xb5,0xa3,0xb9,0xa2,0xb5,0xb4,0xf0,0xb7,0xb9,0xb6,0xa4,0xf0,0xa4,0xbf,0xf0,0xa5,0xbe,0xbc,0xbf,0xb3,0xbb]

/*: "OK" :*/
fileprivate let k_upMessage:String = "Olast"

/*: "Select object >" :*/
fileprivate let kRemoteUrl:String = "Selectkey data to else self"
fileprivate let k_contentData:String = "image"

/*: "It looks like there's nothing" :*/
fileprivate let k_appearName:String = "let float equalIt lo"
fileprivate let kVoiceMessage:String = "case atke ther"
fileprivate let kReName:String = "e\'s "

/*: "FF75A4" :*/
fileprivate let kMessageUserKey:[Character] = ["F","F","7","5","A","4"]

/*: "E570FF" :*/
fileprivate let kTurnName:String = "Erest70F"
fileprivate let k_modelName:String = "game"

/*: "Ask for" :*/
fileprivate let kCellKey:String = "Ask fline case in let bottom"
fileprivate let kLabFormat:String = "namer"

/*: " Select %@ > " :*/
fileprivate let kViewValue:String = "self icon Select"
fileprivate let kFrameMessage:String = " gender@ > "

/*: "All Numbers" :*/
fileprivate let kModelPendingClickContent:String = "hidden interval action text userAll Nu"
fileprivate let kInputTitle:[Character] = ["m","b","e","r","s"]

/*: "View detailed description >" :*/
fileprivate let k_valueMsg:String = "pin monitor varView"
fileprivate let k_selectionUrl:String = "if state self orled d"
fileprivate let kNameViewMessage:String = "ptiequaln"
fileprivate let kMediumTitle:String = " attribute"

/*: "\n" :*/
fileprivate let k_labelId:[Character] = ["\n"]

/*: "%.2f" :*/
fileprivate let kDataKey:String = "submit event%.2f"

/*: "9999" :*/
fileprivate let k_showMsg:String = "9999"

/*: "Custom" :*/
fileprivate let k_userId:String = "up"
fileprivate let kIndexValue:String = "titlestom"

/*: "mf_coin" :*/
fileprivate let k_modelData:[Character] = ["m","f","_","c","o","i","n"]

/*: "showBagsRed" :*/
fileprivate let kDataFormat:String = "stiming"
fileprivate let k_actualName:[Character] = ["o","w","B","a","g","s","R","e","d"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MenuView.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/6.
//

//: import RxSwift
import RxSwift
//: import UIKit
import UIKit

/// 礼物面板UI样式
//: enum GiftViewStyle: String {
enum FrameCollection: String {
    //: case normal = "0"          // 默认送礼
    case normal = "0" // 默认送礼
    //: case intimatePhoto = "1"   // 私密照片送礼
    case intimatePhoto = "1" // 私密照片送礼
    //: case intimateVideo = "2"   // 视频送礼（目前和私密照片样式一致）
    case intimateVideo = "2" // 视频送礼（目前和私密照片样式一致）
    //: case groupChat = "3"       // 群聊礼物
    case groupChat = "3" // 群聊礼物
    //: case live = "4"            // 直播礼物
    case live = "4" // 直播礼物
    //: case call = "5"            // 音视频通话
    case call = "5" // 音视频通话
    //: case party = "6"           // 语聊房
    case party = "6" // 语聊房
}

/// 礼物面板数据类型
//: enum GiftDataType: Int {
enum AddSubscriptType: Int {
    //: case Hot = 0
    case Hot = 0 // 默认礼物
    //: case Vip = 1
    case Vip = 1 // vip礼物
    //: case Bags = 2
    case Bags = 2 // 背包礼物
}

// 发送礼物Block
//: typealias SendFunctionBlock = (_ giftModel: TalkingRoomGiftModel, _ num: String) -> Void
typealias SendFunctionBlock = (_ giftModel: RangeMeasurable, _ num: String) -> Void
// 索要礼物Block
//: typealias AskforFunctionBlock = (_ giftModel: TalkingRoomGiftModel, _ num: String) -> Void
typealias AskforFunctionBlock = (_ giftModel: RangeMeasurable, _ num: String) -> Void
// 私密照片发送礼物Block
//: typealias OKButtonBlock = (_ giftModel: TalkingRoomGiftModel) -> Void
typealias OKButtonBlock = (_ giftModel: RangeMeasurable) -> Void
// 群聊发送礼物Block
//: typealias ChatRoomSendActionBlock = (_ giftModel: TalkingRoomGiftModel, _ num: String, _ model: TalkingChatRoomMemberModel) -> Void
typealias ChatRoomSendActionBlock = (_ giftModel: RangeMeasurable, _ num: String, _ model: RunOutMemberModel) -> Void
// 隐藏礼物面板Block
//: typealias GiftViewHideBlock = () -> Void
typealias GiftViewHideBlock = () -> Void

// 礼物各模块高度
//: private let topView_H = 44.0
private let mainProgressData = 44.0
//: let GiftScrollContentView_H = 252.0
let constViewText = 252.0
//: private let pageControl_H = 7.0
private let userTotalName = 7.0
//: private let bottomView_H = 44.0
private let constFileData = 44.0

//: class TalkingChatGiftView: UIView {
class MenuView: UIView {
    //: var chatRoomID = ""
    var chatRoomID = ""
    //: var showOtherInputView = false
    var showOtherInputView = false
    //: var contentHeight = topView_H + GiftScrollContentView_H + pageControl_H + bottomView_H + kDeviceSafeBottomHeight
    var contentHeight = mainProgressData + constViewText + userTotalName + constFileData + appButtonData
    //: var keyborHeight = 0
    var keyborHeight = 0
    //: var sendActionBlock: SendFunctionBlock!
    var sendActionBlock: SendFunctionBlock!
    //: var askforActionBlock: AskforFunctionBlock!
    var askforActionBlock: AskforFunctionBlock!
    //: var chatRoomSendActionBlock: ChatRoomSendActionBlock!
    var chatRoomSendActionBlock: ChatRoomSendActionBlock!
    //: var giftHideBlock: GiftViewHideBlock!
    var giftHideBlock: GiftViewHideBlock!
    //: var okActionBlock: OKButtonBlock?
    var okActionBlock: OKButtonBlock?

    //: fileprivate lazy var disposeBag = DisposeBag()
    fileprivate lazy var disposeBag = DisposeBag()
    //: private var style: GiftViewStyle = .normal
    private var style: FrameCollection = .normal
    //: var giftSelectedModel = TalkingGiftSelectedModel()
    var giftSelectedModel = WithHandyJSON()
    //: var chatRoomgiftSelectedMemberModel: TalkingChatRoomMemberModel?
    var chatRoomgiftSelectedMemberModel: RunOutMemberModel?
    //: var popView: TalkingPopView?
    var popView: DataPopView?
    //: var meneView = DropDownMemberMenuView()
    var meneView = SizeObjectView()
    //: fileprivate var recentmenuArray = NSMutableArray.init()
    fileprivate var recentmenuArray = NSMutableArray()
    //: let maxRecentmenu = 2
    let maxRecentmenu = 2
    //: private var titlesArr = [GiftDataType]()
    private var titlesArr = [AddSubscriptType]()
    // 当前选中数据类型
    //: private var currType = GiftDataType.Hot
    private var currType = AddSubscriptType.Hot
    //: private var isShowRight = false
    private var isShowRight = false
    /// 初始化礼物背包
    /// - Parameters:
    ///   - frame: 布局
    ///   - style: 礼物面板UI样式
    ///   - titlesArr: 礼物面板数据类型
    //: init(frame: CGRect = .zero, style: GiftViewStyle = .normal, titlesArr: [GiftDataType] = [.Hot, .Vip, .Bags]) {
    init(frame: CGRect = .zero, style: FrameCollection = .normal, titlesArr: [AddSubscriptType] = [.Hot, .Vip, .Bags]) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.style = style
        self.style = style
        //: self.titlesArr = titlesArr
        self.titlesArr = titlesArr
        //: self.currType = titlesArr.first ?? .Hot
        self.currType = titlesArr.first ?? .Hot
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: self.isUserInteractionEnabled = true
        self.isUserInteractionEnabled = true
        //: if self.style == .party {
        if self.style == .party {
            //: contentHeight += TalkingVoiceRoomIconGiftView_H
            contentHeight += k_screenName
        }
        //: setupSubviews()
        last()
        //: bindInteraction()
        addMagnitudeeraction()
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeLanguageManager.shared.direction == .rightToLeft {
            //: let transform = CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0)
            let transform = CATransform3DMakeRotation(CGFloat(Double.pi), 0, 1, 0)
            //: hotGiftCollectionView.layer.transform = transform
            hotGiftCollectionView.layer.transform = transform
            //: self.isShowRight = true
            self.isShowRight = true
        }
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_loadUrl.map{textAdd(text: $0)}, encoding: .utf8)!)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    //: private lazy var contentView: UIView = {
    private lazy var contentView: UIView = {
        //: let frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: contentHeight)
        let frame = CGRect(x: 0, y: user_recordMarginValue, width: constFormalContent, height: contentHeight)
        //: let content = UIView(frame: frame)
        let content = UIView(frame: frame)
        //: content.backgroundColor = .init(hex: "#292929")
        content.backgroundColor = .init(hex: (String(k_menuContent)))
        //: content.Corner(width: ScreenWidth, height: contentHeight, corners: [.topLeft, .topRight], cornerRadii: .init(width: 15, height: 15))
        content.imageUser(width: constFormalContent, height: contentHeight, corners: [.topLeft, .topRight], cornerRadii: .init(width: 15, height: 15))
        //: self.addSubview(content)
        self.addSubview(content)
        //: return content
        return content
        //: }()
    }()

    //: lazy var partyIconView: TalkingVoiceRoomIconGiftView = {
    lazy var partyIconView: AddFlowLayout = {
        //: let frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: TalkingVoiceRoomIconGiftView_H)
        let frame = CGRect(x: 0, y: 0, width: constFormalContent, height: k_screenName)
        //: let view = TalkingVoiceRoomIconGiftView(frame: frame)
        let view = AddFlowLayout(frame: frame)
        //: view.isHidden = true
        view.isHidden = true
        //: contentView.addSubview(view)
        contentView.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var topView: UIView = {
    private lazy var topView: UIView = {
        //: let frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: topView_H)
        let frame = CGRect(x: 0, y: 0, width: constFormalContent, height: mainProgressData)
        //: let view = UIView(frame: frame)
        let view = UIView(frame: frame)
        //: view.backgroundColor = .init(hex: "#292929")
        view.backgroundColor = .init(hex: (String(k_menuContent)))
        //: contentView.addSubview(view)
        contentView.addSubview(view)
        //: return view
        return view
        //: }()
    }()

    //: private lazy var moneyBtn: TalkingButton = {
    private lazy var moneyBtn: ResumeControl = {
        //: let btn = TalkingButton()
        let btn = ResumeControl()
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 14)
        btn.titleLabel?.font = UIFont.fontChange(type: .Medium, fontSize: 14)
        //: btn.setTitle("9999999", for: .normal)
        btn.setTitle((kThePath.capitalized), for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "icon_coin"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (k_appViewKey.replacingOccurrences(of: "tip", with: "i") + String(kKindTitle.suffix(8)))), for: .normal)
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var rechargeBtn: UIButton = {
    private lazy var rechargeBtn: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.addTarget(self, action: #selector(rechargeBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(modify), for: .touchUpInside)

        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var indicatorImage: UIImageView = {
    private lazy var indicatorImage: UIImageView = {
        //: let img = UIImageView.init()
        let img = UIImageView()
        //: img.image = UIImage.submitGift(name: "icon_gift_more_arrow")
        img.image = UIImage.submitGift(name: (k_colorMsg.replacingOccurrences(of: "manager", with: "n") + "_gif" + String(k_addMsg.prefix(6)) + "_arrow"))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var pageControl: UIPageControl = {
    private lazy var pageControl: UIPageControl = {
        //: let page = UIPageControl.init()
        let page = UIPageControl()
        //: page.hidesForSinglePage = true
        page.hidesForSinglePage = true
        //: page.defersCurrentPageDisplay = true
        page.defersCurrentPageDisplay = true
        //: page.currentPageIndicatorTintColor = UIColor.RGBA(180, 180, 180, 1)
        page.currentPageIndicatorTintColor = UIColor.behindVoice(180, 180, 180, 1)
        //: page.pageIndicatorTintColor = UIColor.RGBA(60, 60, 60, 1)
        page.pageIndicatorTintColor = UIColor.behindVoice(60, 60, 60, 1)
        //: page.isEnabled = false
        page.isEnabled = false
        //: return page
        return page
        //: }()
    }()

    //: private lazy var scrollContentView: UIScrollView = {
    private lazy var scrollContentView: UIScrollView = {
        //: let scroll = UIScrollView.init()
        let scroll = UIScrollView()
        //: scroll.backgroundColor = .clear
        scroll.backgroundColor = .clear
        //: return scroll
        return scroll
        //: }()
    }()

    //: private lazy var hotGiftCollectionView: UICollectionView = {
    private lazy var hotGiftCollectionView: UICollectionView = {
        //: let layout = TalkingChatGiftLayout.init()
        let layout = ValueFlowLayout()
        //: layout.scrollDirection = .horizontal
        layout.scrollDirection = .horizontal
        //: let hot = UICollectionView.init(frame: .zero, collectionViewLayout: layout)
        let hot = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //: hot.delegate = self
        hot.delegate = self
        //: hot.dataSource = self
        hot.dataSource = self
        //: hot.bounces = false
        hot.bounces = false
        //: hot.isPagingEnabled = true
        hot.isPagingEnabled = true
        //: hot.showsHorizontalScrollIndicator = false
        hot.showsHorizontalScrollIndicator = false
        //: hot.backgroundColor = .clear
        hot.backgroundColor = .clear
        //: hot.isHidden = false
        hot.isHidden = false
        //: hot.register(TalkingPackageGiftCell.self, forCellWithReuseIdentifier: TalkingPackageGiftCell.className())
        hot.register(CustomView.self, forCellWithReuseIdentifier: CustomView.className())
        //: return hot
        return hot
        //: }()
    }()

    //: private lazy var hotGiftLayout: TalkingChatGiftLayout = {
    private lazy var hotGiftLayout: ValueFlowLayout = //: return hotGiftCollectionView.collectionViewLayout as! ValueFlowLayout
        hotGiftCollectionView.collectionViewLayout as! ValueFlowLayout
    //: }()

    //: private lazy var bottomView: UIView = {
    private lazy var bottomView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: return view
        return view
        //: }()
    }()

    //: private lazy var titleScrollView: ScrollSegmentView = {
    private lazy var titleScrollView: CoordinateReactiveCompatible = {
        //: var titles = [String]()
        var titles = [String]()
        //: titlesArr.forEach { type in
        titlesArr.forEach { type in
            //: switch type {
            switch type {
            //: case .Hot:
            case .Hot:
                //: titles.append("Hot".localized)
                titles.append((String(kCellValue)).localized)
            //: case .Vip:
            case .Vip:
                //: titles.append("VIP".localized)
                titles.append((kLabelId.replacingOccurrences(of: "gesture", with: "IP")).localized)
            //: case .Bags:
            case .Bags:
                //: titles.append("Bags".localized)
                titles.append((String(k_indicatorId)).localized)
            }
        }
        //: var style = SegmentStyle()
        var style = PitchSegmentStyle()
        //: style.scrollTitle = true
        style.scrollTitle = true
        //: style.showLine = true
        style.showLine = true
        //: style.scrollLineColor = .white
        style.scrollLineColor = .white

        //: let scrollview = ScrollSegmentView(frame: CGRect(x: 0, y: 0, width: titlesArr.count*50, height: Int(topView_H)), segmentStyle: style, titles: titles)
        let scrollview = CoordinateReactiveCompatible(frame: CGRect(x: 0, y: 0, width: titlesArr.count * 50, height: Int(mainProgressData)), segmentStyle: style, titles: titles)
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeLanguageManager.shared.direction == .rightToLeft {
            //: scrollview.frame.origin.x = UserTextMacroDefine.getScreenWidth()-scrollview.frame.width
            scrollview.frame.origin.x = UserTextMacroDefine.requestFor() - scrollview.frame.width
        }
        // 点击标题，联动礼物面板
        //: scrollview.titleBtnOnClick = { [weak self] _, index in
        scrollview.titleBtnOnClick = { [weak self] _, index in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: guard index != self.currType.rawValue else { return }
            guard index != self.currType.rawValue else { return }
            //: let indexPath = IndexPath(item: 0, section: index)
            let indexPath = IndexPath(item: 0, section: index)
            //: self.hotGiftCollectionView.selectItem(at: indexPath, animated: false, scrollPosition: .centeredVertically)
            self.hotGiftCollectionView.selectItem(at: indexPath, animated: false, scrollPosition: .centeredVertically)
        }
        // 处理红点
        //: scrollview.redBagsLab.isHidden = !TalkingChatGiftManager.share.showBagsRed
        scrollview.redBagsLab.isHidden = !AppNameGiftManager.share.showBagsRed
        //: return scrollview
        return scrollview
        //: }()
    }()

    //: private lazy var sendAreaView: UIView = {
    private lazy var sendAreaView: UIView = {
        //: let view = UIView.init()
        let view = UIView()
        //: view.layer.borderColor  = UIColor.appThemeColor().cgColor
        view.layer.borderColor = UIColor.increase().cgColor
        //: view.layer.borderWidth  = 1
        view.layer.borderWidth = 1
        //: view.layer.cornerRadius = 15
        view.layer.cornerRadius = 15
        //: view.clipsToBounds      = true
        view.clipsToBounds = true
        //: return view
        return view
        //: }()
    }()

    //: private lazy var giftNumButton: TalkingButton = {
    private lazy var giftNumButton: ResumeControl = {
        //: let btn = TalkingButton.init()
        let btn = ResumeControl()
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Regular, fontSize: 14)
        btn.titleLabel?.font = UIFont.fontChange(type: .Regular, fontSize: 14)
        //: btn.backgroundColor = .clear
        btn.backgroundColor = .clear
        //: btn.imageView?.contentMode = .scaleAspectFit
        btn.imageView?.contentMode = .scaleAspectFit
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "icon_gift_num_arrow"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(kSoundValue.prefix(5)) + "gift" + String(k_partyMessage.suffix(4)) + "_arrow")), for: .normal)
        //: btn.imageAlignment = .right
        btn.imageAlignment = .right
        //: btn.spaceBetweenTitleAndImage = 4
        btn.spaceBetweenTitleAndImage = 4
        //: btn.addTarget(self, action: #selector(giftNumBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(terminate), for: .touchUpInside)

        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var sendButton: UIButton = {
    private lazy var sendButton: UIButton = {
        //: let btn = UIButton.init()
        let btn = UIButton()
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Semibold, fontSize: 15)
        btn.titleLabel?.font = UIFont.fontChange(type: .Semibold, fontSize: 15)
        //: btn.backgroundColor = UIColor.appThemeColor()
        btn.backgroundColor = UIColor.increase()
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.setTitle("Send".localized, for: .normal)
        btn.setTitle((String(k_colorFormat.prefix(4))).localized, for: .normal)
        //: btn.addTarget(self, action: #selector(onTouchSendGiftBtn), for: .touchUpInside)
        btn.addTarget(self, action: #selector(titleBtn), for: .touchUpInside)

        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftInputNumInputView: UIView = {
    private lazy var giftInputNumInputView: UIView = {
        //: let view = UIView.init(frame: CGRect(x: 0, y: ScreenHeight-CGFloat(keyborHeight)-44, width: ScreenWidth, height: 44))
        let view = UIView(frame: CGRect(x: 0, y: user_recordMarginValue - CGFloat(keyborHeight) - 44, width: constFormalContent, height: 44))
        //: view.backgroundColor = .black
        view.backgroundColor = .black
        //: let backButton = UIButton.init()
        let backButton = UIButton()
        //: let img = UIImage.submitGift(name: "nav_back_black_nor").withRenderingMode(.alwaysTemplate)
        let img = UIImage.submitGift(name: (String(k_pointImageWithId) + String(k_replyMsg))).withRenderingMode(.alwaysTemplate)
        //: backButton.setImage(img, for: .normal)
        backButton.setImage(img, for: .normal)
        //: backButton.tintColor = .white
        backButton.tintColor = .white
        //: view.addSubview(backButton)
        view.addSubview(backButton)
        //: backButton.snp.makeConstraints { make in
        backButton.snp.makeConstraints { make in
            //: make.leading.top.equalTo(view)
            make.leading.top.equalTo(view)
            //: make.width.height.equalTo(44)
            make.width.height.equalTo(44)
        }
        //: backButton.rx.tap.subscribe { (event) in
        backButton.rx.tap.subscribe { _ in
            //: self.popView?.dismissView()
            self.popView?.upView()
            //: self.popView = nil
            self.popView = nil
            //: }.disposed(by: disposeBag)
        }.disposed(by: disposeBag)

        //: let sendButton = UIButton.init()
        let sendButton = UIButton()
        //: sendButton.setBackgroundColor(color: .appThemeColor(), forState: .normal)
        sendButton.languageUnitState(color: .increase(), forState: .normal)
        //: sendButton.setTitleColor(UIColor.white, for: .normal)
        sendButton.setTitleColor(UIColor.white, for: .normal)
        //: sendButton.setTitle("Send".localized, for: .normal)
        sendButton.setTitle((String(k_colorFormat.prefix(4))).localized, for: .normal)
        //: view.addSubview(sendButton)
        view.addSubview(sendButton)
        //: sendButton.snp.makeConstraints { make in
        sendButton.snp.makeConstraints { make in
            //: make.trailing.top.equalTo(view)
            make.trailing.top.equalTo(view)
            //: make.width.equalTo(106)
            make.width.equalTo(106)
            //: make.height.equalTo(44)
            make.height.equalTo(44)
        }
        //: sendButton.rx.tap.subscribe { [weak self](event) in
        sendButton.rx.tap.subscribe { [weak self] _ in
            //: guard let self = self else { return }
            guard let self = self else { return }
            //: let str: String = self.giftInputNumTF.text ?? "0"
            let str: String = self.giftInputNumTF.text ?? "0"
            //: guard Int(str) ?? 0 >= 1 else {
            guard Int(str) ?? 0 >= 1 else {
                //: self.func__showStatusBarErrorMsg(showMsg: "The number of gifts cannot be less than 1".localized)
                self.arcInfo(showMsg: String(bytes: kErrBlockName.map{$0^78}, encoding: .utf8)!.localized)
                //: return
                return
            }
            //: guard self.giftSelectedModel.lastHotIndexPath.row >= 0 else {
            guard self.giftSelectedModel.lastHotIndexPath.row >= 0 else {
                //: self.func__showStatusBarErrorMsg(showMsg: "Please select a gift".localized)
                self.arcInfo(showMsg: (String(k_dataFormat) + k_genderValue.replacingOccurrences(of: "value", with: "e") + String(kBottomExtraValue.prefix(8))).localized)
                //: return
                return
            }

            //: self.giftSelectedModel.hotGiftNum = Int(str) ?? 1
            self.giftSelectedModel.hotGiftNum = Int(str) ?? 1
            //: self.giftNumButton.setTitle(str, for: .normal)
            self.giftNumButton.setTitle(str, for: .normal)
            //: self.afterChangeNum()
            self.placeBy()

            //: if self.chatRoomID.count > 0 {
            if self.chatRoomID.count > 0 {
                //: guard self.chatRoomgiftSelectedMemberModel != nil else {
                guard self.chatRoomgiftSelectedMemberModel != nil else {
                    //: self.func__showStatusBarErrorMsg(showMsg: "Please select an object".localized)
                    self.arcInfo(showMsg: (String(kLayerUrl) + String(kStageFormat)).localized)
                    //: return
                    return
                }
                //: if self.chatRoomSendActionBlock != nil {
                if self.chatRoomSendActionBlock != nil {
                    //: let index = self.giftSelectedModel.lastHotIndexPath.row
                    let index = self.giftSelectedModel.lastHotIndexPath.row
                    //: guard let dataType = GiftDataType(rawValue: self.giftSelectedModel.lastHotIndexPath.section) else { return }
                    guard let dataType = AddSubscriptType(rawValue: self.giftSelectedModel.lastHotIndexPath.section) else { return }
                    //: let dataArr = self.getGiftData(dataType: dataType)
                    let dataArr = self.exaggeratePush(dataType: dataType)
                    //: if index < dataArr.count {
                    if index < dataArr.count {
                        //: let giftModel: TalkingRoomGiftModel = dataArr[index] as! TalkingRoomGiftModel
                        let giftModel: RangeMeasurable = dataArr[index] as! RangeMeasurable
                        //: self.chatRoomSendActionBlock(giftModel, String(self.giftSelectedModel.hotGiftNum), self.chatRoomgiftSelectedMemberModel!)
                        self.chatRoomSendActionBlock(giftModel, String(self.giftSelectedModel.hotGiftNum), self.chatRoomgiftSelectedMemberModel!)
                    }
                }
                //: } else {
            } else {
                //: let index = self.giftSelectedModel.lastHotIndexPath.row
                let index = self.giftSelectedModel.lastHotIndexPath.row
                //: guard let dataType = GiftDataType(rawValue: self.giftSelectedModel.lastHotIndexPath.section) else { return }
                guard let dataType = AddSubscriptType(rawValue: self.giftSelectedModel.lastHotIndexPath.section) else { return }
                //: let dataArr = self.getGiftData(dataType: dataType)
                let dataArr = self.exaggeratePush(dataType: dataType)
                //: if index < dataArr.count {
                if index < dataArr.count {
                    //: let giftModel: TalkingRoomGiftModel = dataArr[index] as! TalkingRoomGiftModel
                    let giftModel: RangeMeasurable = dataArr[index] as! RangeMeasurable
                    //: if self.sendActionBlock != nil {
                    if self.sendActionBlock != nil {
                        //: self.sendActionBlock(giftModel, String(self.giftSelectedModel.hotGiftNum))
                        self.sendActionBlock(giftModel, String(self.giftSelectedModel.hotGiftNum))
                    }
                }
            }

            //: self.popView?.dismissView()
            self.popView?.upView()
            //: self.popView = nil
            self.popView = nil

            //: }.disposed(by: disposeBag)
        }.disposed(by: disposeBag)

        //: view.addSubview(giftInputNameLabel)
        view.addSubview(giftInputNameLabel)
        //: giftInputNameLabel .snp.makeConstraints { make in
        giftInputNameLabel.snp.makeConstraints { make in
            //: make.leading.equalTo(44)
            make.leading.equalTo(44)
            //: make.top.equalTo(view)
            make.top.equalTo(view)
            //: make.height.equalTo(44)
            make.height.equalTo(44)
        }
        //: view.addSubview(giftInputNumTF)
        view.addSubview(giftInputNumTF)
        //: giftInputNumTF .snp.makeConstraints { make in
        giftInputNumTF.snp.makeConstraints { make in
            //: make.centerX.equalTo(view.snp.centerX)
            make.centerX.equalTo(view.snp.centerX)
            //: make.top.equalTo(view)
            make.top.equalTo(view)
            //: make.height.equalTo(44)
            make.height.equalTo(44)
            //: make.width.equalTo(100)
            make.width.equalTo(100)
        }

        //: return view
        return view
        //: }()
    }()

    //: private lazy var giftInputNameLabel: UILabel = {
    private lazy var giftInputNameLabel: UILabel = {
        //: let lb = UILabel.init()
        let lb = UILabel()
        //: lb.textColor = UIColor.appThemeColor()
        lb.textColor = UIColor.increase()
        //: return lb
        return lb
        //: }()
    }()

    //: private lazy var giftInputNumTF: UITextField = {
    private lazy var giftInputNumTF: UITextField = {
        //: let tf = UITextField.init()
        let tf = UITextField()
        //: tf.keyboardType = .asciiCapableNumberPad
        tf.keyboardType = .asciiCapableNumberPad
        //: tf.textColor=UIColor.white
        tf.textColor = UIColor.white
        //: tf.textAlignment = .center
        tf.textAlignment = .center
        //: tf.addTarget(self, action: #selector(keyboardInputShouldDelete(_:)), for: .editingChanged)
        tf.addTarget(self, action: #selector(underShow(_:)), for: .editingChanged)

        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(messageNotification(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)

        //: NotificationCenter.default.addObserver(self, selector: #selector(keyboardWasShown(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(indexNotification(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)

        //: return tf
        return tf
        //: }()
    }()

    //: private lazy var desLab: UILabel = {
    private lazy var desLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.text = "Select the desired gift to unlock".localized
        lab.text = String(bytes: kPageMessage.map{$0^208}, encoding: .utf8)!.localized
        //: lab.font = UIFont.pingfangRugularFont(fontSize: 14)
        lab.font = UIFont.targetFor(fontSize: 14)
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.textAlignment = .right
        lab.textAlignment = .right
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var okBtn: UIButton = {
    private lazy var okBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = UIColor.appThemeColor()
        btn.backgroundColor = UIColor.increase()
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 15)
        btn.titleLabel?.font = UIFont.tapShared(fontSize: 15)
        //: btn.setTitle("OK".localized, for: .normal)
        btn.setTitle("OK".localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.layer.cornerRadius = 15
        btn.layer.cornerRadius = 15
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(okButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(fill), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var seleteObjectBtn: UIButton = {
    private lazy var seleteObjectBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = UIColor.clear
        btn.backgroundColor = UIColor.clear
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 14)
        btn.titleLabel?.font = UIFont.tapShared(fontSize: 14)
        //: btn.setTitle("Select object >".localized, for: .normal)
        btn.setTitle((String(kRemoteUrl.prefix(6)) + " object " + k_contentData.replacingOccurrences(of: "image", with: ">")).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.layer.cornerRadius = 15
        btn.layer.cornerRadius = 15
        //: btn.layer.borderColor = UIColor.appThemeColor().cgColor
        btn.layer.borderColor = UIColor.increase().cgColor
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.titleLabel?.lineBreakMode = .byTruncatingMiddle
        btn.titleLabel?.lineBreakMode = .byTruncatingMiddle
        //: btn.addTarget(self, action: #selector(seleteObjectBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(segmentSizeClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var blindBoxExplainBtn: UIButton = {
    private lazy var blindBoxExplainBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.backgroundColor = UIColor.black
        btn.backgroundColor = UIColor.black
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 14)
        btn.titleLabel?.font = UIFont.tapShared(fontSize: 14)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.contentHorizontalAlignment = .right
        btn.contentHorizontalAlignment = .right
        //: btn.layer.cornerRadius = 22
        btn.layer.cornerRadius = 22
        //: btn.titleLabel?.numberOfLines = 0
        btn.titleLabel?.numberOfLines = 0
        //: btn.layer.borderColor = UIColor.appThemeColor().cgColor
        btn.layer.borderColor = UIColor.increase().cgColor
        //: btn.layer.borderWidth = 1
        btn.layer.borderWidth = 1
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.isHidden = true
        btn.isHidden = true
        //: btn.titleLabel?.lineBreakMode = .byTruncatingMiddle
        btn.titleLabel?.lineBreakMode = .byTruncatingMiddle
        //: btn.addTarget(self, action: #selector(blindBoxExplainBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(jewelCasket), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var giftEmptyView: UILabel = {
    private lazy var giftEmptyView: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.fontChange(type: .Regular, fontSize: 16)
        lab.font = UIFont.fontChange(type: .Regular, fontSize: 16)
        //: lab.text = "It looks like there's nothing".localized
        lab.text = (String(k_appearName.suffix(5)) + "oks li" + String(kVoiceMessage.suffix(7)) + kReName + "nothing").localized
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var askforBtn: UIButton = {
    private lazy var askforBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.setBackgroundImage(UIImage.imageGradientColor(colors: [UIColor.init(hex: "FF75A4")!.cgColor, UIColor.init(hex: "E570FF")!.cgColor], size: CGSize(width: 68, height: 30)), for: .normal)
        btn.setBackgroundImage(UIImage.makeEqual(colors: [UIColor(hex: (String(kMessageUserKey)))!.cgColor, UIColor(hex: (kTurnName.replacingOccurrences(of: "rest", with: "5") + k_modelName.replacingOccurrences(of: "game", with: "F")))!.cgColor], size: CGSize(width: 68, height: 30)), for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Semibold, fontSize: 15)
        btn.titleLabel?.font = UIFont.fontChange(type: .Semibold, fontSize: 15)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.layer.cornerRadius = 15
        btn.layer.cornerRadius = 15
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.setTitle("Ask for".localized, for: .normal)
        btn.setTitle((String(kCellKey.prefix(5)) + kLabFormat.replacingOccurrences(of: "name", with: "o")).localized, for: .normal)
        //: btn.addTarget(self, action: #selector(askforBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(deleteClick), for: .touchUpInside)
        //: return btn
        return btn
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingChatGiftView {
extension MenuView {
    /// 隐藏视图
    //: @objc func dismissView() {
    @objc func validSight() {
        //: if giftHideBlock != nil {
        if giftHideBlock != nil {
            //: giftHideBlock()
            giftHideBlock()
        }
        //: UIView.animate(withDuration: 0.3) {
        UIView.animate(withDuration: 0.3) {
            //: self.alpha = 0
            self.alpha = 0
            //: self.contentView.frame = CGRect(x: 0, y: ScreenHeight, width: ScreenWidth, height: self.contentHeight)
            self.contentView.frame = CGRect(x: 0, y: user_recordMarginValue, width: constFormalContent, height: self.contentHeight)
            //: } completion: { _ in
        } completion: { _ in
            //: self.removeFromSuperview()
            self.removeFromSuperview()
        }
    }

    /// 展示视图
    //: func showView() {
    func paradigmView() {
        //: UIView.animate(withDuration: 0.3, animations: {
        UIView.animate(withDuration: 0.3, animations: {
            //: self.alpha = 1.0
            self.alpha = 1.0
            //: self.contentView.frame = CGRect(x: 0, y: ScreenHeight-self.contentHeight, width: ScreenWidth, height: self.contentHeight)
            self.contentView.frame = CGRect(x: 0, y: user_recordMarginValue - self.contentHeight, width: constFormalContent, height: self.contentHeight)
            //: }, completion: nil)
        }, completion: nil)
    }

    // ok按钮点击事件
    //: @objc private func okButtonClick() {
    @objc private func fill() {
        //: let index = self.giftSelectedModel.lastHotIndexPath.row
        let index = self.giftSelectedModel.lastHotIndexPath.row
        //: guard let dataType = GiftDataType(rawValue: giftSelectedModel.lastHotIndexPath.section) else { return }
        guard let dataType = AddSubscriptType(rawValue: giftSelectedModel.lastHotIndexPath.section) else { return }
        //: let dataArr = self.getGiftData(dataType: dataType)
        let dataArr = self.exaggeratePush(dataType: dataType)
        //: guard index < dataArr.count else { return }
        guard index < dataArr.count else { return }

        //: let giftModel: TalkingRoomGiftModel = dataArr[index] as! TalkingRoomGiftModel
        let giftModel: RangeMeasurable = dataArr[index] as! RangeMeasurable
        //: if self.okActionBlock != nil {
        if self.okActionBlock != nil {
            //: self.okActionBlock!(giftModel)
            self.okActionBlock!(giftModel)
        }
        //: dismissView()
        validSight()
    }

    //: @objc func seleteObjectBtnClick() {
    @objc func segmentSizeClick() {
        //: meneView = DropDownMemberMenuView.init(frame: .zero, anchorView: seleteObjectBtn, roomID: self.chatRoomID)
        meneView = SizeObjectView(frame: .zero, anchorView: seleteObjectBtn, roomID: self.chatRoomID)
        //: meneView.menuDelegate = self
        meneView.menuDelegate = self
        //: if self.recentmenuArray.count > 0 {
        if self.recentmenuArray.count > 0 {
            //: meneView.recentmenuArray = self.recentmenuArray
            meneView.recentmenuArray = self.recentmenuArray
        }
    }

    //: @objc func blindBoxExplainBtnClick() {
    @objc func jewelCasket() {
        //: dismissView()
        validSight()
        //: AddReactiveCompatible.share.func__pushToWebVC(webViewType: .luckyBlindBox)
        AddReactiveCompatible.share.overCapacity(webViewType: .luckyBlindBox)
    }

    /// 索要礼物
    //: @objc func askforBtnClick() {
    @objc func deleteClick() {
        //: guard self.giftSelectedModel.lastHotIndexPath.row >= 0 else {
        guard self.giftSelectedModel.lastHotIndexPath.row >= 0 else {
            //: self.func__showStatusBarErrorMsg(showMsg: "Please select a gift".localized)
            self.arcInfo(showMsg: (String(k_dataFormat) + k_genderValue.replacingOccurrences(of: "value", with: "e") + String(kBottomExtraValue.prefix(8))).localized)
            //: return
            return
        }
        //: self.giftSelectedModel.hotGiftNum = 1
        self.giftSelectedModel.hotGiftNum = 1
        //: self.afterChangeNum()
        self.placeBy()
        //: giftNumButton.setTitle(String(giftSelectedModel.hotGiftNum), for: .normal)
        giftNumButton.setTitle(String(giftSelectedModel.hotGiftNum), for: .normal)
        //: let index = self.giftSelectedModel.lastHotIndexPath.row
        let index = self.giftSelectedModel.lastHotIndexPath.row
        //: guard let dataType = GiftDataType(rawValue: self.giftSelectedModel.lastHotIndexPath.section) else { return }
        guard let dataType = AddSubscriptType(rawValue: self.giftSelectedModel.lastHotIndexPath.section) else { return }
        //: let dataArr = self.getGiftData(dataType: dataType)
        let dataArr = self.exaggeratePush(dataType: dataType)
        //: if index < dataArr.count {
        if index < dataArr.count {
            //: let giftModel: TalkingRoomGiftModel = dataArr[index] as! TalkingRoomGiftModel
            let giftModel: RangeMeasurable = dataArr[index] as! RangeMeasurable
            //: if self.askforActionBlock != nil {
            if self.askforActionBlock != nil {
                //: self.askforActionBlock(giftModel, String(self.giftSelectedModel.hotGiftNum))
                self.askforActionBlock(giftModel, String(self.giftSelectedModel.hotGiftNum))
            }
        }
    }
}

// MARK: - 礼物背包

//: extension TalkingChatGiftView {
extension MenuView {
    /// 移除礼物背包
    /// - Parameters:
    ///   - pkgItemsetId: 背包Id
    ///   - num: 减少数量
    //: func bags_removeGiftPackage(pkgItemsetId: String, num: Int) {
    func poke(pkgItemsetId: String, num: Int) {
        //: guard currType == .Bags else { return }
        guard currType == .Bags else { return }
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: var bagsDataArr = self.getGiftData(dataType: self.currType) as! [TalkingRoomGiftModel]
            var bagsDataArr = self.exaggeratePush(dataType: self.currType) as! [RangeMeasurable]
            // 找到当前背包礼物索引，更新数量
            //: if let index = bagsDataArr.firstIndex(where: {$0.pkgItemsetId == pkgItemsetId}) {
            if let index = bagsDataArr.firstIndex(where: { $0.pkgItemsetId == pkgItemsetId }) {
                //: bagsDataArr[index].num -= num
                bagsDataArr[index].num -= num
                // 移除空数据，取消选中状态
                //: if bagsDataArr[index].num <= 0 {
                if bagsDataArr[index].num <= 0 {
                    //: bagsDataArr.remove(at: index)
                    bagsDataArr.remove(at: index)
                    //: self.resetGiftSelectedModel()
                    self.economicAidButton()
                }
            }

            //: TalkingChatGiftManager.share.saveGiftDataSource(dataType: self.currType, dataArr: bagsDataArr)
            AppNameGiftManager.share.aggregationPush(dataType: self.currType, dataArr: bagsDataArr)
            //: self.hotGiftLayout.bagsDataArr = bagsDataArr
            self.hotGiftLayout.bagsDataArr = bagsDataArr
            //: self.hotGiftCollectionView.reloadData()
            self.hotGiftCollectionView.reloadData()
            // 刷新UI
            //: self.updatePageControlAndRefreshUI(force: true)
            self.drunk(force: true)
        }
    }
}

// MARK: - VideoFatalViewDelegate

//: extension TalkingChatGiftView: DropDownMemberMenuViewDelegate {
extension MenuView: VideoFatalViewDelegate {
    //: func didClickSelectedRow(model: TalkingChatRoomMemberModel) {
    func package(model: RunOutMemberModel) {
        //: self.chatRoomgiftSelectedMemberModel = model
        self.chatRoomgiftSelectedMemberModel = model
        //: seleteObjectBtn.setTitle(" Select %@ > ".localizedArguments(model.nickname), for: .normal)
        seleteObjectBtn.setTitle((String(kViewValue.suffix(7)) + kFrameMessage.replacingOccurrences(of: "gender", with: "%")).edgeDelay(model.nickname), for: .normal)
    }

    /// 存储聊天室最近送礼人
    //: func saveRecentMembers() {
    func membersCreateNew() {
        //: guard self.chatRoomgiftSelectedMemberModel != nil  else { return }
        guard self.chatRoomgiftSelectedMemberModel != nil else { return }
        //: let model = self.chatRoomgiftSelectedMemberModel!
        let model = self.chatRoomgiftSelectedMemberModel!
        //: if model.nickname == "All Numbers".localized {
        if model.nickname == (String(kModelPendingClickContent.suffix(6)) + String(kInputTitle)).localized {
            //: return
            return
        }
        //: var ishave = false
        var ishave = false
        //: for tmodel in recentmenuArray {
        for tmodel in recentmenuArray {
            //: let temp = tmodel as! TalkingChatRoomMemberModel
            let temp = tmodel as! RunOutMemberModel
            //: if temp.uid == model.uid {
            if temp.uid == model.uid {
                //: ishave = true
                ishave = true
            }
        }
        //: if !ishave {
        if !ishave {
            //: if recentmenuArray.count == maxRecentmenu {
            if recentmenuArray.count == maxRecentmenu {
                //: recentmenuArray.removeFirstObject()
                recentmenuArray.removeFirstObject()
                //: recentmenuArray.add(model)
                recentmenuArray.add(model)
                //: } else {
            } else {
                //: recentmenuArray.add(model)
                recentmenuArray.add(model)
            }
        }
    }

    /// 设置盲盒礼物提醒UI
    //: func setsetBlindBoxExplainData(title: String) {
    func statuteTitle(title: String) {
        //: let str = "View detailed description >".localized
        let str = (String(k_valueMsg.suffix(4)) + " detai" + String(k_selectionUrl.suffix(5)) + "escri" + kNameViewMessage.replacingOccurrences(of: "equal", with: "o") + kMediumTitle.replacingOccurrences(of: "attribute", with: ">")).localized
        //: let str2 = title + "\n" + str
        let str2 = title + "\n" + str
        //: blindBoxExplainBtn.isHidden = false
        blindBoxExplainBtn.isHidden = false
        //: let attributedString = NSMutableAttributedString(string: str2)
        let attributedString = NSMutableAttributedString(string: str2)
        //: let range: Range = str2.range(of: str)!
        let range: Range = str2.range(of: str)!
        //: let location = str2.distance(from: str2.startIndex, to: range.lowerBound )
        let location = str2.distance(from: str2.startIndex, to: range.lowerBound)
        //: attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: location, length: str.count-2))
        attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: location, length: str.count - 2))
        //: blindBoxExplainBtn.setAttributedTitle(attributedString, for: .normal)
        blindBoxExplainBtn.setAttributedTitle(attributedString, for: .normal)
        //: blindBoxExplainBtn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 18)
        blindBoxExplainBtn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 18)
    }
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource

//: extension TalkingChatGiftView: UICollectionViewDelegate, UICollectionViewDataSource {
extension MenuView: UICollectionViewDelegate, UICollectionViewDataSource {
    //: func getGiftData(dataType: GiftDataType) -> [Any] {
    func exaggeratePush(dataType: AddSubscriptType) -> [Any] {
        //: return TalkingChatGiftManager.share.getHotGiftDataSource(dataType: dataType)
        return AppNameGiftManager.share.sharedType(dataType: dataType)
    }

    //: func giftSendItems() -> Array<Any> {
    func mediaColor() -> [Any] {
        //: return TalkingChatGiftManager.share.getSendingItems()
        return AppNameGiftManager.share.detailItems()
    }

    /// 刷新礼物面板
    /// - Parameters:
    ///   - needReload: 是否需要刷新
    ///   - mf_coin: 金币
    //: func updateGiftInfo(needReload: Bool, mf_coin: String) {
    func dataGift(needReload: Bool, mf_coin: String) {
        //: let coin = Double(mf_coin) ?? 0.0
        let coin = Double(mf_coin) ?? 0.0
        //: moneyBtn.setTitle(String.init(format: "%.2f", coin), for: .normal)
        moneyBtn.setTitle(String(format: "%.2f", coin), for: .normal)

        //: guard needReload == true else { return }
        guard needReload == true else { return }

        //: let index = giftSelectedModel.lastHotIndexPath.row
        let index = giftSelectedModel.lastHotIndexPath.row
        //: let dataArr = getGiftData(dataType: currType)
        let dataArr = exaggeratePush(dataType: currType)

        //: if dataArr.count > 0, index >= 0, index < dataArr.count {
        if dataArr.count > 0, index >= 0, index < dataArr.count {
            //: let hotModel: TalkingRoomGiftModel = dataArr[index] as! TalkingRoomGiftModel
            let hotModel: RangeMeasurable = dataArr[index] as! RangeMeasurable
            //: giftSelectedModel.lastPackageIndexPath = giftSelectedModel.lastPackageIndexPath
            giftSelectedModel.lastPackageIndexPath = giftSelectedModel.lastPackageIndexPath
            //: giftSelectedModel.packageGiftName = giftSelectedModel.packageGiftName
            giftSelectedModel.packageGiftName = giftSelectedModel.packageGiftName
            //: giftSelectedModel.packageGiftNum = giftSelectedModel.packageGiftNum
            giftSelectedModel.packageGiftNum = giftSelectedModel.packageGiftNum
            //: giftSelectedModel.hotGiftName = hotModel.name
            giftSelectedModel.hotGiftName = hotModel.name
            //: giftSelectedModel.lastShowType = hotModel.showType
            giftSelectedModel.lastShowType = hotModel.showType
            //: giftSelectedModel.lastDescription = hotModel.description
            giftSelectedModel.lastDescription = hotModel.description
            //: giftSelectedModel.isNoChangeGiftNumber = (hotModel.showType == ChatGiftType.myStery.rawValue)
            giftSelectedModel.isNoChangeGiftNumber = (hotModel.showType == FrameBasicType.myStery.rawValue)
        }

        //: giftNumButton.setTitle(String(giftSelectedModel.hotGiftNum), for: .normal)
        giftNumButton.setTitle(String(giftSelectedModel.hotGiftNum), for: .normal)

        // 刷新layout
        //: hotGiftLayout.sectionArr = titlesArr
        hotGiftLayout.sectionArr = titlesArr
        //: hotGiftLayout.hotDataArr = getGiftData(dataType: .Hot)
        hotGiftLayout.hotDataArr = exaggeratePush(dataType: .Hot)
        //: hotGiftLayout.vipDataArr = getGiftData(dataType: .Vip)
        hotGiftLayout.vipDataArr = exaggeratePush(dataType: .Vip)
        //: hotGiftLayout.bagsDataArr = getGiftData(dataType: .Bags)
        hotGiftLayout.bagsDataArr = exaggeratePush(dataType: .Bags)
        //: hotGiftCollectionView.reloadData()
        hotGiftCollectionView.reloadData()

        // 刷新UI
        //: updatePageControlAndRefreshUI(force: true)
        drunk(force: true)
    }

    /// 输入监听
    //: @objc fileprivate func keyboardInputShouldDelete(_ textField: UITextField) {
    @objc fileprivate func underShow(_ textField: UITextField) {
        //: let str: String = textField.text ?? ""
        let str: String = textField.text ?? ""
        //: if str.count == 2 && str.hasPrefix("0") {
        if str.count == 2 && str.hasPrefix("0") {
            //: self.giftInputNumTF.text = String(str.suffix(1))
            self.giftInputNumTF.text = String(str.suffix(1))
            //: } else if str.count > 4 {
        } else if str.count > 4 {
            //: self.giftInputNumTF.text = "9999"
            self.giftInputNumTF.text = (k_showMsg.capitalized)
            //: } else {
        } else {
            //: self.giftInputNumTF.text = str
            self.giftInputNumTF.text = str
        }
    }

    //: @objc func keyboardWasShown(notification: NSNotification) {
    @objc func indexNotification(notification: NSNotification) {
        //: let info = notification.userInfo!
        let info = notification.userInfo!
        //: var kbRect = (info[UIResponder.keyboardFrameEndUserInfoKey]! as! NSValue).cgRectValue
        var kbRect = (info[UIResponder.keyboardFrameEndUserInfoKey]! as! NSValue).cgRectValue
        //: kbRect = self.convert(kbRect, from: nil)
        kbRect = self.convert(kbRect, from: nil)

        //: let height = kbRect.size.height
        let height = kbRect.size.height

        //: keyborHeight = Int(height)
        keyborHeight = Int(height)
        //: giftInputNumInputView.frame = CGRect(x: 0, y: ScreenHeight-CGFloat(keyborHeight)-44, width: ScreenWidth, height: 44)
        giftInputNumInputView.frame = CGRect(x: 0, y: user_recordMarginValue - CGFloat(keyborHeight) - 44, width: constFormalContent, height: 44)
    }

    //: @objc func keyboardWillBeHidden(notification: NSNotification) {
    @objc func messageNotification(notification _: NSNotification) {
        //: var str: String = self.giftInputNumTF.text ?? ""
        var str: String = self.giftInputNumTF.text ?? ""
        //: if Int(str) ?? 0 < 1 {
        if Int(str) ?? 0 < 1 { // 最少为1
            //: str = "1"
            str = "1"
        }

        //: giftSelectedModel.hotGiftNum = Int(str) ?? 0
        giftSelectedModel.hotGiftNum = Int(str) ?? 0
        //: giftNumButton.setTitle(str, for: .normal)
        giftNumButton.setTitle(str, for: .normal)
        //: afterChangeNum()
        placeBy()
    }

    //: @objc func onTouchSendGiftBtn() {
    @objc func titleBtn() {
        //: if self.chatRoomID.count > 0 {
        if self.chatRoomID.count > 0 {
            //: guard self.chatRoomgiftSelectedMemberModel != nil else {
            guard self.chatRoomgiftSelectedMemberModel != nil else {
                //: self.func__showStatusBarErrorMsg(showMsg: "Please select an object".localized)
                self.arcInfo(showMsg: (String(kLayerUrl) + String(kStageFormat)).localized)
                //: return
                return
            }
            //: if self.chatRoomSendActionBlock != nil {
            if self.chatRoomSendActionBlock != nil {
                //: guard self.giftSelectedModel.lastHotIndexPath.row >= 0 else {
                guard self.giftSelectedModel.lastHotIndexPath.row >= 0 else {
                    //: self.func__showStatusBarErrorMsg(showMsg: "Please select a gift".localized)
                    self.arcInfo(showMsg: (String(k_dataFormat) + k_genderValue.replacingOccurrences(of: "value", with: "e") + String(kBottomExtraValue.prefix(8))).localized)
                    //: return
                    return
                }

                //: let index = self.giftSelectedModel.lastHotIndexPath.row
                let index = self.giftSelectedModel.lastHotIndexPath.row
                //: guard let dataType = GiftDataType(rawValue: giftSelectedModel.lastHotIndexPath.section) else { return }
                guard let dataType = AddSubscriptType(rawValue: giftSelectedModel.lastHotIndexPath.section) else { return }
                //: let dataArr = self.getGiftData(dataType: dataType)
                let dataArr = self.exaggeratePush(dataType: dataType)
                //: if index < dataArr.count {
                if index < dataArr.count {
                    //: let giftModel: TalkingRoomGiftModel = dataArr[index] as! TalkingRoomGiftModel
                    let giftModel: RangeMeasurable = dataArr[index] as! RangeMeasurable
                    //: self.chatRoomSendActionBlock(giftModel, String(self.giftSelectedModel.hotGiftNum), self.chatRoomgiftSelectedMemberModel!)
                    self.chatRoomSendActionBlock(giftModel, String(self.giftSelectedModel.hotGiftNum), self.chatRoomgiftSelectedMemberModel!)
                }
            }
            //: } else {
        } else {
            //: guard self.giftSelectedModel.lastHotIndexPath.row >= 0 else {
            guard self.giftSelectedModel.lastHotIndexPath.row >= 0 else {
                //: self.func__showStatusBarErrorMsg(showMsg: "Please select a gift".localized)
                self.arcInfo(showMsg: (String(k_dataFormat) + k_genderValue.replacingOccurrences(of: "value", with: "e") + String(kBottomExtraValue.prefix(8))).localized)
                //: return
                return
            }

            //: let index = giftSelectedModel.lastHotIndexPath.row
            let index = giftSelectedModel.lastHotIndexPath.row
            //: guard let dataType = GiftDataType(rawValue: giftSelectedModel.lastHotIndexPath.section) else { return }
            guard let dataType = AddSubscriptType(rawValue: giftSelectedModel.lastHotIndexPath.section) else { return }
            //: let dataArr = self.getGiftData(dataType: dataType)
            let dataArr = self.exaggeratePush(dataType: dataType)
            //: if index < dataArr.count {
            if index < dataArr.count {
                //: let giftModel: TalkingRoomGiftModel = dataArr[index] as! TalkingRoomGiftModel
                let giftModel: RangeMeasurable = dataArr[index] as! RangeMeasurable
                //: if sendActionBlock != nil {
                if sendActionBlock != nil {
                    //: sendActionBlock(giftModel, String(giftSelectedModel.hotGiftNum))
                    sendActionBlock(giftModel, String(giftSelectedModel.hotGiftNum))
                }
            }
        }
    }

    //: @objc func giftNumBtnClick() {
    @objc func terminate() {
        //: if giftSelectedModel.isNoChangeGiftNumber == true {
        if giftSelectedModel.isNoChangeGiftNumber == true {
            //: return
            return
        }
        //: tapGiftNumberField()
        statusBy()
    }

    //: @objc func rechargeBtnClick() {
    @objc func modify() {
        //: let payWinType = DistanceAppManager.share.appUserConfigMode.payWinType
        let payWinType = DistanceAppManager.share.appUserConfigMode.payWinType
        //: if payWinType == 1 {
        if payWinType == 1 { // 半屏充值页
            //: AddReactiveCompatible.share.func__pushToHalfWebVC(webViewType: .RechargeHalfPage)
            AddReactiveCompatible.share.halfDismiss(webViewType: .RechargeHalfPage)
            //: } else if payWinType == 2 {
        } else if payWinType == 2 { // 会员订阅弹窗
            //: AddReactiveCompatible.share.func__pushToSubscribeAlert()
            AddReactiveCompatible.share.digitiserParams()
        }
        //: dismissView()
        validSight()
    }

    //: func tapGiftNumberField() {
    func statusBy() {
        //: let sendingItems = giftSendItems()
        let sendingItems = mediaColor()
        //: var titleArray = Array<String>()
        var titleArray = [String]()
        //: for i in 1..<sendingItems.count {
        for i in 1 ..< sendingItems.count {
            //: let text = String(numberOfGiftForIndex(index: i))
            let text = String(sub(index: i))
//            let giftNumArrModel: PublishHandyJSON = sendingItems[i] as! PublishHandyJSON
//            text += "  " + (giftNumArrModel.tag ?? "")
            //: titleArray.append(text)
            titleArray.append(text)
        }
        //: titleArray.append("Custom".localized)
        titleArray.append((k_userId.replacingOccurrences(of: "up", with: "C") + kIndexValue.replacingOccurrences(of: "title", with: "u")).localized)

        //: Config.MenuCellConfig.menuCellHeight = 40
        Config.ValueContent.menuCellHeight = 40

        //: let dropMenu = DropDownMenuView.pullDropDrownMenu(anchorView: giftNumButton, titleArray: titleArray, imageArray: [])
        let dropMenu = AddDataSource.following(anchorView: giftNumButton, titleArray: titleArray, imageArray: [])
        //: dropMenu.menuDelegate = self
        dropMenu.menuDelegate = self
        //: dropMenu.menuStyle = .MenuLightStyle
        dropMenu.menuStyle = .MenuLightStyle
    }

    //: func afterChangeNum() {
    func placeBy() {
        //: let cell = self.hotGiftCollectionView.cellForItem(at: giftSelectedModel.lastHotIndexPath) as? TalkingPackageGiftCell
        let cell = self.hotGiftCollectionView.cellForItem(at: giftSelectedModel.lastHotIndexPath) as? CustomView
        //: cell?.updateSelectedNumber(number: giftSelectedModel.hotGiftNum)
        cell?.searchedFlushRoundnessFewness(number: giftSelectedModel.hotGiftNum)
    }

    /// UICollectionViewDelegete
    //: func numberOfSections(in collectionView: UICollectionView) -> Int {
    func numberOfSections(in _: UICollectionView) -> Int {
        //: return titlesArr.count
        return titlesArr.count
    }

    //: func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    func collectionView(_: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //: guard let dataType = GiftDataType(rawValue: section) else { return 0 }
        guard let dataType = AddSubscriptType(rawValue: section) else { return 0 }
        //: let count = getGiftData(dataType: dataType).count
        let count = exaggeratePush(dataType: dataType).count
        // 保证至少有一条数据，否则切换会crash
        //: return (count > 0) ? count:1
        return (count > 0) ? count : 1
    }

    //: func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //: let identifier = TalkingPackageGiftCell.className()
        let identifier = CustomView.className()
        //: let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! TalkingPackageGiftCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! CustomView
        // 获取数据
        //: guard let dataType = GiftDataType(rawValue: indexPath.section) else { return cell }
        guard let dataType = AddSubscriptType(rawValue: indexPath.section) else { return cell }
        //: let dataArr = getGiftData(dataType: dataType)
        let dataArr = exaggeratePush(dataType: dataType)
        // 刷新cell
        //: if indexPath.row < dataArr.count {
        if indexPath.row < dataArr.count {
            //: cell.isHidden = false
            cell.isHidden = false
            //: let giftModel: TalkingRoomGiftModel = dataArr[indexPath.row] as! TalkingRoomGiftModel
            let giftModel: RangeMeasurable = dataArr[indexPath.row] as! RangeMeasurable
            //: cell.refreshCellView(currenmodel: giftModel, giftType: dataType)
            cell.compartmentType(currenmodel: giftModel, giftType: dataType)
            //: cell.setChecked(checked: giftSelectedModel.lastHotIndexPath == indexPath)
            cell.constraintIn(checked: giftSelectedModel.lastHotIndexPath == indexPath)
            //: if giftSelectedModel.lastHotIndexPath == indexPath {
            if giftSelectedModel.lastHotIndexPath == indexPath {
                //: giftSelectedModel.lastHotCell = cell
                giftSelectedModel.lastHotCell = cell
                //: cell.updateSelectedNumber(number: giftSelectedModel.hotGiftNum)
                cell.searchedFlushRoundnessFewness(number: giftSelectedModel.hotGiftNum)
            }
            //: } else {
        } else {
            //: cell.isHidden = true
            cell.isHidden = true
        }

        //: return cell
        return cell
    }

    //: func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //: guard let dataType = GiftDataType(rawValue: indexPath.section) else { return }
        guard let dataType = AddSubscriptType(rawValue: indexPath.section) else { return }
        //: let dataArr = getGiftData(dataType: dataType)
        let dataArr = exaggeratePush(dataType: dataType)
        //: guard indexPath.row < dataArr.count else { return }
        guard indexPath.row < dataArr.count else { return }

        //: let giftModel: TalkingRoomGiftModel = dataArr[indexPath.row] as! TalkingRoomGiftModel
        let giftModel: RangeMeasurable = dataArr[indexPath.row] as! RangeMeasurable
        //: giftSelectedModel.lastShowType = giftModel.showType
        giftSelectedModel.lastShowType = giftModel.showType
        //: giftSelectedModel.isNoChangeGiftNumber = (giftModel.showType == ChatGiftType.myStery.rawValue)
        giftSelectedModel.isNoChangeGiftNumber = (giftModel.showType == FrameBasicType.myStery.rawValue)
        //: blindBoxExplainBtn.isHidden = !(giftModel.showType == ChatGiftType.myStery.rawValue)
        blindBoxExplainBtn.isHidden = !(giftModel.showType == FrameBasicType.myStery.rawValue)

        //: if giftSelectedModel.lastHotIndexPath == indexPath {
        if giftSelectedModel.lastHotIndexPath == indexPath {
            //: if self.style == .intimatePhoto || self.style == .intimateVideo {
            if self.style == .intimatePhoto || self.style == .intimateVideo {
                //: return
                return
            }
            //: giftSelectedModel.hotGiftName = giftModel.name
            giftSelectedModel.hotGiftName = giftModel.name
            //: if giftModel.showType == ChatGiftType.myStery.rawValue && style == .normal {
            if giftModel.showType == FrameBasicType.myStery.rawValue && style == .normal {
                //: didClickSelectedCellRow(index: 0, title: "")
                sharedTitle(index: 0, title: "")
                //: return
                return
            }
            //: var sendIndex = indexOfSendItemForNum(num: giftSelectedModel.hotGiftNum)
            var sendIndex = resolveBy(num: giftSelectedModel.hotGiftNum)
            //: sendIndex = safeObjectAtIndexWithSendItems(addIndex: sendIndex+1)
            sendIndex = playQuality(addIndex: sendIndex + 1)
            //: didClickSelectedCellRow(index: sendIndex, title: "")
            sharedTitle(index: sendIndex, title: "")
            //: } else {
        } else {
            //: giftSelectedModel.hotGiftName = giftModel.name
            giftSelectedModel.hotGiftName = giftModel.name
            //: if giftSelectedModel.lastHotCell != nil {
            if giftSelectedModel.lastHotCell != nil {
                //: let cell: TalkingPackageGiftCell = giftSelectedModel.lastHotCell as! TalkingPackageGiftCell
                let cell: CustomView = giftSelectedModel.lastHotCell as! CustomView
                //: cell.setChecked(checked: false)
                cell.constraintIn(checked: false)
            }
            //: let currentCell: TalkingPackageGiftCell = self.hotGiftCollectionView.cellForItem(at: indexPath) as! TalkingPackageGiftCell
            let currentCell: CustomView = self.hotGiftCollectionView.cellForItem(at: indexPath) as! CustomView
            //: currentCell.setChecked(checked: true)
            currentCell.constraintIn(checked: true)
            //: giftSelectedModel.lastHotIndexPath = indexPath
            giftSelectedModel.lastHotIndexPath = indexPath
            //: giftSelectedModel.lastHotCell = currentCell
            giftSelectedModel.lastHotCell = currentCell
            //: didClickSelectedCellRow(index: 0, title: "")
            sharedTitle(index: 0, title: "")
        }
    }

    ///  UIScrollviewDelegate
    //: func scrollViewDidScroll(_ scrollView: UIScrollView) {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        //: if scrollView == hotGiftCollectionView {
        if scrollView == hotGiftCollectionView {
            //: updatePageControlAndRefreshUI()
            drunk()
            //: if isShowRight {
            if isShowRight {
                //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
                    //: self.isShowRight = false
                    self.isShowRight = false
                    //: self.titleScrollView.selectedIndex(0, animated: true)
                    self.titleScrollView.scaleOfMeasurement(0, animated: true)
                    //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                        //: let dataArr = self.getGiftData(dataType: self.currType)
                        let dataArr = self.exaggeratePush(dataType: self.currType)
                        //: self.hotGiftCollectionView.contentOffset = CGPointZero
                        self.hotGiftCollectionView.contentOffset = CGPointZero
                        //: if self.hotGiftCollectionView.cellForItem(at: IndexPath(item: 0, section: 0)) != nil {
                        if self.hotGiftCollectionView.cellForItem(at: IndexPath(item: 0, section: 0)) != nil {
                            //: if dataArr.count > 0  {
                            if dataArr.count > 0 {
                                //: self.giftSelectedModel.hotGiftNum = 0
                                self.giftSelectedModel.hotGiftNum = 0
                                //: self.collectionView(self.hotGiftCollectionView, didSelectItemAt: IndexPath(item: 0, section: 0))
                                self.collectionView(self.hotGiftCollectionView, didSelectItemAt: IndexPath(item: 0, section: 0))
                            }
                        }
                    }
                }
            }
        }
    }

    /// 刷新UI
    /// - Parameter force: 是否强制刷新
    //: func updatePageControlAndRefreshUI(force: Bool = false) {
    func drunk(force: Bool = false) {
        // 计算page
        //: var traillingOffsetX = hotGiftCollectionView.contentOffset.x + ScreenWidth
        var traillingOffsetX = hotGiftCollectionView.contentOffset.x + constFormalContent
        //: traillingOffsetX = traillingOffsetX < ScreenWidth ? ScreenWidth : traillingOffsetX
        traillingOffsetX = traillingOffsetX < constFormalContent ? constFormalContent : traillingOffsetX
        //: var page = Int(traillingOffsetX/ScreenWidth-1)
        var page = Int(traillingOffsetX / constFormalContent - 1)
        //: page = page < 0 ? 0:page
        page = page < 0 ? 0 : page
        //: let addition = Int(traillingOffsetX)%Int(ScreenWidth) > 0 ? 1:0
        let addition = Int(traillingOffsetX) % Int(constFormalContent) > 0 ? 1 : 0
        //: page += addition
        page += addition

        // 判断当前选中分区
        //: var giftType = GiftDataType.Hot
        var giftType = AddSubscriptType.Hot
        //: if page < hotGiftLayout.hotPage {
        if page < hotGiftLayout.hotPage {
            //: giftType = .Hot
            giftType = .Hot
            //: } else if page < hotGiftLayout.hotPage+hotGiftLayout.vipPage {
        } else if page < hotGiftLayout.hotPage + hotGiftLayout.vipPage {
            //: giftType = .Vip
            giftType = .Vip
            //: page -= hotGiftLayout.hotPage
            page -= hotGiftLayout.hotPage
            //: } else if page < hotGiftLayout.hotPage+hotGiftLayout.vipPage+hotGiftLayout.bagsPage {
        } else if page < hotGiftLayout.hotPage + hotGiftLayout.vipPage + hotGiftLayout.bagsPage {
            //: giftType = .Bags
            giftType = .Bags
            //: page -= (hotGiftLayout.hotPage+hotGiftLayout.vipPage)
            page -= (hotGiftLayout.hotPage + hotGiftLayout.vipPage)
        }

        // 切换分页，刷新UI（添加判断防止频繁调用）
        //: if force == true || currType != giftType {
        if force == true || currType != giftType {
            //: currType = giftType
            currType = giftType
            //: pageControl.numberOfPages = TalkingChatGiftManager.share.getGiftPageCount(perPageCount: 8, dataType: currType)
            pageControl.numberOfPages = AppNameGiftManager.share.per(perPageCount: 8, dataType: currType)
            // 切换title
            //: titleScrollView.currentIndex = currType.rawValue
            titleScrollView.currentIndex = currType.rawValue
            //: titleScrollView.adjustUIWhenBtnOnClickWithAnimate(true)
            titleScrollView.doColor(true)
            //: askforBtn.isHidden = !(currType == GiftDataType.Hot && self.style == .normal && DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue)
            askforBtn.isHidden = !(currType == AddSubscriptType.Hot && self.style == .normal && DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue)
            // 盲盒礼物说明 显示/隐藏
            //: if giftSelectedModel.lastShowType == ChatGiftType.myStery.rawValue && giftSelectedModel.lastHotIndexPath.section == currType.rawValue {
            if giftSelectedModel.lastShowType == FrameBasicType.myStery.rawValue && giftSelectedModel.lastHotIndexPath.section == currType.rawValue {
                //: setsetBlindBoxExplainData(title: giftSelectedModel.lastDescription ?? "")
                statuteTitle(title: giftSelectedModel.lastDescription ?? "")
                //: } else {
            } else {
                //: blindBoxExplainBtn.isHidden = true
                blindBoxExplainBtn.isHidden = true
            }
            // 空数据缺省图 显示/隐藏
            //: let dataArr = getGiftData(dataType: currType)
            let dataArr = exaggeratePush(dataType: currType)
            //: giftEmptyView.isHidden = (dataArr.count > 0)
            giftEmptyView.isHidden = (dataArr.count > 0)
            // 手动切换Tab，取消选中状态
            //: if force == false {
            if force == false {
                //: resetGiftSelectedModel()
                economicAidButton()
            }
        }
        //: pageControl.currentPage = page
        pageControl.currentPage = page
    }

    /// 重置选中model
    //: private func resetGiftSelectedModel() {
    private func economicAidButton() {
        //: self.giftSelectedModel = TalkingGiftSelectedModel()
        self.giftSelectedModel = WithHandyJSON()
        //: self.giftSelectedModel.lastHotIndexPath = IndexPath(item: -1, section: 0)
        self.giftSelectedModel.lastHotIndexPath = IndexPath(item: -1, section: 0)
        /// 导致ihpne11礼物面板消失
        //: hotGiftCollectionView.reloadData()
        hotGiftCollectionView.reloadData()
    }
}

// MARK: - WillSizeViewDelegate

//: extension TalkingChatGiftView: DropDownMenuViewDelegate {
extension MenuView: WillSizeViewDelegate {
    //: func didClickSelectedRow(index: Int, title: String) {
    func nonePlayer(index: Int, title: String) {
        //: didClickSelectedCellRow(index: index+1, title: title)
        sharedTitle(index: index + 1, title: title)
    }

    //: func  didClickSelectedCellRow(index: Int, title: String) {
    func sharedTitle(index: Int, title _: String) {
        //: let numberOfGift = numberOfGiftForIndex(index: index)
        let numberOfGift = sub(index: index)
        //: if numberOfGift>0 {
        if numberOfGift > 0 {
            //: giftSelectedModel.hotGiftNum = numberOfGift
            giftSelectedModel.hotGiftNum = numberOfGift
            //: giftNumButton.setTitle(String(numberOfGift), for: .normal)
            giftNumButton.setTitle(String(numberOfGift), for: .normal)
            //: afterChangeNum()
            placeBy()
            //: } else {
        } else {
            //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
            popView = DataPopView(frame: UIScreen.main.bounds)
            //: popView?.initWithView(view: giftInputNumInputView)
            popView?.smart(view: giftInputNumInputView)
            //: popView?.showInView(view: self.window!)
            popView?.academePosition(view: self.window!)
            //: giftInputNameLabel.text = giftSelectedModel.hotGiftName
            giftInputNameLabel.text = giftSelectedModel.hotGiftName
            //: giftInputNumTF.text = String(giftSelectedModel.hotGiftNum)
            giftInputNumTF.text = String(giftSelectedModel.hotGiftNum)
            //: giftInputNumTF.becomeFirstResponder()
            giftInputNumTF.becomeFirstResponder()
        }
    }

    //: func numberOfGiftForIndex(index: Int)->Int {
    func sub(index: Int) -> Int {
        //: let sendingItems = giftSendItems()
        let sendingItems = mediaColor()
        //: if sendingItems.count>0 &&  index < sendingItems.count {
        if sendingItems.count > 0 && index < sendingItems.count {
            //: let giftNumArrModel: TalkingGiftNumArrModel = sendingItems[index] as! TalkingGiftNumArrModel
            let giftNumArrModel: PublishHandyJSON = sendingItems[index] as! PublishHandyJSON
            //: return giftNumArrModel.num!
            return giftNumArrModel.num!
            //: } else {
        } else {
            //: switch index {
            switch index {
            //: case 0:
            case 0:
                //: return 1
                return 1
            //: case 1:
            case 1:
                //: return 9
                return 9
            //: case 2:
            case 2:
                //: return 99
                return 99
            //: case 3:
            case 3:
                //: return 199
                return 199
            //: case 4:
            case 4:
                //: return 599
                return 599
            //: case 5:
            case 5:
                //: return 999
                return 999
            //: default:
            default:
                //: return 0
                return 0
            }
        }
    }

    //: func indexOfSendItemForNum(num: Int)->Int {
    func resolveBy(num: Int) -> Int {
        //: var index = 0
        var index = 0
        //: for i in 0..<giftSendItems().count {
        for i in 0 ..< mediaColor().count {
            //: let model: TalkingGiftNumArrModel = giftSendItems()[i] as! TalkingGiftNumArrModel
            let model: PublishHandyJSON = mediaColor()[i] as! PublishHandyJSON
            //: if model.num == num {
            if model.num == num {
                //: break
                break
            }
            //: index += 1
            index += 1
        }
        //: return index
        return index
    }

    //: func safeObjectAtIndexWithSendItems(addIndex: Int)->Int {
    func playQuality(addIndex: Int) -> Int {
        //: if addIndex > giftSendItems().count-1 {
        if addIndex > mediaColor().count - 1 {
            //: return 0
            return 0
        }
        //: return addIndex
        return addIndex
    }
}

// MARK: - Layout

//: extension TalkingChatGiftView {
extension MenuView {
    /// 添加视图
    //: private func setupSubviews() {
    private func last() {
        //: self.backgroundColor = UIColor.clear
        self.backgroundColor = UIColor.clear
        //: let tagView = UIView.init(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-contentHeight))
        let tagView = UIView(frame: CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue - contentHeight))
        //: tagView.backgroundColor = .clear
        tagView.backgroundColor = .clear
        //: self.addSubview(tagView)
        self.addSubview(tagView)
        //: tagView.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(dismissView)))
        tagView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(validSight)))

        //: if self.style == .party {
        if self.style == .party {
            //: partyIconView.isHidden = false
            partyIconView.isHidden = false
            //: topView.frame.origin.y = partyIconView.frame.height
            topView.frame.origin.y = partyIconView.frame.height

            //: } else {
        } else {
            //: partyIconView.isHidden = true
            partyIconView.isHidden = true
        }

        //: topView.addSubview(titleScrollView)
        topView.addSubview(titleScrollView)

        //: if self.style == .intimatePhoto || self.style == .intimateVideo {
        if self.style == .intimatePhoto || self.style == .intimateVideo {
            //: topView.addSubview(desLab)
            topView.addSubview(desLab)
            //: desLab.snp.makeConstraints { make in
            desLab.snp.makeConstraints { make in
                //: make.trailing.equalToSuperview().offset(-12)
                make.trailing.equalToSuperview().offset(-12)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
            }
            //: } else {
        } else {
            //: topView.addSubview(rechargeBtn)
            topView.addSubview(rechargeBtn)
            //: topView.insertSubview(indicatorImage, belowSubview: rechargeBtn)
            topView.insertSubview(indicatorImage, belowSubview: rechargeBtn)
            //: topView.insertSubview(moneyBtn, belowSubview: rechargeBtn)
            topView.insertSubview(moneyBtn, belowSubview: rechargeBtn)

            //: indicatorImage.snp.makeConstraints { make in
            indicatorImage.snp.makeConstraints { make in
                //: make.centerY.equalTo(topView.snp.centerY)
                make.centerY.equalTo(topView.snp.centerY)
                //: make.trailing.equalTo(topView.snp_trailingMargin).offset(-7)
                make.trailing.equalTo(topView.snp_trailingMargin).offset(-7)
            }
            //: rechargeBtn.snp.makeConstraints { make in
            rechargeBtn.snp.makeConstraints { make in
                //: make.top.trailing.bottom.equalTo(topView)
                make.top.trailing.bottom.equalTo(topView)
                //: make.leading.equalTo(moneyBtn.snp.leading)
                make.leading.equalTo(moneyBtn.snp.leading)
            }
            //: moneyBtn.snp.makeConstraints { make in
            moneyBtn.snp.makeConstraints { make in
                //: make.centerY.equalTo(topView)
                make.centerY.equalTo(topView)
                //: make.trailing.equalTo(indicatorImage.snp.leading).offset(-7)
                make.trailing.equalTo(indicatorImage.snp.leading).offset(-7)
                //: make.width.greaterThanOrEqualTo(90)
                make.width.greaterThanOrEqualTo(90)
            }
        }

        //: contentView.addSubview(scrollContentView)
        contentView.addSubview(scrollContentView)
        //: scrollContentView.snp.makeConstraints { make in
        scrollContentView.snp.makeConstraints { make in
            //: make.top.equalTo(topView.snp.bottom)
            make.top.equalTo(topView.snp.bottom)
            //: make.leading.trailing.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            //: make.height.equalTo(GiftScrollContentView_H)
            make.height.equalTo(constViewText)
            //: make.width.equalTo(ScreenWidth)
            make.width.equalTo(constFormalContent)
        }

        //: scrollContentView.addSubview(giftEmptyView)
        scrollContentView.addSubview(giftEmptyView)
        //: giftEmptyView.snp.makeConstraints { make in
        giftEmptyView.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
        }

        //: scrollContentView.addSubview(hotGiftCollectionView)
        scrollContentView.addSubview(hotGiftCollectionView)
        //: hotGiftCollectionView.snp.makeConstraints { make in
        hotGiftCollectionView.snp.makeConstraints { make in
            //: make.top.equalToSuperview()
            make.top.equalToSuperview()
            //: make.leading.equalTo(5)
            make.leading.equalTo(5)
            //: make.trailing.equalTo(-5)
            make.trailing.equalTo(-5)
            //: make.height.equalTo(GiftScrollContentView_H)
            make.height.equalTo(constViewText)
            //: make.width.equalTo(ScreenWidth-10)
            make.width.equalTo(constFormalContent - 10)
        }

        //: contentView.addSubview(pageControl)
        contentView.addSubview(pageControl)
        //: pageControl.snp.makeConstraints { make in
        pageControl.snp.makeConstraints { make in
            //: make.centerX.equalTo(contentView)
            make.centerX.equalTo(contentView)
            //: make.height.equalTo(pageControl_H)
            make.height.equalTo(userTotalName)
            //: make.top.equalTo(scrollContentView.snp.bottom)
            make.top.equalTo(scrollContentView.snp.bottom)
        }

        //: contentView.addSubview(bottomView)
        contentView.addSubview(bottomView)
        //: bottomView.snp.makeConstraints { make in
        bottomView.snp.makeConstraints { make in
            //: make.leading.trailing.equalTo(contentView)
            make.leading.trailing.equalTo(contentView)
            //: make.top.equalTo(pageControl.snp.bottom)
            make.top.equalTo(pageControl.snp.bottom)
            //: make.height.equalTo(bottomView_H)
            make.height.equalTo(constFileData)
        }

        //: if self.style == .intimatePhoto || self.style == .intimateVideo {
        if self.style == .intimatePhoto || self.style == .intimateVideo {
            //: bottomView.addSubview(okBtn)
            bottomView.addSubview(okBtn)
            //: okBtn.snp.makeConstraints { make in
            okBtn.snp.makeConstraints { make in
                //: make.trailing.equalToSuperview().offset(-15)
                make.trailing.equalToSuperview().offset(-15)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.size.equalTo(CGSize(width: 60, height: 30))
                make.size.equalTo(CGSize(width: 60, height: 30))
            }
            //: } else {
        } else {
            //: bottomView.addSubview(sendAreaView)
            bottomView.addSubview(sendAreaView)
            //: sendAreaView.snp.makeConstraints { make in
            sendAreaView.snp.makeConstraints { make in
                //: make.trailing.equalTo(bottomView).offset(-9)
                make.trailing.equalTo(bottomView).offset(-9)
                //: make.centerY.equalTo(bottomView)
                make.centerY.equalTo(bottomView)
                //: make.height.equalTo(30)
                make.height.equalTo(30)
                //: make.width.equalTo(120)
                make.width.equalTo(120)
            }
            //: sendAreaView.addSubview(giftNumButton)
            sendAreaView.addSubview(giftNumButton)
            //: giftNumButton.snp.makeConstraints { make in
            giftNumButton.snp.makeConstraints { make in
                //: make.top.leading.bottom.equalTo(sendAreaView)
                make.top.leading.bottom.equalTo(sendAreaView)
                //: make.width.equalTo(sendAreaView).multipliedBy(1.0/2)
                make.width.equalTo(sendAreaView).multipliedBy(1.0 / 2)
            }

            //: sendAreaView.addSubview(sendButton)
            sendAreaView.addSubview(sendButton)
            //: sendButton.snp.makeConstraints { make in
            sendButton.snp.makeConstraints { make in
                //: make.top.trailing.bottom.equalTo(sendAreaView)
                make.top.trailing.bottom.equalTo(sendAreaView)
                //: make.width.equalTo(sendAreaView).multipliedBy(1.0/2)
                make.width.equalTo(sendAreaView).multipliedBy(1.0 / 2)
            }

            //: setBlindBoxExplainBtn()
            device()

            //: bottomView.addSubview(askforBtn)
            bottomView.addSubview(askforBtn)
            //: askforBtn.snp.makeConstraints { make in
            askforBtn.snp.makeConstraints { make in
                //: make.leading.equalTo(9)
                make.leading.equalTo(9)
                //: make.centerY.equalToSuperview()
                make.centerY.equalToSuperview()
                //: make.size.equalTo(CGSize.init(width: 68, height: 30))
                make.size.equalTo(CGSize(width: 68, height: 30))
            }
        }
    }

    /// 添加事件
    //: private func bindInteraction() {
    private func addMagnitudeeraction() {
        //: DistanceAppManager.share.loginUserMode.rx
        DistanceAppManager.share.loginUserMode.rx
            //: .observeWeakly(String.self, "mf_coin")
            .observeWeakly(String.self, (String(k_modelData)))
            //: .observe(on: MainScheduler.instance)
            .observe(on: MainScheduler.instance)
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] value in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: if value != nil {
                if value != nil {
                    //: self.updateGiftInfo(needReload: false, mf_coin: value!)
                    self.dataGift(needReload: false, mf_coin: value!)
                }
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)

        // 监听刷新背包
        //: TalkingChatGiftManager.share.rx
        AppNameGiftManager.share.rx
            //: .observeWeakly(Bool.self, "showBagsRed")
            .observeWeakly(Bool.self, (kDataFormat.replacingOccurrences(of: "timing", with: "h") + String(k_actualName)))
            //: .subscribe(onNext: { [weak self] (value) in
            .subscribe(onNext: { [weak self] value in
                //: guard let self = self else { return }
                guard let self = self else { return }
                //: guard value == true else {
                guard value == true else {
                    //: self.titleScrollView.redBagsLab.isHidden = true
                    self.titleScrollView.redBagsLab.isHidden = true
                    //: return
                    return
                }
                // 展示红点
                //: self.titleScrollView.redBagsLab.isHidden = false
                self.titleScrollView.redBagsLab.isHidden = false
                // 刷新礼物接口
                //: TalkingChatGiftManager.share.func__sendGiftEvent(type: self.style, isRefresh: true, completion: {
                AppNameGiftManager.share.searchCompletion(type: self.style, isRefresh: true, completion: {
                    //: self.updateGiftInfo(needReload: true, mf_coin: DistanceAppManager.share.loginUserMode.mf_coin)
                    self.dataGift(needReload: true, mf_coin: DistanceAppManager.share.loginUserMode.mf_coin)
                    //: })
                })
                //: })
            })
            //: .disposed(by: disposeBag)
            .disposed(by: disposeBag)
    }

    //: func setSeleteMemberList() {
    func member() {
        //: bottomView.addSubview(seleteObjectBtn)
        bottomView.addSubview(seleteObjectBtn)
        //: seleteObjectBtn.snp.makeConstraints { make in
        seleteObjectBtn.snp.makeConstraints { make in
            //: make.leading.equalTo(9)
            make.leading.equalTo(9)
            //: make.centerY.equalTo(bottomView)
            make.centerY.equalTo(bottomView)
            //: make.height.equalTo(30)
            make.height.equalTo(30)
            //: make.width.equalTo(113)
            make.width.equalTo(113)
        }
    }

    //: func setBlindBoxExplainBtn() {
    func device() {
        //: contentView.addSubview(blindBoxExplainBtn)
        contentView.addSubview(blindBoxExplainBtn)
        //: contentView.insertSubview(blindBoxExplainBtn, at: 99)
        contentView.insertSubview(blindBoxExplainBtn, at: 99)
        //: blindBoxExplainBtn.snp.makeConstraints { make in
        blindBoxExplainBtn.snp.makeConstraints { make in
            //: make.center.equalToSuperview()
            make.center.equalToSuperview()
            //: make.height.equalTo(44)
            make.height.equalTo(44)
            //: make.width.equalTo(340)
            make.width.equalTo(340)
        }
    }
}
