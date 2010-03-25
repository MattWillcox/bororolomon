//
//  MoneyGameViewController.m
//  MoneyGame
//
//  Created by Joanna So on 10年3月20日.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "MoneyGameViewController.h"

@implementation MoneyGameViewController



- (void)viewDidLoad {
	timeLable.text = @"30";
	timeLeft = 30;
	score.text = @"0";
	totalScore = 0;
	two.hidden = YES;
	
	[super viewDidLoad];
	
	int number1 = 1 + arc4random() % 9;
	int number2 = 25 * (0 + arc4random() % 4);
	
	A.text = [NSString stringWithFormat:@"%ld", number1];
	B.text = [NSString stringWithFormat:@"%ld", number2];
	
}



-(void)updateLabel {
	if (timeLeft != 0) {
		timeLeft = timeLeft--;
	}
	
	else {
		A.hidden = YES;
		B.hidden = YES;
		dollarSign.hidden = YES;
		dot.hidden = YES;
		Finished.text = @"F I N I S H E D !";
	}
	
	timeLable.text = [NSString stringWithFormat:@"%02d",timeLeft];
}

-(IBAction)addTwo:(id)sender{
	two.hidden = NO;
	answer = answer +2;
}

-(IBAction)addOne:(id)sender{
	answer = answer++;
}

-(IBAction)addQuarter:(id)sender{
	answer = answer+ 0.25;
}

-(IBAction)reset:(id)sender{
	answer = 0;
}


-(IBAction)submission:(id)sender{
	
	if(timeLeft != 0){
		NSString *Avalue = A.text;
		int AvalueNumber = [Avalue intValue];
		NSString *Bvalue = B.text;
		int BvalueNumber = [Bvalue intValue];
		
		if(answer == AvalueNumber + (BvalueNumber / 100)){
			totalScore++;
			score.text = [NSString stringWithFormat:@"%ld", totalScore];
		}
		
	two.hidden = NO;	
	answer = 0;
	int number1 = 1 + arc4random() % 9;
	int number2 = 25 * (0 + arc4random() % 3);
	
	A.text = [NSString stringWithFormat:@"%ld", number1];
	B.text = [NSString stringWithFormat:@"%ld", number2];
	}

}

/*
-(void) touchesBegan:(NSSet*) touches withEvent:(UIEvent*)event{
	
	UITouch *touch =[[event allTouches] anyObject];	
	CGPoint location = [touch locationInView:self.view];
	one.center = location;	
	
}*/


-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
	
	UITouch *touch = [[event allTouches] anyObject];
	
	if ([touch view] == one) {
		CGPoint location = [touch locationInView:self.view];
		one.center = location;
	}
	
	if ([touch view] == two) {
		CGPoint location = [touch locationInView:self.view];
		two.center = location;
	}
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
	[super didReceiveMemoryWarning];
}


- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)dealloc {
    [super dealloc];
}

@end
