
//: Declare String Begin

/*: "filterSuite" :*/
fileprivate let kBottomValue:String = "fdatater"

/*: "customSuite" :*/
fileprivate let k_modelValue:[Character] = ["c","u","s","t","o","m","S","u"]
fileprivate let kResultTitle:String = "tote"

/*: "App/CostServerReactiveCompatible" :*/
fileprivate let kAtProgressStr:String = "equal name self in colorApp/"
fileprivate let kContentPath:String = "index by view make endterCac"
fileprivate let kFieldName:String = "svideo"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  CostServerReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/5/30.
//

//: import UIKit
import UIKit

//: @objcMembers public class CostServerReactiveCompatible: NSObject, NSSecureCoding {
@objcMembers public class CostServerReactiveCompatible: NSObject, NSSecureCoding {
    //: var curBeautySuite: BeautyItemType?
    var curBeautySuite: JoinHashableRepresentation?
    //: var curFeature: STEffectsType?
    var curFeature: EffectsRelatableTarget?
    /// 用户的滤镜设置
    //: public var filterSuite: RangeReactiveCompatible?
    public var filterSuite: RangeReactiveCompatible?
    /// 滤镜列表模型数组
    //: var filterModelArray = Array<GroupLooksModel>.init()
    var filterModelArray = Array<GroupLooksModel>.init()

    //: var customSuite =  RangeReactiveCompatible.init()
    var customSuite = RangeReactiveCompatible() // 用户自定义的美颜

    //: static public let share = CostServerReactiveCompatible()
    public static let share = CostServerReactiveCompatible()

    //: public static var supportsSecureCoding: Bool {
    public static var supportsSecureCoding: Bool {
        //: return true
        return true
    }

    //: required public init?(coder: NSCoder) {
    public required init?(coder: NSCoder) {
        //: super.init()
        super.init()

        //: let filDict =  coder.decodeObject(forKey: "filterSuite")
        let filDict = coder.decodeObject(forKey: (kBottomValue.replacingOccurrences(of: "data", with: "il") + "Suite"))
        //: let custDict =  coder.decodeObject(forKey: "customSuite")
        let custDict = coder.decodeObject(forKey: (String(k_modelValue) + kResultTitle.replacingOccurrences(of: "to", with: "i")))
        //: if filDict != nil {
        if filDict != nil {
            //: filterSuite = try! RangeReactiveCompatible.init(dictionary: filDict as? [AnyHashable: Any])
            filterSuite = try! RangeReactiveCompatible(dictionary: filDict as? [AnyHashable: Any])
        }
        //: if custDict != nil {
        if custDict != nil {
            //: customSuite = try! RangeReactiveCompatible.init(dictionary: custDict as? [AnyHashable: Any])
            customSuite = try! RangeReactiveCompatible(dictionary: custDict as? [AnyHashable: Any])
        }
    }

    //: public func encode(with coder: NSCoder) {
    public func encode(with coder: NSCoder) {
        //: let filDict = filterSuite?.toDictionary() ?? [:]
        let filDict = filterSuite?.toDictionary() ?? [:]
        //: let custDict = customSuite.toDictionary() ?? [:]
        let custDict = customSuite.toDictionary() ?? [:]
        //: coder.encode(filDict, forKey: "filterSuite")
        coder.encode(filDict, forKey: (kBottomValue.replacingOccurrences(of: "data", with: "il") + "Suite"))
        //: coder.encode(custDict, forKey: "customSuite")
        coder.encode(custDict, forKey: (String(k_modelValue) + kResultTitle.replacingOccurrences(of: "to", with: "i")))
    }

    //: private override init() {
    override private init() {
        //: super.init()
        super.init()

        //: self.curBeautySuite = .Face
        self.curBeautySuite = .Face

        //: checkAllSuite()
        everyLast()

        //: self.curFeature = .Whiten
        self.curFeature = .Whiten // 每次打开APP，都重置
        //: NotificationCenter.default.addObserver(self, selector: #selector(didReceiveFeatureValueChange(sender:)), name: kNotificationBeautyFeatureModity, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(acquire(sender:)), name: notiLimitTimeText, object: nil)
    }

    //: deinit {
    deinit {
        //: NotificationCenter.default.removeObserver(self)
        NotificationCenter.default.removeObserver(self)
    }
}

//: @objc extension CostServerReactiveCompatible {
@objc extension CostServerReactiveCompatible {
    /// 获取缓存
    //: public func getLocalModel() {
    public func separate() {
        //: let path = self.cachePath()
        let path = self.sunnah()
        //: if FileManager.default.fileExists(atPath: path) {
        if FileManager.default.fileExists(atPath: path) {
            //: var obj: CostServerReactiveCompatible?
            var obj: CostServerReactiveCompatible?

            //: if #available(iOS 11.0, *) {
            if #available(iOS 11.0, *) {
                //: do {
                do {
                    //: let data = try Data(contentsOf: URL(fileURLWithPath: path))
                    let data = try Data(contentsOf: URL(fileURLWithPath: path))
                    //: if let model: CostServerReactiveCompatible =  try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? CostServerReactiveCompatible {
                    if let model: CostServerReactiveCompatible = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? CostServerReactiveCompatible {
                        //: obj  = model
                        obj = model
                    }
                    //: } catch {
                } catch {
                    //: print("unarchive failure in init")
                }
                //: }else {
            } else {
                //: let model: CostServerReactiveCompatible? = NSKeyedUnarchiver.unarchiveObject(withFile: path) as? CostServerReactiveCompatible
                let model: CostServerReactiveCompatible? = NSKeyedUnarchiver.unarchiveObject(withFile: path) as? CostServerReactiveCompatible
                //: if  model != nil {
                if model != nil {
                    //: obj  = model
                    obj = model
                }
            }

            //: if obj == nil {
            if obj == nil {
                //: try? FileManager.default.removeItem(atPath: path)
                try? FileManager.default.removeItem(atPath: path)
                //: }else {
            } else {
                //: self.filterSuite = obj?.filterSuite
                self.filterSuite = obj?.filterSuite
                //: self.customSuite = obj!.customSuite
                self.customSuite = obj!.customSuite
                //: initFilterData()
                makeInit()
            }
        }
    }

    //: public func currentBeautySuite() -> RangeReactiveCompatible {
    public func awakeStopData() -> RangeReactiveCompatible {
        //: return self.customSuite
        return self.customSuite
    }

    //: func checkAllSuite() {
    func everyLast() {
        //: customSuite  = RangeReactiveCompatible.init().initWith(suiteType: .Face)
        customSuite = RangeReactiveCompatible().rowBy(suiteType: .Face)

        //: if filterSuite == nil {
        if filterSuite == nil {
            //: filterSuite  = RangeReactiveCompatible.init()
            filterSuite = RangeReactiveCompatible()
        }
    }

    //: func store() {
    func lineup() {
        //: let path = cachePath()
        let path = sunnah()
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: let data = try? NSKeyedArchiver.archivedData(withRootObject: self, requiringSecureCoding: true)
            let data = try? NSKeyedArchiver.archivedData(withRootObject: self, requiringSecureCoding: true)
            //: try? data?.write(to: URL(fileURLWithPath: path))
            try? data?.write(to: URL(fileURLWithPath: path))
            //: print("CostServerReactiveCompatible storeRst ")
            //: } else {
        } else {
            // Fallback on earlier versions
        }
    }

    //: func cachePath() -> String {
    func sunnah() -> String {
        //: let userId = 0
        let userId = 0

        //: let documentDictPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentDictPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let appDirectoryPath = (documentDictPath as NSString).appendingPathComponent("App/CostServerReactiveCompatible")
        let appDirectoryPath = (documentDictPath as NSString).appendingPathComponent((String(kAtProgressStr.suffix(4)) + "STFil" + String(kContentPath.suffix(6)) + "heCo" + kFieldName.replacingOccurrences(of: "video", with: "t")))

        //: let fm = FileManager.default
        let fm = FileManager.default
        //: if fm.fileExists(atPath: appDirectoryPath) == false {
        if fm.fileExists(atPath: appDirectoryPath) == false {
            //: try? fm.createDirectory(atPath: appDirectoryPath, withIntermediateDirectories: true)
            try? fm.createDirectory(atPath: appDirectoryPath, withIntermediateDirectories: true)
        }
        //: let filePath = (appDirectoryPath as NSString).appendingPathComponent((userId).description)
        let filePath = (appDirectoryPath as NSString).appendingPathComponent(userId.description)
        //: return filePath
        return filePath
    }

    //: func setCurBeautySuite(curBeautySuite: BeautyItemType) {
    func guardShareRoomsColor(curBeautySuite: JoinHashableRepresentation) {
        //: switch (curBeautySuite) {
        switch curBeautySuite {
        //: default:
        default:
            //: self.curBeautySuite = .Face
            self.curBeautySuite = .Face
        }
    }

    // 将用户自定义的套餐重置为默认套餐数值
    //: func resetCustomDefSuite() {
    func matchOf() {
        //: self.customSuite.resetBeautySuiteValueFor()
        self.customSuite.behindFormat()
        //: self.curBeautySuite = .Face
        self.curBeautySuite = .Face
        //: self.filterSuite = RangeReactiveCompatible.init()
        self.filterSuite = RangeReactiveCompatible()
    }

    // notification
    //: func didReceiveFeatureValueChange(sender: NSNotification) {
    func acquire(sender: NSNotification) {
        //: var cache: RangeReactiveCompatible?
        var cache: RangeReactiveCompatible?
        //: cache = self.customSuite
        cache = self.customSuite
        //: let featureModel: GroupLooksModel = sender.object as! GroupLooksModel
        let featureModel: GroupLooksModel = sender.object as! GroupLooksModel
        //: handleFeatureValueChangeWith(beautySuite: cache ?? RangeReactiveCompatible.init(), featureModel: featureModel)
        theVideoModel(beautySuite: cache ?? RangeReactiveCompatible(), featureModel: featureModel)
    }

    //: func handleFeatureValueChangeWith(beautySuite: RangeReactiveCompatible, featureModel: GroupLooksModel) {
    func theVideoModel(beautySuite: RangeReactiveCompatible, featureModel: GroupLooksModel) {
        //: if (self.curBeautySuite == .Face) {
        if self.curBeautySuite == .Face {
            //: if featureModel.isKind(of: GroupLooksModel.self) == true {
            if featureModel.isKind(of: GroupLooksModel.self) == true {
                // [0,1]
                //: let beautyValue = featureModel.beautyValue
                let beautyValue = featureModel.beautyValue

                //: switch (featureModel.featureType) {
                switch featureModel.featureType {
                //: case .Whiten:        beautySuite.fWhitenStrength = beautyValue
                case .Whiten: beautySuite.fWhitenStrength = beautyValue // 美白

                //: case .Ruddy:         beautySuite.fReddenStrength = beautyValue
                case .Ruddy: beautySuite.fReddenStrength = beautyValue // 红润

                //: case .Dermabrasion:  beautySuite.fSmoothStrength = beautyValue
                case .Dermabrasion: beautySuite.fSmoothStrength = beautyValue // 磨皮

                //: case .ShrinkFace:    beautySuite.fShrinkFaceStrength = beautyValue
                case .ShrinkFace: beautySuite.fShrinkFaceStrength = beautyValue // 瘦脸

                //: case .EnlargeEyes:   beautySuite.fEnlargeEyeStrength = beautyValue
                case .EnlargeEyes: beautySuite.fEnlargeEyeStrength = beautyValue // 大眼

                //: case .ShrinkJaw:     beautySuite.fShrinkJawStrength = beautyValue
                case .ShrinkJaw: beautySuite.fShrinkJawStrength = beautyValue // 小脸

                //: case .NarrowFace:    beautySuite.fNarrowFaceStrength = beautyValue
                case .NarrowFace: beautySuite.fNarrowFaceStrength = beautyValue // 窄脸

                //: case .RoundEye:      beautySuite.fRoundEyeStrength = beautyValue
                case .RoundEye: beautySuite.fRoundEyeStrength = beautyValue // 圆眼

                //: case .ThinFaceShape: beautySuite.fThinFaceShapeStrength = beautyValue
                case .ThinFaceShape: beautySuite.fThinFaceShapeStrength = beautyValue // 瘦脸型

                //: case .Chin:          beautySuite.fChinStrength = beautyValue
                case .Chin: beautySuite.fChinStrength = beautyValue // 下巴

                //: case .HairLine:      beautySuite.fHairLineStrength = beautyValue
                case .HairLine: beautySuite.fHairLineStrength = beautyValue // 额头

                //: case .AppleMusle:    beautySuite.fAppleMusleStrength = beautyValue
                case .AppleMusle: beautySuite.fAppleMusleStrength = beautyValue // 苹果肌

                //: case .NarrowNose:    beautySuite.fNarrowNoseStrength = beautyValue
                case .NarrowNose: beautySuite.fNarrowNoseStrength = beautyValue // 瘦鼻翼

                //: case .LengthNose:    beautySuite.fLongNoseStrength = beautyValue
                case .LengthNose: beautySuite.fLongNoseStrength = beautyValue // 长鼻

                //: case .ProfileRhinoplasty: beautySuite.fProfileRhinoplastyStrength = beautyValue
                case .ProfileRhinoplasty: beautySuite.fProfileRhinoplastyStrength = beautyValue // 侧脸隆鼻

                //: case .MouthSize:         beautySuite.fMouthStrength = beautyValue
                case .MouthSize: beautySuite.fMouthStrength = beautyValue // 嘴形

                //: case .LengthPhiltrum:    beautySuite.fPhiltrumStrength = beautyValue
                case .LengthPhiltrum: beautySuite.fPhiltrumStrength = beautyValue // 缩人中

                //: case .EyeDistance:       beautySuite.fEyeDistanceStrength = beautyValue
                case .EyeDistance: beautySuite.fEyeDistanceStrength = beautyValue // 眼距

                //: case .EyeAngle:          beautySuite.fEyeAngleStrength = beautyValue
                case .EyeAngle: beautySuite.fEyeAngleStrength = beautyValue // 眼睛角度

                //: case .OpenCanthus:       beautySuite.fOpenCanthusStrength = beautyValue
                case .OpenCanthus: beautySuite.fOpenCanthusStrength = beautyValue // 开眼角

                //: case .BrightEye:         beautySuite.fBrightEyeStrength = beautyValue
                case .BrightEye: beautySuite.fBrightEyeStrength = beautyValue // 亮眼

                //: case .RemoveDarkCircles: beautySuite.fRemoveDarkCirclesStrength = beautyValue
                case .RemoveDarkCircles: beautySuite.fRemoveDarkCirclesStrength = beautyValue // 祛黑眼圈

                //: case .RemoveNasolabialFolds: beautySuite.fRemoveNasolabialFoldsStrength = beautyValue
                case .RemoveNasolabialFolds: beautySuite.fRemoveNasolabialFoldsStrength = beautyValue // 祛法令纹

                //: case .WhiteTeeth:        beautySuite.fWhiteTeethStrength = beautyValue
                case .WhiteTeeth: beautySuite.fWhiteTeethStrength = beautyValue // 亮牙

                //: case .ShrinkCheekbone:   beautySuite.fShrinkCheekboneStrength = beautyValue
                case .ShrinkCheekbone: beautySuite.fShrinkCheekboneStrength = beautyValue // 瘦颧骨

                //: case .Contrast:
                case .Contrast: // 对比度
                    //: break
                    break
                //: case .Saturation:
                case .Saturation: // 饱和度
                    //: break
                    break
                //: case .Sharpen:
                case .Sharpen: // 锐化
                    //: break
                    break

                //: case .STBMPTYPE_LIP, .STBMPTYPE_BROW, .STBMPTYPE_FACE, .STBMPTYPE_BLUSH, .STBMPTYPE_EYE, .STBMPTYPE_EYELINER, .STBMPTYPE_EYELASH, .STBMPTYPE_EYEBALL:
                case .STBMPTYPE_LIP, .STBMPTYPE_BROW, .STBMPTYPE_FACE, .STBMPTYPE_BLUSH, .STBMPTYPE_EYE, .STBMPTYPE_EYELINER, .STBMPTYPE_EYELASH, .STBMPTYPE_EYEBALL:
                    //: break
                    break
                //: default:
                default:
                    //: break
                    break
                }
            }
        }
    }

    /// -------初始化滤镜资源
    //: func reloadFilterData(model: GroupLooksModel) {
    func borderPath(model: GroupLooksModel) {
        //: self.filterSuite?.fFilterStrength = model.beautyValue
        self.filterSuite?.fFilterStrength = model.beautyValue
        //: self.filterSuite?.filterName = model.strName
        self.filterSuite?.filterName = model.strName
        //: self.filterSuite?.filterModelPath = model.strPath
        self.filterSuite?.filterModelPath = model.strPath
    }

    //: public func getFilterDataModel() -> GroupLooksModel? {
    public func recoupAtConcentrationEconomicTheory() -> GroupLooksModel? {
        //: if (self.filterSuite?.filterModelPath.count == 0) {
        if self.filterSuite?.filterModelPath.count == 0 {
            //: return nil
            return nil
        }

        //: for model in self.filterModelArray {
        for model in self.filterModelArray {
            //: if model.strName == self.filterSuite?.filterName {
            if model.strName == self.filterSuite?.filterName {
                //: model.beautyValue = self.filterSuite?.fFilterStrength ?? 0.0
                model.beautyValue = self.filterSuite?.fFilterStrength ?? 0.0
                //: return model
                return model
            }
        }

        //: return nil
        return nil
    }

    //: func rangeMappedValueFrom(rawValue: Float)-> Float {
    func backgroundValue(rawValue: Float) -> Float {
        // 下面几个情况的商汤SDK值域为【-1,1】，将UI上原始的【0,1】值域转化
        // [0,1] -> [-1,1]
        //    case STBeautyTypeLengthNose:
        //    case STBeautyTypeMouthSize:
        //    case STBeautyTypeChin:
        //    case STBeautyTypeHairLine:
        //    case STBeautyTypeLengthPhiltrum:
        //    case STBeautyTypeEyeDistance:
        //    case STBeautyTypeEyeAngle:

        //: return max(-1.0, min(1.0, rawValue * 2 - 1.0))
        return max(-1.0, min(1.0, rawValue * 2 - 1.0))
    }

    //: func initFilterData() {
    func makeInit() {
        //: let orignArray  = GroupLooksModel.init().arrayOfFeatureModelWith(categoryType: .Filter)
        let orignArray = GroupLooksModel().attributeTapWith(categoryType: .Filter)

        //: if (orignArray.count > 0) {
        if orignArray.count > 0 {
            //: let model = orignArray.first
            let model = orignArray.first
            //: self.filterModelArray = NSMutableArray.init(array: model?.subFilterItemsArr ?? [GroupLooksModel].init()) as! [GroupLooksModel]
            self.filterModelArray = NSMutableArray(array: model?.subFilterItemsArr ?? [GroupLooksModel].init()) as! [GroupLooksModel]
        }
    }
}
