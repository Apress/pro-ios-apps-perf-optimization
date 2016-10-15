
#import "ZombieDebugViewController.h"


@implementation ZombieDebugViewController

@synthesize numberArray;

-(void)rewriteText {
	NSMutableString* s = [NSMutableString stringWithCapacity:100];
	for (id obj in numberArray) {
		[s appendFormat:@"%@,\n",obj];
		[obj release]; 
	}
	label.text = s;
}	


- (void)viewDidLoad {
    [super viewDidLoad];
	self.numberArray = [NSMutableArray arrayWithCapacity:10];
	[numberArray addObject:@"I am a number"];
	[self rewriteText];
}


-(IBAction)buttonPressed {
	NSNumber* n = [NSNumber numberWithLong:random()];
	[numberArray addObject:n];
	[self rewriteText];
}

-(void)dealloc {	
	[super dealloc];
	self.numberArray=nil;
}

@end
