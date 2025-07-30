
//: Declare String Begin

/*: "Drop down to refresh" :*/
fileprivate let k_targetValue:String = "view afterDrop"
fileprivate let k_dataMsg:String = "array let phone price messageto refre"
fileprivate let kViewMessage:[Character] = ["s","h"]

/*: "Release Refresh" :*/
fileprivate let kTextPath:String = "Releasfalse self message height self"
fileprivate let kWithPlayerFormat:String = "esmodel"

/*: "Refreshing" :*/
fileprivate let kColorUrl:[Character] = ["R","e","f","r","e","s","h"]
fileprivate let k_locationData:[Character] = ["i","n","g"]

/*: "Pull up to load more" :*/
fileprivate let kModelPath:[Character] = ["P","u","l","l"," ","u","p"," ","t","o"," ","l","o","a","d"," ","m","o","r","e"]

/*: "No more data." :*/
fileprivate let kQueryedPath:String = "No mheight image"
fileprivate let kQuantityText:[Character] = ["d","a","t","a","."]

//: Declare String End

// __DEBUG__
// __CLOSE_PRINT__
//
//  ScrollViewExtension.swift
//  AbroadTalking
//
//  Created by young on 2022/9/8.
//

//: import UIKit
import UIKit

//: extension UIScrollView {
extension UIScrollView {
    //: typealias CompletionBlock = () -> Void
    typealias CompletionBlock = () -> Void

    /// 下拉刷新
    //: func addHeaderRefresh(complection: @escaping CompletionBlock) {
    func addHeaderRefresh(complection: @escaping CompletionBlock) {
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeLanguageManager.shared.direction == .rightToLeft {
            //: let header = MJRefreshNormalHeader()
            let header = MJRefreshNormalHeader()
            //: header.setTitle("Drop down to refresh".localized, for: .idle)
            header.setTitle((String(k_targetValue.suffix(4)) + " down " + String(k_dataMsg.suffix(8)) + String(kViewMessage)).localized, for: .idle)
            //: header.setTitle("Release Refresh".localized, for: .pulling)
            header.setTitle((String(kTextPath.prefix(6)) + "e Refr" + kWithPlayerFormat.replacingOccurrences(of: "model", with: "h")).localized, for: .pulling)
            //: header.setTitle("Refreshing".localized, for: .refreshing)
            header.setTitle((String(kColorUrl) + String(k_locationData)).localized, for: .refreshing)
            //: header.lastUpdatedTimeLabel?.isHidden = true
            header.lastUpdatedTimeLabel?.isHidden = true

            //: self.mj_header = header
            self.mj_header = header
            //: self.mj_header?.refreshingBlock = {
            self.mj_header?.refreshingBlock = {
                //: complection()
                complection()
            }
            //: } else {
        } else {
            //: self.mj_header = MJRefreshNormalHeader {
            self.mj_header = MJRefreshNormalHeader {
                //: complection()
                complection()
            }
        }
    }

    /// 上拉加载
    //: func addFooterRefresh(complection: @escaping CompletionBlock) {
    func addFooterRefresh(complection: @escaping CompletionBlock) {
        //: if LanguageManager.shared.direction == .rightToLeft {
        if MakeLanguageManager.shared.direction == .rightToLeft {
            //: let footer = MJRefreshAutoNormalFooter()
            let footer = MJRefreshAutoNormalFooter()
            //: footer.setTitle("Pull up to load more".localized, for: .idle)
            footer.setTitle((String(kModelPath)).localized, for: .idle)
            //: footer.setTitle("Release Refresh".localized, for: .pulling)
            footer.setTitle((String(kTextPath.prefix(6)) + "e Refr" + kWithPlayerFormat.replacingOccurrences(of: "model", with: "h")).localized, for: .pulling)
            //: footer.setTitle("Refreshing".localized, for: .refreshing)
            footer.setTitle((String(kColorUrl) + String(k_locationData)).localized, for: .refreshing)
            //: footer.setTitle("No more data.".localized, for: .noMoreData)
            footer.setTitle((String(kQueryedPath.prefix(4)) + "ore " + String(kQuantityText)).localized, for: .noMoreData)
            //: self.mj_footer = footer
            self.mj_footer = footer
            //: self.mj_footer?.refreshingBlock = {
            self.mj_footer?.refreshingBlock = {
                //: complection()
                complection()
            }
            //: } else {
        } else {
            //: self.mj_footer = MJRefreshAutoNormalFooter {
            self.mj_footer = MJRefreshAutoNormalFooter {
                //: complection()
                complection()
            }
        }
    }

    /// 结束刷新
    //: func endRefresh() {
    func fromEnd() {
        //: if (self.mj_header?.isRefreshing) != nil {
        if (self.mj_header?.isRefreshing) != nil {
            //: self.mj_header?.endRefreshing()
            self.mj_header?.endRefreshing()
        }
        //: if (self.mj_footer?.isRefreshing) != nil {
        if (self.mj_footer?.isRefreshing) != nil {
            //: self.mj_footer?.endRefreshing()
            self.mj_footer?.endRefreshing()
        }
    }
}
