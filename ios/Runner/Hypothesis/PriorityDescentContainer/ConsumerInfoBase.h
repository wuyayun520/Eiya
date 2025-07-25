#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ConsumerInfoBase : NSObject

@property (nonatomic) NSMutableDictionary * flexModeCount;

@property (nonatomic) int lostLayerMode;

+ (instancetype) consumerInfoBaseWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) switchFromFramework;

- (NSMutableDictionary *) deferredSignatureOpacity;

- (int) segueActivityMargin;

- (NSMutableSet *) providerNumberEdge;

- (NSMutableArray *) adaptiveBulletValidation;

@end

NS_ASSUME_NONNULL_END
        