
//: Declare String Begin

/*: "app_marsxlog" :*/
fileprivate let kStatusCalledStr:[Character] = ["a","p","p"]
fileprivate let k_videoData:String = "_marself up not"

/*: "Install" :*/
fileprivate let kFrameText:String = "object native data makeIn"
fileprivate let kFromData:[Character] = ["s","t","a","l","l"]

/*: "LinkedME finished init with params(params.description)" :*/
fileprivate let k_equalStr:[UInt8] = [0x18,0x35,0x3a,0x37,0x31,0x30,0x19,0x11,0xec,0x32,0x35,0x3a,0x35,0x3f,0x34,0x31,0x30,0xec,0x35,0x3a,0x35,0x40,0xec,0x43,0x35,0x40,0x34,0xec,0x3c,0x2d,0x3e,0x2d,0x39,0x3f,0xf4,0x3c,0x2d,0x3e,0x2d,0x39,0x3f,0xfa,0x30,0x31,0x3f,0x2f,0x3e,0x35,0x3c,0x40,0x35,0x3b,0x3a,0xf5]

fileprivate func rowSequence(view num: UInt8) -> UInt8 {
    let value = Int(num) + 52
    if value > 255 {
        return UInt8(value - 256)
    } else {
        return UInt8(value)
    }
}

/*: "$control" :*/
fileprivate let k_labelTitle:[Character] = ["$"]
fileprivate let k_clearCountEqualData:[Character] = ["c","o","n","t","r","o","l"]

/*: "inviteCode" :*/
fileprivate let kInfoHeadValue:String = "inviteCitem frame image data voice"
fileprivate let kDataIndexContentMessage:[Character] = ["o","d","e"]

/*: "TXUGCBase初始化：result:  :*/
fileprivate let k_viewMakeMessage:[Character] = ["T","X","U","G","C"]
fileprivate let k_numberKey:[Character] = ["B","a","s","e","初","始","化","：","r"]
fileprivate let kLoadUrl:String = "false varesult: "

/*: , reason:  :*/
fileprivate let kMicKey:String = ", reasview false view"
fileprivate let kGroupWithMessage:[Character] = ["o","n",":"," "]

/*: ." :*/
fileprivate let k_makeValue:String = "."

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  RegisterDelegateHelper+ThirdParty.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/3.
//

//: import Adjust
import Adjust
//: import DXMarsXlog
import DXMarsXlog
//: import Foundation
import Foundation
//: import TXLiteAVSDK_Professional
import TXLiteAVSDK_Professional
//: import UIKit
import UIKit

// MARK: - Public Event

//: extension AppDelegateHelper {
extension RegisterDelegateHelper {
    /// 第三方sdk初始化
    /// - Parameter application: application
    //: func initThirdPartySetup(_ application: UIApplication) {
    func speakeasy(_: UIApplication) {
        // 程序启动就实例化进行监听（处理自动续订的情况）
        //: _ = AppleIAPManager.shared
        _ = InformationThen.shared

        //: createMsgVoicePath()
        createMsgVoicePath()

        //: DXMarsXLogger.shared().initWithNamePrefix("app_marsxlog")
        DXMarsXLogger.shared().initWithNamePrefix((String(kStatusCalledStr) + String(k_videoData.prefix(4)) + "sxlog"))

        //: ResumeV2Listener.shared.func__TXSDKInit()
        ResumeV2Listener.shared.indexInit()

        //: initADjust()
        video()
        // 首次打开埋点【只记录一次】
        //: TalkingAdjustManager.share.addOnceEvent(key: "Install")
        ListReactiveCompatible.share.qualifyToStemName(key: (String(kFrameText.suffix(2)) + String(kFromData)))
        //: setupTXLive()
        load()
        //: setupTXUGC()
        distance()

        //: guard SenseTime_Use == true else { return }
        guard mainUserValue == true else { return }
        //: DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            //: if STLicHelper.share.checkLicense() == false {
            if InstalmentLicHelper.share.systemAfter() == false {
                //: SenseTime_Use = false
                mainUserValue = false
                //: STLicHelper.share.checkRemoteLicInfoWith { succeed in
                InstalmentLicHelper.share.neighbour { succeed in
                    // 更新商汤美颜是否可用
                    //: SenseTime_Use = succeed
                    mainUserValue = succeed
                }
            }
        }
    }
}

// MARK: - Private Event

//: extension AppDelegateHelper {
extension RegisterDelegateHelper {
    //: private func setupTXLive() {
    private func load() {
        // 腾讯SDK 6.4版本之后，推流功能需要license验证SDK，
        //: if TXLIVE_LICENSE_URL.count > 0 {
        if appTabTitle.count > 0 {
            //: TXLiveBase.setLicenceURL(TXLIVE_LICENSE_URL, key: TXLIVE_LICENSE_KEY)
            TXLiveBase.setLicenceURL(appTabTitle, key: const_bottomValue)
            //: TXLiveBase.setLogLevel(.LOGLEVEL_VERBOSE)
            TXLiveBase.setLogLevel(.LOGLEVEL_VERBOSE)
        }
    }

    // 短视频license
    //: private func setupTXUGC() {
    private func distance() {
        //: TXUGCBase.setLicenceURL(TXLIVE_LICENSE_URL, key: TXLIVE_LICENSE_KEY)
        TXUGCBase.setLicenceURL(appTabTitle, key: const_bottomValue)
        //: TXUGCBase.sharedInstance().delegate = self
        TXUGCBase.sharedInstance().delegate = self
    }

    /// adjust事件买点统计
    //: private func initADjust() {
    private func video() {
        //: var environment = ""
        var environment = ""
        //: if !Environment_Formal {
        if !main_failData {
            //: environment = ADJEnvironmentSandbox
            environment = ADJEnvironmentSandbox
            //: } else {
        } else {
            //: environment = ADJEnvironmentProduction
            environment = ADJEnvironmentProduction
        }
        //: let yourAppToken = AdjustKey
        let yourAppToken = const_gameName
        //: let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)
        let adjustConfig = ADJConfig(appToken: yourAppToken, environment: environment)
        //: adjustConfig?.logLevel = ADJLogLevelWarn
        adjustConfig?.logLevel = ADJLogLevelWarn
        //: Adjust.appDidLaunch(adjustConfig)
        Adjust.appDidLaunch(adjustConfig)
    }
}

// MARK: - TXUGCBaseDelegate【短视频压缩、上传】

//: extension AppDelegateHelper: TXUGCBaseDelegate {
extension RegisterDelegateHelper: TXUGCBaseDelegate {
    //: public func onLicenceLoaded(_ result: Int32, reason: String!) {
    public func onLicenceLoaded(_ result: Int32, reason: String!) {
        //: UploadLogTool.writeLog(msg: "TXUGCBase初始化：result: \(result), reason: \(String(describing: reason)).")
        UploadDisplayThen.makeSelected(msg: (String(k_viewMakeMessage) + String(k_numberKey) + String(kLoadUrl.suffix(7))) + "\(result)" + (String(kMicKey.prefix(6)) + String(kGroupWithMessage)) + "\(String(describing: reason)).")
    }
}
