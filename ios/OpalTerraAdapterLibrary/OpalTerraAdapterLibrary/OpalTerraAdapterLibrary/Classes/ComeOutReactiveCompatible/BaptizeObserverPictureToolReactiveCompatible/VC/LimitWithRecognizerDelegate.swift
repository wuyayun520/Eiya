
//: Declare String Begin

/*: "#33005B" :*/
fileprivate let k_withData:String = "#3300"
fileprivate let kTapMsg:String = "5Btouch to count"

/*: "#322870" :*/
fileprivate let k_equalKey:String = "#322870"

/*: "Tap to start video chatting" :*/
fileprivate let k_indexToMsg:String = "Tap tolet size"
fileprivate let k_pickValue:String = "touch more linet vi"
fileprivate let k_sharedKey:String = "item"
fileprivate let kVoiceStr:String = "insideing"

/*: "icon_views_number" :*/
fileprivate let k_postId:[Character] = ["i","c","o","n","_","v","i","e","w"]
fileprivate let k_colorValue:[Character] = ["s","_","n","u","m","b","e","r"]

/*: "icon_lounge" :*/
fileprivate let k_devicePath:String = "icon_frame section model"
fileprivate let kMainFormat:[Character] = ["l","o","u","n","g","e"]

/*: "icon_rank_coin" :*/
fileprivate let kFrameMessage:String = "less format pathicon_"
fileprivate let k_pushPlaceUrl:[Character] = ["r","a"]
fileprivate let k_mainUrl:[Character] = ["n","k","_","c","o","i","n"]

/*: "vip_btn_top" :*/
fileprivate let k_modelPath:[Character] = ["v","i","p","_","b","t","n"]
fileprivate let k_beTitle:String = "mode in view_top"

/*: "btn_nearby_settings_nor" :*/
fileprivate let kTapId:[Character] = ["b","t","n","_","n","e","a","r","b","y","_","s","e","t","t","i","n","g","s"]
fileprivate let kPushKey:[Character] = ["_","n","o","r"]

/*: "#F0F0F2" :*/
fileprivate let kSuiteTitle:String = "#F0F0F2object return in equal"

/*: "icon_coin_pre" :*/
fileprivate let k_defineToName:String = "icon_cname shadow content add invite"
fileprivate let k_targetBeautyPath:[Character] = ["o","i","n","_","p","r","e"]

/*: "fee" :*/
fileprivate let kCloseMsg:String = "succeedee"

/*: "VIPFee" :*/
fileprivate let kSayData:[Character] = ["V","I","P","F","e","e"]

/*: "chattingNum" :*/
fileprivate let kValueMakeUrl:String = "chamodel"
fileprivate let k_labMessage:String = "Numcase color make blind return"

/*: "get json error" :*/
fileprivate let k_betweenKey:String = "remove stack list titleget js"
fileprivate let kConName:String = "model make type false gestureon e"

/*: "Free 1 min" :*/
fileprivate let kLevelMessage:[Character] = ["F","r"]
fileprivate let k_makeTitle:String = "ee 1class greet view"

/*: "%@/min" :*/
fileprivate let k_screenToId:String = "info"
fileprivate let kMovePath:String = "@/minlabel let"

/*: "%@ chatting" :*/
fileprivate let kTargetId:String = "%@ chaapp make"
fileprivate let k_makePath:[Character] = ["g"]

/*: "%@ Coins/min" :*/
fileprivate let kUserCellName:[Character] = ["%","@"," ","C","o","i"]
fileprivate let kSourceValue:[Character] = ["n","s","/","m","i","n"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LimitWithRecognizerDelegate.swift
//  OpalTerraAdapterLibrary
//
//  Created by Charlotte on 2024/4/8.
//

//: import UIKit
import UIKit

//: class TalkingMaleStaticRandomVideoVC: TalkingBaseViewController {
class LimitWithRecognizerDelegate: StartThen {
    //: var fee = 0
    var fee = 0 // 原价
    //: var vipFee = 0
    var vipFee = 0 // VIP价格
    //: var chattingNum = 0
    var chattingNum = 0 // 当前匹配人数

    //: override func viewWillAppear(_ animated: Bool) {
    override func viewWillAppear(_ animated: Bool) {
        //: super.viewWillAppear(animated)
        super.viewWillAppear(animated)
        //: req_updateVIPFee()
        poundageDown()
    }

    //: override func viewDidLoad() {
    override func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: self.hideNavi = true
        self.hideNavi = true
        //: setupSubviews()
        stopCollection()
        //: setupSubViewsConstraint()
        selectedToAction()
        //: reqvideoMatchCheck()
        equalBy()
        //: bindInteraction()
        bell()
        //: setPlayer()
        playerPoise()
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }

    // MARK: - Lazy Load

    // 视频画面渲染视图
    //: private lazy var renderView: UIView = {
    private lazy var renderView: UIView = {
        //: let v = UIView()
        let v = UIView()
        //: v.backgroundColor = UIColor(hex: "#33005B")
        v.backgroundColor = UIColor(hex: (k_withData.capitalized + String(kTapMsg.prefix(2))))
        //: return v
        return v
        //: }()
    }()

    //: private lazy var gradientBtn: UIButton = {
    private lazy var gradientBtn: UIButton = {
        //: let btn = UIButton()
        let btn = UIButton()
        //: btn.addTarget(self, action: #selector(start_randomVideo), for: .touchUpInside)
        btn.addTarget(self, action: #selector(pullUpVideo), for: .touchUpInside)
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        // 渐变
        //: let layer = CAGradientLayer()
        let layer = CAGradientLayer()
        //: layer.frame = CGRect(x: 0, y: 0, width: ScreenWidth+1, height: ScreenHeight+1)
        layer.frame = CGRect(x: 0, y: 0, width: constFormalContent + 1, height: user_recordMarginValue + 1)
        //: layer.startPoint = CGPoint(x: 0.5, y: 0)
        layer.startPoint = CGPoint(x: 0.5, y: 0)
        //: layer.endPoint = CGPoint(x: 0.5, y: 1)
        layer.endPoint = CGPoint(x: 0.5, y: 1)
        //: layer.colors = [UIColor(white: 0, alpha: 0.15).cgColor, UIColor(hex: "#322870")!.cgColor]
        layer.colors = [UIColor(white: 0, alpha: 0.15).cgColor, UIColor(hex: (k_equalKey.capitalized))!.cgColor]
        //: layer.locations = [0, 1]
        layer.locations = [0, 1]
        //: btn.layer.addSublayer(layer)
        btn.layer.addSublayer(layer)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var svgaPlayer: SVGAPlayer = {
    private lazy var svgaPlayer: SVGAPlayer = {
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
        //: return player
        return player
        //: }()
    }()

    //: private lazy var tipsLab: UILabel = {
    private lazy var tipsLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.boldSystemFont(ofSize: 20)
        lab.font = UIFont.boldSystemFont(ofSize: 20)
        //: lab.textAlignment = .center
        lab.textAlignment = .center
        //: lab.text = "Tap to start video chatting".localized
        lab.text = (String(k_indexToMsg.prefix(6)) + " star" + String(k_pickValue.suffix(4)) + "deo c" + k_sharedKey.replacingOccurrences(of: "item", with: "ha") + kVoiceStr.replacingOccurrences(of: "inside", with: "tt")).localized
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var chattingNumBtn: TalkingButton = {
    private lazy var chattingNumBtn: ResumeControl = {
        //: let btn = TalkingButton()
        let btn = ResumeControl()
        //: btn.setImage(UIImage.submitGift(name: "icon_views_number"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(k_postId) + String(k_colorValue))), for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "icon_views_number"), for: .disabled)
        btn.setImage(UIImage.submitGift(name: (String(k_postId) + String(k_colorValue))), for: .disabled)
        //: btn.spaceBetweenTitleAndImage = 5
        btn.spaceBetweenTitleAndImage = 5
        //: btn.isEnabled = false
        btn.isEnabled = false
        //: btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.fontChange(type: .Regular, fontSize: 15)
        btn.titleLabel?.font = UIFont.fontChange(type: .Regular, fontSize: 15)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var priceStackView: UIStackView = {
    private lazy var priceStackView: UIStackView = {
        //: let v = UIStackView()
        let v = UIStackView()
        //: v.axis = .horizontal
        v.axis = .horizontal
        //: v.alignment = .center
        v.alignment = .center
        //: v.spacing = 4
        v.spacing = 4
        //: v.isUserInteractionEnabled = false
        v.isUserInteractionEnabled = false
        //: return v
        return v
        //: }()
    }()

    //: private lazy var vipIcon: UIImageView = {
    private lazy var vipIcon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.submitGift(name: "icon_lounge")
        img.image = UIImage.submitGift(name: (String(k_devicePath.prefix(5)) + String(kMainFormat)))
        //: img.contentMode = .scaleAspectFill
        img.contentMode = .scaleAspectFill
        //: return img
        return img
        //: }()
    }()

    //: private lazy var goldCoinIcon: UIImageView = {
    private lazy var goldCoinIcon: UIImageView = {
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.submitGift(name: "icon_rank_coin")
        img.image = UIImage.submitGift(name: (String(kFrameMessage.suffix(5)) + String(k_pushPlaceUrl) + String(k_mainUrl)))
        //: return img
        return img
        //: }()
    }()

    //: private lazy var priceLab: UILabel = {
    private lazy var priceLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .white
        lab.textColor = .white
        //: lab.font = UIFont.fontChange(type: .Regular, fontSize: 15)
        lab.font = UIFont.fontChange(type: .Regular, fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var vipTopImgView: UIImageView = {
    private lazy var vipTopImgView: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.isHidden = true
        imgV.isHidden = true
        //: imgV.image  = UIImage.submitGift(name: "vip_btn_top")
        imgV.image = UIImage.submitGift(name: (String(k_modelPath) + String(k_beTitle.suffix(4))))
        //: return imgV
        return imgV
        //: }()
    }()

    // 会员折扣价
    //: private lazy var vipPriceBtn: TalkingButton = {
    private lazy var vipPriceBtn: ResumeControl = {
        //: let btn = TalkingButton()
        let btn = ResumeControl()
        //: btn.backgroundColor = UIColor.white.withAlphaComponent(0.1)
        btn.backgroundColor = UIColor.white.withAlphaComponent(0.1)
        //: btn.layer.cornerRadius = actualWidth(w: 27)
        btn.layer.cornerRadius = actualWidth(w: 27)
        //: btn.clipsToBounds = true
        btn.clipsToBounds = true
        //: btn.addTarget(self, action: #selector(maleVipPriceButtonClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(snapInfo), for: .touchUpInside)
        //: btn.isHidden = true
        btn.isHidden = true
        //: btn.setBackgroundImage(UIImage.submitGift(name: "btn_nearby_settings_nor"), for: .normal)
        btn.setBackgroundImage(UIImage.submitGift(name: (String(kTapId) + String(kPushKey))), for: .normal)
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var vipPriceImg: UIImageView = {
    private lazy var vipPriceImg: UIImageView = {
        //: let imgV = UIImageView()
        let imgV = UIImageView()
        //: imgV.image  = UIImage.submitGift(name: "icon_rank_coin")
        imgV.image = UIImage.submitGift(name: (String(kFrameMessage.suffix(5)) + String(k_pushPlaceUrl) + String(k_mainUrl)))
        //: return imgV
        return imgV
        //: }()
    }()

    //: private lazy var vipPriceLab: UILabel = {
    private lazy var vipPriceLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: lab.textColor = .userVipColor()
        lab.textColor = .usufructuaryHeadSkinColour()
        //: lab.font = UIFont.fontChange(type: .Medium, fontSize: 15)
        lab.font = UIFont.fontChange(type: .Medium, fontSize: 15)
        //: return lab
        return lab
        //: }()
    }()

    //: private lazy var norPriceLab: UILabel = {
    private lazy var norPriceLab: UILabel = {
        //: let lab = UILabel()
        let lab = UILabel()
        //: return lab
        return lab
        //: }()
    }()

    /// 余额
    //: private lazy var balanceBtn: TalkingButton = {
    private lazy var balanceBtn: ResumeControl = {
        //: let btn = TalkingButton()
        let btn = ResumeControl()
        //: btn.backgroundColor = UIColor.init(hex: "#F0F0F2")
        btn.backgroundColor = UIColor(hex: (String(kSuiteTitle.prefix(7))))
        //: btn.layer.cornerRadius = 12
        btn.layer.cornerRadius = 12
        //: btn.layer.masksToBounds = true
        btn.layer.masksToBounds = true
        //: btn.addTarget(self, action: #selector(balanceBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(tension), for: .touchUpInside)
        //: let img = UIImageView()
        let img = UIImageView()
        //: img.image = UIImage.submitGift(name: "icon_coin_pre")
        img.image = UIImage.submitGift(name: (String(k_defineToName.prefix(6)) + String(k_targetBeautyPath)))
        //: img.isUserInteractionEnabled = false
        img.isUserInteractionEnabled = false
        //: btn.addSubview(img)
        btn.addSubview(img)
        //: img.snp.makeConstraints { make in
        img.snp.makeConstraints { make in
            //: make.leading.top.bottom.equalToSuperview()
            make.leading.top.bottom.equalToSuperview()
            //: make.width.equalTo(24)
            make.width.equalTo(24)
        }
        //: return btn
        return btn
        //: }()
    }()

    //: private lazy var balanceLB: UILabel = {
    private lazy var balanceLB: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.textColor = UIColor.colorStatuteNameApp()
        lb.textColor = UIColor.colorStatuteNameApp()
        //: lb.font = UIFont.boldSystemFont(ofSize: 16)
        lb.font = UIFont.boldSystemFont(ofSize: 16)
        //: lb.isUserInteractionEnabled = false
        lb.isUserInteractionEnabled = false
        //: balanceBtn.addSubview(lb)
        balanceBtn.addSubview(lb)
        //: lb.snp.makeConstraints { make in
        lb.snp.makeConstraints { make in
            //: make.trailing.equalTo(-7)
            make.trailing.equalTo(-7)
            //: make.top.equalTo(4)
            make.top.equalTo(4)
            //: make.bottom.equalTo(-4)
            make.bottom.equalTo(-4)
            //: make.leading.equalTo(29)
            make.leading.equalTo(29)
        }
        //: return lb
        return lb
        //: }()
    }()
}

// MARK: - Request & 数据处理

//: extension TalkingMaleStaticRandomVideoVC {
extension LimitWithRecognizerDelegate {
    //: @objc private func reqvideoMatchCheck() {
    @objc private func equalBy() {
        //: TalkingQuickVideoManager.req_videoMatchCheck(enterType: 1) { succeed, result, errorModel in
        ValuePublishVideoManager.thirdSub(enterType: 1) { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: self.fee = json["fee"].intValue
            self.fee = json[(kCloseMsg.replacingOccurrences(of: "succeed", with: "f"))].intValue
            //: self.vipFee = json["VIPFee"].intValue
            self.vipFee = json[(String(kSayData))].intValue
            //: self.chattingNum = json["chattingNum"].intValue
            self.chattingNum = json[(kValueMakeUrl.replacingOccurrences(of: "model", with: "t") + "ting" + String(k_labMessage.prefix(3)))].intValue
            //: self.refreshVideoCallPrice()
            self.alongBar()
        }
    }

    //: private func setPlayer() {
    private func playerPoise() {
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Random_video_bg_nor )
        let url = VideoEffectTool.default.conType(type: .Random_video_bg_nor)
        //: do {
        do {
            //: let data = try Data(contentsOf: url)
            let data = try Data(contentsOf: url)
            //: let parser = SVGAParser.init()
            let parser = SVGAParser()
            //: parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
            parser.parse(with: data, cacheKey: "") { [weak self] videoItem in
                //: guard let self = self else {return}
                guard let self = self else { return }
                //: svgaPlayer.videoItem = videoItem
                svgaPlayer.videoItem = videoItem
                //: svgaPlayer.startAnimation()
                svgaPlayer.startAnimation()
            }
            //: } catch {
        } catch {
            //: printLog(message: "get json error")
            printLog(message: (String(k_betweenKey.suffix(6)) + String(kConName.suffix(4)) + "rror"))
        }
    }

    /// 更新VIP价格
    //: @objc private func req_updateVIPFee() {
    @objc private func poundageDown() {
        //: TalkingQuickVideoManager.req_videoMatchCheck() { succeed, result, errorModel in
        ValuePublishVideoManager.thirdSub { succeed, result, _ in
            //: guard succeed else { return }
            guard succeed else { return }
            //: let json = JSON(result ?? [String: Any]())
            let json = JSON(result ?? [String: Any]())
            //: self.vipFee = json["VIPFee"].intValue
            self.vipFee = json[(String(kSayData))].intValue
            //: self.refreshVideoCallPrice()
            self.alongBar()
        }
    }
}

// MARK: - Event

//: extension TalkingMaleStaticRandomVideoVC {
extension LimitWithRecognizerDelegate {
    /// 余额点击事件
    //: @objc private func balanceBtnClick() {
    @objc private func tension() {
//        AddReactiveCompatible.share.func__pushToWebVC(webViewType: .RechargeFullPage)
    }

    /// 男性侧vip价格按钮点击事件
    //: @objc private func maleVipPriceButtonClick() {
    @objc private func snapInfo() {
        //: AddReactiveCompatible.share.func__pushToSubscribeAlert()
        AddReactiveCompatible.share.digitiserParams()
    }

    /// 开始随机视频
    //: @objc private func start_randomVideo() {
    @objc private func pullUpVideo() {
        //: gradientBtn.isUserInteractionEnabled = false
        gradientBtn.isUserInteractionEnabled = false
        //: AddReactiveCompatible.share.func__pushToRandomVideoVC(isBeginRand: true)
        AddReactiveCompatible.share.sampleWith(isBeginRand: true)
        //: DispatchQueue.main.asyncAfter(deadline: .now()+1.0) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            //: self.gradientBtn.isUserInteractionEnabled = true
            self.gradientBtn.isUserInteractionEnabled = true
        }
    }
}

// MARK: - Layout

//: extension TalkingMaleStaticRandomVideoVC {
extension LimitWithRecognizerDelegate {
    /// 刷新视频通话价格
    //: @objc private func refreshVideoCallPrice() {
    @objc private func alongBar() {
        //: guard DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue else {
        guard DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue else {
            //: priceStackView.isHidden = true
            priceStackView.isHidden = true
            //: vipPriceBtn.isHidden = true
            vipPriceBtn.isHidden = true
            //: vipTopImgView.isHidden = true
            vipTopImgView.isHidden = true
            //: return
            return
        }

        //: vipIcon.isHidden = !DistanceAppManager.share.loginUserMode.loungePlus
        vipIcon.isHidden = !DistanceAppManager.share.loginUserMode.loungePlus
        //: priceStackView.isHidden = false
        priceStackView.isHidden = false
        //: let indexType = EnableFreeCallType.randow
        let indexType = NameBinaryCount.randow
        //: if DistanceAppManager.share.loginUserMode.freeCallTimes > 0 && DistanceAppManager.share.appUserConfigMode.enableFreeCallType & indexType.rawValue == indexType.rawValue {
        if DistanceAppManager.share.loginUserMode.freeCallTimes > 0, DistanceAppManager.share.appUserConfigMode.enableFreeCallType & indexType.rawValue == indexType.rawValue { // 有免费次数
            //: if DistanceAppManager.share.appUserConfigMode.callBtnStyle == 1 {
            if DistanceAppManager.share.appUserConfigMode.callBtnStyle == 1 {
                //: priceLab.text = "Free 1 min".localized
                priceLab.text = (String(kLevelMessage) + String(k_makeTitle.prefix(4)) + " min").localized
                //: } else {
            } else {
                //: priceStackView.isHidden = true
                priceStackView.isHidden = true
            }
            //: vipPriceBtn.isHidden = true
            vipPriceBtn.isHidden = true
            //: vipTopImgView.isHidden = true
            vipTopImgView.isHidden = true
            //: } else {
        } else { // 无免费次数, 展示价格
            //: let price = DistanceAppManager.share.loginUserMode.loungePlus ? vipFee:fee
            let price = DistanceAppManager.share.loginUserMode.loungePlus ? vipFee : fee
            //: priceLab.text = "%@/min".localizedArguments(price)
            priceLab.text = (k_screenToId.replacingOccurrences(of: "info", with: "%") + String(kMovePath.prefix(5))).edgeDelay(price)

            //: let attr = NSMutableAttributedString(string: "%@/min".localizedArguments(price), attributes: [.strikethroughStyle : NSUnderlineStyle.single.rawValue, .foregroundColor: UIColor.white.withAlphaComponent(0.5), .font: UIFont.pingfangMediumFont(fontSize: 10)])
            let attr = NSMutableAttributedString(string: (k_screenToId.replacingOccurrences(of: "info", with: "%") + String(kMovePath.prefix(5))).edgeDelay(price), attributes: [.strikethroughStyle: NSUnderlineStyle.single.rawValue, .foregroundColor: UIColor.white.withAlphaComponent(0.5), .font: UIFont.tapShared(fontSize: 10)])
            //: norPriceLab.attributedText = attr
            norPriceLab.attributedText = attr

            //: vipPriceBtn.isHidden = DistanceAppManager.share.loginUserMode.loungePlus
            vipPriceBtn.isHidden = DistanceAppManager.share.loginUserMode.loungePlus
            //: vipTopImgView.isHidden = DistanceAppManager.share.loginUserMode.loungePlus
            vipTopImgView.isHidden = DistanceAppManager.share.loginUserMode.loungePlus
            //: priceStackView.isHidden = !DistanceAppManager.share.loginUserMode.loungePlus
            priceStackView.isHidden = !DistanceAppManager.share.loginUserMode.loungePlus
        }
        //: chattingNumBtn.setTitle("%@ chatting".localizedArguments(chattingNum), for: .normal)
        chattingNumBtn.setTitle((String(kTargetId.prefix(6)) + "ttin" + String(k_makePath)).edgeDelay(chattingNum), for: .normal)
        //: vipPriceLab.text = "%@ Coins/min".localizedArguments(vipFee)
        vipPriceLab.text = (String(kUserCellName) + String(kSourceValue)).edgeDelay(vipFee)

        //: let index = Int(Double(DistanceAppManager.share.loginUserMode.mf_coin) ?? 0)
        let index = Int(Double(DistanceAppManager.share.loginUserMode.mf_coin) ?? 0)
        //: balanceLB.text = "\(index)"
        balanceLB.text = "\(index)"
        //: let size = balanceLB.text?.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: balanceLB.font!], context: nil)
        let size = balanceLB.text?.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0.0), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: balanceLB.font!], context: nil)
        //: balanceBtn.snp.updateConstraints { make in
        balanceBtn.snp.updateConstraints { make in
            //: make.width.equalTo(40+(size?.width ?? 10))
            make.width.equalTo(40 + (size?.width ?? 10))
        }
    }

    /// 添加视图
    //: private func setupSubviews() {
    private func stopCollection() {
        //: view.addSubview(renderView)
        view.addSubview(renderView)
        //: view.addSubview(gradientBtn)
        view.addSubview(gradientBtn)
        //: view.addSubview(svgaPlayer)
        view.addSubview(svgaPlayer)
        //: view.addSubview(tipsLab)
        view.addSubview(tipsLab)
        //: view.addSubview(chattingNumBtn)
        view.addSubview(chattingNumBtn)
        //: view.addSubview(priceStackView)
        view.addSubview(priceStackView)
        //: priceStackView.addArrangedSubview(vipIcon)
        priceStackView.addArrangedSubview(vipIcon)
        //: priceStackView.addArrangedSubview(goldCoinIcon)
        priceStackView.addArrangedSubview(goldCoinIcon)
        //: priceStackView.addArrangedSubview(priceLab)
        priceStackView.addArrangedSubview(priceLab)
        //: view.addSubview(vipPriceBtn)
        view.addSubview(vipPriceBtn)
        //: view.addSubview(vipTopImgView)
        view.addSubview(vipTopImgView)

        //: vipPriceBtn.addSubview(vipPriceImg)
        vipPriceBtn.addSubview(vipPriceImg)
        //: vipPriceBtn.addSubview(vipPriceLab)
        vipPriceBtn.addSubview(vipPriceLab)
        //: vipPriceBtn.addSubview(norPriceLab)
        vipPriceBtn.addSubview(norPriceLab)

        //: view.addSubview(balanceBtn)
        view.addSubview(balanceBtn)
    }

    /// 添加约束
    //: private func setupSubViewsConstraint() {
    private func selectedToAction() {
        //: renderView.snp.makeConstraints { make in
        renderView.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: gradientBtn.snp.makeConstraints { make in
        gradientBtn.snp.makeConstraints { make in
            //: make.edges.equalToSuperview()
            make.edges.equalToSuperview()
        }
        //: svgaPlayer.snp.makeConstraints { make in
        svgaPlayer.snp.makeConstraints { make in
            //: make.leading.equalTo(-8)
            make.leading.equalTo(-8)
            //: make.trailing.equalTo(8)
            make.trailing.equalTo(8)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.height.equalTo(actualWidth(w: 395))
            make.height.equalTo(actualWidth(w: 395))
        }
        //: tipsLab.snp.makeConstraints { make in
        tipsLab.snp.makeConstraints { make in
            //: make.bottom.equalTo(svgaPlayer.snp.bottom).offset(-40)
            make.bottom.equalTo(svgaPlayer.snp.bottom).offset(-40)
            //: make.width.centerX.equalToSuperview()
            make.width.centerX.equalToSuperview()
        }
        //: chattingNumBtn.snp.makeConstraints { make in
        chattingNumBtn.snp.makeConstraints { make in
            //: make.top.equalTo(tipsLab.snp.bottom).offset(35)
            make.top.equalTo(tipsLab.snp.bottom).offset(35)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: priceStackView.snp.makeConstraints { make in
        priceStackView.snp.makeConstraints { make in
            //: make.top.equalTo(chattingNumBtn.snp.bottom).offset(8)
            make.top.equalTo(chattingNumBtn.snp.bottom).offset(8)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.height.equalTo(31)
            make.height.equalTo(31)
            //: make.trailing.lessThanOrEqualToSuperview()
            make.trailing.lessThanOrEqualToSuperview()
        }
        //: vipIcon.snp.makeConstraints { make in
        vipIcon.snp.makeConstraints { make in
            //: make.width.height.equalTo(15)
            make.width.height.equalTo(15)
        }
        //: goldCoinIcon.snp.makeConstraints { make in
        goldCoinIcon.snp.makeConstraints { make in
            //: make.width.height.equalTo(actualWidth(w: 15))
            make.width.height.equalTo(actualWidth(w: 15))
        }
        //: priceLab.snp.makeConstraints { make in
        priceLab.snp.makeConstraints { make in
            //: make.height.equalToSuperview()
            make.height.equalToSuperview()
        }

        //: vipPriceBtn.snp.makeConstraints { make in
        vipPriceBtn.snp.makeConstraints { make in
            //: make.top.equalTo(priceStackView.snp.bottom).offset(16)
            make.top.equalTo(priceStackView.snp.bottom).offset(16)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
            //: make.size.equalTo(CGSize(width: actualWidth(w: 240), height: actualWidth(w: 54)))
            make.size.equalTo(CGSize(width: actualWidth(w: 240), height: actualWidth(w: 54)))
        }
        //: vipTopImgView.snp.makeConstraints { make in
        vipTopImgView.snp.makeConstraints { make in
            //: make.top.equalTo(vipPriceBtn.snp.top).offset(-12)
            make.top.equalTo(vipPriceBtn.snp.top).offset(-12)
            //: make.leading.equalTo(vipPriceBtn.snp.leading)
            make.leading.equalTo(vipPriceBtn.snp.leading)
            //: make.size.equalTo(CGSize(width: actualWidth(w: 32), height: actualWidth(w: 24)))
            make.size.equalTo(CGSize(width: actualWidth(w: 32), height: actualWidth(w: 24)))
        }
        //: vipPriceImg.snp.makeConstraints { make in
        vipPriceImg.snp.makeConstraints { make in
            //: make.top.equalToSuperview().offset(actualWidth(w: 12))
            make.top.equalToSuperview().offset(actualWidth(w: 12))
            //: make.width.height.equalTo(15)
            make.width.height.equalTo(15)
            //: make.trailing.equalTo(vipPriceLab.snp.leading).offset(-2)
            make.trailing.equalTo(vipPriceLab.snp.leading).offset(-2)
        }

        //: vipPriceLab.snp.makeConstraints { make in
        vipPriceLab.snp.makeConstraints { make in
            //: make.centerY.equalTo(vipPriceImg)
            make.centerY.equalTo(vipPriceImg)
            //: make.centerX.equalToSuperview().offset(8)
            make.centerX.equalToSuperview().offset(8)
        }
        //: norPriceLab.snp.makeConstraints { make in
        norPriceLab.snp.makeConstraints { make in
            //: make.top.equalTo(vipPriceImg.snp.bottom).offset(5)
            make.top.equalTo(vipPriceImg.snp.bottom).offset(5)
            //: make.centerX.equalToSuperview()
            make.centerX.equalToSuperview()
        }

        //: balanceBtn.snp.makeConstraints { make in
        balanceBtn.snp.makeConstraints { make in
            //: make.top.equalTo(StatusBarHeight+8)
            make.top.equalTo(main_netValue + 8)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.width.equalTo(60)
            make.width.equalTo(60)
            //: make.height.equalTo(actualWidth(w: 24))
            make.height.equalTo(actualWidth(w: 24))
        }
    }

    /// 绑定事件
    //: private func bindInteraction() {
    private func bell() {
        // index/getconfig接口回调刷新UI
        //: NotificationCenter.default.addObserver(self,
        NotificationCenter.default.addObserver(self,
                                               //: selector: #selector(refreshVideoCallPrice),
                                               selector: #selector(alongBar),
                                               //: name: UPDATE_INDEX_GETCONFIG_NOTIFICATION,
                                               name: dataShowContent,
                                               //: object: nil)
                                               object: nil)
    }
}
