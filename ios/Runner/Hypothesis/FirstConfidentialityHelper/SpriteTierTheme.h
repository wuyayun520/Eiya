#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SpriteTierTheme : NSObject

@property (nonatomic) NSMutableDictionary * directEntityShape;

@property (nonatomic) int groupTempleDirection;

@property (nonatomic) int persistentBatchPosition;

+ (instancetype) spriteTierThemeWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) previewVisitorTheme;

- (NSMutableDictionary *) memberSystemSpeed;

- (int) chapterLevelFormat;

- (NSMutableSet *) layoutNearValue;

- (NSMutableArray *) lastSpriteCoord;

@end

NS_ASSUME_NONNULL_END
        