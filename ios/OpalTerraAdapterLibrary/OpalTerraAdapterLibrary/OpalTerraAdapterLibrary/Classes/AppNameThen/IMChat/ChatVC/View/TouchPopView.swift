
//: Declare String Begin

/*: "TouchPopView deinit" :*/
fileprivate let k_modelId:String = "interaction self end falseQuot"
fileprivate let k_textOfTitle:[Character] = ["i","l","P","o","p","V","i","e","w"," "]
fileprivate let k_dataName:String = "DEINIT"

/*: "init(coder:) has not been implemented" :*/
fileprivate let kLeadingLayerUrl:[UInt8] = [0xe6,0xe1,0xe6,0xfb,0xa7,0xec,0xe0,0xeb,0xea,0xfd,0xb5,0xa6,0xaf,0xe7,0xee,0xfc,0xaf,0xe1,0xe0,0xfb,0xaf,0xed,0xea,0xea,0xe1,0xaf,0xe6,0xe2,0xff,0xe3,0xea,0xe2,0xea,0xe1,0xfb,0xea,0xeb]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  TouchPopView.swift
//
//

//: import UIKit
import UIKit

//: class QuoteDetailPopView: UIView {
class TouchPopView: UIView {
    //: var popView: TalkingPopView?
    var popView: DataPopView?

    //: deinit {
    deinit {
        //: printLog(message: "QuoteDetailPopView deinit")
        printLog(message: (String(k_modelId.suffix(4)) + "eDeta" + String(k_textOfTitle) + k_dataName.lowercased()))
    }

    //: override init(frame: CGRect) {
    override init(frame: CGRect) {
        //: super.init(frame: frame)
        super.init(frame: frame)
        //: self.setupSubviews()
        self.patronymic()
        //: self.setupSubViewsConstraint()
        self.commit()
    }

    //: required init?(coder: NSCoder) {
    required init?(coder _: NSCoder) {
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kLeadingLayerUrl.map{$0^143}, encoding: .utf8)!)
    }

    //: var msgDetailText: String? {
    var msgDetailText: String? { // 提示文字
        //: didSet {
        didSet {
            //: messageView.text = msgDetailText
            messageView.text = msgDetailText
        }
    }

    //: lazy var messageView: UILabel = {
    lazy var messageView: UILabel = {
        //: let lb = UILabel()
        let lb = UILabel()
        //: lb.font = UIFont.fontChange(type: .Regular, fontSize: 16)
        lb.font = UIFont.fontChange(type: .Regular, fontSize: 16)
        //: lb.textColor = UIColor.colorStatuteNameApp()
        lb.textColor = UIColor.colorStatuteNameApp()
        //: lb.numberOfLines = 0
        lb.numberOfLines = 0
        //: lb.backgroundColor = .clear
        lb.backgroundColor = .clear
        //: lb.textAlignment = .center
        lb.textAlignment = .center
        //: return lb
        return lb
        //: }()
    }()
}

//: extension QuoteDetailPopView {
extension TouchPopView {
    //: func show() {
    func face() {
        //: popView = TalkingPopView.init(frame: UIScreen.main.bounds)
        popView = DataPopView(frame: UIScreen.main.bounds)
        //: popView?.initWithView(view: self)
        popView?.smart(view: self)
        //: popView?.showInView(view: UserTextMacroDefine.getWindow())
        popView?.academePosition(view: UserTextMacroDefine.clearstoryNo())
    }

    //: @objc func dismiss() {
    @objc func person() {
        //: popView?.dismissView()
        popView?.upView()
        //: popView = nil
        popView = nil
    }
}

//: extension QuoteDetailPopView {
extension TouchPopView {
    // 添加视图
    //: private func setupSubviews() {
    private func patronymic() {
        //: self.backgroundColor = UIColor.postColor()
        self.backgroundColor = UIColor.postColor()
        //: self.addSubview(messageView)
        self.addSubview(messageView)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func commit() {
        //: messageView.snp.makeConstraints { make in
        messageView.snp.makeConstraints { make in
            //: make.leading.equalTo(20)
            make.leading.equalTo(20)
            //: make.centerY.equalToSuperview()
            make.centerY.equalToSuperview()
            //: make.trailing.equalTo(-20)
            make.trailing.equalTo(-20)
        }
    }
}
