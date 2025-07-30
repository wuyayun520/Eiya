
//: Declare String Begin

/*: "unarchive failure in init" :*/
fileprivate let k_cloudScaleGiftMsg:String = "upicr"
fileprivate let k_modelMessage:String = "F"
fileprivate let kWithCenterUrl:[Character] = ["a","i","l","u","r","e"," ","i","n"," ","i","n","i","t"]

/*: "App" :*/
fileprivate let kAllowUrl:[Character] = ["A","p","p"]

/*: "privateChatEffect%@" :*/
fileprivate let kToUserPath:String = "pmakeiva"
fileprivate let kEffectPath:String = "self self center maleatEf"
fileprivate let kMoreUrl:[Character] = ["f","e","c","t","%","@"]

/*: "extra" :*/
fileprivate let kNorData:String = "counttra"

/*: "user" :*/
fileprivate let k_stateKey:String = "useview"

/*: "%@" :*/
fileprivate let k_cellName:String = "%@"

/*: "id" :*/
fileprivate let kSizeTitle:String = "idata"

/*: "gift" :*/
fileprivate let k_inputStr:[Character] = ["g","i","f","t"]

/*: "fromUid" :*/
fileprivate let kModeTitle:String = "status at app self varfromUid"

/*: "fromNickname" :*/
fileprivate let k_sectionSinceData:[Character] = ["f","r","o","m","N","i","c","k","n","a"]
fileprivate let k_fileValue:String = "mwhite"

/*: "name" :*/
fileprivate let kColorToData:String = "namequal"

/*: "fromHeadPic" :*/
fileprivate let k_relationId:String = "mainom"
fileprivate let kImageMessage:String = "string equal pathPic"

/*: "icon" :*/
fileprivate let kDonToContent:[Character] = ["i","c","o","n"]

/*: "pid" :*/
fileprivate let k_colorFormat:[Character] = ["p","i","d"]

/*: "num" :*/
fileprivate let k_giftText:[Character] = ["n","u","m"]

/*: "pname" :*/
fileprivate let kWithValue:String = "pnlivee"

/*: "giftPic" :*/
fileprivate let kLabMessage:[Character] = ["g","i","f","t","P","i","c"]

/*: "comboNum" :*/
fileprivate let k_mText:[Character] = ["c","o","m","b","o","N","u","m"]

/*: "iosEffect" :*/
fileprivate let k_iconData:String = "delay make equal used makeiosE"
fileprivate let kSearchedId:[Character] = ["f","f","e","c","t"]

/*: "showType" :*/
fileprivate let kBehindKey:String = "create makeshowType"

/*: "animationTimes" :*/
fileprivate let kRunningFormat:[Character] = ["a","n","i","m","a","t","i","o","n","T","i","m","e","s"]

/*: "iosVapEffect" :*/
fileprivate let kTouchPathId:String = "total across indexiosVapEff"
fileprivate let k_shadowTitle:[Character] = ["e","c","t"]

/*: "msgInfo" :*/
fileprivate let k_headUrl:String = "click returnmsgInfo"

/*: "mfBean" :*/
fileprivate let k_willUrl:[UInt8] = [0xad,0xa6,0x82,0xa5,0xa1,0xae]

private func sumCur(make num: UInt8) -> UInt8 {
    return num ^ 192
}

/*: "toUser" :*/
fileprivate let kMenuValue:[Character] = ["t","o","U","s","e","r"]

/*: "uid" :*/
fileprivate let kShowFormat:[Character] = ["u","i","d"]

/*: "giftNum" :*/
fileprivate let k_textLabelMsg:[Character] = ["g","i"]
fileprivate let k_removeTitle:[Character] = ["f","t","N","u","m"]

/*: "nickname" :*/
fileprivate let kAssistantDataUrl:String = "NICKNAM"
fileprivate let kInfoData:[Character] = ["e"]

/*: "Send to %@" :*/
fileprivate let kCameraUrl:[Character] = ["S","e","n","d"," ","t","o"," ","%","@"]

/*: "Send to All Numbers" :*/
fileprivate let k_barMessage:String = "type mode view view insertSend"
fileprivate let kTopMessage:String = " to Aapp name below make key"
fileprivate let k_intimateName:String = "mblabelrs"

/*: "headPic" :*/
fileprivate let k_contentMsg:[Character] = ["h","e","a","d","P","i","c"]

/*: "LiveGift_%@" :*/
fileprivate let kObjectName:[Character] = ["L","i","v","e","G","i"]
fileprivate let k_uniformName:String = "ft_%@custom label super"

/*: "toUid" :*/
fileprivate let kUserKey:[Character] = ["t","o","U","i","d"]

/*: "PartyGift_%@" :*/
fileprivate let kToPlayerMessage:[Character] = ["P","a","r","t","y","G","i","f","t","_","%","@"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewMakeReactiveCompatible.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/3/6.
//

/// 私聊 动效管理  会话id->礼物动效数组  本地存起来

//: import UIKit
import UIKit

//: @objc class AbTalkingPrivateChatAnimatTool: NSObject {
@objc class ViewMakeReactiveCompatible: NSObject {
    //: var cachDict = NSMutableDictionary(capacity: 0)
    var cachDict = NSMutableDictionary(capacity: 0)

    //: @objc static let shared = AbTalkingPrivateChatAnimatTool()
    @objc static let shared = ViewMakeReactiveCompatible()

    //: override private init() {
    override private init() {
        //: super.init()
        super.init()
        //: readAnimatData()
        statusStart()
    }

    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
}

//: @objc extension AbTalkingPrivateChatAnimatTool {
@objc extension ViewMakeReactiveCompatible {
    /// 初始化,读取缓存归档的文件
    //: func readAnimatData() {
    func statusStart() {
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: do {
            do {
                //: let data = try Data(contentsOf: URL(fileURLWithPath: getPrivateChatAnimtoFile()))
                let data = try Data(contentsOf: URL(fileURLWithPath: registerFrom()))
                //: if let dict: NSDictionary = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? NSDictionary {
                if let dict: NSDictionary = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? NSDictionary {
                    //: self.cachDict = NSMutableDictionary(dictionary: dict)
                    self.cachDict = NSMutableDictionary(dictionary: dict)
                }
                //: } catch {
            } catch {
                //: printLog(message: "unarchive failure in init")
                printLog(message: (k_cloudScaleGiftMsg.replacingOccurrences(of: "pic", with: "na") + "chive " + k_modelMessage.lowercased() + String(kWithCenterUrl)))
            }
            //: } else {
        } else {
            //: let dict: NSDictionary? = NSKeyedUnarchiver.unarchiveObject(withFile: self.getPrivateChatAnimtoFile()) as? NSDictionary
            let dict: NSDictionary? = NSKeyedUnarchiver.unarchiveObject(withFile: self.registerFrom()) as? NSDictionary
            //: if dict != nil {
            if dict != nil {
                //: self.cachDict = NSMutableDictionary(dictionary: dict!)
                self.cachDict = NSMutableDictionary(dictionary: dict!)
            }
        }
    }

    /// 存储缓存
    //: func saveAnimatDataToFile() {
    func occurView() {
        //: if #available(iOS 11.0, *) {
        if #available(iOS 11.0, *) {
            //: do {
            do {
                //: let data = try NSKeyedArchiver.archivedData(withRootObject: self.cachDict, requiringSecureCoding: true)
                let data = try NSKeyedArchiver.archivedData(withRootObject: self.cachDict, requiringSecureCoding: true)
                //: try data.write(to: URL(fileURLWithPath: getPrivateChatAnimtoFile()))
                try data.write(to: URL(fileURLWithPath: registerFrom()))
                //: } catch {
            } catch {
                //: printLog(message: error)
                printLog(message: error)
            }

            //: } else {
        } else {
            //: NSKeyedArchiver.archiveRootObject(self.cachDict, toFile: self.getPrivateChatAnimtoFile())
            NSKeyedArchiver.archiveRootObject(self.cachDict, toFile: self.registerFrom())
        }
    }

    //: func getPrivateChatAnimtoFile() -> String {
    func registerFrom() -> String {
        //: let documentFilePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        let documentFilePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first ?? ""
        //: let appPath = (documentFilePath as NSString).appendingPathComponent("App")
        let appPath = (documentFilePath as NSString).appendingPathComponent((String(kAllowUrl)))

        //: let fm = FileManager.default
        let fm = FileManager.default
        //: if fm.fileExists(atPath: appPath) == false {
        if fm.fileExists(atPath: appPath) == false {
            //: try? FileManager.default.createDirectory(atPath: appPath, withIntermediateDirectories: true)
            try? FileManager.default.createDirectory(atPath: appPath, withIntermediateDirectories: true)
        }

        //: let name = String(format: "privateChatEffect%@", DistanceAppManager.share.loginUserMode.userID)
        let name = String(format: (kToUserPath.replacingOccurrences(of: "make", with: "r") + "teCh" + String(kEffectPath.suffix(4)) + String(kMoreUrl)), DistanceAppManager.share.loginUserMode.userID)
        //: let filePath = (appPath as NSString).appendingPathComponent(name)
        let filePath = (appPath as NSString).appendingPathComponent(name)
        //: return filePath
        return filePath
    }

    /// 根据会话获取需要播放的礼物动效数组,同时会删除
    //: func getConverCacheGiftAnimat(tagetId: String) -> NSMutableArray {
    func doingLine(tagetId: String) -> NSMutableArray {
        //: let data: NSMutableArray? = self.cachDict.object(forKey: tagetId) as? NSMutableArray
        let data: NSMutableArray? = self.cachDict.object(forKey: tagetId) as? NSMutableArray
        //: let modelArray = NSMutableArray(capacity: 0)
        let modelArray = NSMutableArray(capacity: 0)
        //: if data != nil {
        if data != nil {
            //: for dict in data! {
            for dict in data! {
                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dict as? [String: Any], designatedPath: nil) {
                if let giftModel = JSONDeserializer<TitleManagerMeasurable>.deserializeFrom(dict: dict as? [String: Any], designatedPath: nil) {
                    //: modelArray.add(giftModel)
                    modelArray.add(giftModel)
                }
            }
            //: self.cachDict.removeObject(forKey: tagetId)
            self.cachDict.removeObject(forKey: tagetId)
        }
        //: self.saveAnimatDataToFile()
        self.occurView()
        //: return modelArray
        return modelArray
    }

    /// 删除会话,同步删除缓存
    //: func removeConversionAnimat(targetID: String) {
    func nameMagnitude(targetID: String) {
        //: if !targetID.isEmptyString, self.cachDict.object(forKey: targetID) != nil {
        if !targetID.isEmptyString, self.cachDict.object(forKey: targetID) != nil {
            //: self.cachDict.removeObject(forKey: targetID)
            self.cachDict.removeObject(forKey: targetID)
            //: self.saveAnimatDataToFile()
            self.occurView()
        }
    }

    /// 收到礼物消息处理
    //: func disposeReceiveGiftMsg(giftMessageDic: NSDictionary) {
    func mottleUponPhoneMessage(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(kNorData.replacingOccurrences(of: "count", with: "ex"))] as? [String: Any]
            //: let user: NSDictionary? = giftMessageDic["user"] as? NSDictionary
            let user: NSDictionary? = giftMessageDic[(k_stateKey.replacingOccurrences(of: "view", with: "r"))] as? NSDictionary
            //: let targetId = String(format: "%@", user?["id"] as! CVarArg)
            let targetId = String(format: "%@", user?["id"] as! CVarArg)

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((String(k_inputStr))) == false {
                //: return
                return
            }
            //: if let roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if let roomGiftModel = JSONDeserializer<WithCloseTransformable>.deserializeFrom(dict: extraDict![(String(k_inputStr))] as? [String: Any], designatedPath: nil) {
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                // 帝王礼物特效
                //: if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                    // 开头动效
                    //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                    giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                    //: let tempArr = NSMutableArray()
                    let tempArr = NSMutableArray()
                    //: let tempDicArr = NSMutableArray()
                    let tempDicArr = NSMutableArray()

                    //: for giftStr in giftArr! {
                    for giftStr in giftArr! {
                        //: let dictM = NSMutableDictionary(capacity: 0)
                        let dictM = NSMutableDictionary(capacity: 0)
                        //: dictM["fromUid"] = targetId
                        dictM[(String(kModeTitle.suffix(7)))] = targetId
                        //: dictM["fromNickname"] = user?["name"]
                        dictM[(String(k_sectionSinceData) + k_fileValue.replacingOccurrences(of: "white", with: "e"))] = user?[(kColorToData.replacingOccurrences(of: "equal", with: "e"))]
                        //: dictM["fromHeadPic"] = user?["icon"]
                        dictM[(k_relationId.replacingOccurrences(of: "main", with: "fr") + "Head" + String(kImageMessage.suffix(3)))] = user?[(String(kDonToContent))]
                        //: dictM["pid"] = "0" // 缓存兼容
                        dictM[(String(k_colorFormat))] = "0" // 缓存兼容
                        //: dictM["num"] = (roomGiftModel.giftNum)
                        dictM[(String(k_giftText))] = (roomGiftModel.giftNum)
                        //: dictM["pname"] = roomGiftModel.name
                        dictM[(kWithValue.replacingOccurrences(of: "live", with: "am"))] = roomGiftModel.name
                        //: dictM["giftPic"] = roomGiftModel.imgPreview
                        dictM[(String(kLabMessage))] = roomGiftModel.imgPreview
                        //: dictM["comboNum"] = (roomGiftModel.comboNum)
                        dictM[(String(k_mText))] = (roomGiftModel.comboNum)
                        //: dictM["iosEffect"] = giftStr
                        dictM[(String(k_iconData.suffix(4)) + String(kSearchedId))] = giftStr
                        //: dictM["showType"] = (roomGiftModel.showType)
                        dictM[(String(kBehindKey.suffix(8)))] = (roomGiftModel.showType)
                        //: dictM["animationTimes"] = "1"
                        dictM[(String(kRunningFormat))] = "1"

                        //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        if let giftModel = JSONDeserializer<TitleManagerMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                            //: tempArr.add(giftModel)
                            tempArr.add(giftModel)
                            //: tempDicArr.add(dictM)
                            tempDicArr.add(dictM)
                        }
                    }
                    // 循环播放次数
                    //: var animationTimes = 1
                    var animationTimes = 1
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: animationTimes = roomGiftModel.animationTimes
                        animationTimes = roomGiftModel.animationTimes
                        //: } else {
                    } else {
                        //: animationTimes = roomGiftModel.giftNum
                        animationTimes = roomGiftModel.giftNum
                    }
                    //: let tempGiftArr = tempArr
                    let tempGiftArr = tempArr
                    //: for _ in 0..<animationTimes {
                    for _ in 0 ..< animationTimes {
                        //: tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        //: tempDictM.addObjects(from: tempDicArr as! [Any])
                        tempDictM.addObjects(from: tempDicArr as! [Any])
                    }
                    //: } else {
                } else {
                    //: let dictM = NSMutableDictionary(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)

                    //: dictM["fromUid"] = targetId
                    dictM[(String(kModeTitle.suffix(7)))] = targetId
                    //: dictM["fromNickname"] = user?["name"]
                    dictM[(String(k_sectionSinceData) + k_fileValue.replacingOccurrences(of: "white", with: "e"))] = user?[(kColorToData.replacingOccurrences(of: "equal", with: "e"))]
                    //: dictM["fromHeadPic"] = user?["icon"]
                    dictM[(k_relationId.replacingOccurrences(of: "main", with: "fr") + "Head" + String(kImageMessage.suffix(3)))] = user?[(String(kDonToContent))]

                    //: dictM["pid"] = roomGiftModel.giftId
                    dictM[(String(k_colorFormat))] = roomGiftModel.giftId
                    //: dictM["num"] = (roomGiftModel.giftNum)
                    dictM[(String(k_giftText))] = (roomGiftModel.giftNum)
                    //: dictM["pname"] = roomGiftModel.name
                    dictM[(kWithValue.replacingOccurrences(of: "live", with: "am"))] = roomGiftModel.name
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(kLabMessage))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(String(k_mText))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = effect
                    dictM[(String(k_iconData.suffix(4)) + String(kSearchedId))] = effect
                    //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                    dictM[(String(kTouchPathId.suffix(9)) + String(k_shadowTitle))] = roomGiftModel.iosVapEffect

                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(kBehindKey.suffix(8)))] = (roomGiftModel.showType)
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                        dictM[(String(kRunningFormat))] = (roomGiftModel.animationTimes)
                        //: } else {
                    } else {
                        //: dictM["animationTimes"] = dictM["num"]
                        dictM[(String(kRunningFormat))] = dictM[(String(k_giftText))]
                    }

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    if let giftModel = JSONDeserializer<TitleManagerMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: tempGiftModel.add(giftModel)
                        tempGiftModel.add(giftModel)
                        //: tempDictM.add(dictM)
                        tempDictM.add(dictM)
                    }
                }

                //: guard let currentVC = self.currentViewController() else { return }
                guard let currentVC = self.selectStart() else { return }

                // 直播收到礼物，积分更改
                //: if TalkingLiveManager.shared().isLive {
                if ValueThen.kindShared().isLive {
                    //: let msgInfo: Dictionary? = extraDict?["msgInfo"] as? [String: Any]
                    let msgInfo: Dictionary? = extraDict?[(String(k_headUrl.suffix(7)))] as? [String: Any]
                    //: let mfBean = msgInfo?["mfBean"] as? Double
                    let mfBean = msgInfo?[String(bytes: k_willUrl.map{sumCur(make: $0)}, encoding: .utf8)!] as? Double
                    //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                    NotificationCenter.default.post(name: app_userText, object: nil, userInfo: [String(bytes: k_willUrl.map{sumCur(make: $0)}, encoding: .utf8)!: mfBean ?? 0.0])
                }
                // 当前处于该对话页 添加到当前动画队列里
                //: if let videoVC = currentVC as? TalkingVideoChatViewController {
                if let videoVC = currentVC as? KeyDataViewController {
                    // 音视频通话时，只展示通话人的礼物
                    //: if DistanceAppManager.share.loginUserMode.userID != targetId,
                    if DistanceAppManager.share.loginUserMode.userID != targetId,
                       //: videoVC.chatModel?.pairUid == targetId
                       videoVC.chatModel?.pairUid == targetId
                    {
                        //: videoVC.receiveGiftPlay(giftArr: tempGiftModel as! [Any])
                        videoVC.objectBy(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    //: } else if let voiceVC = currentVC as? TalkingVoiceChatViewController {
                } else if let voiceVC = currentVC as? MakeViewController {
                    // 音视频通话时，只展示通话人的礼物
                    //: if DistanceAppManager.share.loginUserMode.userID != targetId,
                    if DistanceAppManager.share.loginUserMode.userID != targetId,
                       //: voiceVC.chatModel?.pairUid == targetId
                       voiceVC.chatModel?.pairUid == targetId
                    {
                        //: voiceVC.receiveGiftPlay(giftArr: tempGiftModel as! [Any])
                        voiceVC.derive(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    //: } else if let chatVC = currentVC as? TalkingPrivateChatController {
                } else if let chatVC = currentVC as? DistantViewController {
                    //: if chatVC.getChatVCTargetId() == targetId {
                    if chatVC.month() == targetId {
                        //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                        chatVC.history(giftArr: tempGiftModel as! [Any])
                        //: return
                        return
                    }

                    /// 直播中/语聊房 半屏私聊收到个人私聊礼物
                    //: } else if currentVC.isKind(of: TalkingLiveBeautifyViewController.self) ||
                } else if currentVC.isKind(of: ControllerViewDelegate.self) ||
                    //: currentVC.isKind(of: TalkingVoiceRoomViewController.self) {
                    currentVC.isKind(of: PanoramicViewController.self)
                {
                    //: for vc in currentVC.children {
                    for vc in currentVC.children {
                        //: if vc.isKind(of: TalkingPrivateChatController.self) {
                        if vc.isKind(of: DistantViewController.self) {
                            //: let chatVC = vc as! TalkingPrivateChatController
                            let chatVC = vc as! DistantViewController
                            //: if chatVC.getChatVCTargetId() == targetId {
                            if chatVC.month() == targetId {
                                //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                                chatVC.history(giftArr: tempGiftModel as! [Any])
                                //: return
                                return
                            }
                        }
                    }
                }

                // 不是该会话 或者 不处于会话页  即使通话也是处于最小化, 则若是礼物动效 存到本地 供下次打开播放
                //: var giftArray: NSMutableArray? = self.cachDict[targetId] as? NSMutableArray
                var giftArray: NSMutableArray? = self.cachDict[targetId] as? NSMutableArray
                //: if giftArray == nil {
                if giftArray == nil {
                    //: giftArray = NSMutableArray(capacity: 0)
                    giftArray = NSMutableArray(capacity: 0)
                }
                //: giftArray?.addObjects(from: tempDictM as! [Any])
                giftArray?.addObjects(from: tempDictM as! [Any])
                //: self.cachDict[targetId] = giftArray
                self.cachDict[targetId] = giftArray
                //: self.saveAnimatDataToFile()
                self.occurView()
            }
        }
    }

    /// 聊天室收到礼物消息处理
    //: func chatRoomDisposeReceiveGiftMsg(giftMessageDic: NSDictionary) {
    func accentuation(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(kNorData.replacingOccurrences(of: "count", with: "ex"))] as? [String: Any]
            //: let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            let user: NSDictionary? = extraDict?[(k_stateKey.replacingOccurrences(of: "view", with: "r"))] as? NSDictionary
            //: let touser: NSDictionary? = extraDict?["toUser"] as? NSDictionary
            let touser: NSDictionary? = extraDict?[(String(kMenuValue))] as? NSDictionary
            //: let targetId = user?["uid"] as? String
            let targetId = user?[(String(kShowFormat))] as? String

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((String(k_inputStr))) == false {
                //: return
                return
            }
            //: if var roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if var roomGiftModel = JSONDeserializer<WithCloseTransformable>.deserializeFrom(dict: extraDict![(String(k_inputStr))] as? [String: Any], designatedPath: nil) {
                //: let dic = extraDict?["gift"] as? [String: Any]
                let dic = extraDict?[(String(k_inputStr))] as? [String: Any]
                //: roomGiftModel.giftNum = dic?["giftNum"] as? Int ?? 0
                roomGiftModel.giftNum = dic?[(String(k_textLabelMsg) + String(k_removeTitle))] as? Int ?? 0
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                // 帝王礼物特效
                //: if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                if roomGiftModel.iosEmperorEffect?.count ?? 0 > 0 {
                    // 开头动效
                    //: let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    let giftArr: NSMutableArray? = roomGiftModel.iosEmperorEffect as? NSMutableArray
                    //: giftArr?.insert(roomGiftModel.iosEffect, at: 0)
                    giftArr?.insert(roomGiftModel.iosEffect, at: 0)

                    //: let tempArr = NSMutableArray()
                    let tempArr = NSMutableArray()
                    //: let tempDicArr = NSMutableArray()
                    let tempDicArr = NSMutableArray()

                    //: for giftStr in giftArr! {
                    for giftStr in giftArr! {
                        //: let dictM = NSMutableDictionary(capacity: 0)
                        let dictM = NSMutableDictionary(capacity: 0)
                        //: dictM["fromUid"] = targetId
                        dictM[(String(kModeTitle.suffix(7)))] = targetId
                        //: dictM["fromNickname"] = user?["name"]
                        dictM[(String(k_sectionSinceData) + k_fileValue.replacingOccurrences(of: "white", with: "e"))] = user?[(kColorToData.replacingOccurrences(of: "equal", with: "e"))]
                        //: dictM["fromHeadPic"] = user?["icon"]
                        dictM[(k_relationId.replacingOccurrences(of: "main", with: "fr") + "Head" + String(kImageMessage.suffix(3)))] = user?[(String(kDonToContent))]
                        //: dictM["pid"] = "0" // 缓存兼容
                        dictM[(String(k_colorFormat))] = "0" // 缓存兼容
                        //: dictM["num"] = (roomGiftModel.giftNum)
                        dictM[(String(k_giftText))] = (roomGiftModel.giftNum)
                        //: let str = touser?["nickname"] as? String ?? ""
                        let str = touser?[(kAssistantDataUrl.lowercased() + String(kInfoData))] as? String ?? ""
                        //: dictM["pname"] = "Send to %@".localizedArguments(str)
                        dictM[(kWithValue.replacingOccurrences(of: "live", with: "am"))] = (String(kCameraUrl)).edgeDelay(str)
                        //: if touser == nil {
                        if touser == nil {
                            //: dictM["pname"] = "Send to All Numbers".localized
                            dictM[(kWithValue.replacingOccurrences(of: "live", with: "am"))] = (String(k_barMessage.suffix(4)) + String(kTopMessage.prefix(5)) + "ll Nu" + k_intimateName.replacingOccurrences(of: "label", with: "e")).localized
                        }
                        //: dictM["giftPic"] = roomGiftModel.imgPreview
                        dictM[(String(kLabMessage))] = roomGiftModel.imgPreview
                        //: dictM["comboNum"] = (roomGiftModel.comboNum)
                        dictM[(String(k_mText))] = (roomGiftModel.comboNum)
                        //: dictM["iosEffect"] = giftStr
                        dictM[(String(k_iconData.suffix(4)) + String(kSearchedId))] = giftStr
                        //: dictM["showType"] = (roomGiftModel.showType)
                        dictM[(String(kBehindKey.suffix(8)))] = (roomGiftModel.showType)
                        //: dictM["animationTimes"] = "1"
                        dictM[(String(kRunningFormat))] = "1"

                        //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        if let giftModel = JSONDeserializer<TitleManagerMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                            //: tempArr.add(giftModel)
                            tempArr.add(giftModel)
                            //: tempDicArr.add(dictM)
                            tempDicArr.add(dictM)
                        }
                    }
                    // 循环播放次数
                    //: var animationTimes = 1
                    var animationTimes = 1
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: animationTimes = roomGiftModel.animationTimes
                        animationTimes = roomGiftModel.animationTimes
                        //: } else {
                    } else {
                        //: animationTimes = roomGiftModel.giftNum
                        animationTimes = roomGiftModel.giftNum
                    }
                    //: let tempGiftArr = tempArr
                    let tempGiftArr = tempArr
                    //: for _ in 0..<animationTimes {
                    for _ in 0 ..< animationTimes {
                        //: tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        tempGiftModel.addObjects(from: tempGiftArr as! [Any])
                        //: tempDictM.addObjects(from: tempDicArr as! [Any])
                        tempDictM.addObjects(from: tempDicArr as! [Any])
                    }
                    //: } else {
                } else {
                    //: let dictM = NSMutableDictionary(capacity: 0)
                    let dictM = NSMutableDictionary(capacity: 0)

                    //: dictM["fromUid"] = targetId
                    dictM[(String(kModeTitle.suffix(7)))] = targetId
                    //: dictM["fromNickname"] = user?["nickname"]
                    dictM[(String(k_sectionSinceData) + k_fileValue.replacingOccurrences(of: "white", with: "e"))] = user?[(kAssistantDataUrl.lowercased() + String(kInfoData))]
                    //: dictM["fromHeadPic"] = user?["headPic"]
                    dictM[(k_relationId.replacingOccurrences(of: "main", with: "fr") + "Head" + String(kImageMessage.suffix(3)))] = user?[(String(k_contentMsg))]

                    //: dictM["pid"] = roomGiftModel.giftId
                    dictM[(String(k_colorFormat))] = roomGiftModel.giftId
                    //: dictM["num"] = (roomGiftModel.giftNum)
                    dictM[(String(k_giftText))] = (roomGiftModel.giftNum)
                    // 显示送给谁
                    //: let str = touser?["nickname"] as? String ?? ""
                    let str = touser?[(kAssistantDataUrl.lowercased() + String(kInfoData))] as? String ?? ""
                    //: dictM["pname"] = "Send to %@".localizedArguments(str)
                    dictM[(kWithValue.replacingOccurrences(of: "live", with: "am"))] = (String(kCameraUrl)).edgeDelay(str)
                    //: if touser == nil {
                    if touser == nil {
                        //: dictM["pname"] = "Send to All Numbers".localized
                        dictM[(kWithValue.replacingOccurrences(of: "live", with: "am"))] = (String(k_barMessage.suffix(4)) + String(kTopMessage.prefix(5)) + "ll Nu" + k_intimateName.replacingOccurrences(of: "label", with: "e")).localized
                    }
                    //: dictM["giftPic"] = roomGiftModel.imgPreview
                    dictM[(String(kLabMessage))] = roomGiftModel.imgPreview
                    //: dictM["comboNum"] = (roomGiftModel.comboNum)
                    dictM[(String(k_mText))] = (roomGiftModel.comboNum)
                    //: dictM["iosEffect"] = effect
                    dictM[(String(k_iconData.suffix(4)) + String(kSearchedId))] = effect
                    //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                    dictM[(String(kTouchPathId.suffix(9)) + String(k_shadowTitle))] = roomGiftModel.iosVapEffect

                    //: dictM["showType"] = (roomGiftModel.showType)
                    dictM[(String(kBehindKey.suffix(8)))] = (roomGiftModel.showType)
                    //: if roomGiftModel.animationTimes > 0 {
                    if roomGiftModel.animationTimes > 0 {
                        //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                        dictM[(String(kRunningFormat))] = (roomGiftModel.animationTimes)
                        //: } else {
                    } else {
                        //: dictM["animationTimes"] = dictM["num"]
                        dictM[(String(kRunningFormat))] = dictM[(String(k_giftText))]
                    }

                    //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    if let giftModel = JSONDeserializer<TitleManagerMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                        //: tempGiftModel.add(giftModel)
                        tempGiftModel.add(giftModel)
                        //: tempDictM.add(dictM)
                        tempDictM.add(dictM)
                    }
                }

                // 直播在聊天室收到礼物，积分更改
                //: let touid = touser?["uid"] as? Int
                let touid = touser?[(String(kShowFormat))] as? Int
                //: if TalkingLiveManager.shared().isLive, DistanceAppManager.share.loginUserMode.userID == "\(touid ?? 0)" || touser == nil {
                if ValueThen.kindShared().isLive, DistanceAppManager.share.loginUserMode.userID == "\(touid ?? 0)" || touser == nil {
                    //: let msgInfo: Dictionary? = extraDict?["msgInfo"] as? [String: Any]
                    let msgInfo: Dictionary? = extraDict?[(String(k_headUrl.suffix(7)))] as? [String: Any]
                    //: let mfBean = msgInfo?["mfBean"] as? Double
                    let mfBean = msgInfo?[String(bytes: k_willUrl.map{sumCur(make: $0)}, encoding: .utf8)!] as? Double
                    //: NotificationCenter.default.post(name: LIVE_USER_POINT_CHANGE, object: nil, userInfo: ["mfBean": mfBean ?? 0.0])
                    NotificationCenter.default.post(name: app_userText, object: nil, userInfo: [String(bytes: k_willUrl.map{sumCur(make: $0)}, encoding: .utf8)!: mfBean ?? 0.0])
                }

                // 当前处于该对话页 添加到当前动画队列里
                //: if AddReactiveCompatible.share.func__getCurrentActivityVC()!.isKind(of: TalkingGroupChatController.self) {
                if AddReactiveCompatible.share.pageBy()!.isKind(of: PublishReactiveCompatible.self) {
                    //: let chatVC = AddReactiveCompatible.share.func__getCurrentActivityVC() as! TalkingGroupChatController
                    let chatVC = AddReactiveCompatible.share.pageBy() as! PublishReactiveCompatible
                    //: chatVC.addGiftEffectModelArr(giftArr: tempGiftModel as! [Any])
                    chatVC.controlArr(giftArr: tempGiftModel as! [Any])
                }
            }
        }
    }

    /// 收到 直播/语音房 礼物消息处理
    //: func disposeReceiveLiveRoomGiftMsg(giftMessageDic: NSDictionary) {
    func presentDay(giftMessageDic: NSDictionary) {
        //: DispatchQueue.main.async {
        DispatchQueue.main.async {
            //: let extraDict: Dictionary? = giftMessageDic["extra"] as? [String: Any]
            let extraDict: Dictionary? = giftMessageDic[(kNorData.replacingOccurrences(of: "count", with: "ex"))] as? [String: Any]
            //: let user: NSDictionary? = extraDict?["user"] as? NSDictionary
            let user: NSDictionary? = extraDict?[(k_stateKey.replacingOccurrences(of: "view", with: "r"))] as? NSDictionary
            //: let targetId = String(format: "%@", user?["uid"] as! CVarArg)
            let targetId = String(format: "%@", user?[(String(kShowFormat))] as! CVarArg)
            //: var toUid = ""
            var toUid = ""
            //: if TalkingLiveManager.shared().isLive {
            if ValueThen.kindShared().isLive {
                //: toUid = String(format: "LiveGift_%@", extraDict?["toUid"] as? CVarArg ?? "")
                toUid = String(format: (String(kObjectName) + String(k_uniformName.prefix(5))), extraDict?[(String(kUserKey))] as? CVarArg ?? "")
                //: } else if TalkingVoiceRoomManager.shared().isParty {
            } else if CoverManager.byRest().isParty {
                //: toUid = String(format: "PartyGift_%@", extraDict?["toUid"] as? CVarArg ?? "")
                toUid = String(format: (String(kToPlayerMessage)), extraDict?[(String(kUserKey))] as? CVarArg ?? "")
            }
            //: let gift = extraDict?["gift"] as? NSDictionary
            let gift = extraDict?[(String(k_inputStr))] as? NSDictionary

            //: if extraDict == nil || extraDict?.keys.contains("gift") == false {
            if extraDict == nil || extraDict?.keys.contains((String(k_inputStr))) == false {
                //: return
                return
            }
            //: if let roomGiftModel = JSONDeserializer<TalkingGiftChatMsgAnimatModel>.deserializeFrom(dict: extraDict!["gift"] as? [String: Any], designatedPath: nil) {
            if let roomGiftModel = JSONDeserializer<WithCloseTransformable>.deserializeFrom(dict: extraDict![(String(k_inputStr))] as? [String: Any], designatedPath: nil) {
                //: var effect = roomGiftModel.iosEffect
                var effect = roomGiftModel.iosEffect
                //: if effect.count == 0 {
                if effect.count == 0 {
                    //: effect = roomGiftModel.effect
                    effect = roomGiftModel.effect
                }

                //: let tempGiftModel = NSMutableArray()
                let tempGiftModel = NSMutableArray()
                //: let tempDictM = NSMutableArray()
                let tempDictM = NSMutableArray()

                //: let dictM = NSMutableDictionary(capacity: 0)
                let dictM = NSMutableDictionary(capacity: 0)

                //: dictM["fromUid"] = targetId
                dictM[(String(kModeTitle.suffix(7)))] = targetId
                //: dictM["fromNickname"] = user?["nickname"]
                dictM[(String(k_sectionSinceData) + k_fileValue.replacingOccurrences(of: "white", with: "e"))] = user?[(kAssistantDataUrl.lowercased() + String(kInfoData))]
                //: dictM["fromHeadPic"] = user?["headPic"]
                dictM[(k_relationId.replacingOccurrences(of: "main", with: "fr") + "Head" + String(kImageMessage.suffix(3)))] = user?[(String(k_contentMsg))]

                //: dictM["pid"] = gift?["id"] as? String
                dictM[(String(k_colorFormat))] = gift?["id"] as? String
                //: dictM["num"] = gift?["num"] as? String
                dictM[(String(k_giftText))] = gift?[(String(k_giftText))] as? String
                //: dictM["pname"] = roomGiftModel.name
                dictM[(kWithValue.replacingOccurrences(of: "live", with: "am"))] = roomGiftModel.name
                //: dictM["giftPic"] = roomGiftModel.imgPreview
                dictM[(String(kLabMessage))] = roomGiftModel.imgPreview
                //: dictM["comboNum"] = (roomGiftModel.comboNum)
                dictM[(String(k_mText))] = (roomGiftModel.comboNum)
                //: dictM["iosEffect"] = effect
                dictM[(String(k_iconData.suffix(4)) + String(kSearchedId))] = effect
                //: dictM["iosVapEffect"] = roomGiftModel.iosVapEffect
                dictM[(String(kTouchPathId.suffix(9)) + String(k_shadowTitle))] = roomGiftModel.iosVapEffect

                //: dictM["showType"] = (roomGiftModel.showType)
                dictM[(String(kBehindKey.suffix(8)))] = (roomGiftModel.showType)
                //: if roomGiftModel.animationTimes > 0 {
                if roomGiftModel.animationTimes > 0 {
                    //: dictM["animationTimes"] = (roomGiftModel.animationTimes)
                    dictM[(String(kRunningFormat))] = (roomGiftModel.animationTimes)
                    //: } else {
                } else {
                    //: dictM["animationTimes"] = dictM["num"]
                    dictM[(String(kRunningFormat))] = dictM[(String(k_giftText))]
                }

                //: if let giftModel = JSONDeserializer<TalkingGiftMsgAnimatModel>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                if let giftModel = JSONDeserializer<TitleManagerMeasurable>.deserializeFrom(dict: dictM as? [String: Any], designatedPath: nil) {
                    //: tempGiftModel.add(giftModel)
                    tempGiftModel.add(giftModel)
                    //: tempDictM.add(dictM)
                    tempDictM.add(dictM)
                }

                // 礼物动效 存到本地 供下次打开播放
                //: var giftArray: NSMutableArray? = self.cachDict[toUid] as? NSMutableArray
                var giftArray: NSMutableArray? = self.cachDict[toUid] as? NSMutableArray
                //: if giftArray == nil {
                if giftArray == nil {
                    //: giftArray = NSMutableArray(capacity: 0)
                    giftArray = NSMutableArray(capacity: 0)
                }
                //: if giftArray?.count ?? 0 >= 10 {
                if giftArray?.count ?? 0 >= 10 {
                    //: giftArray?.removeFirstObject()
                    giftArray?.removeFirstObject()
                }
                //: giftArray?.addObjects(from: tempDictM as! [Any])
                giftArray?.addObjects(from: tempDictM as! [Any])
                //: self.cachDict[toUid] = giftArray
                self.cachDict[toUid] = giftArray
                //: self.saveAnimatDataToFile()
                self.occurView()
            }
        }
    }
}
