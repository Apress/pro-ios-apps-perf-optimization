
#import <UIKit/UIKit.h>

@class ZombieDebugViewController;

@interface ZombieDebugAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ZombieDebugViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ZombieDebugViewController *viewController;

@end

