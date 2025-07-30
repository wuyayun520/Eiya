
//: Declare String Begin

/*: "init(coder:) has not been implemented" :*/
fileprivate let kManagerTitle:[UInt8] = [0xd1,0xd6,0xd1,0xcc,0x90,0xdb,0xd7,0xdc,0xdd,0xca,0x82,0x91,0x98,0xd0,0xd9,0xcb,0x98,0xd6,0xd7,0xcc,0x98,0xda,0xdd,0xdd,0xd6,0x98,0xd1,0xd5,0xc8,0xd4,0xdd,0xd5,0xdd,0xd6,0xcc,0xdd,0xdc]

private func actionName(app num: UInt8) -> UInt8 {
    return num ^ 184
}

/*: "+ :*/
fileprivate let k_headStr:String = "+"

/*: "area_icon_ :*/
fileprivate let k_modelPath:String = "arwait"
fileprivate let kMarkContent:String = "_"

/*: @2x" :*/
fileprivate let k_canMessage:[Character] = ["@","2","x"]

/*: "get img error" :*/
fileprivate let k_shouldPath:String = "lab date timeget "
fileprivate let k_pageText:String = "touchotouch"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  LanguageChoiceCell.swift
//  AbroadTalking
//
//  Created by Hemming on 2022/8/29.
//

//: import UIKit
import UIKit

//: class TalkingAreaCodeChoiceCell: UITableViewCell {
class LanguageChoiceCell: UITableViewCell {
    //: override func awakeFromNib() {
    override func awakeFromNib() {
        //: super.awakeFromNib()
        super.awakeFromNib()
        // Initialization code
    }

    //: required init?(coder: NSCoder) {
    required init?(coder: NSCoder) {
        //: super.init(coder: coder)
        super.init(coder: coder)
        //: fatalError("init(coder:) has not been implemented")
        fatalError(String(bytes: kManagerTitle.map{actionName(app: $0)}, encoding: .utf8)!)
    }

    //: override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        //: super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //: selectionStyle = .none
        selectionStyle = .none
        //: self.setupSubviews()
        self.team()
        //: self.setupSubViewsConstraint()
        self.old()
        //: self.bindInteraction()
        self.showData()
    }

    //: lazy var areaImgView: UIImageView = {
    lazy var areaImgView: UIImageView = {
        //: let imageView = UIImageView.init()
        let imageView = UIImageView()
        //: imageView.layer.cornerRadius = 11
        imageView.layer.cornerRadius = 11
        //: imageView.clipsToBounds = true
        imageView.clipsToBounds = true
        //: return imageView
        return imageView
        //: }()
    }()

    //: lazy var areaNameLabel: UILabel = {
    lazy var areaNameLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .fontChange(type: .Regular, fontSize: 16)
        label.font = .fontChange(type: .Regular, fontSize: 16)
        //: label.textColor = .colorStatuteNameApp()
        label.textColor = .colorStatuteNameApp()
        //: return label
        return label
        //: }()
    }()

    //: lazy var areaCodeLabel: UILabel = {
    lazy var areaCodeLabel: UILabel = {
        //: let label = UILabel.init()
        let label = UILabel()
        //: label.font = .fontChange(type: .Regular, fontSize: 16)
        label.font = .fontChange(type: .Regular, fontSize: 16)
        //: label.textColor = .colorStatuteNameApp()
        label.textColor = .colorStatuteNameApp()
        //: label.textAlignment = .right
        label.textAlignment = .right
        //: return label
        return label
        //: }()
    }()

    //: override func setSelected(_ selected: Bool, animated: Bool) {
    override func setSelected(_ selected: Bool, animated: Bool) {
        //: super.setSelected(selected, animated: animated)
        super.setSelected(selected, animated: animated)
    }
}

// MARK: - Public Event

//: extension TalkingAreaCodeChoiceCell {
extension LanguageChoiceCell {
    //: public func func__updateUIWithModel(areaModel: TalkingAreaModel) {
    public func eventModel(areaModel: DataHandyJSON) {
        //: areaNameLabel.text = areaModel.areaName
        areaNameLabel.text = areaModel.areaName
        //: areaCodeLabel.text = "+\(areaModel.areaCode)"
        areaCodeLabel.text = "+\(areaModel.areaCode)"

        //: if areaModel.url.isEmptyString {
        if areaModel.url.isEmptyString {
            //: var imageName = areaModel.areaName.replacingOccurrences(of: " ", with: "")
            var imageName = areaModel.areaName.replacingOccurrences(of: " ", with: "")
            //: imageName = imageName.replacingOccurrences(of: ",", with: "")
            imageName = imageName.replacingOccurrences(of: ",", with: "")
            //: imageName = imageName.replacingOccurrences(of: ")", with: "")
            imageName = imageName.replacingOccurrences(of: ")", with: "")
            //: imageName = imageName.replacingOccurrences(of: "(", with: "")
            imageName = imageName.replacingOccurrences(of: "(", with: "")
            //: imageName = "area_icon_\(imageName)@2x"
            imageName = (k_modelPath.replacingOccurrences(of: "wait", with: "ea") + "_icon" + kMarkContent.capitalized) + "\(imageName)@2x"
            //: do {
            do {
                //: let url = SVGAEffectTool.default.getZipAreaIconPath(iconName: imageName)
                let url = VideoEffectTool.default.designationLibrary(iconName: imageName)
                //: let data = try Data(contentsOf: url)
                let data = try Data(contentsOf: url)
                //: areaImgView.image = UIImage(data: data)
                areaImgView.image = UIImage(data: data)
                //: } catch _ as Error? {
            } catch _ as Error? {
                //: areaImgView.image = UIImage.placeImgSquare()
                areaImgView.image = UIImage.rectangle()
                //: printLog(message: "get img error")
                printLog(message: (String(k_shouldPath.suffix(4)) + "img er" + k_pageText.replacingOccurrences(of: "touch", with: "r")))
            }
            //: }else {
        } else {
            //: areaImgView.setUrlImage(urlStr: areaModel.url)
            areaImgView.setUrlImage(urlStr: areaModel.url)
        }
    }
}

// MARK: - Layout

//: extension TalkingAreaCodeChoiceCell {
extension LanguageChoiceCell {
    // 添加视图
    //: private func setupSubviews() {
    private func team() {
        //: contentView.backgroundColor = .white
        contentView.backgroundColor = .white
        //: contentView.addSubview(areaImgView)
        contentView.addSubview(areaImgView)
        //: contentView.addSubview(areaNameLabel)
        contentView.addSubview(areaNameLabel)
        //: contentView.addSubview(areaCodeLabel)
        contentView.addSubview(areaCodeLabel)
    }

    // 添加约束
    //: private func setupSubViewsConstraint() {
    private func old() {
        //: areaImgView.snp.makeConstraints { make in
        areaImgView.snp.makeConstraints { make in
            //: make.centerY.equalTo(contentView)
            make.centerY.equalTo(contentView)
            //: make.leading.equalTo(15)
            make.leading.equalTo(15)
            //: make.width.height.equalTo(22)
            make.width.height.equalTo(22)
        }
        //: areaNameLabel.snp.makeConstraints { make in
        areaNameLabel.snp.makeConstraints { make in
            //: make.centerY.equalTo(contentView)
            make.centerY.equalTo(contentView)
            //: make.leading.equalTo(areaImgView.snp.trailing).offset(8)
            make.leading.equalTo(areaImgView.snp.trailing).offset(8)
        }
        //: areaCodeLabel.snp.makeConstraints { make in
        areaCodeLabel.snp.makeConstraints { make in
            //: make.centerY.equalTo(contentView)
            make.centerY.equalTo(contentView)
            //: make.leading.equalTo(areaNameLabel.snp.trailing).offset(8)
            make.leading.equalTo(areaNameLabel.snp.trailing).offset(8)
            //: make.trailing.equalToSuperview().offset(-13)
            make.trailing.equalToSuperview().offset(-13)
        }
    }

    // 添加事件
    //: private func bindInteraction() {
    private func showData() {}
}
