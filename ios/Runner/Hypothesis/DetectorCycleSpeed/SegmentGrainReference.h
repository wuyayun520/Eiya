#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SegmentGrainReference : NSObject

@property (nonatomic) NSString * notificationAsKind;

+ (instancetype) segmentGrainReferenceWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) immutableBaseTag;

- (NSMutableDictionary *) interpolationPerStructure;

- (int) gemChainValidation;

- (NSMutableSet *) compositionalStampType;

- (NSMutableArray *) layoutViaState;

@end

NS_ASSUME_NONNULL_END
        