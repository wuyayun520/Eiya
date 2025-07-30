
//: Declare String Begin

/*: "Please click 'Go' to allow access" :*/
fileprivate let k_imageCellUrl:[UInt8] = [0x79,0x45,0x4c,0x48,0x5a,0x4c,0x9,0x4a,0x45,0x40,0x4a,0x42,0x9,0xe,0x6e,0x46,0xe,0x9,0x5d,0x46,0x9,0x48,0x45,0x45,0x46,0x5e,0x9,0x48,0x4a,0x4a,0x4c,0x5a,0x5a]

private func makeInfo(official num: UInt8) -> UInt8 {
    return num ^ 41
}

/*: "Please allow '%@' to access your album in your iPhone's 'Settings-Privacy-Album' option" :*/
fileprivate let k_itemPath:[UInt8] = [0x55,0x69,0x60,0x64,0x76,0x60,0x25,0x64,0x69,0x69,0x6a,0x72,0x25,0x22,0x20,0x45,0x22,0x25,0x71,0x6a,0x25,0x64,0x66,0x66,0x60,0x76,0x76,0x25,0x7c,0x6a,0x70,0x77,0x25,0x64,0x69,0x67,0x70,0x68,0x25,0x6c,0x6b,0x25,0x7c,0x6a,0x70,0x77,0x25,0x6c,0x55,0x6d,0x6a,0x6b,0x60,0x22,0x76,0x25,0x22,0x56,0x60,0x71,0x71,0x6c,0x6b,0x62,0x76,0x28,0x55,0x77,0x6c,0x73,0x64,0x66,0x7c,0x28,0x44,0x69,0x67,0x70,0x68,0x22,0x25,0x6a,0x75,0x71,0x6c,0x6a,0x6b]

private func systemBind(end num: UInt8) -> UInt8 {
    return num ^ 5
}

/*: "Please allow '%@' to access your location services in your iPhone's 'Settings-Privacy-Location Services' option" :*/
fileprivate let k_makeName:[UInt8] = [0x46,0x7a,0x73,0x77,0x65,0x73,0x36,0x77,0x7a,0x7a,0x79,0x61,0x36,0x31,0x33,0x56,0x31,0x36,0x62,0x79,0x36,0x77,0x75,0x75,0x73,0x65,0x65,0x36,0x6f,0x79,0x63,0x64,0x36,0x7a,0x79,0x75,0x77,0x62,0x7f,0x79,0x78,0x36,0x65,0x73,0x64,0x60,0x7f,0x75,0x73,0x65,0x36,0x7f,0x78,0x36,0x6f,0x79,0x63,0x64,0x36,0x7f,0x46,0x7e,0x79,0x78,0x73,0x31,0x65,0x36,0x31,0x45,0x73,0x62,0x62,0x7f,0x78,0x71,0x65,0x3b,0x46,0x64,0x7f,0x60,0x77,0x75,0x6f,0x3b,0x5a,0x79,0x75,0x77,0x62,0x7f,0x79,0x78,0x36,0x45,0x73,0x64,0x60,0x7f,0x75,0x73,0x65,0x31,0x36,0x79,0x66,0x62,0x7f,0x79,0x78]

private func characteristicRootOfASquareMatrix(bubble num: UInt8) -> UInt8 {
    return num ^ 22
}

/*: "Cancel" :*/
fileprivate let k_mediumValue:String = "Canceif if in cell"
fileprivate let k_countPath:String = "equal"

/*: "Go" :*/
fileprivate let k_greetHomeListPath:[Character] = ["G","o"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ToolThen.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/6.
//

//: import UIKit
import UIKit

//: import AssetsLibrary
import AssetsLibrary
//: import AVFoundation
import AVFoundation
//: import CoreLocation
import CoreLocation
//: import CoreTelephony
import CoreTelephony
//: import MediaPlayer
import MediaPlayer
//: import Photos
import Photos

//: enum TalkingPermissionsType {
enum ObserverPermissionsType {
    /// 相机
    //: case camera
    case camera
    /// 相册
    //: case photo
    case photo
    /// 位置
    //: case location
    case location
    /// 麦克风
    //: case microphone
    case microphone
    /// 推送
    //: case notification
    case notification
    /// 相机和麦克风（视频速配使用）
    //: case cameraAndMicrophone
    case cameraAndMicrophone
}

//: let object = NSObject()
let showEnableDomainAppValue = NSObject()
//: class TalkingPermissionTool: NSObject {
class ToolThen: NSObject {
    // MARK: - 检测是否开启定位

    /// 检测是否开启定位
    //: class func func__openLocationServiceWithBlock(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
    class func picBlock(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
        //: var isOpen = false
        var isOpen = false
        //    if CLLocationManager.locationServicesEnabled() || CLLocationManager.authorizationStatus() != .denied {
        //        isOpen = true
        //    }
        //: if CLLocationManager.authorizationStatus() != .restricted && CLLocationManager.authorizationStatus() != .denied {
        if CLLocationManager.authorizationStatus() != .restricted && CLLocationManager.authorizationStatus() != .denied {
            //: isOpen = true
            isOpen = true
        }
        //: if isOpen == false && isSet == true {func__OpenURL(.location)}
        if isOpen == false && isSet == true { asFunc(.location) }
        //: action(isOpen)
        action(isOpen)
    }

    // MARK: - 检测是否开启摄像头

    /// 检测是否开启摄像头 (可用)
    //: class func func__openCaptureDeviceServiceWithBlock(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
    class func represent(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
        //: let authStatus = AVCaptureDevice.authorizationStatus(for: AVMediaType.video)
        let authStatus = AVCaptureDevice.authorizationStatus(for: AVMediaType.video)
        //: if authStatus == AVAuthorizationStatus.notDetermined {
        if authStatus == AVAuthorizationStatus.notDetermined {
            //: AVCaptureDevice.requestAccess(for: AVMediaType.video) { (granted) in
            AVCaptureDevice.requestAccess(for: AVMediaType.video) { granted in
                //: DispatchQueue.main.async {
                DispatchQueue.main.async {
                    //: action(granted)
                    action(granted)
//                    if granted == false && isSet == true {self.func__OpenURL(.camera)}
                }
            }
            //: } else if authStatus == AVAuthorizationStatus.restricted || authStatus == AVAuthorizationStatus.denied {
        } else if authStatus == AVAuthorizationStatus.restricted || authStatus == AVAuthorizationStatus.denied {
            //: action(false)
            action(false)
            //: if isSet == true {showTostView(.camera)}
            if isSet == true { startUp(.camera) }
            //: } else {
        } else {
            //: action(true)
            action(true)
        }
    }

    // MARK: - 检测是否开启相册

    //: class func func__openAlbumServiceWithBlock(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
    class func withViewMerge(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
        //: PHPhotoLibrary.requestAuthorization { authStatus in
        PHPhotoLibrary.requestAuthorization { authStatus in
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: if(authStatus == .restricted || authStatus == .denied) {
                if authStatus == .restricted || authStatus == .denied {
                    //: action(false)
                    action(false)
                    //: if isSet == true {func__OpenURL(.photo)}
                    if isSet == true { asFunc(.photo) }
                    //: } else {
                } else {
                    //: action(true)
                    action(true)
                }
            }
        }
    }

    // MARK: - 检测是否开启麦克风

    /// 检测是否开启麦克风
    //: class func func__openRecordServiceWithBlock(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
    class func cellTact(_ isSet: Bool? = nil, _ action: @escaping ((Bool) -> Void)) {
        //: let permissionStatus = AVAudioSession.sharedInstance().recordPermission
        let permissionStatus = AVAudioSession.sharedInstance().recordPermission
        //: if permissionStatus == .undetermined {
        if permissionStatus == .undetermined {
            //: AVAudioSession.sharedInstance().requestRecordPermission { (granted) in
            AVAudioSession.sharedInstance().requestRecordPermission { granted in
                //: DispatchQueue.main.async {
                DispatchQueue.main.async {
                    //: action(granted)
                    action(granted)
//                    if granted == false && isSet == true {self.func__OpenURL(.microphone)}
                }
            }
            //: } else if permissionStatus == .denied || permissionStatus == .undetermined {
        } else if permissionStatus == .denied || permissionStatus == .undetermined {
            //: action(false)
            action(false)
            //: if isSet == true {showTostView(.microphone)}
            if isSet == true { startUp(.microphone) }
            //: } else {
        } else {
            //: action(true)
            action(true)
        }
    }

    // MARK: - 跳转系统设置界面

    //: class func func__OpenURL(_ type: TalkingPermissionsType? = nil) {
    class func asFunc(_ type: ObserverPermissionsType? = nil) {
        //: var message = "Please click 'Go' to allow access".localized
        var message = String(bytes: k_imageCellUrl.map{makeInfo(official: $0)}, encoding: .utf8)!.localized

        //: if type == .photo {
        if type == .photo { // 相册
            //: message = "Please allow '%@' to access your album in your iPhone's 'Settings-Privacy-Album' option".localizedArguments(AppName)
            message = String(bytes: k_itemPath.map{systemBind(end: $0)}, encoding: .utf8)!.edgeDelay(kAddData)
            //: } else if type == .location {
        } else if type == .location { // 位置
            //: message = "Please allow '%@' to access your location services in your iPhone's 'Settings-Privacy-Location Services' option".localizedArguments(AppName)
            message = String(bytes: k_makeName.map{characteristicRootOfASquareMatrix(bubble: $0)}, encoding: .utf8)!.edgeDelay(kAddData)
        }
        //: TalkingAlertShow.alert(title: nil, message: message, leftBtnTitle: "Cancel".localized, rightBtnTitle: "Go".localized, leftBlock: {
        FrameHiddenReactiveCompatible.theory(title: nil, message: message, leftBtnTitle: (String(k_mediumValue.prefix(5)) + k_countPath.replacingOccurrences(of: "equal", with: "l")).localized, rightBtnTitle: "Go".localized, leftBlock: {
            //: }, rightBlock: {
        }, rightBlock: {
            //: let url = URL(string: UIApplication.openSettingsURLString)
            let url = URL(string: UIApplication.openSettingsURLString)
            //: if  UIApplication.shared.canOpenURL(url!) {
            if UIApplication.shared.canOpenURL(url!) {
                //: if #available(iOS 10, *) {
                if #available(iOS 10, *) {
                    //: UIApplication.shared.open(url!, options: [:], completionHandler: {(success) in})
                    UIApplication.shared.open(url!, options: [:], completionHandler: { _ in })
                    //: } else {
                } else {
                    //: UIApplication.shared.openURL(url!)
                    UIApplication.shared.openURL(url!)
                }
            }
            //: })
        })
    }

    // MARK: - 提示弹窗界面

    //: class func showTostView(_ type: TalkingPermissionsType? = nil) {
    class func startUp(_ type: ObserverPermissionsType? = nil) {
        //: let view = TalkingPermissionView.init()
        let view = ServerReactiveCompatible()
        //: view.setPermissionIconView(type: type ?? .camera)
        view.infoType(type: type ?? .camera)
        //: view.show()
        view.telecastingShow()
    }

    // MARK: - 检测是否开启推送

    //: class func checkPushNotification(checkNotificationStatus isEnable: ((Bool) -> Void)? = nil) {
    class func bulgeOutInput(checkNotificationStatus isEnable: ((Bool) -> Void)? = nil) {
        //: if #available(iOS 10.0, *) {
        if #available(iOS 10.0, *) {
            //: UNUserNotificationCenter.current().getNotificationSettings { (setttings) in
            UNUserNotificationCenter.current().getNotificationSettings { setttings in

                //: switch setttings.authorizationStatus {
                switch setttings.authorizationStatus {
                //: case .authorized:
                case .authorized:
                    //: isEnable?(true)
                    isEnable?(true)
                //: case .denied:
                case .denied:
                    //: isEnable?(false)
                    isEnable?(false)
                //: case .notDetermined:
                case .notDetermined:
                    //: isEnable?(false)
                    isEnable?(false)
                //: case .provisional:
                case .provisional:
                    //: isEnable?(false)
                    isEnable?(false)
                //: case .ephemeral:
                case .ephemeral:
                    //: isEnable?(false)
                    isEnable?(false)
                //: @unknown default:
                @unknown default:
                    //: isEnable?(false)
                    isEnable?(false)
                }
            }
            //: } else {
        } else {
            //: let isNotificationEnabled = UIApplication.shared.currentUserNotificationSettings?.types.contains(UIUserNotificationType.alert)
            let isNotificationEnabled = UIApplication.shared.currentUserNotificationSettings?.types.contains(UIUserNotificationType.alert)
            //: if isNotificationEnabled == true {
            if isNotificationEnabled == true {
                //: isEnable?(true)
                isEnable?(true)
                //: } else {
            } else {
                //: isEnable?(false)
                isEnable?(false)
            }
        }
    }
}

//: extension TalkingPermissionTool {
extension ToolThen {
    /// 检查相机和麦克风权限
    /// - Parameter action: 回调
    //: class func checkCameraAndMicrophone(_ handler: @escaping ((Bool) -> Void)) {
    class func drunkComponent(_ handler: @escaping ((Bool) -> Void)) {
        // 相机权限
        //: TalkingPermissionTool.func__openCaptureDeviceServiceWithBlock(false) { isOpen in
        ToolThen.represent(false) { isOpen in
            //: guard isOpen == true else {
            guard isOpen == true else {
                //: TalkingPermissionTool.func__openRecordServiceWithBlock(false) { isOpen in
                ToolThen.cellTact(false) { isOpen in
                    //: if isOpen {
                    if isOpen {
                        //: showTostView(.camera)
                        startUp(.camera)
                        //: } else {
                    } else {
                        //: showTostView(.cameraAndMicrophone)
                        startUp(.cameraAndMicrophone)
                    }
                }
                //: handler(false)
                handler(false)
                //: return
                return
            }

            // 麦克风权限
            //: TalkingPermissionTool.func__openRecordServiceWithBlock(false) { isOpen in
            ToolThen.cellTact(false) { isOpen in
                //: guard isOpen == true else {
                guard isOpen == true else {
                    //: showTostView(.microphone)
                    startUp(.microphone)
                    //: handler(false)
                    handler(false)
                    //: return
                    return
                }

                //: handler(true)
                handler(true)
            }
        }
    }

    /// 检测是否开启 直播间/语聊房
    /// - Returns: 结果
    //: class func isLiveOrPartyActive() -> Bool {
    class func pushSizePress() -> Bool {
        //: guard TalkingLiveManager.shared().isLive == false else {
        guard ValueThen.kindShared().isLive == false else { // 直播间
            //: object.func__showStatusBarErrorMsg(showMsg: kMessage_live_limit)
            showEnableDomainAppValue.arcInfo(showMsg: main_changeText)
            //: return true
            return true
        }
        //: guard TalkingVoiceRoomManager.shared().isParty == false else {
        guard CoverManager.byRest().isParty == false else { // 语聊房
            //: object.func__showStatusBarErrorMsg(showMsg: kMessage_party_limit)
            showEnableDomainAppValue.arcInfo(showMsg: mainCountervalNameData)
            //: return true
            return true
        }
        //: return false
        return false
    }
}
