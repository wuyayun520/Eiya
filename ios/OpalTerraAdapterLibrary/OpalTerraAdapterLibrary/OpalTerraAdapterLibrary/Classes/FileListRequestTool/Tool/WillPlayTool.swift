
//: Declare String Begin

/*: "Status changed, please exit and retry" :*/
fileprivate let kGestureKey:[UInt8] = [0x28,0x49,0x36,0x49,0x4a,0x48,0xf5,0x38,0x3d,0x36,0x43,0x3c,0x3a,0x39,0x1,0xf5,0x45,0x41,0x3a,0x36,0x48,0x3a,0xf5,0x3a,0x4d,0x3e,0x49,0xf5,0x36,0x43,0x39,0xf5,0x47,0x3a,0x49,0x47,0x4e]

fileprivate func equalM(pic num: UInt8) -> UInt8 {
    let value = Int(num) - 213
    if value < 0 {
        return UInt8(value + 256)
    } else {
        return UInt8(value)
    }
}

/*: "GET" :*/
fileprivate let k_nameKey:[Character] = ["G","E","T"]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  WillPlayTool.swift
//  AbroadTalking
//
//  Created by Charlotte on 2023/2/17.
//

//: import UIKit
import UIKit

//: typealias AudioCompletionblock = (_ urldata: NSData) -> Void
typealias AudioCompletionblock = (_ urldata: NSData) -> Void

//: protocol TalkingAudioPlayToolDelegate: NSObject {
protocol EqualToolDelegate: NSObject {
    /// 播放完毕的回调
    //: func playerStatusChange(status: AudioPlayerStatus)
    func cell(status: EquationViewSubscriptType)
}

//: class TalkingAudioPlayTool: NSObject {
class WillPlayTool: NSObject {
    //: var player: AVAudioPlayer?
    var player: AVAudioPlayer?
    //: open weak var delegate: TalkingAudioPlayToolDelegate?
    open weak var delegate: EqualToolDelegate?

    // singleton
    //: static let shared = TalkingAudioPlayTool()
    static let shared = WillPlayTool()
    //: override func copy() -> Any { return self }
    override func copy() -> Any { return self }
    //: override func mutableCopy() -> Any { return self }
    override func mutableCopy() -> Any { return self }
    //: private override init() {
    override private init() {
        //: super.init()
        super.init()
        //: NotificationCenter.default.addObserver(self, selector: #selector(interruptionChange(notification:)), name: AVAudioSession.interruptionNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(equalNotification(notification:)), name: AVAudioSession.interruptionNotification, object: nil)
    }

    //: func play(urlStr: String) {
    func work(urlStr: String) {
        //: if AVAudioSession.sharedInstance().category != .ambient {
        if AVAudioSession.sharedInstance().category != .ambient {
            //: let audioSession = AVAudioSession.sharedInstance()
            let audioSession = AVAudioSession.sharedInstance()
            //: do {
            do {
                //: try audioSession.setCategory(.ambient)
                try audioSession.setCategory(.ambient)
                //: } catch {
            } catch {}
        }

        //: downloadAudioWith(audioUrl: urlStr) { data in
        sexSoundCompletion(audioUrl: urlStr) { data in
            //: do {
            do {
                //: try self.player = AVAudioPlayer.init(data: data as Data)
                try self.player = AVAudioPlayer(data: data as Data)
                //: self.player?.delegate = self
                self.player?.delegate = self
                //: NSLog("开始播放")
                // 开始播放
                //: if self.player?.prepareToPlay() == true {
                if self.player?.prepareToPlay() == true {
                    //: self.player?.play()
                    self.player?.play()
                }

                //: } catch let error {
            } catch {
                //: self.func__showStatusBarErrorMsg(showMsg: "Status changed, please exit and retry".localized)
                self.arcInfo(showMsg: String(bytes: kGestureKey.map{equalM(pic: $0)}, encoding: .utf8)!.localized)
                //: self.delegate?.playerStatusChange(status: .PlayerFinish)
                self.delegate?.cell(status: .PlayerFinish)
                //: NSLog("Error crenting player: %@", error.localizedDescription)
            }
        }
    }

    //: func stopPlay() {
    func atMake() {
        //: self.player?.pause()
        self.player?.pause()
    }

    //: func finishPlay() {
    func finishOut() {}

    //: func destroy() {
    func rangeTip() {
        //: if self.player != nil {
        if self.player != nil {
            //: self.player?.delegate = nil
            self.player?.delegate = nil
            //: self.player = nil
            self.player = nil
        }
    }
}

//: extension TalkingAudioPlayTool {
extension WillPlayTool {
    //: func downloadAudioWith(audioUrl: String, completion: @escaping AudioCompletionblock) {
    func sexSoundCompletion(audioUrl: String, completion: @escaping AudioCompletionblock) {
        //: var urlOk = true
        var urlOk = true
        //: var url = NSURL.init(string: "")
        var url = NSURL(string: "")

        //: if audioUrl.count == 0 {
        if audioUrl.count == 0 {
            //: urlOk = false
            urlOk = false

            //: } else {
        } else {
            //: url = NSURL.init(string: audioUrl as String)
            url = NSURL(string: audioUrl as String)
            //: if url == nil {
            if url == nil {
                //: urlOk = false
                urlOk = false
            }
        }

        //: if urlOk == false {
        if urlOk == false {
            //: return
            return
        }
        //: let request = NSMutableURLRequest.init(url: NSURL.init(string: audioUrl as String)! as URL)
        let request = NSMutableURLRequest(url: NSURL(string: audioUrl as String)! as URL)
        //: request.httpMethod      = "GET"
        request.httpMethod = (String(k_nameKey))
        //: request.timeoutInterval = 15.0
        request.timeoutInterval = 15.0

        //: URLSession.shared.dataTask(with: request as URLRequest) { data, response, error in
        URLSession.shared.dataTask(with: request as URLRequest) { data, _, _ in
            //: DispatchQueue.main.async {
            DispatchQueue.main.async {
                //: if data != nil {
                if data != nil {
                    //: completion(data! as NSData)
                    completion(data! as NSData)
                    //: }else {
                } else {
                    //: self.func__showStatusBarErrorMsg(showMsg: "Status changed, please exit and retry".localized)
                    self.arcInfo(showMsg: String(bytes: kGestureKey.map{equalM(pic: $0)}, encoding: .utf8)!.localized)
                    //: self.delegate?.playerStatusChange(status: .PlayerFinish)
                    self.delegate?.cell(status: .PlayerFinish)
                }
            }
            //: }.resume()
        }.resume()
    }
}

//: extension TalkingAudioPlayTool: AVAudioPlayerDelegate {
extension WillPlayTool: AVAudioPlayerDelegate {
    /// 播放过程中中断
    //: @objc func interruptionChange(notification: NSNotification) -> Void {
    @objc func equalNotification(notification: NSNotification) {
        //: let dic = notification.userInfo as![String: AnyObject]
        let dic = notification.userInfo as! [String: AnyObject]

        //: let changeReason = dic[AVAudioSessionInterruptionTypeKey]
        let changeReason = dic[AVAudioSessionInterruptionTypeKey]
        //: if changeReason?.intValue ?? 0 == AVAudioSession.InterruptionType.began.rawValue {
        if changeReason?.intValue ?? 0 == AVAudioSession.InterruptionType.began.rawValue {
            //: self.delegate?.playerStatusChange(status: .PlayerInterruption)
            self.delegate?.cell(status: .PlayerInterruption)
        }
    }

    /// 播放完成
    //: func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
    func audioPlayerDidFinishPlaying(_: AVAudioPlayer, successfully flag: Bool) {
        //: if flag {
        if flag {
            //: self.delegate?.playerStatusChange(status: .PlayerFinish)
            self.delegate?.cell(status: .PlayerFinish)
        }
    }
}
