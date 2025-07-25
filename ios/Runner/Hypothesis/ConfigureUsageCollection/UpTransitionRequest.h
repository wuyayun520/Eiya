#import "ActiveGestureStack.h"
#import "LayoutBaselineDelegate.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UpTransitionRequest : NSObject


- (void) connectComposableDescription;

- (void) publishOldSingleton;

@end

NS_ASSUME_NONNULL_END
        