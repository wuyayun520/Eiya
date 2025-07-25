#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ResourceComponentExtension : NSObject

@property (nonatomic) NSMutableSet * interactorLayerName;

+ (instancetype) resourceComponentExtensionWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) providerWithoutProxy;

- (NSMutableDictionary *) materialDecorationDirection;

- (int) elasticBatchBehavior;

- (NSMutableSet *) grainPrototypeType;

- (NSMutableArray *) bufferWorkOpacity;

@end

NS_ASSUME_NONNULL_END
        