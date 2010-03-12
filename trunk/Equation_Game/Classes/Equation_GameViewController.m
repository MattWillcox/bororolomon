//
//  Equation_GameViewController.m
//  Equation_Game
//
//  Created by Matt Willcox on 10-03-05.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "Equation_GameViewController.h"

@implementation Equation_GameViewController


-(IBAction) Start: (id) sender {
	
	Score = 0;
	
	int Num1 = 1 + arc4random() % 9;
	int Num2 = 1 + arc4random() % 9;
	int Num3 = 1 + arc4random() % 18;
	int Num4 = 1 + arc4random() % 18;
	int Num5 = 1 + arc4random() % 18;
	
	label1.text = [NSString stringWithFormat:@"%ld", Num1];
	label2.text = [NSString stringWithFormat:@"%ld", Num2];
	
	Answer = Num1 + Num2;
	
	int CorrectButton = 1 + arc4random() % 4;

while (Answer == Num3 || Answer == Num4 || Answer == Num5 || Num3 == Num4 || Num3 == Num5
	   || Num4 == Num5) {
	Num3 = 1 + arc4random() % 18;
	Num4 = 1 + arc4random() % 18;
	Num5 = 1 + arc4random() % 18;
}
	
	switch(CorrectButton)
	{

		case 1: [button1 setTitle:[NSString stringWithFormat:@"%ld", Answer] forState:UIControlStateNormal]; 
				[button2 setTitle:[NSString stringWithFormat:@"%ld", Num3] forState:UIControlStateNormal]; 
				[button3 setTitle:[NSString stringWithFormat:@"%ld", Num4] forState:UIControlStateNormal];
				[button4 setTitle:[NSString stringWithFormat:@"%ld", Num5] forState:UIControlStateNormal]; 
				break;
		case 2: [button2 setTitle:[NSString stringWithFormat:@"%ld", Answer] forState:UIControlStateNormal]; 
				[button1 setTitle:[NSString stringWithFormat:@"%ld", Num3] forState:UIControlStateNormal]; 
				[button3 setTitle:[NSString stringWithFormat:@"%ld", Num4] forState:UIControlStateNormal];
				[button4 setTitle:[NSString stringWithFormat:@"%ld", Num5] forState:UIControlStateNormal]; 
				break;
		case 3: [button3 setTitle:[NSString stringWithFormat:@"%ld", Answer] forState:UIControlStateNormal]; 
				[button1 setTitle:[NSString stringWithFormat:@"%ld", Num3] forState:UIControlStateNormal]; 
				[button2 setTitle:[NSString stringWithFormat:@"%ld", Num4] forState:UIControlStateNormal];
				[button4 setTitle:[NSString stringWithFormat:@"%ld", Num5] forState:UIControlStateNormal]; 
				break;			
		case 4: [button4 setTitle:[NSString stringWithFormat:@"%ld", Answer] forState:UIControlStateNormal]; 
				[button1 setTitle:[NSString stringWithFormat:@"%ld", Num3] forState:UIControlStateNormal]; 
				[button2 setTitle:[NSString stringWithFormat:@"%ld", Num4] forState:UIControlStateNormal];
				[button3 setTitle:[NSString stringWithFormat:@"%ld", Num5] forState:UIControlStateNormal]; 
				break;
												
		}
	}
													

- (IBAction) FirstButton: (id) sender {
	NSString *ButtonTitle = [sender titleForState:UIControlStateNormal];
	int button = [ButtonTitle intValue];
	if(Answer == button){
		Score++;
		label3.text = [NSString stringWithFormat:@"%ld", Score];
	}
	
		int Num1 = 1 + arc4random() % 9;
		int Num2 = 1 + arc4random() % 9;
		int Num3 = 1 + arc4random() % 18;
		int Num4 = 1 + arc4random() % 18;
		int Num5 = 1 + arc4random() % 18;
		
		label1.text = [NSString stringWithFormat:@"%ld", Num1];
		label2.text = [NSString stringWithFormat:@"%ld", Num2];
		
		Answer = Num1 + Num2;
		
		int CorrectButton = 1 + arc4random() % 4;
		
		while (Answer == Num3 || Answer == Num4 || Answer == Num5 || Num3 == Num4 || Num3 == Num5
			   || Num4 == Num5) {
			Num3 = 1 + arc4random() % 18;
			Num4 = 1 + arc4random() % 18;
			Num5 = 1 + arc4random() % 18;
		}
		
		switch(CorrectButton)
		{
				
			case 1: [button1 setTitle:[NSString stringWithFormat:@"%ld", Answer] forState:UIControlStateNormal]; 
				[button2 setTitle:[NSString stringWithFormat:@"%ld", Num3] forState:UIControlStateNormal]; 
				[button3 setTitle:[NSString stringWithFormat:@"%ld", Num4] forState:UIControlStateNormal];
				[button4 setTitle:[NSString stringWithFormat:@"%ld", Num5] forState:UIControlStateNormal]; 
				break;
			case 2: [button2 setTitle:[NSString stringWithFormat:@"%ld", Answer] forState:UIControlStateNormal]; 
				[button1 setTitle:[NSString stringWithFormat:@"%ld", Num3] forState:UIControlStateNormal]; 
				[button3 setTitle:[NSString stringWithFormat:@"%ld", Num4] forState:UIControlStateNormal];
				[button4 setTitle:[NSString stringWithFormat:@"%ld", Num5] forState:UIControlStateNormal]; 
				break;
			case 3: [button3 setTitle:[NSString stringWithFormat:@"%ld", Answer] forState:UIControlStateNormal]; 
				[button1 setTitle:[NSString stringWithFormat:@"%ld", Num3] forState:UIControlStateNormal]; 
				[button2 setTitle:[NSString stringWithFormat:@"%ld", Num4] forState:UIControlStateNormal];
				[button4 setTitle:[NSString stringWithFormat:@"%ld", Num5] forState:UIControlStateNormal]; 
				break;			
			case 4: [button4 setTitle:[NSString stringWithFormat:@"%ld", Answer] forState:UIControlStateNormal]; 
				[button1 setTitle:[NSString stringWithFormat:@"%ld", Num3] forState:UIControlStateNormal]; 
				[button2 setTitle:[NSString stringWithFormat:@"%ld", Num4] forState:UIControlStateNormal];
				[button3 setTitle:[NSString stringWithFormat:@"%ld", Num5] forState:UIControlStateNormal]; 
				break;
				
		}
	}

- (IBAction) SecondButton: (id) sender {
	NSString *ButtonTitle = [sender titleForState:UIControlStateNormal];
	int button = [ButtonTitle intValue];
	if(Answer == button){
		Score++;
		label3.text = [NSString stringWithFormat:@"%ld", Score];
	}
	
	int Num1 = 1 + arc4random() % 9;
	int Num2 = 1 + arc4random() % 9;
	int Num3 = 1 + arc4random() % 18;
	int Num4 = 1 + arc4random() % 18;
	int Num5 = 1 + arc4random() % 18;
	
	label1.text = [NSString stringWithFormat:@"%ld", Num1];
	label2.text = [NSString stringWithFormat:@"%ld", Num2];
	
	Answer = Num1 + Num2;
	
	int CorrectButton = 1 + arc4random() % 4;
	
	while (Answer == Num3 || Answer == Num4 || Answer == Num5 || Num3 == Num4 || Num3 == Num5
		   || Num4 == Num5) {
		Num3 = 1 + arc4random() % 18;
		Num4 = 1 + arc4random() % 18;
		Num5 = 1 + arc4random() % 18;
	}
	
	switch(CorrectButton)
	{
			
		case 1: [button1 setTitle:[NSString stringWithFormat:@"%ld", Answer] forState:UIControlStateNormal]; 
			[button2 setTitle:[NSString stringWithFormat:@"%ld", Num3] forState:UIControlStateNormal]; 
			[button3 setTitle:[NSString stringWithFormat:@"%ld", Num4] forState:UIControlStateNormal];
			[button4 setTitle:[NSString stringWithFormat:@"%ld", Num5] forState:UIControlStateNormal]; 
			break;
		case 2: [button2 setTitle:[NSString stringWithFormat:@"%ld", Answer] forState:UIControlStateNormal]; 
			[button1 setTitle:[NSString stringWithFormat:@"%ld", Num3] forState:UIControlStateNormal]; 
			[button3 setTitle:[NSString stringWithFormat:@"%ld", Num4] forState:UIControlStateNormal];
			[button4 setTitle:[NSString stringWithFormat:@"%ld", Num5] forState:UIControlStateNormal]; 
			break;
		case 3: [button3 setTitle:[NSString stringWithFormat:@"%ld", Answer] forState:UIControlStateNormal]; 
			[button1 setTitle:[NSString stringWithFormat:@"%ld", Num3] forState:UIControlStateNormal]; 
			[button2 setTitle:[NSString stringWithFormat:@"%ld", Num4] forState:UIControlStateNormal];
			[button4 setTitle:[NSString stringWithFormat:@"%ld", Num5] forState:UIControlStateNormal]; 
			break;			
		case 4: [button4 setTitle:[NSString stringWithFormat:@"%ld", Answer] forState:UIControlStateNormal]; 
			[button1 setTitle:[NSString stringWithFormat:@"%ld", Num3] forState:UIControlStateNormal]; 
			[button2 setTitle:[NSString stringWithFormat:@"%ld", Num4] forState:UIControlStateNormal];
			[button3 setTitle:[NSString stringWithFormat:@"%ld", Num5] forState:UIControlStateNormal]; 
			break;
			
	}
}

- (IBAction) ThirdButton: (id) sender {
	NSString *ButtonTitle = [sender titleForState:UIControlStateNormal];
	int button = [ButtonTitle intValue];
	if(Answer == button){
		Score++;
		label3.text = [NSString stringWithFormat:@"%ld", Score];
	}
	
	int Num1 = 1 + arc4random() % 9;
	int Num2 = 1 + arc4random() % 9;
	int Num3 = 1 + arc4random() % 18;
	int Num4 = 1 + arc4random() % 18;
	int Num5 = 1 + arc4random() % 18;
	
	label1.text = [NSString stringWithFormat:@"%ld", Num1];
	label2.text = [NSString stringWithFormat:@"%ld", Num2];
	
	Answer = Num1 + Num2;
	
	int CorrectButton = 1 + arc4random() % 4;
	
	while (Answer == Num3 || Answer == Num4 || Answer == Num5 || Num3 == Num4 || Num3 == Num5
		   || Num4 == Num5) {
		Num3 = 1 + arc4random() % 18;
		Num4 = 1 + arc4random() % 18;
		Num5 = 1 + arc4random() % 18;
	}
	
	switch(CorrectButton)
	{
			
		case 1: [button1 setTitle:[NSString stringWithFormat:@"%ld", Answer] forState:UIControlStateNormal]; 
			[button2 setTitle:[NSString stringWithFormat:@"%ld", Num3] forState:UIControlStateNormal]; 
			[button3 setTitle:[NSString stringWithFormat:@"%ld", Num4] forState:UIControlStateNormal];
			[button4 setTitle:[NSString stringWithFormat:@"%ld", Num5] forState:UIControlStateNormal]; 
			break;
		case 2: [button2 setTitle:[NSString stringWithFormat:@"%ld", Answer] forState:UIControlStateNormal]; 
			[button1 setTitle:[NSString stringWithFormat:@"%ld", Num3] forState:UIControlStateNormal]; 
			[button3 setTitle:[NSString stringWithFormat:@"%ld", Num4] forState:UIControlStateNormal];
			[button4 setTitle:[NSString stringWithFormat:@"%ld", Num5] forState:UIControlStateNormal]; 
			break;
		case 3: [button3 setTitle:[NSString stringWithFormat:@"%ld", Answer] forState:UIControlStateNormal]; 
			[button1 setTitle:[NSString stringWithFormat:@"%ld", Num3] forState:UIControlStateNormal]; 
			[button2 setTitle:[NSString stringWithFormat:@"%ld", Num4] forState:UIControlStateNormal];
			[button4 setTitle:[NSString stringWithFormat:@"%ld", Num5] forState:UIControlStateNormal]; 
			break;			
		case 4: [button4 setTitle:[NSString stringWithFormat:@"%ld", Answer] forState:UIControlStateNormal]; 
			[button1 setTitle:[NSString stringWithFormat:@"%ld", Num3] forState:UIControlStateNormal]; 
			[button2 setTitle:[NSString stringWithFormat:@"%ld", Num4] forState:UIControlStateNormal];
			[button3 setTitle:[NSString stringWithFormat:@"%ld", Num5] forState:UIControlStateNormal]; 
			break;
			
	}
}


- (IBAction) FourthButton: (id) sender {
	
NSString *ButtonTitle = [sender titleForState:UIControlStateNormal];
int button = [ButtonTitle intValue];
if(Answer == button){
	Score++;
	label3.text = [NSString stringWithFormat:@"%ld", Score];
}

int Num1 = 1 + arc4random() % 9;
int Num2 = 1 + arc4random() % 9;
int Num3 = 1 + arc4random() % 18;
int Num4 = 1 + arc4random() % 18;
int Num5 = 1 + arc4random() % 18;

label1.text = [NSString stringWithFormat:@"%ld", Num1];
label2.text = [NSString stringWithFormat:@"%ld", Num2];

Answer = Num1 + Num2;

int CorrectButton = 1 + arc4random() % 4;

while (Answer == Num3 || Answer == Num4 || Answer == Num5 || Num3 == Num4 || Num3 == Num5
	   || Num4 == Num5) {
	Num3 = 1 + arc4random() % 18;
	Num4 = 1 + arc4random() % 18;
	Num5 = 1 + arc4random() % 18;
}

switch(CorrectButton)
{
		
	case 1: [button1 setTitle:[NSString stringWithFormat:@"%ld", Answer] forState:UIControlStateNormal]; 
		[button2 setTitle:[NSString stringWithFormat:@"%ld", Num3] forState:UIControlStateNormal]; 
		[button3 setTitle:[NSString stringWithFormat:@"%ld", Num4] forState:UIControlStateNormal];
		[button4 setTitle:[NSString stringWithFormat:@"%ld", Num5] forState:UIControlStateNormal]; 
		break;
	case 2: [button2 setTitle:[NSString stringWithFormat:@"%ld", Answer] forState:UIControlStateNormal]; 
		[button1 setTitle:[NSString stringWithFormat:@"%ld", Num3] forState:UIControlStateNormal]; 
		[button3 setTitle:[NSString stringWithFormat:@"%ld", Num4] forState:UIControlStateNormal];
		[button4 setTitle:[NSString stringWithFormat:@"%ld", Num5] forState:UIControlStateNormal]; 
		break;
	case 3: [button3 setTitle:[NSString stringWithFormat:@"%ld", Answer] forState:UIControlStateNormal]; 
		[button1 setTitle:[NSString stringWithFormat:@"%ld", Num3] forState:UIControlStateNormal]; 
		[button2 setTitle:[NSString stringWithFormat:@"%ld", Num4] forState:UIControlStateNormal];
		[button4 setTitle:[NSString stringWithFormat:@"%ld", Num5] forState:UIControlStateNormal]; 
		break;			
	case 4: [button4 setTitle:[NSString stringWithFormat:@"%ld", Answer] forState:UIControlStateNormal]; 
		[button1 setTitle:[NSString stringWithFormat:@"%ld", Num3] forState:UIControlStateNormal]; 
		[button2 setTitle:[NSString stringWithFormat:@"%ld", Num4] forState:UIControlStateNormal];
		[button3 setTitle:[NSString stringWithFormat:@"%ld", Num5] forState:UIControlStateNormal]; 
		break;
		
}
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



// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[label1 release];
	[label2 release];
    [super dealloc];
}

@end
