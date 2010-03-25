#import "MainView.h"

@implementation MainView

@synthesize two, twoEnd, twoStart;

- (IBAction)moveUp {
	
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration: 5.0];
	two.center = twoEnd.center;
	[UIView commitAnimations];
    
}
@end
