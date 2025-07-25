#import "HistogramSchedulerPool.h"
    
@interface HistogramSchedulerPool ()

@end

@implementation HistogramSchedulerPool

- (void) underNibRecursion: (NSMutableArray *)responseBridgeCoord
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger sceneNearBuffer = [responseBridgeCoord count];
		int projectTempleEdge=0;
		for (int i = 0; i < sceneNearBuffer; i++) {
			projectTempleEdge += [[responseBridgeCoord objectAtIndex:i] intValue];
		}
		float grainEnvironmentDistance = (float)projectTempleEdge / sceneNearBuffer;
		if (sceneNearBuffer > 0) {
			NSLog(@"Average: %f", grainEnvironmentDistance);
		} else {
			NSLog(@"Array is empty");
		}
		//NSLog(@"Business17 gen_arr executed%@", Business17);
	});
}


@end
        