
//: Declare String Begin

/*: "user/updateInfo" :*/
fileprivate let k_pathMsg:String = "planer"
fileprivate let k_dataFormat:String = "eInfoquote behind event"

/*: "gallery/getGalleryByUid" :*/
fileprivate let kInfoMessage:String = "GALLER"
fileprivate let k_userId:[Character] = ["G"]
fileprivate let kKeyMsg:String = "allerkit"

/*: "gallery/upload" :*/
fileprivate let k_labelKey:[Character] = ["g","a","l"]
fileprivate let kWarningFormat:String = "share if in leadinglery/"

/*: "gallery/deletePic" :*/
fileprivate let kViewModeData:[Character] = ["g","a","l","l","e","r","y","/","d","e","l","e","t","e","P"]
fileprivate let kHandleFormat:String = "imodel"

/*: "user/tagDelete" :*/
fileprivate let kViewFormat:[Character] = ["u","s","e","r","/"]
fileprivate let kNowHiddenKey:String = "manager clear false labtagD"

/*: "mf/user/tagEdit" :*/
fileprivate let k_activityMessage:String = "mcolor"
fileprivate let kMoreText:String = "gift legal/use"
fileprivate let kEqualTitle:String = "gEditpush hidden var me input"

/*: "app/feedback" :*/
fileprivate let kToId:String = "app/feedbself show return"
fileprivate let kSearchName:String = "aimage"

/*: "IM/getMyBlackList" :*/
fileprivate let kOldName:String = "let page icon likeIM/g"
fileprivate let kGiftUrl:String = "ckListrequest load container"

/*: "mf/user/getSetting" :*/
fileprivate let kTitleText:[Character] = ["m","f","/","u","s","e","r","/","g","e","t","S","e","t","t"]
fileprivate let kMinUrl:String = "liveg"

/*: "mf/user/setConfig" :*/
fileprivate let kHalfFormat:String = "mtip"
fileprivate let kLabStr:String = "/useimage view view source limit"
fileprivate let kBagBottomMakeFormat:String = "fillnfig"

/*: "mf/user/settingStatus" :*/
fileprivate let k_timeFormat:[Character] = ["m","f","/","u","s","e","r","/","s","e","t","t"]
fileprivate let k_centerText:String = "table lab self coloringStatus"

/*: "type" :*/
fileprivate let kDropData:[UInt8] = [0x3a,0x3f,0x36,0x2b]

fileprivate func mainReceive(succeed num: UInt8) -> UInt8 {
    let value = Int(num) - 198
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "user/lockAccount" :*/
fileprivate let k_itemName:String = "color color limituser/l"
fileprivate let kCollectionPath:String = "center"

/*: "mf/user/editInfo" :*/
fileprivate let kAddModelMsg:[Character] = ["m","f","/","u","s","e"]
fileprivate let k_aspectStr:String = "as return leftr/edi"

/*: "mf/userSign/list" :*/
fileprivate let kMoreFormat:String = "mf/usereturn fill model else share"
fileprivate let k_trackKey:String = "rScontent view let"
fileprivate let kPageData:String = "string send package elseign/list"

/*: "mf/userSign/signIn" :*/
fileprivate let k_componentKey:String = "submit automf/us"
fileprivate let kPathTitle:String = "erSigif label transform background item"

/*: "mf/dating/saveVideo" :*/
fileprivate let k_userName:String = "height in view makemf/da"
fileprivate let kViewKey:String = "/savecurrent price"

/*: "mf/dating/getConfig" :*/
fileprivate let kSourceTableValue:[Character] = ["m","f","/","d","a","t","i","n","g","/","g","e","t","C","o","n","f","i","g"]

/*: "mf/dating/deleteVideo" :*/
fileprivate let k_giftData:[Character] = ["m","f","/","d","a","t","i","n","g","/"]
fileprivate let k_endToLetPath:String = "deletool"
fileprivate let kDomainKey:[Character] = ["e","V","i","d","e","o"]

/*: "mf/greet/updateAudioRemark" :*/
fileprivate let k_pointTitle:String = "mf/greas aspect"
fileprivate let kBottomFormat:String = "ateAudextension icon model"

/*: "mf/greet/list" :*/
fileprivate let kPleaseName:String = "mme"
fileprivate let kArgumentName:[Character] = ["/","g","r","e","e","t","/","l","i","s","t"]

/*: "mf/greet/add" :*/
fileprivate let k_willHeadPath:[Character] = ["m","f","/","g","r","e","e","t","/","a","d","d"]

/*: "mf/greet/del" :*/
fileprivate let kGiftFormat:String = "model tomf/gr"
fileprivate let kStatuteName:String = "can"

/*: "mf/greet/getSettings" :*/
fileprivate let k_colorScriptName:String = "fill size if view sizemf/greet"
fileprivate let kLabKey:[Character] = ["/","g"]
fileprivate let k_errorStr:String = "etSettauto model"

/*: "mf/greet/extraSetting" :*/
fileprivate let k_shareStr:String = "mf/gheight smart table"
fileprivate let kCeaseChangeTitle:String = "emorer"
fileprivate let kNorColorEqualMessage:String = "view leading useraSet"

/*: "game/list" :*/
fileprivate let kModelMsg:[Character] = ["g","a","m","e","/","l","i","s"]
fileprivate let kGiftKey:String = "request"

/*: "category" :*/
fileprivate let k_infoStr:[UInt8] = [0xe0,0xe2,0xf7,0xe6,0xe4,0xec,0xf1,0xfa]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  FileListRequestTool.swift
//  AbroadTalking
//
//  Created by Charlotte on 2022/9/9.
//

//: import UIKit
import UIKit

//: class TalkingMeRequestTool: NSObject {
class FileListRequestTool: NSObject {
    /// 资料完善
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_UpdateUserInfo(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func equalCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "user/updateInfo"
        reqModel.requestPath = (k_pathMsg.replacingOccurrences(of: "plan", with: "us") + "/updat" + String(k_dataFormat.prefix(5)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取用户相册
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_GalleryByUid(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func perspectiveMessage(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "gallery/getGalleryByUid"
        reqModel.requestPath = (kInfoMessage.lowercased() + "y/get" + String(k_userId) + kKeyMsg.replacingOccurrences(of: "kit", with: "y") + "ByUid")
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 上传图片
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_UploadPic(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func press(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "gallery/upload"
        reqModel.requestPath = (String(k_labelKey) + String(kWarningFormat.suffix(5)) + "upload")
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 删除图片
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_DeletePic(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func cast(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "gallery/deletePic"
        reqModel.requestPath = (String(kViewModeData) + kHandleFormat.replacingOccurrences(of: "model", with: "c"))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 删除单个用户标签
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_DeleteTag(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func params(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "user/tagDelete"
        reqModel.requestPath = (String(kViewFormat) + String(kNowHiddenKey.suffix(4)) + "elete")
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 编辑用户标签
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_EditTag(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func aperture(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/user/tagEdit"
        reqModel.requestPath = (k_activityMessage.replacingOccurrences(of: "color", with: "f") + String(kMoreText.suffix(4)) + "r/ta" + String(kEqualTitle.prefix(5)))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 意见反馈
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_Feedback(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func toolCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "app/feedback"
        reqModel.requestPath = (String(kToId.prefix(9)) + kSearchName.replacingOccurrences(of: "image", with: "ck"))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取黑名单列表
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_BlackList(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func write(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "IM/getMyBlackList"
        reqModel.requestPath = (String(kOldName.suffix(4)) + "etMyBla" + String(kGiftUrl.prefix(6)))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取设置信息接口
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_GetSetting(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func rowAddCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/user/getSetting"
        reqModel.requestPath = (String(kTitleText) + kMinUrl.replacingOccurrences(of: "live", with: "in"))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 个人中心设置
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_SettingChange(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func paramsEffect(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/user/setConfig"
        reqModel.requestPath = (kHalfFormat.replacingOccurrences(of: "tip", with: "f") + String(kLabStr.prefix(4)) + "r/setC" + kBagBottomMakeFormat.replacingOccurrences(of: "fill", with: "o"))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 女性busy状态上报接口
    /// - Parameters:
    ///   - type: 0 :不活跃， 1:活跃
    ///   - completion: 回调
    //: class func req_settingStatus(type: Int, completion: @escaping FinishBlock) {
    class func present(type: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/user/settingStatus"
        reqModel.requestPath = (String(k_timeFormat) + String(k_centerText.suffix(9)))
        //: reqModel.params = ["type": type]
        reqModel.params = [String(bytes: kDropData.map{mainReceive(succeed: $0)}, encoding: .utf8)!: type]
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 注销账号
    /// - Parameters:
    /// - completion: 回调
    //: class func req_LockAccount(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func lockLikeCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "user/lockAccount"
        reqModel.requestPath = (String(k_itemName.suffix(6)) + "ockAccoun" + kCollectionPath.replacingOccurrences(of: "center", with: "t"))
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 个人中心修改私信价格、开启语音授权
    /// - Parameters:
    /// - completion: 回调
    //: class func req_EditInfo(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func substanceCompletion(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/user/editInfo"
        reqModel.requestPath = (String(kAddModelMsg) + String(k_aspectStr.suffix(5)) + "tInfo")
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取签到日历列表
    /// - Parameter completion: 回调
    //: class func req_getUserSignList(completion: @escaping FinishBlock) {
    class func textShowWith(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/userSign/list"
        reqModel.requestPath = (String(kMoreFormat.prefix(6)) + String(k_trackKey.prefix(2)) + String(kPageData.suffix(8)))
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 用户签到
    /// - Parameter completion: 回调
    //: class func req_userSignIn(completion: @escaping FinishBlock) {
    class func sign(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/userSign/signIn"
        reqModel.requestPath = (String(k_componentKey.suffix(5)) + String(kPathTitle.prefix(5)) + "n/signIn")
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 用户资料视频地址上传
    /// - Parameters:
    ///   - completion: 回调
    //: class func uploadVideoUserEdit(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func shopwindow(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/dating/saveVideo"
        reqModel.requestPath = (String(k_userName.suffix(5)) + "ting" + String(kViewKey.prefix(5)) + "Video")
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取当前用户上传的视频
    /// - Parameters:
    ///   - completion: 回调
    //: class func getUploadVideoInfo(completion: @escaping FinishBlock) {
    class func rangeImage(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/dating/getConfig"
        reqModel.requestPath = (String(kSourceTableValue))
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 删除当前用户上传的视频
    /// - Parameters:
    ///   - completion: 回调
    //: class func deleteUserVideo(completion: @escaping FinishBlock) {
    class func cherryRed(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/dating/deleteVideo"
        reqModel.requestPath = (String(k_giftData) + k_endToLetPath.replacingOccurrences(of: "tool", with: "t") + String(kDomainKey))
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 更新语音备注
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_UpdateAudioRemark(completion: @escaping FinishBlock) {
    class func collection(completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/greet/updateAudioRemark"
        reqModel.requestPath = (String(k_pointTitle.prefix(6)) + "et/upd" + String(kBottomFormat.prefix(6)) + "ioRemark")
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 自动打招呼-查看设置列表
    /// - Parameters: type: 1=语音， 2=文本
    ///   - completion: 回调
    //: class func req_GetGreetList(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func ballBusterLabel(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/greet/list"
        reqModel.requestPath = (kPleaseName.replacingOccurrences(of: "me", with: "f") + String(kArgumentName))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 自动打招呼-添加自定义文案/语音/图片
    /// - Parameters: type: 1：语音；2：文案；3：图片; 4:私密照片
    ///   - completion: 回调
    //: class func req_UploadGreetAdd(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func eventUp(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/greet/add"
        reqModel.requestPath = (String(k_willHeadPath))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 自动打招呼-设置音频备注
    ///   - completion: 回调
    //: class func req_UpdateAudioRemark(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func array(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/greet/updateAudioRemark"
        reqModel.requestPath = (String(k_pointTitle.prefix(6)) + "et/upd" + String(kBottomFormat.prefix(6)) + "ioRemark")
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 自动打招呼-删除文案/音频
    ///   - completion: 回调
    //: class func req_DeleteAudio(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func platform(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/greet/del"
        reqModel.requestPath = (String(kGiftFormat.suffix(5)) + "eet/de" + kStatuteName.replacingOccurrences(of: "can", with: "l"))
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 招呼设置-查看设置
    /// - Parameters:
    ///   - completion: 回调
    //: class func req_GetGreetSetting(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func garrison(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/greet/getSettings"
        reqModel.requestPath = (String(k_colorScriptName.suffix(8)) + String(kLabKey) + String(k_errorStr.prefix(6)) + "ings")
        //: reqModel.params = params
        reqModel.params = params
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 图片打招呼-额外配置礼物信息
    /// - Parameters: unlockGiftId:解锁礼物id, isBurn:设置的阅后即焚状态
    ///   - completion: 回调
    //: class func req_UploadGreetExtraSetting(params: Dictionary<String, Any>, completion: @escaping FinishBlock) {
    class func confirm(params: [String: Any], completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel.init()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "mf/greet/extraSetting"
        reqModel.requestPath = (String(k_shareStr.prefix(4)) + "reet/" + kCeaseChangeTitle.replacingOccurrences(of: "more", with: "xt") + String(kNorColorEqualMessage.suffix(4)) + "ting")
        //: reqModel.params = params
        reqModel.params = params
        //: reqModel.requestType = .POST
        reqModel.requestType = .POST
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }

    /// 获取游戏列表
    /// - Parameters:
    ///   - category: 1=我的页面，2=私聊页面
    ///   - completion: 回调
    //: class func req_getGameList(category: Int, completion: @escaping FinishBlock) {
    class func getBackWithIndex(category: Int, completion: @escaping FinishBlock) {
        //: let reqModel = TalkingRequestModel()
        let reqModel = SweepRequestModel()
        //: reqModel.requestPath = "game/list"
        reqModel.requestPath = (String(kModelMsg) + kGiftKey.replacingOccurrences(of: "request", with: "t"))
        //: reqModel.params = ["category": category]
        reqModel.params = [String(bytes: k_infoStr.map{$0^131}, encoding: .utf8)!: category]
        //: reqModel.requestType = .GET
        reqModel.requestType = .GET
        //: GJ.startRequest(model: reqModel) { succeed, result, errorModel in
        showEndName.buttonCompletion(model: reqModel) { succeed, result, errorModel in
            //: completion(succeed, result, errorModel)
            completion(succeed, result, errorModel)
        }
    }
}
