#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LockInterpolationQuaternion : NSObject

@property (nonatomic) int transitionKindOrigin;

@property (nonatomic) NSMutableSet * baselineCompositeOrientation;

+ (instancetype) lockInterpolationQuaternionWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) pinchableButtonAppearance;

- (NSMutableDictionary *) easyDecorationLocation;

- (int) iterativeGradientPosition;

- (NSMutableSet *) metadataOrObserver;

- (NSMutableArray *) temporaryReducerAcceleration;

@end

NS_ASSUME_NONNULL_END
        