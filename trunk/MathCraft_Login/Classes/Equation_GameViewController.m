//
//  Equation_GameViewController.m
//  Equation_Game
//
//  Created by Matt Willcox on 10-03-05.
//  Copyright Bororolomon 2010. All rights reserved.
//
#import "Equation_GameViewController.h"

@implementation Equation_GameViewController

-(IBAction)backPressed {
	
	[self dismissModalViewControllerAnimated:YES];
}

- (void)viewDidLoad {
	
	[super viewDidLoad];
	
	timer = [NSTimer scheduledTimerWithTimeInterval:(1.0) target:self selector:@selector(updateLabel) userInfo:nil repeats:YES];	
	timeLabel.text = @"30";
	timeLeft = 30;
	Score = 0;
	
	int Num1 = 1 + arc4random() % 9; //Generate the random numbers to be used in the equation
	int Num2 = 1 + arc4random() % 9;
	int Num3 = 1 + arc4random() % 18;
	int Num4 = 1 + arc4random() % 18;
	int Num5 = 1 + arc4random() % 18;
	
	int Operand = 1 + arc4random() % 2;
	
	switch(Operand){ //Generates which operand will be used at random
		case 1: Answer = Num1 + Num2;
			operandLabel.text = @"+";
			break;
		case 2:
			while (Num1 < Num2) 
			{
				Num1 = 1 + arc4random() % 9;
				Num2 = 1 + arc4random() % 9;
			}
			
			Answer = Num1 - Num2; 
			operandLabel.text = @"-";
			break;
	}
	
	firstNumberLabel.text = [NSString stringWithFormat:@"%ld", Num1];
	secondNumberLabel.text = [NSString stringWithFormat:@"%ld", Num2];
	
	while (Answer == Num3 || Answer == Num4 || Answer == Num5 || Num3 == Num4 || Num3 == Num5
		   || Num4 == Num5) //Ensures there are no duplicate answers
	{
		Num3 = 1 + arc4random() % 18;
		Num4 = 1 + arc4random() % 18;
		Num5 = 1 + arc4random() % 18;
	}
	
	int CorrectButton = 1 + arc4random() % 4;
	
	switch(CorrectButton) //Assigns the answer randomly to a button and fills the rest with random numbers
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

-(void)updateLabel { //Updates the timer every 1 second, if timer reads 0 game ends
	
	if (timeLeft != 0) {
		timeLeft = timeLeft--;
	}
	else {
		firstNumberLabel.text = @"";
		secondNumberLabel.text = @"";
		operandLabel.text = @"";
		equalsLabel.text = @"";
		finishedLabel.text = @"F I N I S H E D !";
	}
	
	timeLabel.text = [NSString stringWithFormat:@"%02d",timeLeft];
}

- (IBAction) firstButtonPressed: (id) sender {
	
	NSString *ButtonTitle = [sender titleForState:UIControlStateNormal];
	int button = [ButtonTitle intValue];
	
	if(Answer == button && timeLeft != 0){ //Adds 1 to score if current button is equal to the actual answer
		Score++;
		scoreLabel.text = [NSString stringWithFormat:@"%ld", Score];
	}
	else if(Answer != button && timeLeft != 0 && Score != 0){
		Score--;
		scoreLabel.text = [NSString stringWithFormat:@"%ld", Score];
	}
	
	if(timeLeft != 0){
		
		int Num1 = 1 + arc4random() % 9;
		int Num2 = 1 + arc4random() % 9;
		int Num3 = 1 + arc4random() % 18;
		int Num4 = 1 + arc4random() % 18;
		int Num5 = 1 + arc4random() % 18;
			
		int Operand = 1 + arc4random() % 2;
				
		switch(Operand){
			case 1: Answer = Num1 + Num2;
				operandLabel.text = @"+";
				break;
			case 2:
				while (Num1 < Num2) 
				{
					Num1 = 1 + arc4random() % 9;
					Num2 = 1 + arc4random() % 9;
				}
				
				Answer = Num1 - Num2; 
				operandLabel.text = @"-";
				break;
		}
		
		firstNumberLabel.text = [NSString stringWithFormat:@"%ld", Num1];
		secondNumberLabel.text = [NSString stringWithFormat:@"%ld", Num2];

		while (Answer == Num3 || Answer == Num4 || Answer == Num5 || Num3 == Num4 || Num3 == Num5
			   || Num4 == Num5) 
		{
			Num3 = 1 + arc4random() % 18;
			Num4 = 1 + arc4random() % 18;
			Num5 = 1 + arc4random() % 18;
		}

		int CorrectButton = 1 + arc4random() % 4;
		
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
}

- (IBAction) secondButtonPressed: (id) sender {
	
	NSString *ButtonTitle = [sender titleForState:UIControlStateNormal];
	int button = [ButtonTitle intValue];
	if(Answer == button && timeLeft != 0){
		Score++;
		scoreLabel.text = [NSString stringWithFormat:@"%ld", Score];
	}
	else if(Answer != button && timeLeft != 0 && Score != 0){
		Score--;
		scoreLabel.text = [NSString stringWithFormat:@"%ld", Score];
	}
	
	if(timeLeft != 0){
		
	int Num1 = 1 + arc4random() % 9;
	int Num2 = 1 + arc4random() % 9;
	int Num3 = 1 + arc4random() % 18;
	int Num4 = 1 + arc4random() % 18;
	int Num5 = 1 + arc4random() % 18;
		
	int Operand = 1 + arc4random() % 2;
				
	switch(Operand){
		case 1: Answer = Num1 + Num2;
			operandLabel.text = @"+";
			break;
		case 2:
			while (Num1 < Num2) 
			{
				Num1 = 1 + arc4random() % 9;
				Num2 = 1 + arc4random() % 9;
			}
			Answer = Num1 - Num2; 
			operandLabel.text = @"-";
			break;
	}
		
		firstNumberLabel.text = [NSString stringWithFormat:@"%ld", Num1];
		secondNumberLabel.text = [NSString stringWithFormat:@"%ld", Num2];
		
	while (Answer == Num3 || Answer == Num4 || Answer == Num5 || Num3 == Num4 || Num3 == Num5
		   || Num4 == Num5) 
	{
		Num3 = 1 + arc4random() % 18;
		Num4 = 1 + arc4random() % 18;
		Num5 = 1 + arc4random() % 18;
	}

	int CorrectButton = 1 + arc4random() % 4;
		
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
}

- (IBAction) thirdButtonPressed: (id) sender {
	
	NSString *ButtonTitle = [sender titleForState:UIControlStateNormal];
	int button = [ButtonTitle intValue];
	if(Answer == button && timeLeft != 0){
		Score++;
		scoreLabel.text = [NSString stringWithFormat:@"%ld", Score];
	}
	else if(Answer != button && timeLeft != 0 && Score != 0){
		Score--;
		scoreLabel.text = [NSString stringWithFormat:@"%ld", Score];
	}
	
	if(timeLeft != 0){
		
	int Num1 = 1 + arc4random() % 9;
	int Num2 = 1 + arc4random() % 9;
	int Num3 = 1 + arc4random() % 18;
	int Num4 = 1 + arc4random() % 18;
	int Num5 = 1 + arc4random() % 18;
	
	int Operand = 1 + arc4random() % 2;
				
	switch(Operand){
		case 1: Answer = Num1 + Num2;
			operandLabel.text = @"+";
			break;
		case 2:
			while (Num1 < Num2)
			{
				Num1 = 1 + arc4random() % 9;
				Num2 = 1 + arc4random() % 9;
			}
			
			Answer = Num1 - Num2; 
			operandLabel.text = @"-";
			break;
		}
		
		firstNumberLabel.text = [NSString stringWithFormat:@"%ld", Num1];
		secondNumberLabel.text = [NSString stringWithFormat:@"%ld", Num2];
	
	while (Answer == Num3 || Answer == Num4 || Answer == Num5 || Num3 == Num4 || Num3 == Num5
		   || Num4 == Num5)
	{
		Num3 = 1 + arc4random() % 18;
		Num4 = 1 + arc4random() % 18;
		Num5 = 1 + arc4random() % 18;
	}
		
	int CorrectButton = 1 + arc4random() % 4;
	
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
}


- (IBAction)fourthButtonPressed: (id) sender {
	
	NSString *ButtonTitle = [sender titleForState:UIControlStateNormal];
	int button = [ButtonTitle intValue];
	if(Answer == button && timeLeft != 0){
		Score++;
		scoreLabel.text = [NSString stringWithFormat:@"%ld", Score];
	}
	else if(Answer != button && timeLeft != 0 && Score != 0){
		Score--;
		scoreLabel.text = [NSString stringWithFormat:@"%ld", Score];
	}
	
	if(timeLeft != 0){

		int Num1 = 1 + arc4random() % 9;
		int Num2 = 1 + arc4random() % 9;
		int Num3 = 1 + arc4random() % 18;
		int Num4 = 1 + arc4random() % 18;
		int Num5 = 1 + arc4random() % 18;

		int Operand = 1 + arc4random() % 2;
		
		int CorrectButton = 1 + arc4random() % 4;
		
		switch(Operand){
			case 1: Answer = Num1 + Num2;
				operandLabel.text = @"+";
				break;
			case 2:
				while (Num1 < Num2) 
				{
					Num1 = 1 + arc4random() % 9;
					Num2 = 1 + arc4random() % 9;
				}
				
				Answer = Num1 - Num2; 
				operandLabel.text = @"-";
			break;		}

		
firstNumberLabel.text = [NSString stringWithFormat:@"%ld", Num1];
secondNumberLabel.text = [NSString stringWithFormat:@"%ld", Num2];

while (Answer == Num3 || Answer == Num4 || Answer == Num5 || Num3 == Num4 || Num3 == Num5
	   || Num4 == Num5) 
{
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
	[timeLabel release];
	[finishedLabel release];
	[operandLabel release];
	[button1 release];
	[button2 release];
	[button3 release];
	[button4 release];
	[backButton release];
	[timer release];
	[scoreLabel release];
	[firstNumberLabel release];
	[secondNumberLabel release];
    [super dealloc];
}

@end