#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SingleImmediateQueue : NSObject

@property (nonatomic) int agileProgressbarFrequency;

+ (instancetype) singleImmediateQueueWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) taskActionValidation;

- (NSMutableDictionary *) expandedStateTail;

- (int) symbolStageKind;

- (NSMutableSet *) promiseBeyondEnvironment;

- (NSMutableArray *) screenInsideParam;

@end

NS_ASSUME_NONNULL_END
        