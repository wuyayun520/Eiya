
#import <Foundation/Foundation.h>

typedef struct {
    Byte positionMessage;
    Byte *may;
    unsigned int along;
	int communication;
} StructCompleteEngineData;

@interface CompleteEngineData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation CompleteEngineData

+ (instancetype)sharedInstance {
    static CompleteEngineData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)CompleteEngineDataToByte:(StructCompleteEngineData *)data {
    for (int i = 0; i < data->along; i++) {
        data->may[i] ^= data->positionMessage;
    }
    data->may[data->along] = 0;
	if (data->along >= 1) {
		data->communication = data->may[0];
	}
    return data->may;
}

- (NSString *)StringFromCompleteEngineData:(StructCompleteEngineData *)data {
    return [NSString stringWithUTF8String:(char *)[self CompleteEngineDataToByte:data]];
}

//: msgInfo
- (NSString *)mainGroupScaleName {
    /* static */ NSString *mainGroupScaleName = nil;
    if (!mainGroupScaleName) {
        StructCompleteEngineData value = (StructCompleteEngineData){221, (Byte []){176, 174, 186, 148, 179, 187, 178, 94}, 7, 254};
        mainGroupScaleName = [self StringFromCompleteEngineData:&value];
    }
    return mainGroupScaleName;
}

//: From_Account
- (NSString *)showEnableceId {
    /* static */ NSString *showEnableceId = nil;
    if (!showEnableceId) {
        StructCompleteEngineData value = (StructCompleteEngineData){226, (Byte []){164, 144, 141, 143, 189, 163, 129, 129, 141, 151, 140, 150, 104}, 12, 16};
        showEnableceId = [self StringFromCompleteEngineData:&value];
    }
    return showEnableceId;
}

//: Trans
- (NSString *)main_subMessage {
    /* static */ NSString *main_subMessage = nil;
    if (!main_subMessage) {
        StructCompleteEngineData value = (StructCompleteEngineData){240, (Byte []){164, 130, 145, 158, 131, 152}, 5, 8};
        main_subMessage = [self StringFromCompleteEngineData:&value];
    }
    return main_subMessage;
}

//: TMsgTranslatedContent
- (NSString *)main_expressFormat {
    /* static */ NSString *main_expressFormat = nil;
    if (!main_expressFormat) {
        StructCompleteEngineData value = (StructCompleteEngineData){12, (Byte []){88, 65, 127, 107, 88, 126, 109, 98, 127, 96, 109, 120, 105, 104, 79, 99, 98, 120, 105, 98, 120, 71}, 21, 16};
        main_expressFormat = [self StringFromCompleteEngineData:&value];
    }
    return main_expressFormat;
}

//: Copy
- (NSString *)main_engineFormat {
    /* static */ NSString *main_engineFormat = nil;
    if (!main_engineFormat) {
        StructCompleteEngineData value = (StructCompleteEngineData){52, (Byte []){119, 91, 68, 77, 91}, 4, 101};
        main_engineFormat = [self StringFromCompleteEngineData:&value];
    }
    return main_engineFormat;
}

//: msgIncome
- (NSString *)mainLockStr {
    /* static */ NSString *mainLockStr = nil;
    if (!mainLockStr) {
        StructCompleteEngineData value = (StructCompleteEngineData){92, (Byte []){49, 47, 59, 21, 50, 63, 51, 49, 57, 249}, 9, 5};
        mainLockStr = [self StringFromCompleteEngineData:&value];
    }
    return mainLockStr;
}

//: Retry
- (NSString *)showWarningFormat {
    /* static */ NSString *showWarningFormat = nil;
    if (!showWarningFormat) {
        StructCompleteEngineData value = (StructCompleteEngineData){21, (Byte []){71, 112, 97, 103, 108, 73}, 5, 91};
        showWarningFormat = [self StringFromCompleteEngineData:&value];
    }
    return showWarningFormat;
}

//: Net Error, Try again later
- (NSString *)showDataTopMessage {
    /* static */ NSString *showDataTopMessage = nil;
    if (!showDataTopMessage) {
        StructCompleteEngineData value = (StructCompleteEngineData){149, (Byte []){219, 240, 225, 181, 208, 231, 231, 250, 231, 185, 181, 193, 231, 236, 181, 244, 242, 244, 252, 251, 181, 249, 244, 225, 240, 231, 196}, 26, 134};
        showDataTopMessage = [self StringFromCompleteEngineData:&value];
    }
    return showDataTopMessage;
}

//: TMsgTranslateStatus
- (NSString *)main_warningValue {
    /* static */ NSString *main_warningValue = nil;
    if (!main_warningValue) {
        StructCompleteEngineData value = (StructCompleteEngineData){182, (Byte []){226, 251, 197, 209, 226, 196, 215, 216, 197, 218, 215, 194, 211, 229, 194, 215, 194, 195, 197, 215}, 19, 17};
        main_warningValue = [self StringFromCompleteEngineData:&value];
    }
    return main_warningValue;
}

//: Reply
- (NSString *)showWarningTitle {
    /* static */ NSString *showWarningTitle = nil;
    if (!showWarningTitle) {
        StructCompleteEngineData value = (StructCompleteEngineData){114, (Byte []){32, 23, 2, 30, 11, 101}, 5, 115};
        showWarningTitle = [self StringFromCompleteEngineData:&value];
    }
    return showWarningTitle;
}

//: extra
- (NSString *)show_popStyleTitle {
    /* static */ NSString *show_popStyleTitle = nil;
    if (!show_popStyleTitle) {
        StructCompleteEngineData value = (StructCompleteEngineData){120, (Byte []){29, 0, 12, 10, 25, 241}, 5, 116};
        show_popStyleTitle = [self StringFromCompleteEngineData:&value];
    }
    return show_popStyleTitle;
}

//: targetText
- (NSString *)main_eventUrl {
    /* static */ NSString *main_eventUrl = nil;
    if (!main_eventUrl) {
        StructCompleteEngineData value = (StructCompleteEngineData){6, (Byte []){114, 103, 116, 97, 99, 114, 82, 99, 126, 114, 41}, 10, 45};
        main_eventUrl = [self StringFromCompleteEngineData:&value];
    }
    return main_eventUrl;
}

//: msgId
- (NSString *)showAfterMsg {
    /* static */ NSString *showAfterMsg = nil;
    if (!showAfterMsg) {
        StructCompleteEngineData value = (StructCompleteEngineData){244, (Byte []){153, 135, 147, 189, 144, 39}, 5, 179};
        showAfterMsg = [self StringFromCompleteEngineData:&value];
    }
    return showAfterMsg;
}

//: status
- (NSString *)mainDeviceRowValue {
    /* static */ NSString *mainDeviceRowValue = nil;
    if (!mainDeviceRowValue) {
        StructCompleteEngineData value = (StructCompleteEngineData){215, (Byte []){164, 163, 182, 163, 162, 164, 47}, 6, 175};
        mainDeviceRowValue = [self StringFromCompleteEngineData:&value];
    }
    return mainDeviceRowValue;
}

//: params
- (NSString *)show_withValue {
    /* static */ NSString *show_withValue = nil;
    if (!show_withValue) {
        StructCompleteEngineData value = (StructCompleteEngineData){117, (Byte []){5, 20, 7, 20, 24, 6, 250}, 6, 253};
        show_withValue = [self StringFromCompleteEngineData:&value];
    }
    return show_withValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MagnitudeernationalismTableViewController.m
//  UIKit
//
//  Created by annidyfeng on 2019/7/1.
//  Copyright © 2018年 Tencent. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TUIMessageController.h"
#import "MagnitudeernationalismTableViewController.h"
//: #import "OpalTerraAdapterLibrary/OpalTerraAdapterLibrary-Swift.h"
#import "OpalTerraAdapterLibrary/OpalTerraAdapterLibrary-Swift.h"

//: @interface TUIMessageController () <TMessageCellDelegate>
@interface MagnitudeernationalismTableViewController () <PhoneMessageCellDelegate>
//: @property (nonatomic, strong) InscriptionThen *menuUIMsg;
@property (nonatomic, strong) InscriptionThen *menuUIMsg;
//: @property (nonatomic, strong) InscriptionThen *reSendUIMsg;
@property (nonatomic, strong) InscriptionThen *reSendUIMsg;
//: @property (nonatomic, strong) UIActivityIndicatorView *indicatorView;
@property (nonatomic, strong) UIActivityIndicatorView *indicatorView;
//: @property (nonatomic, assign) BOOL isLoadingMsg;
@property (nonatomic, assign) BOOL isLoadingMsg;
//: @property (nonatomic, assign) BOOL isInVC;
@property (nonatomic, assign) BOOL isInVC;
//: @property (nonatomic, assign) BOOL isActive;
@property (nonatomic, assign) BOOL isActive;
/// 长按菜单是否展示
//: @property (nonatomic, assign) BOOL menuIsShow;
@property (nonatomic, assign) BOOL menuIsShow;
 //资料卡片信息
//: @property (nonatomic, strong) NSArray *waitUserCardDataArray;
@property (nonatomic, strong) NSArray *waitUserCardDataArray;

//: @property (nonatomic, strong) UITapGestureRecognizer *tap;
@property (nonatomic, strong) UITapGestureRecognizer *tap;

///没有更多消息
//: @property (nonatomic, assign) BOOL noMoreMsg;
@property (nonatomic, assign) BOOL noMoreMsg;
///腾讯查消息的节点
//: @property (nonatomic, strong) V2TIMMessage *msgForGet;
@property (nonatomic, strong) V2TIMMessage *msgForGet;


//: @end
@end

//: @implementation TUIMessageController
@implementation MagnitudeernationalismTableViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: [self setupViews];
    [self setupViews];
    //: self.isActive = YES;
    self.isActive = YES;
}


//: - (void)dealloc {
- (void)dealloc {
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)viewWillAppear:(BOOL)animated {
- (void)viewWillAppear:(BOOL)animated {
    //: self.isInVC = YES;
    self.isInVC = YES;
    //: [self readedReport];
    [self readedReport];
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
}

//: - (void)viewWillDisappear:(BOOL)animated {
- (void)viewWillDisappear:(BOOL)animated {
    //: [self readedReport];
    [self readedReport];
    //: self.isInVC = NO;
    self.isInVC = NO;
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
}

//: - (void)readedReport {
- (void)readedReport {
    //: if (self.isInVC && self.isActive) {
    if (self.isInVC && self.isActive) {
        //: if (self.currentChatType == TalkingIMChatType_group ||
        if (self.currentChatType == TalkingIMChatType_group ||
            //: self.currentChatType == TalkingIMChatType_meeting) {
            self.currentChatType == TalkingIMChatType_meeting) {
            //: if (self.targetID.length > 0) {
            if (self.targetID.length > 0) {
                //: [[V2TIMManager sharedInstance] markGroupMessageAsRead:self.targetID succ:^{
                [[V2TIMManager sharedInstance] markGroupMessageAsRead:self.targetID succ:^{

                //: } fail:^(int code, NSString *msg) {
                } fail:^(int code, NSString *msg) {

                //: }];
                }];
            }
        //: } else {
        } else {
            //: if (self.targetID.length > 0) {
            if (self.targetID.length > 0) {
                //: [[V2TIMManager sharedInstance] markC2CMessageAsRead:self.targetID succ:^{
                [[V2TIMManager sharedInstance] markC2CMessageAsRead:self.targetID succ:^{
                    //: NSLog(@"");
                //: } fail:^(int code, NSString *msg) {
                } fail:^(int code, NSString *msg) {
                    //: NSLog(@"");
                //: }];
                }];
            }
        }




    }
}

//: - (void)limitReadReport {
- (void)limitReadReport {
    //: static uint64_t lastTs = 0;
    static uint64_t lastTs = 0;
    //: uint64_t curTs = [[NSDate date] timeIntervalSince1970];
    uint64_t curTs = [[NSDate date] timeIntervalSince1970];
    // 超过 1s && 非首次 立即上报已读
    //: if (curTs - lastTs >= 1 && lastTs) {
    if (curTs - lastTs >= 1 && lastTs) {
        //: lastTs = curTs;
        lastTs = curTs;
        //: [self readedReport];
        [self readedReport];
    //: } else {
    } else {
        // 低于 1s || 首次  延迟 1s 合并上报
        //: static BOOL delayReport = NO;
        static BOOL delayReport = NO;
        //: if (delayReport) {
        if (delayReport) {
            //: return;
            return;
        }
        //: delayReport = YES;
        delayReport = YES;
        //: dispatch_after(dispatch_time((0ull), (int64_t)(0.5 * 1000000000ull)), dispatch_get_main_queue(), ^{
        dispatch_after(dispatch_time((0ull), (int64_t)(0.5 * 1000000000ull)), dispatch_get_main_queue(), ^{
            //: [self readedReport];
            [self readedReport];
            //: delayReport = NO;
            delayReport = NO;
        //: });
        });
    }
}

//: - (void)applicationBecomeActive {
- (void)applicationBecomeActive {
    //: self.isActive = YES;
    self.isActive = YES;
    //: [self readedReport];
    [self readedReport];
}

//: - (void)applicationEnterBackground {
- (void)applicationEnterBackground {
    //: self.isActive = NO;
    self.isActive = NO;
}

//: - (void)setupViews {
- (void)setupViews {
    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(applicationBecomeActive)
                                             selector:@selector(applicationBecomeActive)
                                                 //: name:UIApplicationDidBecomeActiveNotification
                                                 name:UIApplicationDidBecomeActiveNotification
                                               //: object:nil];
                                               object:nil];
    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(applicationBecomeActive)
                                             selector:@selector(applicationBecomeActive)
                                                 //: name:UIApplicationWillEnterForegroundNotification
                                                 name:UIApplicationWillEnterForegroundNotification
                                               //: object:nil];
                                               object:nil];
    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(applicationEnterBackground)
                                             selector:@selector(applicationEnterBackground)
                                                 //: name:UIApplicationDidEnterBackgroundNotification
                                                 name:UIApplicationDidEnterBackgroundNotification
                                               //: object:nil];
                                               object:nil];
    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(menuWillHide:)
                                             selector:@selector(menuWillHide:)
                                                 //: name:UIMenuControllerWillHideMenuNotification
                                                 name:UIMenuControllerWillHideMenuNotification
                                               //: object:nil];
                                               object:nil];
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onNewMessage:) name:[NSNotificationTool getChatNewMsgNoti] object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onNewMessage:) name:[DisappearJoinReactiveCompatible pageClick] object:nil];

    //: self.tableView.scrollsToTop = NO;
    self.tableView.scrollsToTop = NO;
    //: self.tableView.estimatedRowHeight = 0;
    self.tableView.estimatedRowHeight = 0;
    //: [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    //: self.tableView.backgroundColor = [UIColor whiteColor];
    self.tableView.backgroundColor = [UIColor whiteColor];


    //: _indicatorView = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0, 0, self.tableView.frame.size.width, 40)];
    _indicatorView = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(0, 0, self.tableView.frame.size.width, 40)];
    //: _indicatorView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
    _indicatorView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
    //: self.tableView.tableHeaderView = _indicatorView;
    self.tableView.tableHeaderView = _indicatorView;

    //: _heightCache = [NSMutableArray array];
    _heightCache = [NSMutableArray array];
    //: _uiMsgs = [[NSMutableArray alloc] init];
    _uiMsgs = [[NSMutableArray alloc] init];
    //: _firstLoad = YES;
    _firstLoad = YES;
}

//: - (void)setTargetID:(NSString *)targetID{
- (void)setTargetID:(NSString *)targetID{
    //: _targetID = targetID;
    _targetID = targetID;
    //: if (self.currentChatType == TalkingIMChatType_meeting) {
    if (self.currentChatType == TalkingIMChatType_meeting) {
        //: self.tableView.tableHeaderView = nil;
        self.tableView.tableHeaderView = nil;
    }
    //: [self loadMessage];
    [self loadMessage];
}

//: #pragma mark --- 拉取消息
#pragma mark --- 拉取消息
//: - (void)loadMessage {
- (void)loadMessage {
    //: if(_isLoadingMsg || _noMoreMsg) {
    if(_isLoadingMsg || _noMoreMsg) {
        //: return;
        return;
    }

    //: _isLoadingMsg = YES;
    _isLoadingMsg = YES;
    //: int msgCount = 20;
    int msgCount = 20;
    //: if (self.currentChatType == TalkingIMChatType_meeting) { 
    if (self.currentChatType == TalkingIMChatType_meeting) { // 公共聊天室一次性获取50条，不分页
        //: msgCount = 50;
        msgCount = 50;
    }

    //: @autoreleasepool{} __weak __typeof__(self) weak_self = self;;
    @autoreleasepool{} __weak __typeof__(self) weak_self = self;;
    //: if (self.currentChatType == TalkingIMChatType_group ||
    if (self.currentChatType == TalkingIMChatType_group ||
        //: self.currentChatType == TalkingIMChatType_meeting) { 
        self.currentChatType == TalkingIMChatType_meeting) { // 群聊
        //: [[V2TIMManager sharedInstance] getGroupHistoryMessageList:self.targetID count:msgCount lastMsg:self.msgForGet succ:^(NSArray<V2TIMMessage *> *msgs) {
        [[V2TIMManager sharedInstance] getGroupHistoryMessageList:self.targetID count:msgCount lastMsg:self.msgForGet succ:^(NSArray<V2TIMMessage *> *msgs) {
            //: @autoreleasepool{} __typeof__(self) self = weak_self;
            @autoreleasepool{} __typeof__(self) self = weak_self;
            //: [self getMessages:msgs msgCount:msgCount];
            [self getMessages:msgs msgCount:msgCount];
            //: if (self.currentChatType == TalkingIMChatType_meeting) { 
            if (self.currentChatType == TalkingIMChatType_meeting) { // 公共聊天室不分页
                //: self.noMoreMsg = YES;
                self.noMoreMsg = YES;
            }

        //: } fail:^(int code, NSString *msg) {
        } fail:^(int code, NSString *msg) {
            //: @autoreleasepool{} __typeof__(self) self = weak_self;
            @autoreleasepool{} __typeof__(self) self = weak_self;
            //: self.isLoadingMsg = NO;
            self.isLoadingMsg = NO;
            //: if ([ResumeV2Listener shared].isConnection) { 
            if ([ResumeV2Listener shared].isConnection) { //推送点进来会报错
                //: NSString *str = [@"Net Error, Try again later" localized];
                NSString *str = [[[CompleteEngineData sharedInstance] showDataTopMessage] localized];
                //: [self arcInfoMsgWithShowMsg:[str localized]];
                [self arcInfoWithShowMsg:[str localized]];
            }
            //: [self.indicatorView stopAnimating];
            [self.indicatorView stopAnimating];
        //: }];
        }];

    //: } else if (self.currentChatType == TalkingIMChatType_private ||
    } else if (self.currentChatType == TalkingIMChatType_private ||
               //: self.currentChatType == TalkingIMChatType_system ||
               self.currentChatType == TalkingIMChatType_system ||
               //: self.currentChatType == TalkingIMChatType_service) { 
               self.currentChatType == TalkingIMChatType_service) { // 单聊
        //: [[V2TIMManager sharedInstance] getC2CHistoryMessageList:self.targetID count:msgCount lastMsg:self.msgForGet succ:^(NSArray<V2TIMMessage *> *msgs) {
        [[V2TIMManager sharedInstance] getC2CHistoryMessageList:self.targetID count:msgCount lastMsg:self.msgForGet succ:^(NSArray<V2TIMMessage *> *msgs) {
            //: @autoreleasepool{} __typeof__(self) self = weak_self;
            @autoreleasepool{} __typeof__(self) self = weak_self;
            //: [self getMessages:msgs msgCount:msgCount];
            [self getMessages:msgs msgCount:msgCount];

        //: } fail:^(int code, NSString *msg) {
        } fail:^(int code, NSString *msg) {
            //: @autoreleasepool{} __typeof__(self) self = weak_self;
            @autoreleasepool{} __typeof__(self) self = weak_self;
            //: self.isLoadingMsg = NO;
            self.isLoadingMsg = NO;
            //: if ([ResumeV2Listener shared].isConnection) {
            if ([ResumeV2Listener shared].isConnection) {
                //: if (DistanceAppManager.share.appStatus == 0) {
                if (DistanceAppManager.share.appStatus == 0) {
                    //: NSString *str = [@"Net Error, Try again later" localized];
                    NSString *str = [[[CompleteEngineData sharedInstance] showDataTopMessage] localized];
                    //: [self arcInfoMsgWithShowMsg:[str localized]];
                    [self arcInfoWithShowMsg:[str localized]];
                }
            }
            //: [self.indicatorView stopAnimating];
            [self.indicatorView stopAnimating];
        //: }];
        }];

    //: } else {
    } else {
        //: NSLog(@"error");
    }
}

//: - (void)getMessages:(NSArray *)msgs msgCount:(int)msgCount {
- (void)getMessages:(NSArray *)msgs msgCount:(int)msgCount {

    //: if (msgs.count != 0) {
    if (msgs.count != 0) {
        //TX的节点
        //: self.msgForGet = msgs[msgs.count - 1];
        self.msgForGet = msgs[msgs.count - 1];
    }
    //拉取完毕
    //: if (msgs.count < msgCount) {
    if (msgs.count < msgCount) {
        //: self.noMoreMsg = YES;
        self.noMoreMsg = YES;
        //: self.indicatorView.height = 0;
        self.indicatorView.height = 0;
    }
    //UI-msgs
    //过滤消息
    //: NSMutableArray *array = [NSMutableArray arrayWithArray:msgs];
    NSMutableArray *array = [NSMutableArray arrayWithArray:msgs];
    //: for (NSInteger k = array.count - 1; k >= 0; --k) {
    for (NSInteger k = array.count - 1; k >= 0; --k) {
        //: V2TIMMessage *msg = array[k];
        V2TIMMessage *msg = array[k];
        //: NSLog(@"🚀：-----，%@， %@ %@, %d", msg, msg.userID, msg.timestamp, msg.isPeerRead);
        //: if (![msg.userID isEqualToString:self.targetID] && ![msg.groupID isEqualToString:self.targetID]) {
        if (![msg.userID isEqualToString:self.targetID] && ![msg.groupID isEqualToString:self.targetID]) {
            //: continue;
            continue;
        }
        //由后台发送的消息，如果是本人的，要过滤,避免和本地消息重复
        //: NSString *extra = [[NSString alloc]initWithData:msg.customElem.data encoding:NSUTF8StringEncoding];
        NSString *extra = [[NSString alloc]initWithData:msg.customElem.data encoding:NSUTF8StringEncoding];
        //: NSDictionary *dic = [NSDictionary dictionaryWithJsonString:extra];
        NSDictionary *dic = [NSDictionary sinceFromWithJsonString:extra];
        //: NSString *userId = [NSString stringWithFormat:@"%@",dic[@"From_Account"]];
        NSString *userId = [NSString stringWithFormat:@"%@",dic[[[CompleteEngineData sharedInstance] showEnableceId]]];
        //: if ([userId isEqualToString:DistanceAppManager.share.loginUserMode.userID]) {
        if ([userId isEqualToString:DistanceAppManager.share.loginUserMode.userID]) {
            //: [array removeObject:msg];
            [array removeObject:msg];
            //: continue;
            continue;
        }
    }

    //: msgs = [array copy];
    msgs = [array copy];
    //: NSMutableArray *uiMsgs = [self transUIMsgFromIMMsg:msgs];
    NSMutableArray *uiMsgs = [self transUIMsgFromIMMsg:msgs];

    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        // 记录新数据加载前偏移量
        //: CGFloat oldContentH = self.tableView.contentSize.height;
        CGFloat oldContentH = self.tableView.contentSize.height;
        //: CGFloat oldOffset = self.tableView.contentOffset.y;
        CGFloat oldOffset = self.tableView.contentOffset.y;

        // 更新数据源并刷新表格
        //: if (uiMsgs.count > 0) {
        if (uiMsgs.count > 0) {
            //: NSIndexSet *indexSet = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, uiMsgs.count)];
            NSIndexSet *indexSet = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, uiMsgs.count)];
            //: [self.uiMsgs insertObjects:uiMsgs atIndexes:indexSet];
            [self.uiMsgs insertObjects:uiMsgs atIndexes:indexSet];
            //: [self.heightCache removeAllObjects];
            [self.heightCache removeAllObjects];
        }
        //: [self.tableView reloadData];
        [self.tableView reloadData];
        //: [self.tableView layoutIfNeeded];
        [self.tableView layoutIfNeeded];

        //: if (uiMsgs.count > 0) {
        if (uiMsgs.count > 0) {
            //: CGFloat currContentH = self.tableView.contentSize.height;
            CGFloat currContentH = self.tableView.contentSize.height;
            //: if (self.firstLoad) { 
            if (self.firstLoad) { // 首次加载 滚动到底部
                //: CGFloat frameHeight = self.tableView.frame.size.height;
                CGFloat frameHeight = self.tableView.frame.size.height;
                //: if (currContentH > frameHeight) {
                if (currContentH > frameHeight) {
                    //: [self.tableView setContentOffset:CGPointMake(0, currContentH - frameHeight) animated:NO];
                    [self.tableView setContentOffset:CGPointMake(0, currContentH - frameHeight) animated:NO];
                }

            //: } else { 
            } else { // 加载更多 保持原位置
                //: [self.tableView setContentOffset:CGPointMake(0, oldOffset + (currContentH - oldContentH)) animated:NO];
                [self.tableView setContentOffset:CGPointMake(0, oldOffset + (currContentH - oldContentH)) animated:NO];
            }
        }

        //: self.isLoadingMsg = NO;
        self.isLoadingMsg = NO;
        //: [self.indicatorView stopAnimating];
        [self.indicatorView stopAnimating];
        //: self.firstLoad = NO;
        self.firstLoad = NO;
    //: });
    });
}

//: - (void)printfTXMsgs:(NSArray *)msgs {
- (void)printfTXMsgs:(NSArray *)msgs {


    //: NSInteger index = 0;
    NSInteger index = 0;
    //: for (V2TIMMessage *msgModel in msgs) {
    for (V2TIMMessage *msgModel in msgs) {
        //: if ([msgModel isKindOfClass:[V2TIMMessage class]]) {
        if ([msgModel isKindOfClass:[V2TIMMessage class]]) {
            //: NSString *extra = [[NSString alloc]initWithData:msgModel.customElem.data encoding:NSUTF8StringEncoding];
            NSString *extra = [[NSString alloc]initWithData:msgModel.customElem.data encoding:NSUTF8StringEncoding];
            //: NSDictionary *dic = [NSDictionary dictionaryWithJsonString:extra];
            NSDictionary *dic = [NSDictionary sinceFromWithJsonString:extra];

            //: BOOL direction = msgModel.isSelf;
            BOOL direction = msgModel.isSelf;

            //            if ([dic[@"rYMsgType"] isEqualToString:@"GJ:Sess:AutoGreet:TxtCustom"] || [dic[@"content"] isEqualToString:@"111"]) {
            //                direction = [dic[@"extra"][@"msgInfo"][@"changeDirection"] boolValue];
            //
            //                if (direction) {
            //                    NSLog(@"自动打招呼消息 右侧，msgId = %@，timeStamp = %lld，seq = %zd， random = %zd",msgModel.msgID,msgModel.timestamp.timeIntervalSince1970,msgModel.seq,msgModel.random);
            //                } else {
            //                    NSLog(@"自动打招呼消息 左侧，msgId = %@，timeStamp = %lld，seq = %zd， random = %zd",msgModel.msgID,msgModel.timestamp.timeIntervalSince1970,msgModel.seq,msgModel.random);
            //                }
            //            }


            //            NSLog(@"dic = %@, time = %lld",dic,msgModel.timestamp.timeIntervalSince1970);
        }
        //: index ++;
        index ++;
    }


}

//: - (void)onNewMessage:(NSNotification *)notification
- (void)onNewMessage:(NSNotification *)notification
{
    //: V2TIMMessage *msg = notification.object;
    V2TIMMessage *msg = notification.object;

    //: if ([msg.sender isEqualToString:DistanceAppManager.share.loginUserMode.userID]) {
    if ([msg.sender isEqualToString:DistanceAppManager.share.loginUserMode.userID]) {
        //过滤本人发送的消息
        //: return;
        return;
    }

    //: NSMutableArray *uiMsgs = [self transUIMsgFromIMMsg:@[msg]];
    NSMutableArray *uiMsgs = [self transUIMsgFromIMMsg:@[msg]];
    //: if (uiMsgs.count > 0) {
    if (uiMsgs.count > 0) {
        //生成需要插入的 index。即行号从 _uiMsgs.count - 1到 _uiMsgs.count + uiMsgs.count +1。 section 恒为 0。
        //: [self.tableView beginUpdates];
        [self.tableView beginUpdates];
        //: for (InscriptionThen *uiMsg in uiMsgs) {
        for (InscriptionThen *uiMsg in uiMsgs) {
            //: [self.uiMsgs addObject:uiMsg];
            [self.uiMsgs addObject:uiMsg];
            //: [self.tableView insertRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:_uiMsgs.count - 1 inSection:0]]
            [self.tableView insertRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:_uiMsgs.count - 1 inSection:0]]
                                  //: withRowAnimation:UITableViewRowAnimationFade];
                                  withRowAnimation:UITableViewRowAnimationFade];
        }
        //: [self.tableView endUpdates];
        [self.tableView endUpdates];
        // 查看历史消息的时候根据当前 contentOffset 判断是否需要滑动到底部
        //: if ((self.tableView.contentSize.height - self.tableView.contentOffset.y) < [UserTextMacroDefine getScreenHeight] * 1.5) {
        if ((self.tableView.contentSize.height - self.tableView.contentOffset.y) < [UserTextMacroDefine itemDetail] * 1.5) {
            //: [self scrollToBottom:YES];
            [self scrollToBottom:YES];
        }
        //: [self limitReadReport];
        [self limitReadReport];
    }
}

//: - (NSMutableArray *)transUIMsgFromIMMsg:(NSArray *)msgs
- (NSMutableArray *)transUIMsgFromIMMsg:(NSArray *)msgs
{
    //: NSMutableArray *uiMsgs = [NSMutableArray array];
    NSMutableArray *uiMsgs = [NSMutableArray array];
    //: for (NSInteger k = msgs.count - 1; k >= 0; --k) {
    for (NSInteger k = msgs.count - 1; k >= 0; --k) {
        //: V2TIMMessage *msg = msgs[k];
        V2TIMMessage *msg = msgs[k];
        //: if (![msg.userID isEqualToString:self.targetID] && ![msg.groupID isEqualToString:self.targetID]) {
        if (![msg.userID isEqualToString:self.targetID] && ![msg.groupID isEqualToString:self.targetID]) {
            //: continue;
            continue;
        }

        // 时间信息
        //: KeyEndReactiveCompatible *dateMsg = [self transSystemMsgFromDate:msg.timestamp];
        KeyEndReactiveCompatible *dateMsg = [self transSystemMsgFromDate:msg.timestamp];
        // 外部自定义的消息
        //: if ([self.delegate respondsToSelector:@selector(messageController:onNewMessage:)]) {
        if ([self.delegate respondsToSelector:@selector(messageController:onNewMessage:)]) {
            //: InscriptionThen *data = [self.delegate messageController:self onNewMessage:msg];
            InscriptionThen *data = [self.delegate messageController:self onNewMessage:msg];
            //: if(msg.groupID.length > 0 && ![data isKindOfClass:[KeyEndReactiveCompatible class]]){
            if(msg.groupID.length > 0 && ![data isKindOfClass:[KeyEndReactiveCompatible class]]){
                //: data.showName = YES;
                data.showName = YES;
            }

            //: if (data) {
            if (data) {

                //: data.innerMessage = msg;
                data.innerMessage = msg;
                //: data.msgID = msg.msgID;
                data.msgID = msg.msgID;
                //: switch (msg.status) {
                switch (msg.status) {
                    //: case 1: 
                    case 1: // V2TIM_MSG_STATUS_SENDING
                        //: data.status = Msg_Status_Sending_2;
                        data.status = Msg_Status_Sending_2;
                        //: break;
                        break;
                    //: case 2: 
                    case 2: // V2TIM_MSG_STATUS_SEND_SUCC
                        //: data.status = Msg_Status_Succ;
                        data.status = Msg_Status_Succ;
                        //: break;
                        break;
                    //: case 3: 
                    case 3: // V2TIM_MSG_STATUS_SEND_FAIL
                        //: data.status = Msg_Status_Fail;
                        data.status = Msg_Status_Fail;
                        //: break;
                        break;
                    //: default:
                    default:
                        //: break;
                        break;
                }

                //: if (dateMsg) {
                if (dateMsg) {
                    //: _msgForDate = msg;
                    _msgForDate = msg;
                    //: [uiMsgs addObject:dateMsg];
                    [uiMsgs addObject:dateMsg];
                }
                //: [uiMsgs addObject:data];
                [uiMsgs addObject:data];
                //: continue;
                continue;
            }
        }
    }
    //: return uiMsgs;
    return uiMsgs;
}


//: #pragma mark - Table view data source
#pragma mark - Table view data source
//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: return _uiMsgs.count;
    return _uiMsgs.count;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: InscriptionThen *data = _uiMsgs[indexPath.row];
    InscriptionThen *data = _uiMsgs[indexPath.row];

    //: CGFloat height = 0;
    CGFloat height = 0;
    //: if(_heightCache.count > indexPath.row) {
    if(_heightCache.count > indexPath.row) {
        //: height = [_heightCache[indexPath.row] floatValue];
        height = [_heightCache[indexPath.row] floatValue];
    }
    //    缓存存在问题待处理
    //    if (height > 0 && ![data isKindOfClass:[AbTalkingChatMatchMsgCellData class]] && ![data isKindOfClass:[TalkingChatTipsMsgCellData class]]) {
    //        return height;
    //    }
    //: height = [data pathDetail:[UIScreen mainScreen].bounds.size.height];
    height = [data pathDetail:[UIScreen mainScreen].bounds.size.height];
    //: [_heightCache insertObject:[NSNumber numberWithFloat:height] atIndex:indexPath.row];
    [_heightCache insertObject:[NSNumber numberWithFloat:height] atIndex:indexPath.row];
    //: return height;
    return height;
}

//: - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //: InscriptionThen *data;
    InscriptionThen *data;
    //: data = _uiMsgs[indexPath.row];
    data = _uiMsgs[indexPath.row];

    //: MakeMessageCell *cell = nil;
    MakeMessageCell *cell = nil;
    //: if ([self.delegate respondsToSelector:@selector(messageController:onShowMessageData:)]) {
    if ([self.delegate respondsToSelector:@selector(messageController:onShowMessageData:)]) {
        //: cell = [self.delegate messageController:self onShowMessageData:data];
        cell = [self.delegate messageController:self onShowMessageData:data];
        //: if (cell) {
        if (cell) {
            //: cell.delegate = self;
            cell.delegate = self;
            //: return cell;
            return cell;
        }
    }
    //: if (!data.reuseId) {
    if (!data.reuseId) {

        //: if([data isKindOfClass:[KeyEndReactiveCompatible class]]) {
        if([data isKindOfClass:[KeyEndReactiveCompatible class]]) {
            //: data.reuseId = MakeMessageCell.TSystemMessageCell_ReuseId;
            data.reuseId = MakeMessageCell.TSystemMessageCell_ReuseId;
        }
        //: else {
        else {
            //: return [MakeMessageCell new];
            return [MakeMessageCell new];
        }
    }
    //: cell = [tableView dequeueReusableCellWithIdentifier:data.reuseId forIndexPath:indexPath];
    cell = [tableView dequeueReusableCellWithIdentifier:data.reuseId forIndexPath:indexPath];
    //: if (!cell) {
    if (!cell) {

        //: cell = [[MakeMessageCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:data.reuseId];
        cell = [[MakeMessageCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:data.reuseId];
    }
    //: cell.delegate = self;
    cell.delegate = self;
    //: [cell fillWith:_uiMsgs[indexPath.row]];
    [cell afterMidWith:_uiMsgs[indexPath.row]];
    //: return cell;
    return cell;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
}

//: - (void)scrollToBottom:(BOOL)animate {
- (void)scrollToBottom:(BOOL)animate {
    //: if (_uiMsgs.count > 0 && self.menuIsShow == NO) {
    if (_uiMsgs.count > 0 && self.menuIsShow == NO) {
        //: dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
        dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
            //: [self.tableView scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:self->_uiMsgs.count - 1 inSection:0] atScrollPosition:UITableViewScrollPositionBottom animated:animate];
            [self.tableView scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:self->_uiMsgs.count - 1 inSection:0] atScrollPosition:UITableViewScrollPositionBottom animated:animate];
        //: });
        });
    }

}

//: - (void)didTapViewController
- (void)didTapViewController
{
    //: if(_delegate && [_delegate respondsToSelector:@selector(didTapInMessageController:)]) {
    if(_delegate && [_delegate respondsToSelector:@selector(didTapInMessageController:)]) {
        //: [_delegate didTapInMessageController:self];
        [_delegate didTapInMessageController:self];
    }
}

//: #pragma mark - 自定义方法
#pragma mark - 自定义方法
/// 发送消息
/// - Parameter msg: cellData
//: - (void)sendCustomMessage:(InscriptionThen *)msg {
- (void)sendCustomMessage:(InscriptionThen *)msg {

    //: if (self.currentChatType == TalkingIMChatType_meeting) {
    if (self.currentChatType == TalkingIMChatType_meeting) {
        //: if (_uiMsgs.count > 7000) {
        if (_uiMsgs.count > 7000) {
            //: V2TIMMessage *msg = _uiMsgs.firstObject;
            V2TIMMessage *msg = _uiMsgs.firstObject;
            //: [[V2TIMManager sharedInstance] deleteMessages:@[msg] succ:nil fail:nil];
            [[V2TIMManager sharedInstance] deleteMessages:@[msg] succ:nil fail:nil];
            //: [_uiMsgs removeObject:msg];
            [_uiMsgs removeObject:msg];
        }
    }

    //: [self.tableView beginUpdates];
    [self.tableView beginUpdates];
    //: V2TIMMessage *imMsg = msg.innerMessage;
    V2TIMMessage *imMsg = msg.innerMessage;
    //: InscriptionThen *dateMsg = nil;
    InscriptionThen *dateMsg = nil;
    //: if (msg.status == Msg_Status_Init) {
    if (msg.status == Msg_Status_Init) {
        //: if (imMsg) {
        if (imMsg) {
            //: dateMsg = [self transSystemMsgFromDate:imMsg.timestamp];
            dateMsg = [self transSystemMsgFromDate:imMsg.timestamp];
        }
    //: } else if (imMsg) {
    } else if (imMsg) {
        //重发
        //: dateMsg = [self transSystemMsgFromDate:[NSDate date]];
        dateMsg = [self transSystemMsgFromDate:[NSDate date]];
        //: NSInteger row = [_uiMsgs indexOfObject:msg];
        NSInteger row = [_uiMsgs indexOfObject:msg];
        //: [_heightCache removeObjectAtIndex:row];
        [_heightCache removeObjectAtIndex:row];
        //: [_uiMsgs removeObjectAtIndex:row];
        [_uiMsgs removeObjectAtIndex:row];
        //: [self.tableView deleteRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:row inSection:0]]
        [self.tableView deleteRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:row inSection:0]]
                              //: withRowAnimation:UITableViewRowAnimationFade];
                              withRowAnimation:UITableViewRowAnimationFade];

        //: [[V2TIMManager sharedInstance] deleteMessageFromLocalStorage:imMsg succ:nil fail:nil];
        [[V2TIMManager sharedInstance] deleteMessageFromLocalStorage:imMsg succ:nil fail:nil];

    //: } else {
    } else {
        //: [self.tableView endUpdates];
        [self.tableView endUpdates];
        //: NSLog(@"Unknown message state");
        //: return;
        return;
    }
    //: @autoreleasepool{} __weak __typeof__(self) weak_self = self;
    @autoreleasepool{} __weak __typeof__(self) weak_self = self;
    //: BOOL isGroup = self.currentChatType == TalkingIMChatType_meeting || self.currentChatType == TalkingIMChatType_group;
    BOOL isGroup = self.currentChatType == TalkingIMChatType_meeting || self.currentChatType == TalkingIMChatType_group;
    //: NSInteger sender = DistanceAppManager.share.loginUserMode.userID.integerValue;
    NSInteger sender = DistanceAppManager.share.loginUserMode.userID.integerValue;
    //: NSString *msgID;
    NSString *msgID;
    //: if (isGroup) {
    if (isGroup) {
        //: msgID = [[V2TIMManager sharedInstance] insertGroupMessageToLocalStorage:imMsg to:self.targetID sender:@(sender).description succ:nil fail:nil];
        msgID = [[V2TIMManager sharedInstance] insertGroupMessageToLocalStorage:imMsg to:self.targetID sender:@(sender).description succ:nil fail:nil];
    //: } else {
    } else {
        //: msgID = [[V2TIMManager sharedInstance] insertC2CMessageToLocalStorage:imMsg to:self.targetID sender:@(sender).description succ:nil fail:nil];
        msgID = [[V2TIMManager sharedInstance] insertC2CMessageToLocalStorage:imMsg to:self.targetID sender:@(sender).description succ:nil fail:nil];
    }

    // 展示 UI 界面
    //: msg.status = Msg_Status_Sending;
    msg.status = Msg_Status_Sending;
    //: msg.name = [msg.innerMessage nickName];
    msg.name = [msg.innerMessage nickName];
    //: msg.avatarUrl = [NSURL URLWithString:[msg.innerMessage faceURL]];
    msg.avatarUrl = [NSURL URLWithString:[msg.innerMessage faceURL]];
    //: msg.msgID = msgID;
    msg.msgID = msgID;
    //: if(dateMsg) {
    if(dateMsg) {
        //: _msgForDate = imMsg;
        _msgForDate = imMsg;
        //: [_uiMsgs addObject:dateMsg];
        [_uiMsgs addObject:dateMsg];
        //: [self.tableView insertRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:_uiMsgs.count - 1 inSection:0]]
        [self.tableView insertRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:_uiMsgs.count - 1 inSection:0]]
                              //: withRowAnimation:UITableViewRowAnimationFade];
                              withRowAnimation:UITableViewRowAnimationFade];
    }
    //: if (isGroup && ![msg isKindOfClass:[KeyEndReactiveCompatible class]]) {
    if (isGroup && ![msg isKindOfClass:[KeyEndReactiveCompatible class]]) {
        //: msg.showName = YES;
        msg.showName = YES;
    }
    //: [_uiMsgs addObject:msg];
    [_uiMsgs addObject:msg];
    //: [self.tableView insertRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:_uiMsgs.count - 1 inSection:0]]
    [self.tableView insertRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:_uiMsgs.count - 1 inSection:0]]
                          //: withRowAnimation:UITableViewRowAnimationFade];
                          withRowAnimation:UITableViewRowAnimationFade];
    //: [self.tableView endUpdates];
    [self.tableView endUpdates];
    //: [self scrollToBottom:YES];
    [self scrollToBottom:YES];

    //: int delay = 1;
    int delay = 1;

    //: dispatch_after(dispatch_time((0ull), (int64_t)(delay * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(delay * 1000000000ull)), dispatch_get_main_queue(), ^{
        //: @autoreleasepool{} __typeof__(self) self = weak_self;
        @autoreleasepool{} __typeof__(self) self = weak_self;
        //: if(msg.status == Msg_Status_Sending) {
        if(msg.status == Msg_Status_Sending) {
            //: [self changeCustomMsg:msg status:Msg_Status_Sending_2];
            [self changeCustomMsg:msg status:Msg_Status_Sending_2];
        }
    //: });
    });
}

/// 更改cellData加载状态
/// - Parameters:
///   - msg: cellData
///   - status: 加载状态
//: - (void)changeCustomMsg:(InscriptionThen *)msg status:(TMsgStatus)status {
- (void)changeCustomMsg:(InscriptionThen *)msg status:(TMsgStatus)status {
    //: msg.status = status;
    msg.status = status;
    //: NSInteger index = [_uiMsgs indexOfObject:msg];
    NSInteger index = [_uiMsgs indexOfObject:msg];
    //: if ([self.tableView numberOfRowsInSection:0] > index) {
    if ([self.tableView numberOfRowsInSection:0] > index) {
        //: MakeMessageCell *cell = [self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:index inSection:0]];
        MakeMessageCell *cell = [self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:index inSection:0]];
        //: if (cell != nil) {
        if (cell != nil) {
            //: [cell fillWith:msg];
            [cell afterMidWith:msg];
        }
    //: } else {
    } else {
        //: NSLog(@"缺少cell");
    }
}

/// 修改消息本地数据
/// - Parameters:
///   - extral: 需要保存的数据
///   - msg: cellData
//: - (void)modifyCustomMessageDataWithExtral:(NSDictionary *)extral cellData:(InscriptionThen *)msg {
- (void)modifyCustomMessageDataWithExtral:(NSDictionary *)extral cellData:(InscriptionThen *)msg {
    //: V2TIMMessage *imMsg = msg.innerMessage;
    V2TIMMessage *imMsg = msg.innerMessage;
    //: NSDictionary *dict = [DistrictManagerReactiveCompatible parseTXMessageDataWithData:imMsg.customElem.data];
    NSDictionary *dict = [DistrictManagerReactiveCompatible productDataWithData:imMsg.customElem.data];
    //: NSMutableDictionary *tempDict = [NSMutableDictionary dictionaryWithDictionary:dict];
    NSMutableDictionary *tempDict = [NSMutableDictionary dictionaryWithDictionary:dict];
    //: NSMutableDictionary *newExtraDict = tempDict[@"extra"];
    NSMutableDictionary *newExtraDict = tempDict[[[CompleteEngineData sharedInstance] show_popStyleTitle]];

    //: if ([newExtraDict containsObjectForKey:@"msgInfo"] && [extral containsObjectForKey:@"msgInfo"]) {
    if ([newExtraDict containsObjectForKey:[[CompleteEngineData sharedInstance] mainGroupScaleName]] && [extral containsObjectForKey:[[CompleteEngineData sharedInstance] mainGroupScaleName]]) {
        //: newExtraDict[@"msgInfo"] = extral[@"msgInfo"];
        newExtraDict[[[CompleteEngineData sharedInstance] mainGroupScaleName]] = extral[[[CompleteEngineData sharedInstance] mainGroupScaleName]];
    }
    //: if ([newExtraDict containsObjectForKey:@"params"] && [extral containsObjectForKey:@"params"]) {
    if ([newExtraDict containsObjectForKey:[[CompleteEngineData sharedInstance] show_withValue]] && [extral containsObjectForKey:[[CompleteEngineData sharedInstance] show_withValue]]) {
        //: newExtraDict[@"params"] = extral[@"params"];
        newExtraDict[[[CompleteEngineData sharedInstance] show_withValue]] = extral[[[CompleteEngineData sharedInstance] show_withValue]];
    }

    // 更新消息本地保存的数据
    //: tempDict[@"extra"] = newExtraDict;
    tempDict[[[CompleteEngineData sharedInstance] show_popStyleTitle]] = newExtraDict;
    //: NSString *extraString = [tempDict jsonStringEncoded];
    NSString *extraString = [tempDict jsonStringEncoded];
    //: NSData *cData = [extraString dataUsingEncoding:NSUTF8StringEncoding];
    NSData *cData = [extraString dataUsingEncoding:NSUTF8StringEncoding];
    //: imMsg.customElem.data = cData;
    imMsg.customElem.data = cData;
    //: [[V2TIMManager sharedInstance] modifyMessage:imMsg completion:^(int code, NSString *desc, V2TIMMessage *msg) {
    [[V2TIMManager sharedInstance] modifyMessage:imMsg completion:^(int code, NSString *desc, V2TIMMessage *msg) {
    //: }];
    }];

    // 更新内存模型
    //: msg.msgModel = [[AbTalkingChatMsgBaseModel alloc] initWithDictionary:newExtraDict error:nil];
    msg.msgModel = [[ContentModel alloc] initWithDictionary:newExtraDict error:nil];
}

/// 更改自定义消息发送状态
/// - Parameters:
///   - msg: 消息数据
///   - msgId: 本人发送，接口返回的消息ID（可能为nil）
///   - incon: 收益
///   - status: 消息发送状态
//: - (void)changeCustomMsg:(InscriptionThen *)msg msgId:(NSString *)msgId msgIncome:(NSNumber *)income status:(TMsgStatus)status {
- (void)changeCustomMsg:(InscriptionThen *)msg msgId:(NSString *)msgId msgIncome:(NSNumber *)income status:(TMsgStatus)status {
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: NSMutableDictionary *tempDic = [TUIMessageController getLocalCustomDictionaryWithMessage:msg];
        NSMutableDictionary *tempDic = [MagnitudeernationalismTableViewController getLocalCustomDictionaryWithMessage:msg];
        //: [tempDic setObject:@(status).description forKey:@"status"];
        [tempDic setObject:@(status).description forKey:[[CompleteEngineData sharedInstance] mainDeviceRowValue]];
        //: [tempDic setObject:income forKey:@"msgIncome"];
        [tempDic setObject:income forKey:[[CompleteEngineData sharedInstance] mainLockStr]];
        //: if (msgId != nil) { [tempDic setObject:msgId forKey:@"msgId"]; }
        if (msgId != nil) { [tempDic setObject:msgId forKey:[[CompleteEngineData sharedInstance] showAfterMsg]]; }
        //: NSError *error = nil;
        NSError *error = nil;
        //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:tempDic options:NSJSONWritingPrettyPrinted error:&error];
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:tempDic options:NSJSONWritingPrettyPrinted error:&error];
        //: [msg.innerMessage setLocalCustomData:jsonData];
        [msg.innerMessage setLocalCustomData:jsonData];

        //: msg.status = status;
        msg.status = status;
        //: msg.msgIncome = income.floatValue;
        msg.msgIncome = income.floatValue;
        //: msg.msgModel.msgInfo.msgId = msgId;
        msg.msgModel.msgInfo.msgId = msgId;
        //: [self inner_reloadCellWithMessage:msg];
        [self inner_reloadCellWithMessage:msg];
    //: });
    });
}

//: #pragma mark - 私密照片
#pragma mark - 私密照片
/// 更改私密照片消息的状态
/// - Parameters:
///   - msg: 图片消息
///   - model: 私密照片模型
//: - (void)changeIntimatePhotoMsg:(InscriptionThen *)msg photoModel:(AbTalkingChatMsgIntimatePhotoModel *)model {
- (void)changeIntimatePhotoMsg:(InscriptionThen *)msg photoModel:(TimeExposureModel *)model {
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: if (model == nil) { return; }
        if (model == nil) { return; }
        //: [AbTalkingChatMsgIntimatePhotoModel saveIntimatePhoto:model forMsgID:msg.msgID];
        [TimeExposureModel saveIntimatePhoto:model forMsgID:msg.msgID];
        //: msg.msgModel.msgInfo.intimatePhoto = model;
        msg.msgModel.msgInfo.intimatePhoto = model;
        //: [self inner_reloadCellWithMessage:msg];
        [self inner_reloadCellWithMessage:msg];
    //: });
    });
}

//: #pragma mark - 私密视频
#pragma mark - 私密视频
/// 更改私密视频消息的状态
/// - Parameters:
///   - msg: 视频消息
///   - model: 私密视频模型
//: - (void)changeIntimateVideoMsg:(InscriptionThen *)msg videoModel:(AbTalkingChatMsgVideoModel *)model {
- (void)changeIntimateVideoMsg:(InscriptionThen *)msg videoModel:(OeuvreModel *)model {
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: if (model == nil) { return; }
        if (model == nil) { return; }
        //: [AbTalkingChatMsgVideoModel saveIntimateVideo:model forMsgID:msg.msgID];
        [OeuvreModel saveIntimateVideo:model forMsgID:msg.msgID];
        //: msg.msgModel.msgInfo.video = model;
        msg.msgModel.msgInfo.video = model;
        //: [self inner_reloadCellWithMessage:msg];
        [self inner_reloadCellWithMessage:msg];
    //: });
    });
}

//: #pragma mark - 索要礼物
#pragma mark - 索要礼物
/// 更改索要礼物消息的状态
//: - (void)changeIntimateGiftMsg:(InscriptionThen *)msg {
- (void)changeIntimateGiftMsg:(InscriptionThen *)msg {
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: [WantGiftModel saveAskForGiftWithMsgID:msg.msgID];
        [SizeModel saveAskForGiftWithMsgID:msg.msgID];
        //: msg.msgModel.msgInfo.wantGift.sendStatus = 1;
        msg.msgModel.msgInfo.wantGift.sendStatus = 1;
        //: [self inner_reloadCellWithMessage:msg];
        [self inner_reloadCellWithMessage:msg];
    //: });
    });
}

//: #pragma mark - 翻译
#pragma mark - 翻译
/// 翻译消息，更新本地消息状态
/// - Parameters:
///   - msg: 消息数据
///   - transContent: 翻译后的内容
///   - status: 当前翻译状态
//: - (void)translateMessage:(InscriptionThen *)msg translatedContent:(NSString *)transContent status:(TMsgTranslateStatus)status {
- (void)translateMessage:(InscriptionThen *)msg translatedContent:(NSString *)transContent status:(AddWidthQuantity)status {
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
        //: NSString *content = transContent.length > 0? transContent:@"";
        NSString *content = transContent.length > 0? transContent:@"";
        //: NSMutableDictionary *tempDic = [TUIMessageController getLocalCustomDictionaryWithMessage:msg];
        NSMutableDictionary *tempDic = [MagnitudeernationalismTableViewController getLocalCustomDictionaryWithMessage:msg];
        //: [tempDic setObject:@(status) forKey:@"TMsgTranslateStatus"];
        [tempDic setObject:@(status) forKey:[[CompleteEngineData sharedInstance] main_warningValue]];
        //: [tempDic setObject:content forKey:@"TMsgTranslatedContent"];
        [tempDic setObject:content forKey:[[CompleteEngineData sharedInstance] main_expressFormat]];

        //: NSError *error = nil;
        NSError *error = nil;
        //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:tempDic options:NSJSONWritingPrettyPrinted error:&error];
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:tempDic options:NSJSONWritingPrettyPrinted error:&error];
        //: [msg.innerMessage setLocalCustomData:jsonData];
        [msg.innerMessage setLocalCustomData:jsonData];
        //: msg.translateStatus = status;
        msg.translateStatus = status;
        //: msg.translatedContent = content;
        msg.translatedContent = content;

        //: [self inner_reloadCellWithMessage:msg];
        [self inner_reloadCellWithMessage:msg];
    //: });
    });
}

/// 获取本地自定义消息字典
/// - Parameter msg: 消息数据
//: + (NSMutableDictionary *)getLocalCustomDictionaryWithMessage:(InscriptionThen *)msg {
+ (NSMutableDictionary *)getLocalCustomDictionaryWithMessage:(InscriptionThen *)msg {
    //: V2TIMMessage *imMsg = msg.innerMessage;
    V2TIMMessage *imMsg = msg.innerMessage;
    //: NSString *customStr = [[NSString alloc]initWithData:imMsg.localCustomData encoding:NSUTF8StringEncoding];
    NSString *customStr = [[NSString alloc]initWithData:imMsg.localCustomData encoding:NSUTF8StringEncoding];
    //: NSDictionary *customDic = @{};
    NSDictionary *customDic = @{};
    //: if (customStr != nil && customStr.length > 0) {
    if (customStr != nil && customStr.length > 0) {
        //: customDic = [NSDictionary dictionaryWithJsonString:customStr];
        customDic = [NSDictionary sinceFromWithJsonString:customStr];
    }
    //: NSMutableDictionary *tempDic = [[NSMutableDictionary alloc] initWithDictionary:customDic];
    NSMutableDictionary *tempDic = [[NSMutableDictionary alloc] initWithDictionary:customDic];

    //: return tempDic;
    return tempDic;
}

//: - (void)deleteCustomMessage:(InscriptionThen *)msg {
- (void)deleteCustomMessage:(InscriptionThen *)msg {
    //: V2TIMMessage *imMsg = msg.innerMessage;
    V2TIMMessage *imMsg = msg.innerMessage;
    //: InscriptionThen *dateMsg = nil;
    InscriptionThen *dateMsg = nil;
    //: dateMsg = [self transSystemMsgFromDate:[NSDate date]];
    dateMsg = [self transSystemMsgFromDate:[NSDate date]];
    //: NSInteger row = [_uiMsgs indexOfObject:msg];
    NSInteger row = [_uiMsgs indexOfObject:msg];
    //: [_heightCache removeObjectAtIndex:row];
    [_heightCache removeObjectAtIndex:row];
    //: [_uiMsgs removeObjectAtIndex:row];
    [_uiMsgs removeObjectAtIndex:row];
    //: [self.tableView deleteRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:row inSection:0]]
    [self.tableView deleteRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:row inSection:0]]
                          //: withRowAnimation:UITableViewRowAnimationFade];
                          withRowAnimation:UITableViewRowAnimationFade];

    //: [[V2TIMManager sharedInstance] deleteMessageFromLocalStorage:imMsg succ:nil fail:nil];
    [[V2TIMManager sharedInstance] deleteMessageFromLocalStorage:imMsg succ:nil fail:nil];

}


/// 刷新cell
/// - Parameter msg: 消息数据
//: - (void)inner_reloadCellWithMessage:(InscriptionThen *)msg {
- (void)inner_reloadCellWithMessage:(InscriptionThen *)msg {
    //: NSInteger index = [_uiMsgs indexOfObject:msg];
    NSInteger index = [_uiMsgs indexOfObject:msg];
    //: if ([self.tableView numberOfRowsInSection:0] > index) {
    if ([self.tableView numberOfRowsInSection:0] > index) {
        //: MakeMessageCell *cell = [self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:index inSection:0]];
        MakeMessageCell *cell = [self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:index inSection:0]];
        //: if (cell != nil) {
        if (cell != nil) {
            //: [cell fillWith:msg];
            [cell afterMidWith:msg];
            //: [UIView performWithoutAnimation:^{
            [UIView performWithoutAnimation:^{
                //: [self.tableView reloadRowAtIndexPath:[NSIndexPath indexPathForRow:index inSection:0] withRowAnimation:UITableViewRowAnimationNone];
                [self.tableView reloadRowAtIndexPath:[NSIndexPath indexPathForRow:index inSection:0] withRowAnimation:UITableViewRowAnimationNone];
            //: }];
            }];
        }
    //: } else {
    } else {
        //: NSLog(@"缺少cell");
    }
}

//: - (KeyEndReactiveCompatible *)transSystemMsgFromDate:(NSDate *)date
- (KeyEndReactiveCompatible *)transSystemMsgFromDate:(NSDate *)date
{
    //: if(_msgForDate == nil || fabs([date timeIntervalSinceDate:_msgForDate.timestamp]) > (5 * 60)) {
    if(_msgForDate == nil || fabs([date timeIntervalSinceDate:_msgForDate.timestamp]) > (5 * 60)) {
        //: KeyEndReactiveCompatible *system = [[KeyEndReactiveCompatible alloc] initWithDirection:TMsgDirectionMsgDirectionOutgoing];
        KeyEndReactiveCompatible *system = [[KeyEndReactiveCompatible alloc] initWithDirection:UserAppMeasurableMsgDirectionOutgoing];
        //: system.contentStr = [NSDate tx_messageTimeStringWithShowDetail:YES date:date];
        system.contentStr = [NSDate trifleColorWithShowDetail:YES date:date];
        //: system.reuseId = MakeMessageCell.TSystemMessageCell_ReuseId;
        system.reuseId = MakeMessageCell.TSystemMessageCell_ReuseId;
        //: return system;
        return system;
    }
    //: return nil;
    return nil;
}

///滚动时，隐藏键盘
//: - (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{

    //: [self didTapViewController];
    [self didTapViewController];

}

//: - (void)scrollViewDidScroll:(UIScrollView *)scrollView
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    //: if(!_noMoreMsg && scrollView.contentOffset.y <= 40) {
    if(!_noMoreMsg && scrollView.contentOffset.y <= 40) {
        //: if(!_indicatorView.isAnimating) {
        if(!_indicatorView.isAnimating) {
            //: [_indicatorView startAnimating];
            [_indicatorView startAnimating];
        }
    }
    //: else {
    else {
        //: if(_indicatorView.isAnimating) {
        if(_indicatorView.isAnimating) {
            //: [_indicatorView stopAnimating];
            [_indicatorView stopAnimating];
        }
    }
}

//: - (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    //: if(scrollView.contentOffset.y <= 40) {
    if(scrollView.contentOffset.y <= 40) {
        //: [self loadMessage];
        [self loadMessage];
    }
}

//: #pragma mark - message cell delegate
#pragma mark - message cell delegate

//: - (void)onSelectMessageWithCell:(MakeMessageCell *)cell{
- (void)equilateralWithCell:(MakeMessageCell *)cell {
    //: if ([self.delegate respondsToSelector:@selector(messageController:onSelectMessageContent:)]) {
    if ([self.delegate respondsToSelector:@selector(messageController:onSelectMessageContent:)]) {
        //: [self.delegate messageController:self onSelectMessageContent:cell];
        [self.delegate messageController:self onSelectMessageContent:cell];
    }
}

//: #pragma mark - cell长按手势
#pragma mark - cell长按手势

//: - (void)onLongPressMessageWithCell:(MakeMessageCell *)cell{
- (void)hourlongWithCell:(MakeMessageCell *)cell{

    //: InscriptionThen *data = cell.messageData;
    InscriptionThen *data = cell.messageData;
    //: if ([[self requiredResponseWithLongGestureRecognizer] containsObject:[data class]] == NO) {
    if ([[self requiredResponseWithLongGestureRecognizer] containsObject:[data class]] == NO) {
        //: return;
        return;
    }

    //: BOOL hasJumps = NO;
    BOOL hasJumps = NO;
    //: if ([data isKindOfClass:[ToCellData class]]) {
    if ([data isKindOfClass:[ToCellData class]]) {
        //: ToCellData *textCellData = (ToCellData *)data;
        ToCellData *textCellData = (ToCellData *)data;

        //: if (textCellData.hasJump) {
        if (textCellData.hasJump) {
            //: hasJumps = YES;
            hasJumps = YES;
        }
    }

    //: NSMutableArray *items = [NSMutableArray array];
    NSMutableArray *items = [NSMutableArray array];
    // 只有文字才有复制功能
    //: if (([data isKindOfClass:[ToModelCellData class]] ||
    if (([data isKindOfClass:[ToModelCellData class]] ||
         //: [data isKindOfClass:[ToCellData class]]) && hasJumps == NO) {
         [data isKindOfClass:[ToCellData class]]) && hasJumps == NO) {
        // 过滤掉音视频通话文本消息
        //: if (data.msgModel.msgInfo.callCmd == nil) {
        if (data.msgModel.msgInfo.callCmd == nil) {
            //: [items addObject:[[UIMenuItem alloc] initWithTitle:@"Copy".localized action:@selector(onCopyMsg:)]];
            [items addObject:[[UIMenuItem alloc] initWithTitle:[[CompleteEngineData sharedInstance] main_engineFormat].localized action:@selector(onCopyMsg:)]];
            // 私聊 && 接收消息 && 消息未翻译成功
            //: if ([data isKindOfClass:[ToCellData class]] &&
            if ([data isKindOfClass:[ToCellData class]] &&
                //: data.direction == TMsgDirectionMsgDirectionIncoming &&
                data.direction == UserAppMeasurableMsgDirectionIncoming &&
                //: data.translateStatus != TMsgTranslateStatusMsgTranslate_succeed) {
                data.translateStatus != AddWidthQuantityMsgTranslate_succeed) {
                //: [items addObject:[[UIMenuItem alloc] initWithTitle:@"Trans".localized action:@selector(onTranslateMsg:)]];
                [items addObject:[[UIMenuItem alloc] initWithTitle:[[CompleteEngineData sharedInstance] main_subMessage].localized action:@selector(onTranslateMsg:)]];
            }
        }
    }

    //: if ([self canReplyResponseWithLongGestureRecognizer:data]) {
    if ([self canReplyResponseWithLongGestureRecognizer:data]) {
        //: [items addObject:[[UIMenuItem alloc] initWithTitle:@"Reply".localized action:@selector(onReplyMsg:)]];
        [items addObject:[[UIMenuItem alloc] initWithTitle:[[CompleteEngineData sharedInstance] showWarningTitle].localized action:@selector(onReplyMsg:)]];
    }

    //: if (items.count == 0) {
    if (items.count == 0) {
        //: return;
        return;
    }

    //: self.menuIsShow = YES;
    self.menuIsShow = YES;
    //: BOOL isFirstResponder = NO;
    BOOL isFirstResponder = NO;
    //: if(_delegate && [_delegate respondsToSelector:@selector(messageController:willShowMenuInCell:)]) {
    if(_delegate && [_delegate respondsToSelector:@selector(messageController:willShowMenuInCell:)]) {
        //: isFirstResponder = [_delegate messageController:self willShowMenuInCell:cell];
        isFirstResponder = [_delegate messageController:self willShowMenuInCell:cell];
    }
    //: if(isFirstResponder) {
    if(isFirstResponder) {
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(menuDidHide:) name:UIMenuControllerDidHideMenuNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(menuDidHide:) name:UIMenuControllerDidHideMenuNotification object:nil];
    //: } else {
    } else {
        //: [self becomeFirstResponder];
        [self becomeFirstResponder];
    }
    //: UIMenuController *controller = [UIMenuController sharedMenuController];
    UIMenuController *controller = [UIMenuController sharedMenuController];
    //: controller.menuItems = items;
    controller.menuItems = items;
    //: _menuUIMsg = data;
    _menuUIMsg = data;
    //: dispatch_after(dispatch_time((0ull), (int64_t)(0.2 * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(0.2 * 1000000000ull)), dispatch_get_main_queue(), ^{
        //: [controller setTargetRect:cell.container.bounds inView:cell.container];
        [controller setTargetRect:cell.container.bounds inView:cell.container];
        //: [controller setMenuVisible:YES animated:YES];
        [controller setMenuVisible:YES animated:YES];
    //: });
    });
}

///长按支持手势的cell数据
//: - (NSArray *)requiredResponseWithLongGestureRecognizer {
- (NSArray *)requiredResponseWithLongGestureRecognizer {
    //: return @[[ToModelCellData class],
    return @[[ToModelCellData class],
             //: [ToCellData class],
             [ToCellData class],
             //: [TitleCellData class],
             [TitleCellData class],
             //: [ChatCellData class],
             [ChatCellData class],
             //: [EqualKeyCellData class],
             [EqualKeyCellData class],
             //: [PitchReactiveCompatible class],
             [PitchReactiveCompatible class],
             //: [ModeReactiveCompatible class]];
             [ModeReactiveCompatible class]];
}

//: - (void)onRetryMessageWithCell:(MakeMessageCell *)cell{
- (void)tapCellWithCell:(MakeMessageCell *)cell {

    //: if ([self.delegate respondsToSelector:@selector(messageController:onRetryMessageContent:)]) {
    if ([self.delegate respondsToSelector:@selector(messageController:onRetryMessageContent:)]) {
        //: [self.delegate messageController:self onRetryMessageContent:cell];
        [self.delegate messageController:self onRetryMessageContent:cell];
    }

}

//: - (void)onSelectMessageAvatarWithCell:(MakeMessageCell *)cell{
- (void)statuteNameCellWithCell:(MakeMessageCell *)cell {
    //: if ([self.delegate respondsToSelector:@selector(messageController:onSelectMessageAvatar:)]) {
    if ([self.delegate respondsToSelector:@selector(messageController:onSelectMessageAvatar:)]) {
        //: [self.delegate messageController:self onSelectMessageAvatar:cell];
        [self.delegate messageController:self onSelectMessageAvatar:cell];
    }
}

//: -(BOOL)canPerformAction:(SEL)action withSender:(id)sender
-(BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
    //: if (action == @selector(onDelete:) ||
    if (action == @selector(onDelete:) ||
        //: action == @selector(onRevoke:) ||
        action == @selector(onRevoke:) ||
        //: action == @selector(onReSend:) ||
        action == @selector(onReSend:) ||
        //: action == @selector(onCopyMsg:) ||
        action == @selector(onCopyMsg:) ||
        //: action == @selector(onTranslateMsg:) ||
        action == @selector(onTranslateMsg:) ||
        //: action == @selector(onMulitSelect:) ||
        action == @selector(onMulitSelect:) ||
        //: action == @selector(onReplyMsg:)){
        action == @selector(onReplyMsg:)){
        //: return YES;
        return YES;
    }
    //: return NO;
    return NO;
}

//: - (BOOL)canBecomeFirstResponder
- (BOOL)canBecomeFirstResponder
{
    //: return YES;
    return YES;
}

//: - (void)menuDidHide:(NSNotification*)notification
- (void)menuDidHide:(NSNotification*)notification
{
    //: if(_delegate && [_delegate respondsToSelector:@selector(didHideMenuInMessageController:)]){
    if(_delegate && [_delegate respondsToSelector:@selector(didHideMenuInMessageController:)]){
        //: [_delegate didHideMenuInMessageController:self];
        [_delegate didHideMenuInMessageController:self];
    }
    //: [[NSNotificationCenter defaultCenter] removeObserver:self name:UIMenuControllerDidHideMenuNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIMenuControllerDidHideMenuNotification object:nil];
}

//: - (void)menuWillHide:(NSNotification *)notif {
- (void)menuWillHide:(NSNotification *)notif {
    //: self.menuIsShow = NO;
    self.menuIsShow = NO;
}

//: #pragma mark - 复制消息
#pragma mark - 复制消息
//: - (void)onCopyMsg:(id)sender {
- (void)onCopyMsg:(id)sender {
    //: NSInteger index = [_uiMsgs indexOfObject:self.menuUIMsg];
    NSInteger index = [_uiMsgs indexOfObject:self.menuUIMsg];
    //: if (index == NSNotFound)
    if (index == NSNotFound)
        //: return;
        return;

    //: if ([_menuUIMsg isKindOfClass:[ToModelCellData class]] ||
    if ([_menuUIMsg isKindOfClass:[ToModelCellData class]] ||
        //: [_menuUIMsg isKindOfClass:[ToCellData class]]) {
        [_menuUIMsg isKindOfClass:[ToCellData class]]) {
        //: ToCellData *txtMsg = (ToCellData *)_menuUIMsg;
        ToCellData *txtMsg = (ToCellData *)_menuUIMsg;
        //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        //: NSString *content = txtMsg.contentStr;
        NSString *content = txtMsg.contentStr;
        //: if ([content containsString:@"<at>"]) {
        if ([content containsString:@"<at>"]) {

            //: content = [content stringByReplacingOccurrencesOfString:@"<at>" withString:@""];
            content = [content stringByReplacingOccurrencesOfString:@"<at>" withString:@""];
        }
        //: if ([content containsString:@"</at>"]) {
        if ([content containsString:@"</at>"]) {
            //: content = [content stringByReplacingOccurrencesOfString:@"</at>" withString:@""];
            content = [content stringByReplacingOccurrencesOfString:@"</at>" withString:@""];
        }

        //        if (!FZUtils.isEmptyString(content)) {
        //            content = [content convertGJEmoji];
        //        }

        //: pasteboard.string = content;
        pasteboard.string = content;
    }

}
//: #pragma mark - 引用消息
#pragma mark - 引用消息
//: - (BOOL)canReplyResponseWithLongGestureRecognizer:(InscriptionThen *)cellData {
- (BOOL)canReplyResponseWithLongGestureRecognizer:(InscriptionThen *)cellData {
    //: if (self.currentChatType != TalkingIMChatType_private) {
    if (self.currentChatType != TalkingIMChatType_private) {
        //: return NO;
        return NO;
    }
    //: if (cellData.direction == TMsgDirectionMsgDirectionOutgoing && cellData.status != Msg_Status_Succ) {
    if (cellData.direction == UserAppMeasurableMsgDirectionOutgoing && cellData.status != Msg_Status_Succ) {
        //: return NO;
        return NO;
    }
    //: if (cellData.messageType == 3) { 
    if (cellData.messageType == 3) { // 过滤系统代发打招呼消息
        //: return NO;
        return NO;
    }
    //: if ([cellData isKindOfClass:[PitchReactiveCompatible class]] || [cellData isKindOfClass:[TitleCellData class]]) {
    if ([cellData isKindOfClass:[PitchReactiveCompatible class]] || [cellData isKindOfClass:[TitleCellData class]]) {
        //: return YES;
        return YES;
    }
    //: if ([cellData isKindOfClass:[ToCellData class]]) {
    if ([cellData isKindOfClass:[ToCellData class]]) {
        //: if (cellData.msgModel.msgInfo.callCmd == nil) { 
        if (cellData.msgModel.msgInfo.callCmd == nil) { // 过滤掉音视频通话文本消息
            //: return YES;
            return YES;
        }
    }
    //: if ([cellData isKindOfClass:[EqualKeyCellData class]]) {
    if ([cellData isKindOfClass:[EqualKeyCellData class]]) {
        // 普通视频
        //: if (cellData.msgModel.msgInfo.video.burnStatus == -1 && cellData.msgModel.msgInfo.video.lockStatus == -1 && [cellData.msgModel.msgInfo.video.giftId isEqualToString:@"0"]) {
        if (cellData.msgModel.msgInfo.video.burnStatus == -1 && cellData.msgModel.msgInfo.video.lockStatus == -1 && [cellData.msgModel.msgInfo.video.giftId isEqualToString:@"0"]) {
            //: return YES;
            return YES;
        }
    }
    //: if ([cellData isKindOfClass:[ChatCellData class]]) {
    if ([cellData isKindOfClass:[ChatCellData class]]) {
        // 普通图片
        //: if (cellData.msgModel.msgInfo.intimatePhoto != nil || [cellData.msgModel.msgInfo.customSend.isBurn isEqualToString:@"1"] || (cellData.msgModel.msgInfo.customSend.giftId != nil && ![cellData.msgModel.msgInfo.customSend.giftId isEqualToString:@"0"])) {
        if (cellData.msgModel.msgInfo.intimatePhoto != nil || [cellData.msgModel.msgInfo.customSend.isBurn isEqualToString:@"1"] || (cellData.msgModel.msgInfo.customSend.giftId != nil && ![cellData.msgModel.msgInfo.customSend.giftId isEqualToString:@"0"])) {
            //: return NO;
            return NO;
        }
        //: return YES;
        return YES;
    }

    //: return NO;
    return NO;
}

//: - (void)onReplyMessageWithCell:(MakeMessageCell *)cell {
- (void)radiogramWithCell:(MakeMessageCell *)cell {
    //: if ([_delegate respondsToSelector:@selector(messageController:onClickReplyMessage:)]) {
    if ([_delegate respondsToSelector:@selector(messageController:onClickReplyMessage:)]) {
        //: [_delegate messageController:self onClickReplyMessage:cell.messageData];
        [_delegate messageController:self onClickReplyMessage:cell.messageData];
    }
}
//: - (void)onReplyMsg:(id)sender {
- (void)onReplyMsg:(id)sender {
    //: NSInteger index = [_uiMsgs indexOfObject:self.menuUIMsg];
    NSInteger index = [_uiMsgs indexOfObject:self.menuUIMsg];
    //: if (index == NSNotFound)
    if (index == NSNotFound)
        //: return;
        return;
    //: ToCellData *txtMsg = (ToCellData *)_menuUIMsg;
    ToCellData *txtMsg = (ToCellData *)_menuUIMsg;
    //: if ([_delegate respondsToSelector:@selector(messageController:onReplyMessage:)]) {
    if ([_delegate respondsToSelector:@selector(messageController:onReplyMessage:)]) {
        //: [_delegate messageController:self onReplyMessage:txtMsg];
        [_delegate messageController:self onReplyMessage:txtMsg];
    }

}

//: #pragma mark - 翻译消息
#pragma mark - 翻译消息
/// 系统翻译事件
//: - (void)onTranslateMsg:(id)sender {
- (void)onTranslateMsg:(id)sender {
    //: [self translateMsgWithCellData:self.menuUIMsg];
    [self translateMsgWithCellData:self.menuUIMsg];
}

/// 翻译消息
/// - Parameter cellData: 数据
//: - (void)translateMsgWithCellData:(InscriptionThen *)cellData {
- (void)translateMsgWithCellData:(InscriptionThen *)cellData {
    //: NSInteger index = [_uiMsgs indexOfObject:cellData];
    NSInteger index = [_uiMsgs indexOfObject:cellData];
    //: if (index == NSNotFound) return;
    if (index == NSNotFound) return;

    //: if (DistanceAppManager.share.appUserConfigMode.enableTranslate == NO) { 
    if (DistanceAppManager.share.appUserConfigMode.enableTranslate == NO) { // 非会员，无法使用翻译
        //: [[AddReactiveCompatible share] func__pushToSubscribePageWebVC];
        [[AddReactiveCompatible share] belowWith];
        //: return;
        return;
    }

    //: if ([cellData isKindOfClass:[ToCellData class]]) {
    if ([cellData isKindOfClass:[ToCellData class]]) {
        //: ToCellData *txtMsg = (ToCellData *)cellData;
        ToCellData *txtMsg = (ToCellData *)cellData;
        //: [self translateMessageToReq:txtMsg andType:0];
        [self translateMessageToReq:txtMsg andType:0];

    //: } else if ([cellData isKindOfClass:[ToModelCellData class]]) {
    } else if ([cellData isKindOfClass:[ToModelCellData class]]) {
        //: ToModelCellData *txtMsg = (ToModelCellData *)cellData;
        ToModelCellData *txtMsg = (ToModelCellData *)cellData;
        //: [self translateMessageToReq:txtMsg andType:1];
        [self translateMessageToReq:txtMsg andType:1];
    }
}

//: - (void)translateMessageToReq:(InscriptionThen *)txtMsg andType:(int)type {
- (void)translateMessageToReq:(InscriptionThen *)txtMsg andType:(int)type {
    //: [self translateMessage:txtMsg translatedContent:nil status:TMsgTranslateStatusMsgTranslate_translating];
    [self translateMessage:txtMsg translatedContent:nil status:AddWidthQuantityMsgTranslate_translating];
    // 调用翻译接口
    //: [PlayerRequestTool req_translateMsgWithMsgId:txtMsg.msgModel.msgInfo.msgId type:type completion:^(BOOL succeed, NSDictionary *dict, NSInteger errorCode) {
    [PlayerRequestTool nearTypeWithMsgId:txtMsg.msgModel.msgInfo.msgId type:type completion:^(BOOL succeed, NSDictionary *dict, NSInteger errorCode) {
        //: if (!succeed) {
        if (!succeed) {
            //: if (errorCode == 403) { 
            if (errorCode == 403) { // 非会员，无法使用翻译
                //: DistanceAppManager.share.appUserConfigMode.enableTranslate = NO;
                DistanceAppManager.share.appUserConfigMode.enableTranslate = NO;
                //: [[AddReactiveCompatible share] func__pushToSubscribePageWebVC];
                [[AddReactiveCompatible share] belowWith];
            }

            //: [self translateMessage:txtMsg translatedContent:@"Retry" status:TMsgTranslateStatusMsgTranslate_fail];
            [self translateMessage:txtMsg translatedContent:[[CompleteEngineData sharedInstance] showWarningFormat] status:AddWidthQuantityMsgTranslate_fail];
            //: return;
            return;
        }

        //: NSString *content = @"";
        NSString *content = @"";
        //: if ([dict.allKeys containsObject:@"targetText"]) { content = dict[@"targetText"]; }
        if ([dict.allKeys containsObject:[[CompleteEngineData sharedInstance] main_eventUrl]]) { content = dict[[[CompleteEngineData sharedInstance] main_eventUrl]]; }
        //: [self translateMessage:txtMsg translatedContent:content status:TMsgTranslateStatusMsgTranslate_succeed];
        [self translateMessage:txtMsg translatedContent:content status:AddWidthQuantityMsgTranslate_succeed];
    //: }];
    }];
}


//: @end
@end
