
//: Declare String Begin

/*: "LaunchImage" :*/
fileprivate let k_delayActionMsg:String = "progress for page selfLaunc"
fileprivate let kMoreMsg:String = "scale"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  OnWaitingController.swift
//  OpalTerraAdapterLibrary
//
//  Created by DouXiu on 2025/1/16.
//

//: import UIKit
import UIKit

//: public class NormalWaitingController: UIViewController {
public class OnWaitingController: UIViewController {
    //: public override func viewDidLoad() {
    override public func viewDidLoad() {
        //: super.viewDidLoad()
        super.viewDidLoad()
        //: let bgImgV = UIImageView()
        let bgImgV = UIImageView()
        //: bgImgV.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight)
        bgImgV.frame = CGRect(x: 0, y: 0, width: constFormalContent, height: user_recordMarginValue)
        //: bgImgV.image = UIImage(named: "LaunchImage")
        bgImgV.image = UIImage(named: (String(k_delayActionMsg.suffix(5)) + "hIma" + kMoreMsg.replacingOccurrences(of: "scale", with: "ge")))
        //: view.addSubview(bgImgV)
        view.addSubview(bgImgV)
    }
}
