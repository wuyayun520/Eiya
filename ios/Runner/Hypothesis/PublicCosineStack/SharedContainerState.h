#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SharedContainerState : NSObject


- (void) cacheRefreshIntoNib;

- (void) mitigateBaseAsContainer: (NSMutableDictionary *)curveLikeSingleton;

- (void) unmountedStandaloneMethod;

@end

NS_ASSUME_NONNULL_END
        