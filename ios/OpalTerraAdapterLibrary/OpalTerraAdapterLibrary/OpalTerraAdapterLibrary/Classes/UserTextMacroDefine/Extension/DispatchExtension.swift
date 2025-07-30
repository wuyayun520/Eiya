
//: Declare String Begin

/*: "DispatchQueueToken_StatusBarInit" :*/
fileprivate let k_appKey:[UInt8] = [0xce,0xe3,0xf9,0xfa,0xeb,0xfe,0xe9,0xe2,0xdb,0xff,0xef,0xff,0xef,0xde,0xe5,0xe1,0xef,0xe4,0xd5,0xd9,0xfe,0xeb,0xfe,0xff,0xf9,0xc8,0xeb,0xf8,0xc3,0xe4,0xe3,0xfe]

private func frameContent(submit num: UInt8) -> UInt8 {
    return num ^ 138
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  DispatchExtension.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/9/1.
//

//: import UIKit
import UIKit

//: let DispatchQueueToken_StatusBarInit = "DispatchQueueToken_StatusBarInit"  //状态栏初始化
let appBarTitle = String(bytes: k_appKey.map{frameContent(submit: $0)}, encoding: .utf8)! // 状态栏初始化

//: extension DispatchQueue {
extension DispatchQueue {
    //: private static var _onceTracket = [String]()
    private static var _onceTracket = [String]()
    //: class func once(token:String , block:() -> Void) {
    class func transmission(token: String, block: () -> Void) {
        //: if _onceTracket.contains(token) {
        if _onceTracket.contains(token) {
            //: return
            return
        }
        //: _onceTracket.append(token)
        _onceTracket.append(token)
        //: block()
        block()
    }
}
