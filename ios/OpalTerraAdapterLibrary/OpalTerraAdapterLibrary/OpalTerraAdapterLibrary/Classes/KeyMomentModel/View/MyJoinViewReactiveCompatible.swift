
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let k_toWithData:[UInt8] = [0x64,0x65,0x74,0x6e,0x65,0x6d,0x65,0x6c,0x70,0x6d,0x69,0x20,0x6e,0x65,0x65,0x62,0x20,0x74,0x6f,0x6e,0x20,0x73,0x61,0x68,0x20,0x29,0x3a,0x72,0x65,0x64,0x6f,0x63,0x28,0x74,0x69,0x6e,0x69]

/*: "icon_ziliao_nandi_default" :*/
fileprivate let k_rowPath:[Character] = ["i","c","o","n"]
fileprivate let k_topEventMessage:String = "_ziliasubmit top kit let table"
fileprivate let k_equalTargetViewUrl:String = "i_defaultself type self normal return"

/*: "iv_crush" :*/
fileprivate let k_managerBackgroundValue:String = "iv_crushfalse if manager layer view"

/*: "Crush" :*/
fileprivate let kFrontFormat:String = "Crushmake can let"

/*: "get json error" :*/
fileprivate let kCornerUrl:[Character] = ["g","e","t"," ","j","s","o","n"," ","e","r"]
fileprivate let k_resultValue:String = "iconoicon"

/*: "targetUid" :*/
fileprivate let kRequestValue:String = "taddrget"
fileprivate let k_targetFormat:String = "Uidshow user sound media view"

/*: "The other party has received your crush" :*/
fileprivate let k_makeTitle:[UInt8] = [0x86,0xba,0xb7,0xf2,0xbd,0xa6,0xba,0xb7,0xa0,0xf2,0xa2,0xb3,0xa0,0xa6,0xab,0xf2,0xba,0xb3,0xa1,0xf2,0xa0,0xb7,0xb1,0xb7,0xbb,0xa4,0xb7,0xb6,0xf2,0xab,0xbd,0xa7,0xa0,0xf2,0xb1,0xa0,0xa7,0xa1,0xba]

private func colorResult(lab num: UInt8) -> UInt8 {
    return num ^ 210
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  MyJoinViewReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/21.
//

//: import UIKit
import UIKit

//: class TalkingMomentPhotosBottomView: UIView {
class MyJoinViewReactiveCompatible: UIView {
    //: var modelUid = ""
    var modelUid = ""
    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.backgroundColor = UIColor.white
        self.backgroundColor = UIColor.white
        //: customUI()
        toCustomItem()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: k_toWithData.reversed(), encoding: .utf8)!)
    }

    //: func customUI() {
    func toCustomItem() {
        //: self.backgroundColor = UIColor.RGBA(51, 51, 51, 0.8)
        self.backgroundColor = UIColor.behindVoice(51, 51, 51, 0.8)

        //: guard DistanceAppManager.share.appStatus == AppSkinStatus.normal.rawValue else {
        guard DistanceAppManager.share.appStatus == NameQuickLookable.normal.rawValue else {
            // 审核模式隐藏
            //: self.crushBtn.isHidden = true
            self.crushBtn.isHidden = true
            //: return
            return
        }

        //: crushBtn.snp.makeConstraints { make in
        crushBtn.snp.makeConstraints { make in
            //: make.centerX.equalTo(self)
            make.centerX.equalTo(self)
            //: make.top.equalTo(15)
            make.top.equalTo(15)
            //: make.size.equalTo(CGSize.init(width: 164, height: 40))
            make.size.equalTo(CGSize(width: 164, height: 40))
        }

        //: self.addSubview(crushPlayer)
        self.addSubview(crushPlayer)
        //: crushPlayer.snp.makeConstraints { make in
        crushPlayer.snp.makeConstraints { make in
            //: make.centerX.equalTo(crushBtn)
            make.centerX.equalTo(crushBtn)
            //: make.bottom.equalTo(crushBtn.snp.bottom)
            make.bottom.equalTo(crushBtn.snp.bottom)
            //: make.size.equalTo(CGSize(width: 70, height: 100))
            make.size.equalTo(CGSize(width: 70, height: 100))
        }
    }

    //: lazy var crushBtn: TalkingButton = {
    lazy var crushBtn: ResumeControl = {
        //: let btn = TalkingButton.init()
        let btn = ResumeControl()
        //: btn.setBackgroundImage(UIImage.submitGift(name: "icon_ziliao_nandi_default"), for: .normal)
        btn.setBackgroundImage(UIImage.submitGift(name: (String(k_rowPath) + String(k_topEventMessage.prefix(6)) + "o_nand" + String(k_equalTargetViewUrl.prefix(9)))), for: .normal)
        //: btn.setImage(UIImage.submitGift(name: "iv_crush"), for: .normal)
        btn.setImage(UIImage.submitGift(name: (String(k_managerBackgroundValue.prefix(8)))), for: .normal)
        //: btn.setTitle("Crush".localized, for: .normal)
        btn.setTitle((String(kFrontFormat.prefix(5))).localized, for: .normal)
        //: btn.setTitleColor(.white, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        //: btn.titleLabel?.font = UIFont.pingfangMediumFont(fontSize: 18)
        btn.titleLabel?.font = UIFont.tapShared(fontSize: 18)
        //: btn.addTarget(self, action: #selector(crushBtnClick), for: .touchUpInside)
        btn.addTarget(self, action: #selector(strength), for: .touchUpInside)
        //: self.addSubview(btn)
        self.addSubview(btn)
        //: return btn
        return btn
        //: }()
    }()

    //: lazy var crushPlayer: SVGAPlayer = {
    lazy var crushPlayer: SVGAPlayer = {
        //: let player = SVGAPlayer.init()
        let player = SVGAPlayer()
        //: player.loops = 1
        player.loops = 1
        //: player.clearsAfterStop = true
        player.clearsAfterStop = true
        //: player.isUserInteractionEnabled = false
        player.isUserInteractionEnabled = false
        //: player.contentMode = .scaleAspectFill
        player.contentMode = .scaleAspectFill
        //: player.delegate = self
        player.delegate = self
        //: return player
        return player
        //: }()
    }()
}

//: extension TalkingMomentPhotosBottomView: SVGAPlayerDelegate {
extension MyJoinViewReactiveCompatible: SVGAPlayerDelegate {
    //: @objc func crushBtnClick () {
    @objc func strength() {
        //: let url = SVGAEffectTool.default.getZipEffectPath(type: .Crush)
        let url = VideoEffectTool.default.conType(type: .Crush)
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
                //: self.crushPlayer.videoItem = videoItem
                self.crushPlayer.videoItem = videoItem
                //: self.crushPlayer.startAnimation()
                self.crushPlayer.startAnimation()
                //: self.crushBtn.isHidden = true
                self.crushBtn.isHidden = true
            }

            //: } catch _ as Error? {
        } catch _ as Error? {
            //: printLog(message: "get json error")
            printLog(message: (String(kCornerUrl) + k_resultValue.replacingOccurrences(of: "icon", with: "r")))
        }

        //: var dict = Dictionary<String, Any>()
        var dict = [String: Any]()
        //: dict["targetUid"] = modelUid
        dict[(kRequestValue.replacingOccurrences(of: "add", with: "a") + String(k_targetFormat.prefix(3)))] = modelUid

        //: TalkingMomentRequestTool.req_CrushSend(params: dict) { succeed, result, errorModel in
        TvThen.addValueCompletion(params: dict) { succeed, _, errorModel in
            //: if succeed {
            if succeed {
                //: self.func__showStatusBarNormrlMsg(showMsg: "The other party has received your crush".localized)
                self.barrelhouseTop(showMsg: String(bytes: k_makeTitle.map{colorResult(lab: $0)}, encoding: .utf8)!.localized)
                //: } else {
            } else {
                //: self.func__showStatusBarErrorMsg(showMsg: errorModel!.errorMsg)
                self.arcInfo(showMsg: errorModel!.errorMsg)
            }
        }
    }

    //: func svgaPlayerDidFinishedAnimation(_ player: SVGAPlayer!) {
    func svgaPlayerDidFinishedAnimation(_: SVGAPlayer!) {
        //: self.crushPlayer.isHidden = true
        self.crushPlayer.isHidden = true
    }
}
