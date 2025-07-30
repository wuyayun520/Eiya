
//: Declare String Begin

/*: "Notification.Beauty.Feature.Modity" :*/
fileprivate let kDetailMessage:[UInt8] = [0xb8,0x99,0x82,0x9f,0x90,0x9f,0x95,0x97,0x82,0x9f,0x99,0x98,0xd8,0xb4,0x93,0x97,0x83,0x82,0x8f,0xd8,0xb0,0x93,0x97,0x82,0x83,0x84,0x93,0xd8,0xbb,0x99,0x92,0x9f,0x82,0x8f]

private func sureTitle(make num: UInt8) -> UInt8 {
    return num ^ 246
}

/*: "Notification.Beauty.Filter.Modity" :*/
fileprivate let kAddMessage:[UInt8] = [0x1b,0x3a,0x21,0x3c,0x33,0x3c,0x36,0x34,0x21,0x3c,0x3a,0x3b,0x7b,0x17,0x30,0x34,0x20,0x21,0x2c,0x7b,0x13,0x3c,0x39,0x21,0x30,0x27,0x7b,0x18,0x3a,0x31,0x3c,0x21,0x2c]

private func framePush(with num: UInt8) -> UInt8 {
    return num ^ 85
}

/*: "Notification.Beauty.Filter.ValueChange" :*/
fileprivate let kDraftFormat:[UInt8] = [0xce,0xef,0xf4,0xe9,0xe6,0xe9,0xe3,0xe1,0xf4,0xe9,0xef,0xee,0xae,0xc2,0xe5,0xe1,0xf5,0xf4,0xf9,0xae,0xc6,0xe9,0xec,0xf4,0xe5,0xf2,0xae,0xd6,0xe1,0xec,0xf5,0xe5,0xc3,0xe8,0xe1,0xee,0xe7,0xe5]

private func createTitle(need num: UInt8) -> UInt8 {
    return num ^ 128
}

/*: "PortraitFilters" :*/
fileprivate let kEqualStr:String = "Poruser top handle"
fileprivate let k_mePathStr:String = "inforaiinfo"

/*: "SceneryFilters" :*/
fileprivate let k_marginContent:String = "Scenmin ok select table show"
fileprivate let kSubmitValue:String = "iltcolor"
fileprivate let k_succeedName:[Character] = ["s"]

/*: "StillLifeFilters" :*/
fileprivate let k_pathStr:String = "Stillname number group"
fileprivate let kGiftUserMessage:String = "to on targetFilters"

/*: "DeliciousFoodFilters" :*/
fileprivate let kStylePushLetTitle:[Character] = ["D","e","l","i","c"]
fileprivate let k_succeedUrl:String = "I"
fileprivate let kModePath:[Character] = ["o","u","s","F","o","o","d","F","i","l","t","e","r","s"]

/*: ".bundle" :*/
fileprivate let k_appText:[Character] = [".","b","u","n","d","l"]
fileprivate let k_bagUrl:String = "nor"

/*: "model" :*/
fileprivate let kRandomKey:[Character] = ["m","o","d","e","l"]

/*: "filter_style" :*/
fileprivate let kViewMessage:[Character] = ["f","i","l","t","e","r","_","s","t","y","l"]
fileprivate let kResultText:[Character] = ["e"]

/*: "common_object" :*/
fileprivate let k_frameMsg:[Character] = ["c","o","m","m","o","n","_","o","b","j","e","c","t"]

/*: "new_sticker" :*/
fileprivate let kVideoMsg:[Character] = ["n","e","w","_","s","t","i","c","k","e","r"]

/*: "2d_sticker" :*/
fileprivate let kModelText:String = "2d_streturn empty false type view"

/*: "avatar_sticker" :*/
fileprivate let k_gameMessage:[Character] = ["a","v","a","t","a","r","_","s"]
fileprivate let kShowStr:[Character] = ["t","i","c","k","e","r"]

/*: "3d_sticker" :*/
fileprivate let kFrameMsg:[Character] = ["3","d","_","s","t","i","c","k"]
fileprivate let k_managerUserPath:String = "ecurrent"

/*: "hand_gesture_sticker" :*/
fileprivate let kFrameworkData:[Character] = ["h","a","n","d","_","g","e","s","t","u","r","e","_","s"]
fileprivate let k_sizeText:[Character] = ["t"]
fileprivate let kMenuData:String = "icmoreer"

/*: "deformation_sticker" :*/
fileprivate let k_ofText:[Character] = ["d","e","f","o","r","m","a","t","i","o","n","_","s","t"]
fileprivate let kViewUrl:[Character] = ["i","c","k","e","r"]

/*: "segment_sticker" :*/
fileprivate let kIconByText:String = "stablemen"

/*: "face_change_sticker" :*/
fileprivate let k_infoPath:[Character] = ["f","a","c","e","_","c","h","a","n","g","e","_","s","t","i","c","k","e","r"]

/*: "particle_sticker" :*/
fileprivate let k_arrayLabValue:String = "equalrt"
fileprivate let k_toPopularStr:[Character] = ["t","i","c","k","e","r"]

/*: "zip" :*/
fileprivate let k_infoViewId:String = "bindip"

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WillParamUtil.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/11/9.
//

//: import MachO
import MachO
//: import UIKit
import UIKit

/// 美颜的类别
//: @objc enum STBeautyCategory: Int {
@objc enum ClassExpressionConvertible: Int {
    //: case Unknown = 0
    case Unknown = 0

    //: case Base
    case Base
    //: case Shape
    case Shape
    //: case MicroSurgery
    case MicroSurgery
    //: case MakeUp
    case MakeUp
    //: case Filter
    case Filter
    //: case Adjust
    case Adjust
}

/// 滤镜
//: @objc enum STEffectsType: Int {
@objc enum EffectsRelatableTarget: Int {
    //: case FeatureTypeUnknown = 0
    case FeatureTypeUnknown = 0

    // 美颜
    //: case Whiten = 101
    case Whiten = 101 // 美白
    //: case Ruddy
    case Ruddy // 红润
    //: case Dermabrasion
    case Dermabrasion // 磨皮

    // 美形
    //: case ShrinkFace
    case ShrinkFace // 瘦脸
    //: case EnlargeEyes
    case EnlargeEyes // 大眼
    //: case ShrinkJaw
    case ShrinkJaw // 小脸
    //: case NarrowFace
    case NarrowFace // 窄脸
    //: case RoundEye
    case RoundEye // 圆眼

    // 微整形
    //: case ThinFaceShape
    case ThinFaceShape // 瘦脸型
    //: case Chin
    case Chin // 下巴
    //: case HairLine
    case HairLine // 额头
    //: case NarrowNose
    case NarrowNose // 瘦鼻翼
    //: case LengthNose
    case LengthNose // 长鼻
    //: case MouthSize
    case MouthSize // 嘴形
    //: case BrightEye
    case BrightEye // 亮眼
    //: case RemoveDarkCircles
    case RemoveDarkCircles // 祛黑眼圈
    //: case RemoveNasolabialFolds
    case RemoveNasolabialFolds // 祛法令纹
    //: case WhiteTeeth
    case WhiteTeeth // 亮牙
    //: case ShrinkCheekbone
    case ShrinkCheekbone // 瘦颧骨

    //: case ProfileRhinoplasty
    case ProfileRhinoplasty // 侧脸隆鼻
    //: case LengthPhiltrum
    case LengthPhiltrum // 缩人中
    //: case AppleMusle
    case AppleMusle // 苹果肌
    //: case EyeDistance
    case EyeDistance // 眼距
    //: case EyeAngle
    case EyeAngle // 眼睛角度
    //: case OpenCanthus
    case OpenCanthus // 开眼角

    // 调整
    //: case Contrast
    case Contrast // 对比度
    //: case Saturation
    case Saturation // 饱和度
    //: case Sharpen
    case Sharpen // 锐化

    // 美妆
    //: case STBMPTYPE_LIP
    case STBMPTYPE_LIP // 腮红
    //: case STBMPTYPE_BROW
    case STBMPTYPE_BROW // 眉毛
    //: case STBMPTYPE_FACE
    case STBMPTYPE_FACE // 修容
    //: case STBMPTYPE_BLUSH
    case STBMPTYPE_BLUSH // 口红
    //: case STBMPTYPE_EYE
    case STBMPTYPE_EYE // 眼影
    //: case STBMPTYPE_EYELINER
    case STBMPTYPE_EYELINER // 眼线
    //: case STBMPTYPE_EYELASH
    case STBMPTYPE_EYELASH // 眼睫毛
    //: case STBMPTYPE_EYEBALL
    case STBMPTYPE_EYEBALL // 美瞳
    //: case STBMPTYPE_SubItem
    case STBMPTYPE_SubItem // 美妆的子项

    // 滤镜
    //: case FilterPortrait
    case FilterPortrait //
    //: case FilterScenery
    case FilterScenery //
    //: case FilterStillLife
    case FilterStillLife //
    //: case FilterDeliciousFood
    case FilterDeliciousFood //
    //: case Filter_SubItem
    case Filter_SubItem // 滤镜的子项

    // 贴纸
    //: case TypeNew = 201
    case TypeNew = 201 //
    //: case Type2D
    case Type2D //
    //: case TypeAvatar
    case TypeAvatar //
    //: case Type3D
    case Type3D //
    //: case TypeGesture
    case TypeGesture //
    //: case TypeSegment
    case TypeSegment //
    //: case TypeDeformation
    case TypeDeformation //
    //: case TypeMorph
    case TypeMorph //
    //: case TypeParticle
    case TypeParticle //
    //: case TypeObjectTrack
    case TypeObjectTrack //

    // 特效
    //: case Sticker2D = 301
    case Sticker2D = 301 //
    //: case StickerAvatar
    case StickerAvatar //
    //: case Sticker3D
    case Sticker3D //
    //: case StickerGesture
    case StickerGesture //
    //: case StickerSegment
    case StickerSegment //
    //: case StickerFaceChange
    case StickerFaceChange //
    //: case StickerFaceDeformation
    case StickerFaceDeformation //
    //: case StickerParticle
    case StickerParticle //
    //: case StickerNew
    case StickerNew //
    //: case StickerMy
    case StickerMy //
    //: case ObjectTrack
    case ObjectTrack //
}

//: public let kNotificationBeautyFeatureModity = NSNotification.Name(rawValue: "Notification.Beauty.Feature.Modity")
public let notiLimitTimeText = NSNotification.Name(rawValue: String(bytes: kDetailMessage.map{sureTitle(make: $0)}, encoding: .utf8)!)
/// 选择滤镜通知
//: public let kNotificationSelectBeautyFilter = NSNotification.Name(rawValue: "Notification.Beauty.Filter.Modity")
public let userSuccessSaltScreenTitle = NSNotification.Name(rawValue: String(bytes: kAddMessage.map{framePush(with: $0)}, encoding: .utf8)!)
/// 滤镜强度变化通知
//: public let kNotificationBeautyFilterValueChange  =  NSNotification.Name(rawValue: "Notification.Beauty.Filter.ValueChange")
public let app_scaleText = NSNotification.Name(rawValue: String(bytes: kDraftFormat.map{createTitle(need: $0)}, encoding: .utf8)!)

//: @objcMembers public class STParamUtil: NSObject {
@objcMembers public class WillParamUtil: NSObject {
    //: public let kNotificationBeautyFeatureModityStr = "Notification.Beauty.Feature.Modity"
    public let kNotificationBeautyFeatureModityStr = String(bytes: kDetailMessage.map{sureTitle(make: $0)}, encoding: .utf8)!
    /// 选择滤镜通知
    //: public let kNotificationSelectBeautyFilterStr = "Notification.Beauty.Filter.Modity"
    public let kNotificationSelectBeautyFilterStr = String(bytes: kAddMessage.map{framePush(with: $0)}, encoding: .utf8)!
    /// 滤镜强度变化通知
    //: public let kNotificationBeautyFilterValueChangeStr  =  "Notification.Beauty.Filter.ValueChange"
    public let kNotificationBeautyFilterValueChangeStr = String(bytes: kDraftFormat.map{createTitle(need: $0)}, encoding: .utf8)!

    //: public func BeautifyParam(beautifyHandle: st_handle_t, type: st_beautify_type, value: Float) {
    public func secret(beautifyHandle: st_handle_t, type: st_beautify_type, value: Float) {
        //: let iRet = st_mobile_beautify_setparam(beautifyHandle, type, value)
        let iRet = st_mobile_beautify_setparam(beautifyHandle, type, value)
        //: if (iRet != ST_OK) {
        if iRet != ST_OK {
            //: print("st mobile beautify set beautiy type %d failed: %d", type, iRet)
        }
    }

    /*
     * 返回CPU占用率的分子（分母为100）
     */
    //: func getCpuUsage() -> Float {
    func allBy() -> Float {
        //: return 0
        return 0
    }

    /**
     获取特定类型滤镜路径

     @param type EffectsRelatableTarget
     @return 路径数组
     */
    //: func getFilterModelPathsByType(type: STEffectsType) -> Array<Any> {
    func indexCell(type: EffectsRelatableTarget) -> [Any] {
        //: var strPrefix = NSString.init()
        var strPrefix = NSString()

        //: switch (type) {
        switch type {
        //: case .FilterPortrait:
        case .FilterPortrait:
            //: strPrefix = "PortraitFilters"
            strPrefix = (String(kEqualStr.prefix(3)) + k_mePathStr.replacingOccurrences(of: "info", with: "t") + "Filters") as NSString
                //: break

        //: case .FilterScenery:
        case .FilterScenery:
            //: strPrefix = "SceneryFilters"
            strPrefix = (String(k_marginContent.prefix(4)) + "eryF" + kSubmitValue.replacingOccurrences(of: "color", with: "er") + String(k_succeedName)) as NSString
                //: break

        //: case .FilterStillLife:
        case .FilterStillLife:
            //: strPrefix = "StillLifeFilters"
            strPrefix = (String(k_pathStr.prefix(5)) + "Life" + String(kGiftUserMessage.suffix(7))) as NSString
                //: break

        //: case .FilterDeliciousFood:
        case .FilterDeliciousFood:
            //: strPrefix = "DeliciousFoodFilters"
            strPrefix = (String(kStylePushLetTitle) + k_succeedUrl.lowercased() + String(kModePath)) as NSString
                //: break

        //: default:
        default:
            //: break
            break
        }

        //: let fileManger = FileManager.init()
        let fileManger = FileManager()
        //: let strBundlePath: String = PodspecBundle.bundle.resourcePath?.appending(strPrefix.appending(".bundle")) ?? ""
        let strBundlePath: String = UserPodspecBundle.bundle.resourcePath?.appending(strPrefix.appending((String(k_appText) + k_bagUrl.replacingOccurrences(of: "nor", with: "e")))) ?? ""

        //: var arrFileNames: [String] = try! fileManger.contentsOfDirectory(atPath: strBundlePath)
        var arrFileNames: [String] = try! fileManger.contentsOfDirectory(atPath: strBundlePath)

        //: let arrFilterPaths = NSMutableArray.init()
        let arrFilterPaths = NSMutableArray()

        //: for strFileName in arrFileNames {
        for strFileName in arrFileNames {
            //: if strFileName.hasPrefix("model") && strFileName.hasPrefix("filter_style") {
            if strFileName.hasPrefix((String(kRandomKey))) && strFileName.hasPrefix((String(kViewMessage) + String(kResultText))) {
                //: arrFilterPaths.add(NSString.path(withComponents: [strBundlePath, strFileName]))
                arrFilterPaths.add(NSString.path(withComponents: [strBundlePath, strFileName]))
            }
        }

        //: let strDocumentsPath = NSSearchPathForDirectoriesInDomains(.desktopDirectory, .userDomainMask, true).last!
        let strDocumentsPath = NSSearchPathForDirectoriesInDomains(.desktopDirectory, .userDomainMask, true).last!

        //: let filterPortraitPath = strDocumentsPath.appending("PortraitFilters")
        let filterPortraitPath = strDocumentsPath.appending((String(kEqualStr.prefix(3)) + k_mePathStr.replacingOccurrences(of: "info", with: "t") + "Filters"))
        //: let filterSceneryPath = strDocumentsPath.appending("SceneryFilters")
        let filterSceneryPath = strDocumentsPath.appending((String(k_marginContent.prefix(4)) + "eryF" + kSubmitValue.replacingOccurrences(of: "color", with: "er") + String(k_succeedName)))
        //: let filterStillLifePath = strDocumentsPath.appending("StillLifeFilters")
        let filterStillLifePath = strDocumentsPath.appending((String(k_pathStr.prefix(5)) + "Life" + String(kGiftUserMessage.suffix(7))))
        //: let filterDeliciousFoodPath = strDocumentsPath.appending("DeliciousFoodFilters")
        let filterDeliciousFoodPath = strDocumentsPath.appending((String(kStylePushLetTitle) + k_succeedUrl.lowercased() + String(kModePath)))

        //: if !FileManager.default.fileExists(atPath: filterPortraitPath) {
        if !FileManager.default.fileExists(atPath: filterPortraitPath) {
            //: try? fileManger.createDirectory(atPath: filterPortraitPath, withIntermediateDirectories: true, attributes: nil)
            try? fileManger.createDirectory(atPath: filterPortraitPath, withIntermediateDirectories: true, attributes: nil)
        }

        //: if !FileManager.default.fileExists(atPath: filterSceneryPath) {
        if !FileManager.default.fileExists(atPath: filterSceneryPath) {
            //: try? fileManger.createDirectory(atPath: filterSceneryPath, withIntermediateDirectories: true, attributes: nil)
            try? fileManger.createDirectory(atPath: filterSceneryPath, withIntermediateDirectories: true, attributes: nil)
        }

        //: if !FileManager.default.fileExists(atPath: filterStillLifePath) {
        if !FileManager.default.fileExists(atPath: filterStillLifePath) {
            //: try? fileManger.createDirectory(atPath: filterStillLifePath, withIntermediateDirectories: true, attributes: nil)
            try? fileManger.createDirectory(atPath: filterStillLifePath, withIntermediateDirectories: true, attributes: nil)
        }

        //: if !FileManager.default.fileExists(atPath: filterDeliciousFoodPath) {
        if !FileManager.default.fileExists(atPath: filterDeliciousFoodPath) {
            //: try? fileManger.createDirectory(atPath: filterDeliciousFoodPath, withIntermediateDirectories: true, attributes: nil)
            try? fileManger.createDirectory(atPath: filterDeliciousFoodPath, withIntermediateDirectories: true, attributes: nil)
        }

        //: let filterPath = strDocumentsPath.appending(strPrefix as String)
        let filterPath = strDocumentsPath.appending(strPrefix as String)

        //: do {
        do {
            //: arrFileNames = try fileManger.contentsOfDirectory(atPath: filterPath)
            arrFileNames = try fileManger.contentsOfDirectory(atPath: filterPath)
            //: }catch {
        } catch {}
        //: for strFileName in arrFileNames {
        for strFileName in arrFileNames {
            //: if strFileName.hasPrefix("model") && strFileName.hasPrefix("filter_style") {
            if strFileName.hasPrefix((String(kRandomKey))) && strFileName.hasPrefix((String(kViewMessage) + String(kResultText))) {
                //: arrFilterPaths.add(NSString.path(withComponents: [filterPath, strFileName]))
                arrFilterPaths.add(NSString.path(withComponents: [filterPath, strFileName]))
            }
        }

        //: return arrFilterPaths.copy() as! Array<Any>
        return arrFilterPaths.copy() as! [Any]
    }

    /**
     获取通用物体素材路径

     @return 路径数组
     */
    //: func getTrackerPaths() -> Array<Any> {
    func sizePaths() -> [Any] {
        //: let fileManager = FileManager.init()
        let fileManager = FileManager()

        //: let strBundlePath: String = PodspecBundle.bundle.resourcePath ?? ""
        let strBundlePath: String = UserPodspecBundle.bundle.resourcePath ?? ""

        //: var arrFileNames: [String] = try! fileManager.contentsOfDirectory(atPath: strBundlePath)
        var arrFileNames: [String] = try! fileManager.contentsOfDirectory(atPath: strBundlePath)

        //: let arrPaths = NSMutableArray.init()
        let arrPaths = NSMutableArray()

        //: for strFileName in arrFileNames {
        for strFileName in arrFileNames {
            //: if strFileName.hasPrefix("common_object") {
            if strFileName.hasPrefix((String(k_frameMsg))) {
                //: arrPaths.add(NSString.path(withComponents: [strBundlePath, strFileName]))
                arrPaths.add(NSString.path(withComponents: [strBundlePath, strFileName]))
            }
        }

        //: let strDocumentsPath: String = NSSearchPathForDirectoriesInDomains(.desktopDirectory, .userDomainMask, true) .last!
        let strDocumentsPath: String = NSSearchPathForDirectoriesInDomains(.desktopDirectory, .userDomainMask, true).last!

        //: do {
        do {
            //: arrFileNames = try fileManager.contentsOfDirectory(atPath: strDocumentsPath)
            arrFileNames = try fileManager.contentsOfDirectory(atPath: strDocumentsPath)
            //: }catch {
        } catch {}

        //: for strFileName in arrFileNames {
        for strFileName in arrFileNames {
            //: if strFileName.hasPrefix("common_object") {
            if strFileName.hasPrefix((String(k_frameMsg))) {
                //: arrPaths.add(NSString.path(withComponents: [strDocumentsPath, strFileName]))
                arrPaths.add(NSString.path(withComponents: [strDocumentsPath, strFileName]))
            }
        }

        //: return arrPaths.copy() as! Array<Any>
        return arrPaths.copy() as! [Any]
    }

    // 特效-动态贴图
    //: func getStickerPathsByType(type: STEffectsType) -> Array<Any> {
    func changeType(type: EffectsRelatableTarget) -> [Any] {
        //: var strPrefix = ""
        var strPrefix = ""

        //: switch (type) {
        switch type {
        //: case .StickerNew:
        case .StickerNew:
            //: strPrefix = "new_sticker"
            strPrefix = (String(kVideoMsg))

                //: break

        //: case .Sticker2D:
        case .Sticker2D:
            //: strPrefix = "2d_sticker"
            strPrefix = (String(kModelText.prefix(5)) + "icker")
                //: break

        //: case .StickerAvatar:
        case .StickerAvatar:
            //: strPrefix = "avatar_sticker"
            strPrefix = (String(k_gameMessage) + String(kShowStr))
                //: break

        //: case .Sticker3D:
        case .Sticker3D:
            //: strPrefix = "3d_sticker"
            strPrefix = (String(kFrameMsg) + k_managerUserPath.replacingOccurrences(of: "current", with: "r"))
                //: break

        //: case .StickerGesture:
        case .StickerGesture:
            //: strPrefix = "hand_gesture_sticker"
            strPrefix = (String(kFrameworkData) + String(k_sizeText) + kMenuData.replacingOccurrences(of: "more", with: "k"))
                //: break

        //: case .StickerFaceDeformation:
        case .StickerFaceDeformation:
            //: strPrefix = "deformation_sticker"
            strPrefix = (String(k_ofText) + String(kViewUrl))
                //: break

        //: case .StickerSegment:
        case .StickerSegment:
            //: strPrefix = "segment_sticker"
            strPrefix = (kIconByText.replacingOccurrences(of: "table", with: "eg") + "t_sticker")
                //: break

        //: case .StickerFaceChange:
        case .StickerFaceChange:
            //: strPrefix = "face_change_sticker"
            strPrefix = (String(k_infoPath))
                //: break

        //: case .StickerParticle:
        case .StickerParticle:
            //: strPrefix = "particle_sticker"
            strPrefix = (k_arrayLabValue.replacingOccurrences(of: "equal", with: "pa") + "icle_s" + String(k_toPopularStr))

        //: default:
        default:
            //: break
            break
        }

        //: let fileManger = FileManager.init()
        let fileManger = FileManager()

        //: let strBundlePath: String = PodspecBundle.bundle.resourcePath?.appending(strPrefix.appending(".bundle")) ?? ""
        let strBundlePath: String = UserPodspecBundle.bundle.resourcePath?.appending(strPrefix.appending((String(k_appText) + k_bagUrl.replacingOccurrences(of: "nor", with: "e")))) ?? ""

        //: var arrFileNames: [String] = try! fileManger.contentsOfDirectory(atPath: strBundlePath)
        var arrFileNames: [String] = try! fileManger.contentsOfDirectory(atPath: strBundlePath)

        //: let arrZipPaths = NSMutableArray.init()
        let arrZipPaths = NSMutableArray()

        //: for strFileName in arrFileNames {
        for strFileName in arrFileNames {
            //: if strFileName.hasPrefix("zip") {
            if strFileName.hasPrefix((k_infoViewId.replacingOccurrences(of: "bind", with: "z"))) {
                //: arrZipPaths.add(NSString.path(withComponents: [strBundlePath, strFileName]))
                arrZipPaths.add(NSString.path(withComponents: [strBundlePath, strFileName]))
            }
        }

        //: let strDocumentsPath = NSSearchPathForDirectoriesInDomains(.desktopDirectory, .userDomainMask, true).last!
        let strDocumentsPath = NSSearchPathForDirectoriesInDomains(.desktopDirectory, .userDomainMask, true).last!

        //: let stickerNewPath = strDocumentsPath.appending("new_sticker")
        let stickerNewPath = strDocumentsPath.appending((String(kVideoMsg)))
        //: let sticker2dPath = strDocumentsPath.appending("2d_sticker")
        let sticker2dPath = strDocumentsPath.appending((String(kModelText.prefix(5)) + "icker"))
        //: let stickerAvatarPath = strDocumentsPath.appending("avatar_sticker")
        let stickerAvatarPath = strDocumentsPath.appending((String(k_gameMessage) + String(kShowStr)))
        //: let sticker3dPath = strDocumentsPath.appending("3d_sticker")
        let sticker3dPath = strDocumentsPath.appending((String(kFrameMsg) + k_managerUserPath.replacingOccurrences(of: "current", with: "r")))
        //: let stickerHandGesturePath = strDocumentsPath.appending("hand_gesture_sticker")
        let stickerHandGesturePath = strDocumentsPath.appending((String(kFrameworkData) + String(k_sizeText) + kMenuData.replacingOccurrences(of: "more", with: "k")))
        //: let stickerSegmentPath = strDocumentsPath.appending("segment_sticker")
        let stickerSegmentPath = strDocumentsPath.appending((kIconByText.replacingOccurrences(of: "table", with: "eg") + "t_sticker"))
        //: let stickerDeformationPath = strDocumentsPath.appending("deformation_sticker")
        let stickerDeformationPath = strDocumentsPath.appending((String(k_ofText) + String(kViewUrl)))
        //: let stickerFaceChangePath = strDocumentsPath.appending("face_change_sticker")
        let stickerFaceChangePath = strDocumentsPath.appending((String(k_infoPath)))
        //: let stickerParticlePath = strDocumentsPath.appending("particle_sticker")
        let stickerParticlePath = strDocumentsPath.appending((k_arrayLabValue.replacingOccurrences(of: "equal", with: "pa") + "icle_s" + String(k_toPopularStr)))

        //: if !FileManager.default.fileExists(atPath: stickerNewPath) {
        if !FileManager.default.fileExists(atPath: stickerNewPath) {
            //: try? fileManger.createDirectory(atPath: stickerNewPath, withIntermediateDirectories: true, attributes: nil)
            try? fileManger.createDirectory(atPath: stickerNewPath, withIntermediateDirectories: true, attributes: nil)
        }
        //: if !FileManager.default.fileExists(atPath: sticker2dPath) {
        if !FileManager.default.fileExists(atPath: sticker2dPath) {
            //: try? fileManger.createDirectory(atPath: sticker2dPath, withIntermediateDirectories: true, attributes: nil)
            try? fileManger.createDirectory(atPath: sticker2dPath, withIntermediateDirectories: true, attributes: nil)
        }
        //: if !FileManager.default.fileExists(atPath: stickerAvatarPath) {
        if !FileManager.default.fileExists(atPath: stickerAvatarPath) {
            //: try? fileManger.createDirectory(atPath: stickerAvatarPath, withIntermediateDirectories: true, attributes: nil)
            try? fileManger.createDirectory(atPath: stickerAvatarPath, withIntermediateDirectories: true, attributes: nil)
        }
        //: if !FileManager.default.fileExists(atPath: sticker3dPath) {
        if !FileManager.default.fileExists(atPath: sticker3dPath) {
            //: try? fileManger.createDirectory(atPath: sticker3dPath, withIntermediateDirectories: true, attributes: nil)
            try? fileManger.createDirectory(atPath: sticker3dPath, withIntermediateDirectories: true, attributes: nil)
        }
        //: if !FileManager.default.fileExists(atPath: stickerHandGesturePath) {
        if !FileManager.default.fileExists(atPath: stickerHandGesturePath) {
            //: try? fileManger.createDirectory(atPath: stickerHandGesturePath, withIntermediateDirectories: true, attributes: nil)
            try? fileManger.createDirectory(atPath: stickerHandGesturePath, withIntermediateDirectories: true, attributes: nil)
        }
        //: if !FileManager.default.fileExists(atPath: stickerSegmentPath) {
        if !FileManager.default.fileExists(atPath: stickerSegmentPath) {
            //: try? fileManger.createDirectory(atPath: stickerSegmentPath, withIntermediateDirectories: true, attributes: nil)
            try? fileManger.createDirectory(atPath: stickerSegmentPath, withIntermediateDirectories: true, attributes: nil)
        }
        //: if !FileManager.default.fileExists(atPath: stickerDeformationPath) {
        if !FileManager.default.fileExists(atPath: stickerDeformationPath) {
            //: try? fileManger.createDirectory(atPath: stickerDeformationPath, withIntermediateDirectories: true, attributes: nil)
            try? fileManger.createDirectory(atPath: stickerDeformationPath, withIntermediateDirectories: true, attributes: nil)
        }
        //: if !FileManager.default.fileExists(atPath: stickerFaceChangePath) {
        if !FileManager.default.fileExists(atPath: stickerFaceChangePath) {
            //: try? fileManger.createDirectory(atPath: stickerFaceChangePath, withIntermediateDirectories: true, attributes: nil)
            try? fileManger.createDirectory(atPath: stickerFaceChangePath, withIntermediateDirectories: true, attributes: nil)
        }
        //: if !FileManager.default.fileExists(atPath: stickerParticlePath) {
        if !FileManager.default.fileExists(atPath: stickerParticlePath) {
            //: try? fileManger.createDirectory(atPath: stickerParticlePath, withIntermediateDirectories: true, attributes: nil)
            try? fileManger.createDirectory(atPath: stickerParticlePath, withIntermediateDirectories: true, attributes: nil)
        }

        //: let stickerPath = strDocumentsPath.appending(strPrefix)
        let stickerPath = strDocumentsPath.appending(strPrefix)

        //: do {
        do {
            //: arrFileNames = try fileManger.contentsOfDirectory(atPath: stickerPath)
            arrFileNames = try fileManger.contentsOfDirectory(atPath: stickerPath)
            //: }catch {
        } catch {}

        //: for strFileName in arrFileNames {
        for strFileName in arrFileNames {
            //: if strFileName.hasPrefix("zip") {
            if strFileName.hasPrefix((k_infoViewId.replacingOccurrences(of: "bind", with: "z"))) {
                //: arrZipPaths.add(NSString.path(withComponents: [stickerPath, strFileName]))
                arrZipPaths.add(NSString.path(withComponents: [stickerPath, strFileName]))
            }
        }

        //: return arrZipPaths.copy() as! Array<Any>
        return arrZipPaths.copy() as! [Any]
    }
}
