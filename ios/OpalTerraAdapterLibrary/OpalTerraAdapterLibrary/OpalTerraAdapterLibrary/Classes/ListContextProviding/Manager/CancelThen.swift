
//: Declare String Begin

/*: "idToken" :*/
fileprivate let k_requestMsg:[UInt8] = [0x6e,0x65,0x6b,0x6f,0x54,0x64,0x69]

/*: "email" :*/
fileprivate let kFilterValue:[UInt8] = [0x26,0x2e,0x22,0x2a,0x2f]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CancelThen.swift
//  OpalTerraAdapterLibrary
//
//  Created by DouXiu on 2025/7/25.
//

//: import GoogleSignIn
import GoogleSignIn
//: import UIKit
import UIKit

//: extension AppDelegateHelper {
extension RegisterDelegateHelper {
    //: class func googleOpenURL(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
    class func userOptions(_: UIApplication, open url: URL, options _: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
        //: return GIDSignIn.sharedInstance.handle(url)
        return GIDSignIn.sharedInstance.handle(url)
    }
}

//: class GoogleLoginManager: NSObject {
class CancelThen: NSObject {
    //: static let shared = GoogleLoginManager()
    static let shared = CancelThen()

    /// 登录按钮
    /// - Parameters:
    ///   - vc: 控制器
    ///   - closure: 回调
    //: func login(vc: UIViewController, closure: @escaping LoginCompletionBlock) {
    func model(vc _: UIViewController, closure: @escaping LoginCompletionBlock) {
        //: guard let vc = self.currentViewController() else {
        guard let vc = self.selectStart() else {
            //: return
            return
        }
        //: GIDSignIn.sharedInstance.signIn(withPresenting: vc) { signInResult, error in
        GIDSignIn.sharedInstance.signIn(withPresenting: vc) { signInResult, error in
            //: guard error == nil, let user = signInResult?.user else {
            guard error == nil, let user = signInResult?.user else {
                //: closure(nil)
                closure(nil)
                //: return
                return
            }
            //: let idToken = user.idToken?.tokenString ?? ""
            let idToken = user.idToken?.tokenString ?? ""
            //: let email = user.profile?.email ?? ""
            let email = user.profile?.email ?? ""
            //: let params = ["idToken": idToken, "email": email]
            let params = [String(bytes: k_requestMsg.reversed(), encoding: .utf8)!: idToken, String(bytes: kFilterValue.map{$0^67}, encoding: .utf8)!: email]
            //: closure(params)
            closure(params)
        }
    }
}
