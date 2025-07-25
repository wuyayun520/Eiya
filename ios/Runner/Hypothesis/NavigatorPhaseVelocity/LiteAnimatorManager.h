#import "ThroughPainterScheduler.h"
#import "DetachSubsequentCubit.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LiteAnimatorManager : NSObject


- (void) detachTappableTask;

- (void) animateForHashLayer;

@end

NS_ASSUME_NONNULL_END
        