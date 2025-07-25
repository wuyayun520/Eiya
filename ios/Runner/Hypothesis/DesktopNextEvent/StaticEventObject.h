#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface StaticEventObject : NSObject

@property (nonatomic) NSString * petTierBrightness;

+ (instancetype) staticEventObjectWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) delegateOperationName;

- (NSMutableDictionary *) responseWithoutVisitor;

- (int) immediateRadioSpeed;

- (NSMutableSet *) alignmentWithoutObserver;

- (NSMutableArray *) zoneFormDuration;

@end

NS_ASSUME_NONNULL_END
        