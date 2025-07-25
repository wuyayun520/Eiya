#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ImmediateTweenCache : NSObject

@property (nonatomic) NSMutableSet * effectAndStage;

@property (nonatomic) NSMutableDictionary * handlerIncludeActivity;

@property (nonatomic) NSMutableArray * operationExceptFacade;

+ (instancetype) immediateTweenCacheWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) constraintStageForce;

- (NSMutableDictionary *) frameStageVisibility;

- (int) shaderKindVelocity;

- (NSMutableSet *) commandBeyondSingleton;

- (NSMutableArray *) graphFromLayer;

@end

NS_ASSUME_NONNULL_END
        