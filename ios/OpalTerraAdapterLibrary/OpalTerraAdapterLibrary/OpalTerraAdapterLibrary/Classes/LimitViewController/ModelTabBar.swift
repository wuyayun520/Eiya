
//: Declare String Begin

/*: "#666666" :*/
fileprivate let k_upStr:String = "#66666"
fileprivate let k_giftData:String = "6"

/*: "#8566FF" :*/
fileprivate let kToTitle:String = "#8"
fileprivate let kSharedValue:[Character] = ["5","6","6","F","F"]

/*: "Home" :*/
fileprivate let k_colorMessage:String = "path item button in barHome"

/*: "People" :*/
fileprivate let kTotaloName:[Character] = ["P","e","o","p","l","e"]

/*: "Hot" :*/
fileprivate let kHeadText:String = "Hotmodel other collection incident section"

/*: "Moment" :*/
fileprivate let k_toId:[Character] = ["M"]
fileprivate let kResultUserValue:String = "OMENT"

/*: "Message" :*/
fileprivate let kValueMsg:String = "Messaview block guard outside"
fileprivate let kMarginClickName:[Character] = ["g","e"]

/*: "Me" :*/
fileprivate let k_textStr:[Character] = ["M","e"]

/*: "Live" :*/
fileprivate let k_blackFormat:String = "as show appLive"

/*: "icon_randownCall_nor" :*/
fileprivate let k_contentFormat:[UInt8] = [0xe7,0xed,0xe1,0xe0,0xd1,0xfc,0xef,0xe0,0xea,0xe1,0xf9,0xe0,0xcd,0xef,0xe2,0xe2,0xd1,0xe0,0xe1,0xfc]

/*: "icon_randownCall_pre" :*/
fileprivate let kModelPath:[Character] = ["i","c","o","n","_","r","a","n","d"]
fileprivate let k_finishFormat:[Character] = ["o","w","n","C","a","l","l","_","p","r","e"]

/*: "btn_popular_pop_nor" :*/
fileprivate let k_toolTextUrl:[UInt8] = [0x8d,0x9b,0x81,0xb0,0x9f,0x80,0x9f,0x9a,0x83,0x8e,0x9d,0xb0,0x9f,0x80,0x9f,0xb0,0x81,0x80,0x9d]

/*: "btn_popular_pop_pre" :*/
fileprivate let kWrapStr:String = "type super count report elsebtn_po"
fileprivate let k_headFormat:String = "_pop_preif to if text beauty"

/*: "btn_discocer_dis_nor" :*/
fileprivate let k_customFormat:[UInt8] = [0x72,0x6f,0x6e,0x5f,0x73,0x69,0x64,0x5f,0x72,0x65,0x63,0x6f,0x63,0x73,0x69,0x64,0x5f,0x6e,0x74,0x62]

/*: "btn_discocer_dis_pre" :*/
fileprivate let k_shareName:String = "height equal model equal ifbtn_"
fileprivate let k_makeKey:[Character] = ["c","e","r","_","d","i","s","_","p","r","e"]

/*: "btn_label_add_nor" :*/
fileprivate let kDataMsg:[UInt8] = [0x12,0x4,0x1e,0x2f,0x1c,0x11,0x12,0x15,0x1c,0x2f,0x11,0x14,0x14,0x2f,0x1e,0x1f,0x2]

private func targetTo(index num: UInt8) -> UInt8 {
    return num ^ 112
}

/*: "btn_label_add_pre" :*/
fileprivate let k_bottomCurrentPath:[Character] = ["b","t","n","_","l"]
fileprivate let kConnectUserToolPath:String = "run title lighting valueabel_a"

/*: "btn_chat_cha_nor" :*/
fileprivate let kNameData:[UInt8] = [0xa0,0xb6,0xac,0x9d,0xa1,0xaa,0xa3,0xb6,0x9d,0xa1,0xaa,0xa3,0x9d,0xac,0xad,0xb0]

private func noTalk(top num: UInt8) -> UInt8 {
    return num ^ 194
}

/*: "btn_chat_cha_pre" :*/
fileprivate let k_colorProgramKey:String = "lab videobtn_c"
fileprivate let k_imageBeautyId:String = "title birthday to path layerha_pre"

/*: "btn_me_my_nor" :*/
fileprivate let k_moreCompareKey:[UInt8] = [0xad,0xbb,0xa1,0x90,0xa2,0xaa,0x90,0xa2,0xb6,0x90,0xa1,0xa0,0xbd]

private func toImage(page num: UInt8) -> UInt8 {
    return num ^ 207
}

/*: "btn_me_my_pre" :*/
fileprivate let k_recordUrl:String = "in to videobtn_m"
fileprivate let kNameTextLoadKey:String = "RE"

/*: "btn_live_add_nor" :*/
fileprivate let k_firstEditName:[UInt8] = [0xdd,0xcb,0xd1,0xe0,0xd3,0xd6,0xc9,0xda,0xe0,0xde,0xdb,0xdb,0xe0,0xd1,0xd0,0xcd]

private func modelLet(actual num: UInt8) -> UInt8 {
    return num ^ 191
}

/*: "btn_live_add_pre" :*/
fileprivate let kPointMakeValue:String = "string modelbtn_"
fileprivate let k_lastName:[Character] = ["d","d","_","p","r","e"]

/*: "get json error" :*/
fileprivate let k_modeViewPathMsg:String = "get jadd let range"
fileprivate let kPushMsg:[Character] = ["e","r","r","o","r"]

/*: "99+" :*/
fileprivate let kModeData:[Character] = ["9","9","+"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModelTabBar.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/3/29.
//

//: import UIKit
import UIKit

//: class TalkingTabBar: UITabBar {
class ModelTabBar: UITabBar {
    //: var currentTabType = 0
    var currentTabType = 0
    // 消息tabBar展示头像
    //: private var messageIcon = UIImageView()
    private var messageIcon = UIImageView()

    //: func setupItemsWithArr(itemTypes: Array<TabBarItemType>) {
    func license(itemTypes: [NameWidthMagnitude]) {
        //: if itemTypes.count == 0 {
        if itemTypes.count == 0 {
            //: return
            return
        }
        //: let viewWidth = ScreenWidth
        let viewWidth = constFormalContent
        //: let backView = UIView.init()
        let backView = UIView()
        //: self.addSubview(backView)
        self.addSubview(backView)
        //: backView.snp.makeConstraints { make in
        backView.snp.makeConstraints { make in
            //: make.leading.equalTo(0)
            make.leading.equalTo(0)
            //: make.trailing.equalTo(0)
            make.trailing.equalTo(0)
            //: make.bottom.equalToSuperview()
            make.bottom.equalToSuperview()
            //: make.height.equalTo(Int(TabBarViewHeight))
            make.height.equalTo(Int(dataImageItemValue))
        }
        //: backView.backgroundColor = .white
        backView.backgroundColor = .white
        //: backView.layer.shadowColor = UIColor.init(red: 188/255.0, green: 188/255.0, blue: 188/255.0, alpha: 0.5).cgColor
        backView.layer.shadowColor = UIColor(red: 188 / 255.0, green: 188 / 255.0, blue: 188 / 255.0, alpha: 0.5).cgColor
        //: backView.layer.shadowOffset = CGSize.init(width: 0, height: 0)
        backView.layer.shadowOffset = CGSize(width: 0, height: 0)
        //: backView.layer.shadowOpacity = 1
        backView.layer.shadowOpacity = 1
        //: backView.layer.shadowRadius = 6
        backView.layer.shadowRadius = 6

        //: let width = Int(viewWidth)/itemTypes.count
        let width = Int(viewWidth) / itemTypes.count

        //: for i in 0..<itemTypes.count {
        for i in 0 ..< itemTypes.count {
            //: let itemType = itemTypes[i]
            let itemType = itemTypes[i]
            //: let btn = barBtnFor(itemType: itemType)!
            let btn = showMain(itemType: itemType)!
            //: btn.tag = itemType.rawValue + 100
            btn.tag = itemType.rawValue + 100
            //: btn.isSelected = (itemType.rawValue == currentTabType)
            btn.isSelected = (itemType.rawValue == currentTabType)
            //: backView.addSubview(btn)
            backView.addSubview(btn)
            //: btn.snp.makeConstraints { make in
            btn.snp.makeConstraints { make in
                //: make.top.equalToSuperview()
                make.top.equalToSuperview()
                //: make.leading.equalTo(width*i)
                make.leading.equalTo(width * i)
                //: make.size.equalTo(CGSize.init(width: width, height: 48))
                make.size.equalTo(CGSize(width: width, height: 48))
            }
            //: if itemType != TabBarItemType.FreeMoment {
            if itemType != NameWidthMagnitude.FreeMoment {
                //: setBtnPlace(btn: btn)
                jar(btn: btn)
            }

            //: if itemType == TabBarItemType.Message {
            if itemType == NameWidthMagnitude.Message {
                //: messageIcon = UIImageView()
                messageIcon = UIImageView()
                //: messageIcon.contentMode = .scaleAspectFill
                messageIcon.contentMode = .scaleAspectFill
                //: messageIcon.layer.cornerRadius = 15.0
                messageIcon.layer.cornerRadius = 15.0
                //: messageIcon.layer.masksToBounds = true
                messageIcon.layer.masksToBounds = true
                //: messageIcon.isHidden = true
                messageIcon.isHidden = true
                //: btn.addSubview(messageIcon)
                btn.addSubview(messageIcon)
                //: messageIcon.snp.makeConstraints { make in
                messageIcon.snp.makeConstraints { make in
                    //: let y = btn.imageView?.origin.y ?? 0
                    let y = btn.imageView?.origin.y ?? 0
                    //: make.top.equalTo(y-2)
                    make.top.equalTo(y - 2)
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.size.equalTo(CGSize(width: 30, height: 30))
                    make.size.equalTo(CGSize(width: 30, height: 30))
                }
                //: } else if itemType == TabBarItemType.Live {
            } else if itemType == NameWidthMagnitude.Live { // 直播tabBar添加SVGA动效
                //: btn.snp.makeConstraints { make in
                btn.snp.makeConstraints { make in
                    //: make.top.equalToSuperview().offset(-6)
                    make.top.equalToSuperview().offset(-6)
                    //: make.leading.equalTo(width*i)
                    make.leading.equalTo(width * i)
                    //: make.size.equalTo(CGSize.init(width: width, height: 48))
                    make.size.equalTo(CGSize(width: width, height: 48))
                }
                //: liveSvga.isHidden = true
                liveSvga.isHidden = true
                //: btn.addSubview(liveSvga)
                btn.addSubview(liveSvga)
                //: liveSvga.snp.makeConstraints { make in
                liveSvga.snp.makeConstraints { make in
                    //: make.top.equalToSuperview().offset(-4)
                    make.top.equalToSuperview().offset(-4)
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.size.equalTo(CGSize(width: 44, height: 44))
                    make.size.equalTo(CGSize(width: 44, height: 44))
                }
                //: } else if itemType == TabBarItemType.Randow {
            } else if itemType == NameWidthMagnitude.Randow {
                //: btn.snp.makeConstraints { make in
                btn.snp.makeConstraints { make in
                    //: make.top.equalToSuperview().offset(-6)
                    make.top.equalToSuperview().offset(-6)
                    //: make.leading.equalTo(width*i)
                    make.leading.equalTo(width * i)
                    //: make.size.equalTo(CGSize.init(width: width, height: 48))
                    make.size.equalTo(CGSize(width: width, height: 48))
                }
                //: randowSvga.isHidden = true
                randowSvga.isHidden = true
                //: btn.addSubview(randowSvga)
                btn.addSubview(randowSvga)
                //: randowSvga.snp.makeConstraints { make in
                randowSvga.snp.makeConstraints { make in
                    //: make.top.equalToSuperview().offset(-4)
                    make.top.equalToSuperview().offset(-4)
                    //: make.centerX.equalToSuperview()
                    make.centerX.equalToSuperview()
                    //: make.size.equalTo(CGSize(width: 44, height: 44))
                    make.size.equalTo(CGSize(width: 44, height: 44))
                }
            }
        }

        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: let tabBarAppearance = UITabBarAppearance.init()
            let tabBarAppearance = UITabBarAppearance()
            //: tabBarAppearance.backgroundColor = .clear
            tabBarAppearance.backgroundColor = .clear
            //: tabBarAppearance.backgroundEffect = nil
            tabBarAppearance.backgroundEffect = nil
            //: tabBarAppearance.shadowColor = .clear
            tabBarAppearance.shadowColor = .clear
            //: self.standardAppearance = tabBarAppearance
            self.standardAppearance = tabBarAppearance
            //: if #available(iOS 15.0, *) {
            if #available(iOS 15.0, *) {
                //: self.scrollEdgeAppearance = tabBarAppearance
                self.scrollEdgeAppearance = tabBarAppearance
                //: } else {
            } else {
                // Fallback on earlier versions
            }
            //: } else {
        } else {
            // Fallback on earlier versions
        }
    }

    //: func barBtnFor(itemType: TabBarItemType) -> UIButton? {
    func showMain(itemType: NameWidthMagnitude) -> UIButton? {
        //: switch itemType {
        switch itemType {
        //: case .Social, .Moment, .Account, .Message, .Randow, .Live:
        case .Social, .Moment, .Account, .Message, .Randow, .Live:
            //: let btn: UIButton = UIButton.init(type: .custom)
            let btn: UIButton = .init(type: .custom)
            //: btn.tag = itemType.rawValue + 100
            btn.tag = itemType.rawValue + 100
            //: btn.backgroundColor = .clear
            btn.backgroundColor = .clear
            //: btn.titleLabel?.font = .fontChange(type: .Medium, fontSize: 11)
            btn.titleLabel?.font = .fontChange(type: .Medium, fontSize: 11)
            //: btn.setTitle(self.itemTitleFor(itemType: itemType), for: .normal)
            btn.setTitle(self.loadType(itemType: itemType), for: .normal)
            //: btn .setTitleColor(UIColor.init(hex: "#666666"), for: .normal)
            btn.setTitleColor(UIColor(hex: (k_upStr.capitalized + k_giftData.capitalized)), for: .normal)
            //: btn .setTitleColor(UIColor.init(hex: "#8566FF"), for: .selected)
            btn.setTitleColor(UIColor(hex: (kToTitle.capitalized + String(kSharedValue))), for: .selected)
            //: btn.setImage(UIImage.submitGift(name: self.itemImageFor(itemType: itemType, btnSelect: false)), for: .normal)
            btn.setImage(UIImage.submitGift(name: self.unwelcomeShared(itemType: itemType, btnSelect: false)), for: .normal)
            //: btn.setImage(UIImage.submitGift(name: self.itemImageFor(itemType: itemType, btnSelect: true)), for: .selected)
            btn.setImage(UIImage.submitGift(name: self.unwelcomeShared(itemType: itemType, btnSelect: true)), for: .selected)

            //: btn.imageView?.contentMode = .scaleAspectFill
            btn.imageView?.contentMode = .scaleAspectFill
            //: return btn
            return btn
        //: case .FreeMoment:
        case .FreeMoment:
            //: return nil
            return nil
        //: case .Login:
        case .Login:
            //: return nil
            return nil
        //: case .meet:
        case .meet:
            //: return nil
            return nil
        }
    }

    //: func itemTitleFor(itemType: TabBarItemType) -> String {
    func loadType(itemType: NameWidthMagnitude) -> String {
        //: switch itemType {
        switch itemType {
        //: case .Randow:
        case .Randow:
            //: return "Home".localized
            return (String(k_colorMessage.suffix(4))).localized
        //: case .Social:
        case .Social:
            //: if DistanceAppManager.share.appStatus == AppSkinStatus.special.rawValue {
            if DistanceAppManager.share.appStatus == NameQuickLookable.special.rawValue {
                //: return "People".localized
                return (String(kTotaloName)).localized
                //: } else if DistanceAppManager.share.loginUserMode.sex == Gender.male.rawValue {
            } else if DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.male.rawValue {
                //: return "Hot".localized
                return (String(kHeadText.prefix(3))).localized
                //: } else {
            } else {
                //: return "Home".localized
                return (String(k_colorMessage.suffix(4))).localized
            }

        //: case .Moment:
        case .Moment:
            //: return "Moment".localized
            return (String(k_toId) + kResultUserValue.lowercased()).localized
        //: case .Message:
        case .Message:
            //: return "Message".localized
            return (String(kValueMsg.prefix(5)) + String(kMarginClickName)).localized
        //: case .Account:
        case .Account:
            //: return "Me".localized
            return "Me".localized
        //: case .Live:
        case .Live:
            //: return "Live".localized
            return (String(k_blackFormat.suffix(4))).localized
        //: case .Login, .FreeMoment, .meet:
        case .Login, .FreeMoment, .meet:
            //: return ""
            return ""
        }
    }

    //: func itemImageFor(itemType: TabBarItemType, btnSelect: Bool) -> String {
    func unwelcomeShared(itemType: NameWidthMagnitude, btnSelect: Bool) -> String {
        //: switch itemType {
        switch itemType {
        //: case .Randow:
        case .Randow:
            //: return btnSelect == false ? "icon_randownCall_nor":"icon_randownCall_pre"
            return btnSelect == false ? String(bytes: k_contentFormat.map{$0^142}, encoding: .utf8)! : (String(kModelPath) + String(k_finishFormat))
        //: case .Social:
        case .Social:
            //: return btnSelect == false ? "btn_popular_pop_nor":"btn_popular_pop_pre"
            return btnSelect == false ? String(bytes: k_toolTextUrl.map{$0^239}, encoding: .utf8)! : (String(kWrapStr.suffix(6)) + "pular" + String(k_headFormat.prefix(8)))
        //: case .Moment:
        case .Moment:
            //: return btnSelect == false ? "btn_discocer_dis_nor":"btn_discocer_dis_pre"
            return btnSelect == false ? String(bytes: k_customFormat.reversed(), encoding: .utf8)! : (String(k_shareName.suffix(4)) + "disco" + String(k_makeKey))
        //: case .FreeMoment:
        case .FreeMoment:
            //: return btnSelect == false ? "btn_label_add_nor":"btn_label_add_pre"
            return btnSelect == false ? String(bytes: kDataMsg.map{targetTo(index: $0)}, encoding: .utf8)! : (String(k_bottomCurrentPath) + String(kConnectUserToolPath.suffix(6)) + "dd_pre")
        //: case .Message:
        case .Message:
            //: return btnSelect == false ? "btn_chat_cha_nor":"btn_chat_cha_pre"
            return btnSelect == false ? String(bytes: kNameData.map{noTalk(top: $0)}, encoding: .utf8)! : (String(k_colorProgramKey.suffix(5)) + "hat_c" + String(k_imageBeautyId.suffix(6)))
        //: case .Account:
        case .Account:
            //: return btnSelect == false ? "btn_me_my_nor":"btn_me_my_pre"
            return btnSelect == false ? String(bytes: k_moreCompareKey.map{toImage(page: $0)}, encoding: .utf8)! : (String(k_recordUrl.suffix(5)) + "e_my_p" + kNameTextLoadKey.lowercased())
        //: case .Live:
        case .Live:
            //: return btnSelect == false ? "btn_live_add_nor":"btn_live_add_pre"
            return btnSelect == false ? String(bytes: k_firstEditName.map{modelLet(actual: $0)}, encoding: .utf8)! : (String(kPointMakeValue.suffix(4)) + "live_a" + String(k_lastName))
        //: case .Login, .meet:
        case .Login, .meet:
            //: return ""
            return ""
        }
    }

    /// 更改tabbar按钮选中状态
    //: func setSelectedTabItem(itemType: TabBarItemType) {
    func itemType(itemType: NameWidthMagnitude) {
        //: let btn = self.viewWithTag(currentTabType + 100) as! UIButton
        let btn = self.viewWithTag(currentTabType + 100) as! UIButton
        //: if itemType.rawValue != currentTabType && btn.isSelected == true {
        if itemType.rawValue != currentTabType && btn.isSelected == true {
            //: btn.isSelected = false
            btn.isSelected = false
        }
        //: let lastBtn = self.viewWithTag(itemType.rawValue + 100) as! UIButton
        let lastBtn = self.viewWithTag(itemType.rawValue + 100) as! UIButton
        //: lastBtn.isSelected = true
        lastBtn.isSelected = true
        //: currentTabType = itemType.rawValue
        currentTabType = itemType.rawValue
        //: if itemType == .Message {
        if itemType == .Message {
            //: hideNewMessageUser()
            hideEqualSoul()
        }
    }

    //: func setBtnPlace(btn: UIButton) {
    func jar(btn: UIButton) {
        //: let titleW: CGFloat = btn.titleLabel?.intrinsicContentSize.width ?? 0
        let titleW: CGFloat = btn.titleLabel?.intrinsicContentSize.width ?? 0
        //: let titleH: CGFloat = btn.titleLabel?.intrinsicContentSize.height ?? 0
        let titleH: CGFloat = btn.titleLabel?.intrinsicContentSize.height ?? 0

        //: let imageW: CGFloat = btn.imageView?.bounds.width ?? 0
        let imageW: CGFloat = btn.imageView?.bounds.width ?? 0
        //: let imageH: CGFloat = btn.imageView?.bounds.height ?? 0
        let imageH: CGFloat = btn.imageView?.bounds.height ?? 0
        //: if LanguageManager.shared.direction == .leftToRight {
        if MakeLanguageManager.shared.direction == .leftToRight {
            //: btn.imageEdgeInsets = UIEdgeInsets(top: -titleH+4, left: 0, bottom: 0, right: -titleW)
            btn.imageEdgeInsets = UIEdgeInsets(top: -titleH + 4, left: 0, bottom: 0, right: -titleW)
            //: btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageW, bottom: -imageH-2, right: 0)
            btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageW, bottom: -imageH - 2, right: 0)
            //: } else {
        } else {
            //: btn.imageEdgeInsets = UIEdgeInsets(top: -titleH+4, left: -titleW, bottom: 0, right: 0)
            btn.imageEdgeInsets = UIEdgeInsets(top: -titleH + 4, left: -titleW, bottom: 0, right: 0)
            //: btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: -imageH-2, right:  -imageW)
            btn.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: -imageH - 2, right: -imageW)
        }
    }

    //: private lazy var liveSvga: SVGAPlayer = {
    private lazy var liveSvga: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Live_tabBar)
            let url = VideoEffectTool.default.conType(type: .Live_tabBar)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(k_modeViewPathMsg.prefix(5)) + "son " + String(kPushMsg)))
        }

        //: return player
        return player
        //: }()
    }()

    //: private lazy var randowSvga: SVGAPlayer = {
    private lazy var randowSvga: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 0
        player.loops = 0
        //: player.clearsAfterStop = false
        player.clearsAfterStop = false
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: do {
        do {
            //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Tabbar_randownCall)
            let url = VideoEffectTool.default.conType(type: .Tabbar_randownCall)
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: player.videoItem = videoItem
                player.videoItem = videoItem
                //: player.startAnimation()
                player.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(k_modeViewPathMsg.prefix(5)) + "son " + String(kPushMsg)))
        }

        //: return player
        return player
        //: }()
    }()
}

// MARK: - Event

//: extension TalkingTabBar {
extension ModelTabBar {
    /// 刷新消息未读数角标
    //: func refreshBadgeLayoutWith(unread: Int, barType: TabBarItemType) {
    func priceState(unread: Int, barType: NameWidthMagnitude) {
        //: let btn = self.viewWithTag(barType.rawValue + 100) as! UIButton
        let btn = self.viewWithTag(barType.rawValue + 100) as! UIButton
        //: let label = getBadgeLabel(btn: btn)
        let label = textEmpty(btn: btn)
        //: if unread > 0 {
        if unread > 0 {
            //: label.isHidden = false
            label.isHidden = false
            //: if unread > 99 {
            if unread > 99 {
                //: label.text = "99+"
                label.text = "99+"
                //: } else {
            } else {
                //: label.text = "\(unread)"
                label.text = "\(unread)"
            }
            //: } else {
        } else {
            //: label.isHidden = true
            label.isHidden = true
            //: hideNewMessageUser()
            hideEqualSoul()
        }
        //: var labWidth = 18.0
        var labWidth = 18.0
        //: if unread > 99 {
        if unread > 99 {
            //: labWidth = 30.0
            labWidth = 30.0
            //: } else if unread > 9 {
        } else if unread > 9 {
            //: labWidth = 23.0
            labWidth = 23.0
        }
        //: let delta = KDeviceIsIphoneX ? 5 : 2
        let delta = constScreenName ? 5 : 2
        //: label.snp.remakeConstraints { make in
        label.snp.remakeConstraints { make in
            //: make.trailing.equalToSuperview().offset(-5)
            make.trailing.equalToSuperview().offset(-5)
            //: make.top.equalTo(delta)
            make.top.equalTo(delta)
            //: make.size.equalTo(CGSize(width: labWidth, height: 18.0))
            make.size.equalTo(CGSize(width: labWidth, height: 18.0))
        }
    }

    //: func getBadgeLabel(btn: UIButton) -> UILabel {
    func textEmpty(btn: UIButton) -> UILabel {
        //: var badgeLabel = btn.viewWithTag(1000)
        var badgeLabel = btn.viewWithTag(1000)
        //: if badgeLabel == nil {
        if badgeLabel == nil {
            //: var tempLabel = UILabel.init()
            var tempLabel = UILabel()
            //: tempLabel = UILabel.init()
            tempLabel = UILabel()
            //: tempLabel.tag = 1000
            tempLabel.tag = 1000
            //: tempLabel.backgroundColor = UIColor.msgTipsColor()
            tempLabel.backgroundColor = UIColor.tips()
            //: tempLabel.layer.cornerRadius = 9
            tempLabel.layer.cornerRadius = 9
            //: tempLabel.layer.borderWidth = 1
            tempLabel.layer.borderWidth = 1
            //: tempLabel.layer.borderColor = UIColor.white.cgColor
            tempLabel.layer.borderColor = UIColor.white.cgColor
            //: tempLabel.clipsToBounds = true
            tempLabel.clipsToBounds = true
            //: tempLabel.textColor = UIColor.white
            tempLabel.textColor = UIColor.white
            //: tempLabel.font = UIFont.pingfangMediumFont(fontSize: 13)
            tempLabel.font = UIFont.tapShared(fontSize: 13)
            //: tempLabel.isHidden = true
            tempLabel.isHidden = true
            //: tempLabel.textAlignment = .center
            tempLabel.textAlignment = .center

            //: btn.addSubview(tempLabel)
            btn.addSubview(tempLabel)
            //: badgeLabel = tempLabel
            badgeLabel = tempLabel
        }
        //: return badgeLabel as! UILabel
        return badgeLabel as! UILabel
    }

    /// 展示消息tab头像
    //: func showNewMessageUser(headPic: String) {
    func between(headPic: String) {
        //: if currentTabType != TabBarItemType.Message.rawValue {
        if currentTabType != NameWidthMagnitude.Message.rawValue {
            //: let btn = self.viewWithTag(TabBarItemType.Message.rawValue + 100) as? UIButton
            let btn = self.viewWithTag(NameWidthMagnitude.Message.rawValue + 100) as? UIButton
            //: if btn != nil {
            if btn != nil {
                //: self.messageIcon.isHidden = false
                self.messageIcon.isHidden = false
                //: let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: 15))]
                let optionsInfo = [KingfisherOptionsInfoItem.processor(RoundCornerImageProcessor(cornerRadius: 15))]
                //: self.messageIcon.setUrlImage(urlStr: headPic, options: optionsInfo)
                self.messageIcon.setUrlImage(urlStr: headPic, options: optionsInfo)
            }
        }
    }

    /// 隐藏消息tab头像
    //: func hideNewMessageUser() {
    func hideEqualSoul() {
        //: let btn = self.viewWithTag(TabBarItemType.Message.rawValue + 100) as? UIButton
        let btn = self.viewWithTag(NameWidthMagnitude.Message.rawValue + 100) as? UIButton
        //: if btn != nil {
        if btn != nil {
            //: self.messageIcon.isHidden = true
            self.messageIcon.isHidden = true
        }
    }

    /// 展示女性直播toast提示
    //: func showFemaleLiveTurnOnToast() {
    func toast() {
        //: guard self.subviews.count > 0 else { return }
        guard self.subviews.count > 0 else { return }
        //: TalkingLiveTabToast().show(superView: self)
        ObjectTabToast().superApp(superView: self)
    }

    /// 更改直播按钮图标
    //: func switchLiveTabBarImage() {
    func asMove() {
        //: guard DistanceAppManager.share.loginUserMode.sex == Gender.female.rawValue else { return }
        guard DistanceAppManager.share.loginUserMode.sex == ManagerQuickLookable.female.rawValue else { return }
        //: let liveBtn = self.viewWithTag(TabBarItemType.Live.rawValue + 100) as? UIButton
        let liveBtn = self.viewWithTag(NameWidthMagnitude.Live.rawValue + 100) as? UIButton
        //: liveBtn?.isSelected = false
        liveBtn?.isSelected = false
        //: if TalkingLiveManager.shared().isLive ||
        if ValueThen.kindShared().isLive ||
            //: TalkingVoiceRoomManager.shared().isParty, String(TalkingVoiceRoomManager.shared().partyModel.streamerInfo.uid) == DistanceAppManager.share.loginUid {
            CoverManager.byRest().isParty, String(CoverManager.byRest().partyModel.streamerInfo.uid) == DistanceAppManager.share.loginUid
        {
            //: liveSvga.isHidden = false
            liveSvga.isHidden = false
            //: } else {
        } else {
            //: liveSvga.isHidden = true
            liveSvga.isHidden = true
        }
    }

    /// 更改Randow按钮图标
    //: func switchRandowTabBarImage(isHidde: Bool) {
    func loadMake(isHidde: Bool) {
        //: let liveBtn = self.viewWithTag(TabBarItemType.Randow.rawValue + 100) as? UIButton
        let liveBtn = self.viewWithTag(NameWidthMagnitude.Randow.rawValue + 100) as? UIButton
        //: liveBtn?.isSelected = false
        liveBtn?.isSelected = false
        //: randowSvga.isHidden = !isHidde
        randowSvga.isHidden = !isHidde
    }
}
