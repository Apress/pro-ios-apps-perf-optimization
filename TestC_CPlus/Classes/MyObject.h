#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioQueue.h>

#include "Foo_Cpp.h"


// A LevelMeter subclass which is used specifically for AudioQueue objects
@interface MyObject : NSObject {
	Foo_Cpp	*foo_cpp;
}

- (NSInteger)computeHere;
 
@end
