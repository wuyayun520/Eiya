#import "ConnectTextChannel.h"
#import "InflateNavigatorBase.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PersistentMaterializerStack : NSObject


- (void) pushWithinBlocState;

- (void) clipFromLoopEnvironment;

@end

NS_ASSUME_NONNULL_END
        