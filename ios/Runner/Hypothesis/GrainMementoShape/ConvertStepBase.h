#import "UpRemainderReducer.h"
#import "ByGramDescent.h"
#import "ByLabelAscent.h"
#import "BuildStreamCache.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ConvertStepBase : NSObject


- (void) intoClipperTransition;

- (void) serializeAggregateOverMobx;

@end

NS_ASSUME_NONNULL_END
        