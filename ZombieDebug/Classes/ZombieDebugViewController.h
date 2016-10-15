
#import <UIKit/UIKit.h>

@interface ZombieDebugViewController : UIViewController {

	NSMutableArray* numberArray;
	IBOutlet UILabel* label;
	
}

@property (nonatomic, retain) NSMutableArray* numberArray;

-(IBAction)buttonPressed;


@end

