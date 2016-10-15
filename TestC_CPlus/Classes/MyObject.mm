#import "MyObject.h"

@implementation MyObject
- (id) init {
    self = [super init];
    if (self != nil) {
        foo_cpp = new Foo_Cpp;
    }
    return self;
}

- (NSInteger)computeHere {
    return foo_cpp->compute();
}

- (void)dealloc {	
	delete foo_cpp;
	
}

@end
