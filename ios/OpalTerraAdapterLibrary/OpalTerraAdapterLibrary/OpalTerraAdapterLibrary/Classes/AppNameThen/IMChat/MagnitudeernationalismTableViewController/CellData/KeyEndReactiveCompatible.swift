
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kDuringContent:[UInt8] = [0xb6,0xb1,0xb6,0xab,0xf7,0xbc,0xb0,0xbb,0xba,0xad,0xe5,0xf6,0xff,0xb7,0xbe,0xac,0xff,0xb1,0xb0,0xab,0xff,0xbd,0xba,0xba,0xb1,0xff,0xb6,0xb2,0xaf,0xb3,0xba,0xb2,0xba,0xb1,0xab,0xba,0xbb]

private func topModel(collection num: UInt8) -> UInt8 {
    return num ^ 223
}

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  KeyEndReactiveCompatible.swift
//  OpalTerraAdapterLibrary
//
//  Created by Hemming on 2024/8/14.
//

//: import UIKit
import UIKit

//: @objcMembers public class KeyEndReactiveCompatible: InscriptionThen {
@objcMembers public class KeyEndReactiveCompatible: InscriptionThen {
    //: var contentFont = UIFont.pingfangRugularFont(fontSize: 13)
    var contentFont = UIFont.targetFor(fontSize: 13)
    //: var contentColor = UIColor.appValueDetailColor()
    var contentColor = UIColor.childMenu()
    //: @objc public var contentStr = ""
    public var contentStr = ""

    //: override public init(direction: TMsgDirection) {
    override public init(direction: UserAppMeasurable) {
        //: super.init(direction: direction)
        super.init(direction: direction)
        //: self.cellLayout = MessageCellLayout.systemMessageLayout()
        self.cellLayout = RemoteThen.roundErase()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kDuringContent.map{topModel(collection: $0)}, encoding: .utf8)!)
    }

    //: public override func voiceOver() -> CGSize {
    override public func voiceOver() -> CGSize {
        //: let textSize = CGSize(width: ScreenWidth/2, height: ScreenHeight)
        let textSize = CGSize(width: constFormalContent / 2, height: user_recordMarginValue)
        //: let paragraphStyle = NSMutableParagraphStyle()
        let paragraphStyle = NSMutableParagraphStyle()
        //: paragraphStyle.lineBreakMode = .byWordWrapping
        paragraphStyle.lineBreakMode = .byWordWrapping
        //: paragraphStyle.alignment = .left
        paragraphStyle.alignment = .left

        //: let attributes = [NSAttributedString.Key.font: contentFont,
        let attributes = [NSAttributedString.Key.font: contentFont,
                          //: NSAttributedString.Key.paragraphStyle: paragraphStyle]
                          NSAttributedString.Key.paragraphStyle: paragraphStyle]

        //: let contentSize = contentStr.boundingRect(with: textSize, options: .usesLineFragmentOrigin, attributes: attributes, context: nil).size
        let contentSize = contentStr.boundingRect(with: textSize, options: .usesLineFragmentOrigin, attributes: attributes, context: nil).size

        //: return CGSize(width: contentSize.width + 16, height: contentSize.height + 10)
        return CGSize(width: contentSize.width + 16, height: contentSize.height + 10)
    }

    //: public override func pathDetail(_ width: CGFloat) -> CGFloat {
    override public func pathDetail(_: CGFloat) -> CGFloat {
        //: return self.voiceOver().height + 10
        return self.voiceOver().height + 10
    }
}
