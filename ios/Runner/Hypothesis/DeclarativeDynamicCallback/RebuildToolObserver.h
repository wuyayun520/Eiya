#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RebuildToolObserver : NSObject

@property (nonatomic) NSMutableDictionary * intermediateQueryState;

@property (nonatomic) NSMutableArray * lostHeapBound;

@property (nonatomic) NSMutableDictionary * resolverShapeState;

@property (nonatomic) NSString * cacheMethodFeedback;

@property (nonatomic) NSMutableSet * draggableDependencyInteraction;

@property (nonatomic) NSMutableSet * eventAroundMediator;

+ (instancetype) rebuildToolObserverWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) taskShapeFlags;

- (NSMutableDictionary *) transitionLayerMode;

- (int) eagerAlignmentDirection;

- (NSMutableSet *) navigatorLayerDuration;

- (NSMutableArray *) histogramWithoutActivity;

@end

NS_ASSUME_NONNULL_END
        