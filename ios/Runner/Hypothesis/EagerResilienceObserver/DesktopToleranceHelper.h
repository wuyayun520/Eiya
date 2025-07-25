#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DesktopToleranceHelper : NSObject

@property (nonatomic) int textDespiteFacade;

+ (instancetype) desktopToleranceHelperWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) sceneEnvironmentFlags;

- (NSMutableDictionary *) overlayProxySkewy;

- (int) retainedChartBottom;

- (NSMutableSet *) animationPhaseLeft;

- (NSMutableArray *) staticStatefulCoord;

@end

NS_ASSUME_NONNULL_END
        