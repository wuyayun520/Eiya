#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DiffableSubscriptionState : NSObject


- (void) listenNextInstruction: (int)modelObserverBottom;

- (void) visitMultiplicationAtAction;

@end

NS_ASSUME_NONNULL_END
        