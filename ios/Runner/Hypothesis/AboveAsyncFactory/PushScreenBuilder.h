#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PushScreenBuilder : NSObject

@property (nonatomic) NSString * alignmentLevelOffset;

+ (instancetype) pushScreenBuilderWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) specifierOfVisitor;

- (NSMutableDictionary *) singleStoryboardTheme;

- (int) completionActionSpeed;

- (NSMutableSet *) graphJobAppearance;

- (NSMutableArray *) containerChainHue;

@end

NS_ASSUME_NONNULL_END
        