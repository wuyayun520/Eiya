
//: Declare String Begin

/*: "identifier" :*/
fileprivate let k_beStr:[UInt8] = [0xb6,0xb1,0xb2,0xbb,0xc1,0xb6,0xb3,0xb6,0xb2,0xbf]

fileprivate func systemLab(current num: UInt8) -> UInt8 {
    let value = Int(num) - 77
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "token" :*/
fileprivate let kSharedData:[UInt8] = [0x54,0x4f,0x4b,0x45,0x4e]

private func textCenter(finish num: UInt8) -> UInt8 {
    return num ^ 32
}

/*: "authCode" :*/
fileprivate let kSendTitle:[UInt8] = [0xad,0xb9,0xb8,0xa4,0x8f,0xa3,0xa8,0xa9]

private func voicePath(count num: UInt8) -> UInt8 {
    return num ^ 204
}

/*:   :*/
fileprivate let kIconMsg:String = " "

/*: "nickname" :*/
fileprivate let kSkinStr:[Character] = ["n","i","c","k","n"]
fileprivate let kViewName:String = "alabele"

/*: "授权请求失败未知原因" :*/
fileprivate let kGoStr:String = "\u{6388}权请"
fileprivate let k_toGroupData:String = "\u{6c42}失\u{8d25}未知原因"

/*: "用户取消了授权请求" :*/
fileprivate let k_playerValue:String = "\u{7528}\u{6237}取\u{6d88}了授权\u{8bf7}"
fileprivate let k_backgroundTitle:String = "求"

/*: "授权请求失败" :*/
fileprivate let k_addContent:String = "授\u{6743}请求失"
fileprivate let k_sharedUrl:String = "\u{8d25}"

/*: "授权请求响应无效" :*/
fileprivate let kMigrationModelStatusUrl:String = "授权请求响"
fileprivate let kIconStatusData:[Character] = ["应","无","\u{6548}"]

/*: "未能处理授权请求" :*/
fileprivate let k_equalTitle:String = "未能\u{5904}理授权请求"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ListContextProviding.swift
//  AbroadTalking
//
//  Created by young on 2022/8/30.
//

//: import AuthenticationServices
import AuthenticationServices
//: import UIKit
import UIKit

//: enum AppLeLoginError: Error {
enum VideoError: Error {
    //: case unknow
    case unknow
    //: case canceled
    case canceled
    //: case failed
    case failed
    //: case invalidResponse
    case invalidResponse
    //: case notHandled
    case notHandled
}

//: typealias LoginCompletionBlock = ([String: String]?) -> Void
typealias LoginCompletionBlock = ([String: String]?) -> Void

//: class AppleLoginManager: NSObject, ASAuthorizationControllerDelegate {
class ListContextProviding: NSObject, ASAuthorizationControllerDelegate {
    //: private var block: LoginCompletionBlock?
    private var block: LoginCompletionBlock?
    //: static let shared = AppleLoginManager()
    static let shared = ListContextProviding()
    //: private override init() { super.init() }
    override private init() { super.init() }
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }

    /// 登录按钮
    /// - Parameter closure: 回调
    //: func login(closure: @escaping LoginCompletionBlock) {
    func showMessage(closure: @escaping LoginCompletionBlock) {
        //: if #available(iOS 13.0, *) {
        if #available(iOS 13.0, *) {
            //: self.block = closure
            self.block = closure
            //: let appleIDProvider = ASAuthorizationAppleIDProvider()
            let appleIDProvider = ASAuthorizationAppleIDProvider()
            //: let appleIDRequest = appleIDProvider.createRequest()
            let appleIDRequest = appleIDProvider.createRequest()
            // 用户授权请求的联系信息
            //: appleIDRequest.requestedScopes = [.fullName, .email]
            appleIDRequest.requestedScopes = [.fullName, .email]
            //: let authorizationController = ASAuthorizationController(authorizationRequests: [appleIDRequest])
            let authorizationController = ASAuthorizationController(authorizationRequests: [appleIDRequest])
            //: authorizationController.delegate = self
            authorizationController.delegate = self
            //: authorizationController.presentationContextProvider = self
            authorizationController.presentationContextProvider = self
            //: authorizationController.performRequests()
            authorizationController.performRequests()
        }
    }

    // MARK: - ASAuthorizationControllerDelegate

    //: @available(iOS 13.0, *)
    @available(iOS 13.0, *)
    //: func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
    func authorizationController(controller _: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        //: switch authorization.credential {
        switch authorization.credential {
        //: case let appleIDCredential as ASAuthorizationAppleIDCredential:
        case let appleIDCredential as ASAuthorizationAppleIDCredential:
            //: let user = appleIDCredential.user
            let user = appleIDCredential.user
            //: let identityTokenStr = String(data: appleIDCredential.identityToken!, encoding: .utf8)
            let identityTokenStr = String(data: appleIDCredential.identityToken!, encoding: .utf8)
            //: let authorizationCodeStr = String(data: appleIDCredential.authorizationCode!, encoding: .utf8)
            let authorizationCodeStr = String(data: appleIDCredential.authorizationCode!, encoding: .utf8)
            //: var params: [String: String]?
            var params: [String: String]?
            //: if (identityTokenStr != nil) && (authorizationCodeStr != nil) {
            if (identityTokenStr != nil) && (authorizationCodeStr != nil) {
                //: params = ["identifier": user,
                params = [String(bytes: k_beStr.map{systemLab(current: $0)}, encoding: .utf8)!: user,
                          //: "token": identityTokenStr!,
                          String(bytes: kSharedData.map{textCenter(finish: $0)}, encoding: .utf8)!: identityTokenStr!,
                          //: "authCode": authorizationCodeStr!]
                          String(bytes: kSendTitle.map{voicePath(count: $0)}, encoding: .utf8)!: authorizationCodeStr!]

                //: if let familyName = appleIDCredential.fullName?.familyName, let givenName = appleIDCredential.fullName?.givenName {
                if let familyName = appleIDCredential.fullName?.familyName, let givenName = appleIDCredential.fullName?.givenName {
                    //: let nickname = "\(givenName) \(familyName)"
                    let nickname = "\(givenName) \(familyName)"
                    //: params!["nickname"] = nickname
                    params![(String(kSkinStr) + kViewName.replacingOccurrences(of: "label", with: "m"))] = nickname
                    //: Defaults.set(nickname, forKey: TalkingAppleLoginNickNameKey)
                    show_blockText.set(nickname, forKey: data_bottomTitle)
                    //: } else {
                } else {
                    //: let nickname = Defaults.string(forKey: TalkingAppleLoginNickNameKey)
                    let nickname = show_blockText.string(forKey: data_bottomTitle)
                    //: if nickname != nil {
                    if nickname != nil {
                        //: params!["nickname"] = nickname
                        params![(String(kSkinStr) + kViewName.replacingOccurrences(of: "label", with: "m"))] = nickname
                    }
                }
            }

            //: guard let block = block else { return }
            guard let block = block else { return }
            //: block(params)
            block(params)
        //: case is ASPasswordCredential:
        case is ASPasswordCredential:
//            let username = passwordCredential.user
//            let password = passwordCredential.password
            //: break
            break
        //: default:
        default:
            //: guard let block = block else { return }
            guard let block = block else { return }
            //: block(nil)
            block(nil)
            //: break
        }
    }

    //: @available(iOS 13.0, *)
    @available(iOS 13.0, *)
    //: private func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: AppLeLoginError) {
    private func authorizationController(controller _: ASAuthorizationController, didCompleteWithError error: VideoError) {
        //: switch error {
        switch error {
        //: case .unknow:
        case .unknow:
            //: printLog(message: "授权请求失败未知原因")
            printLog(message: (kGoStr + k_toGroupData))
        //: case .canceled:
        case .canceled:
            //: printLog(message: "用户取消了授权请求")
            printLog(message: (k_playerValue + k_backgroundTitle.capitalized))
        //: case .failed:
        case .failed:
            //: printLog(message: "授权请求失败")
            printLog(message: (k_addContent + k_sharedUrl))
        //: case .invalidResponse:
        case .invalidResponse:
            //: printLog(message: "授权请求响应无效")
            printLog(message: (kMigrationModelStatusUrl.capitalized + String(kIconStatusData)))
        //: case .notHandled:
        case .notHandled:
            //: printLog(message: "未能处理授权请求")
            printLog(message: (k_equalTitle))
        }

        //: guard let block = block else { return }
        guard let block = block else { return }
        //: block(nil)
        block(nil)
    }
}

//: extension AppleLoginManager: ASAuthorizationControllerPresentationContextProviding {
extension ListContextProviding: ASAuthorizationControllerPresentationContextProviding {
    //: @available(iOS 13.0, *)
    @available(iOS 13.0, *)

    // MARK: - ASAuthorizationControllerPresentationContextProviding

    //: func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
    func presentationAnchor(for _: ASAuthorizationController) -> ASPresentationAnchor {
        //: return UserTextMacroDefine.getWindow()
        return UserTextMacroDefine.clearstoryNo()
    }
}
