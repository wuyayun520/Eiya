#import "FlexibleSineProtocol.h"
    
@interface FlexibleSineProtocol ()

@end

@implementation FlexibleSineProtocol

- (void) releaseThroughQueryCommand: (NSMutableDictionary *)modelAwayStructure
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger taskAsAction = modelAwayStructure.count;
		int smallAxisType[7];
		for (int i = 0; i < 7; i++) {
			smallAxisType[i] = 95 * i;
		}
		if (taskAsAction > smallAxisType[6]) {
			smallAxisType[0] = taskAsAction;
		} else {
			int tweenParamOffset=0;
			for (int i = 0; i < 6; i++) {
				if (smallAxisType[i] < taskAsAction && smallAxisType[i+1] >= taskAsAction) {
				    tweenParamOffset = i + 1;
				    break;
				}
			}
			for (int i = 0; i < tweenParamOffset; i++) {
				smallAxisType[tweenParamOffset - i] = smallAxisType[tweenParamOffset - i - 1];
			}
			smallAxisType[0] = taskAsAction;
		}
		//NSLog(@"Business17 gen_dic executed%@", Business17);
	});
}


@end
        