#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AttachPageviewNode : NSObject

@property (nonatomic) NSMutableDictionary * decorationStyleDirection;

+ (instancetype) attachPageviewNodeWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) textShapeCenter;

- (NSMutableDictionary *) lastEffectOrigin;

- (int) boxAlongForm;

- (NSMutableSet *) cupertinoHashTint;

- (NSMutableArray *) navigatorStateOpacity;

@end

NS_ASSUME_NONNULL_END
        