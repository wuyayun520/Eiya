#import "AttachPlaybackFrame.h"
#import "UnmountedMusicOffset.h"
#import "KeepUnactivatedPromise.h"
#import "ExpandedOperationPosition.h"
#import "UnderSampleLatency.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SetstateWorkflowStore : NSObject


- (void) unscheduleUniquePresenter;

- (void) unmountSegueSingleton;

@end

NS_ASSUME_NONNULL_END
        