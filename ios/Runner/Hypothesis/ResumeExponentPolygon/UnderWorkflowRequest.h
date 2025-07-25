#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UnderWorkflowRequest : NSObject

@property (nonatomic) int tabbarLevelSpacing;

+ (instancetype) underWorkflowRequestWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) commandAsProcess;

- (NSMutableDictionary *) dialogsStyleSpacing;

- (int) skirtMementoFeedback;

- (NSMutableSet *) interfaceEnvironmentSpacing;

- (NSMutableArray *) stackActionMomentum;

@end

NS_ASSUME_NONNULL_END
        