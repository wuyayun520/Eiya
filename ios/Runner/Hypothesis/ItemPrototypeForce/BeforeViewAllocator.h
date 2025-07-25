#import "ConcurrentBehaviorDetector.h"
#import "ConnectBatchState.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BeforeViewAllocator : NSObject


- (void) forBitrateSubscription;

- (void) popBundleOntoController;

@end

NS_ASSUME_NONNULL_END
        