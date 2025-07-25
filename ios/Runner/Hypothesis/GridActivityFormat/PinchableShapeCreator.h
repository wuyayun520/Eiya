#import "StrokeStrategyTop.h"
#import "PainterTransitionArray.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PinchableShapeCreator : NSObject


- (void) publishTangentLikeCommand;

- (void) stopDecorationUntilConsumer;

@end

NS_ASSUME_NONNULL_END
        