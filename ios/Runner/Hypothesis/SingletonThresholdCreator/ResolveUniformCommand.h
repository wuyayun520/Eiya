#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ResolveUniformCommand : NSObject


- (void) toInterpolationCallback;

- (void) removeFixedResolver: (NSMutableDictionary *)responseMediatorOrigin;

@end

NS_ASSUME_NONNULL_END
        