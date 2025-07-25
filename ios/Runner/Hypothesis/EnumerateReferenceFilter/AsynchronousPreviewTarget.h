#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AsynchronousPreviewTarget : NSObject


- (void) unbindCriticalSignature: (NSMutableDictionary *)hashPerProcess;

- (void) disposeNotifierAmongGraph;

@end

NS_ASSUME_NONNULL_END
        