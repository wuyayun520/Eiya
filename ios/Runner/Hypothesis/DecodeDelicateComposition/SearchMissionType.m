#import "SearchMissionType.h"
    
@interface SearchMissionType ()

@end

@implementation SearchMissionType

- (void) resumeAdjustUpExtension
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableSet *overlayAtLayer = [NSMutableSet set];
		for (int i = 0; i < 3; ++i) {
			[overlayAtLayer addObject:[NSString stringWithFormat:@"standaloneFeatureCount%d", i]];
		}
		UIActivityIndicatorView *tickerContainWork = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleLarge];
		tickerContainWork.color = UIColor.blueColor;
		tickerContainWork.color = UIColor.blueColor;
		tickerContainWork.hidesWhenStopped = YES;
		[tickerContainWork setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleLarge];
		//NSLog(@"sets= bussiness1 gen_set %@", bussiness1);
	});
}


@end
        