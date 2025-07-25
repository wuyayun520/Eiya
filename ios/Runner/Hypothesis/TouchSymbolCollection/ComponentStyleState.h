#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ComponentStyleState : NSObject

@property (nonatomic) int layoutAtPlatform;

@property (nonatomic) NSMutableDictionary * priorRouterFlags;

@property (nonatomic) NSMutableDictionary * masterJobColor;

@property (nonatomic) int cupertinoExtensionMode;

@property (nonatomic) NSMutableArray * enabledFlexDirection;

+ (instancetype) componentStyleStateWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) gridStyleFeedback;

- (NSMutableDictionary *) delegateMementoSkewy;

- (int) momentumFlyweightOffset;

- (NSMutableSet *) asyncDecoratorFlags;

- (NSMutableArray *) errorAtParameter;

@end

NS_ASSUME_NONNULL_END
        