#import "PropagateStoryboardDescription.h"
#import "EnabledConsumerDecorator.h"
#import "StatePlatformEdge.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DropoutStackChannel : NSObject


- (void) withinOperationScope;

- (void) updateBelowDelegateStructure;

@end

NS_ASSUME_NONNULL_END
        