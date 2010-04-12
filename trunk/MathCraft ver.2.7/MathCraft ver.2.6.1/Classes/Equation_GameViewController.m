//
//  Equation_GameViewController.m
//  MathCraft_Login

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
 */
#import "Equation_GameViewController.h"
#import "MathCraft_Music.h"
#import "ManageProfile.h"

@implementation Equation_GameViewController

/*This viewController controls the Equation Game. It uses random number generator to create numbers that
 are then used in the question. The question is either addition or subtraction, which is again based on random 
 numbers. There's 4 buttons and one of them is chosen at random to contain the correct answer,
 the others are filled with random int's that have been designed not to duplicate eachother. There's also a countdown timer
 and a score calculator that will increase or decrease depending if the right answer has been selected. */

-(IBAction)back_Pressed {
	MathCraft_Music *player = [MathCraft_Music sharedManager];
	if (player.sound == [NSNumber numberWithInt:1]) {
		[player stop];
		[player changeTrack:0];
		[player play];
	}
	[player release];

	if (timeLeft == 0) {
		
		profile = [ManageProfile sharedManager];
		if (Score > profile.LoggedinUser.EquationGame1Score) {
			profile.LoggedinUser.EquationGame1Score = Score;
		}
		
		profile.LoggedinUser.EquationGame1Average = 
		((profile.LoggedinUser.EquationGame1Average*(float)profile.LoggedinUser.EquationGame1Played) + (float)Score) / ((float)profile.LoggedinUser.EquationGame1Played+1);
		profile.LoggedinUser.EquationGame1Played++;
		[profile saveUserProfile];
		
	}

	
	
	
	[self dismissModalViewControllerAnimated:YES]; //Closes the view and returns user to the game menu screen
}

- (void)viewDidLoad {
	
	[super viewDidLoad];
	//This is the timer that counts down from 30 in 1 second intervals.
	Timer = [NSTimer scheduledTimerWithTimeInterval:(1.0) target:self selector:@selector(update_Label) userInfo:nil repeats:YES];	
	timeLabel.text = @"60";
	timeLeft = 60;
	Score = 0;
	profile = [ManageProfile sharedManager];


	[self parse_Question];
}

-(void)update_Label { //Updates the timer every 1 second, if timer reads 0 game ends
	
	if (timeLeft != 0) {
		timeLeft = timeLeft--;
	}
	else {
	
		firstNumberLabel.text = @"";
		secondNumberLabel.text = @"";
		operandLabel.text = @"";
		equalsLabel.text = @"";
		answerLabel.text = @"";
		finishedLabel.text = @"F I N I S H E D !";
	}
	
	timeLabel.text = [NSString stringWithFormat:@"%02d",timeLeft];
}



-(void) parse_Question {
	if(timeLeft != 0){
		
		int Num1 = 1 + arc4random() % 9;
		int Num2 = 1 + arc4random() % 9;
		int Num3 = 1 + arc4random() % 18;
		int Num4 = 1 + arc4random() % 18;
		int Num5 = 1 + arc4random() % 18;
		
		Operand = 1 + arc4random() % 2;
		
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

-(void) parse_Question2 {
	if(timeLeft != 0){
		
		int Num1 = 1 + arc4random() % 9;
		int Num2 = 1 + arc4random() % 9;
		int Num3 = 1 + arc4random() % 81;
		int Num4 = 1 + arc4random() % 81;
		int Num5 = 1 + arc4random() % 81;
		
		Operand = 1 + arc4random() % 3;
		
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
			case 3:
				Answer = Num1 * Num2;
				operandLabel.text = @"x";
				break;
		}
		
		firstNumberLabel.text = [NSString stringWithFormat:@"%ld", Num1];
		secondNumberLabel.text = [NSString stringWithFormat:@"%ld", Num2];
		
		while (Answer == Num3 || Answer == Num4 || Answer == Num5 || Num3 == Num4 || Num3 == Num5
			   || Num4 == Num5) 
		{
			Num3 = 1 + arc4random() % 81;
			Num4 = 1 + arc4random() % 81;
			Num5 = 1 + arc4random() % 81;
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

-(void) parse_Question3 {
	if(timeLeft != 0){
		
		int Num1 = 1 + arc4random() % 9;
		int Num2 = 1 + arc4random() % 9;
		int Num3 = 1 + arc4random() % 81;
		int Num4 = 1 + arc4random() % 81;
		int Num5 = 1 + arc4random() % 81;
		
		Operand = 1 + arc4random() % 4;
		
		switch(Operand){
			case 1: Answer = Num1 + Num2;
				operandLabel.text = @"+";
				firstNumberLabel.text = [NSString stringWithFormat:@"%ld", Num1];
				secondNumberLabel.text = [NSString stringWithFormat:@"%ld", Num2];
				break;
			case 2:
				while (Num1 < Num2) 
				{
					Num1 = 1 + arc4random() % 9;
					Num2 = 1 + arc4random() % 9;
				}
				
				Answer = Num1 - Num2; 
				operandLabel.text = @"-";
				firstNumberLabel.text = [NSString stringWithFormat:@"%ld", Num1];
				secondNumberLabel.text = [NSString stringWithFormat:@"%ld", Num2];
				break;
			case 3:
				Answer = Num1 * Num2;
				operandLabel.text = @"x";
				firstNumberLabel.text = [NSString stringWithFormat:@"%ld", Num1];
				secondNumberLabel.text = [NSString stringWithFormat:@"%ld", Num2];
				break;
			case 4:
				operandLabel.text = @"/";
				while(Num1 == 2 && Num2 == 2) {
					Num1 = 1 + arc4random() % 9;
					Num2 = 1 + arc4random() % 9;
				}
				int Num3 = Num1 * Num2;
				Answer = Num2;
				firstNumberLabel.text = [NSString stringWithFormat:@"%ld", Num3];
				secondNumberLabel.text = [NSString stringWithFormat:@"%ld", Num1];
		}

		
		while (Answer == Num3 || Answer == Num4 || Answer == Num5 || Num3 == Num4 || Num3 == Num5
			   || Num4 == Num5) 
		{
			Num3 = 1 + arc4random() % 81;
			Num4 = 1 + arc4random() % 81;
			Num5 = 1 + arc4random() % 81;
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



- (IBAction) Button_Pressed: (id) sender {
	
	/*Each button method contains the same code. Once clicked they will check if the correct answer has been chosen
	 and generate a new set of numbers as long as there is still time left on the countdown*/
	
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
	if (Score < 10) {
	
	[self parse_Question];
	}
	else if (Score < 20 && Score >= 10){
		[self parse_Question2];
	}
	else {
		[self parse_Question3];
	}

	
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)dealloc {
	[timeLabel release];
	[finishedLabel release];
	[operandLabel release];
	[answerLabel release];
	[button1 release];
	[button2 release];
	[button3 release];
	[button4 release];
	[backButton release];
	[Timer release];
	[scoreLabel release];
	[firstNumberLabel release];
	[secondNumberLabel release];
	[profile release];
	
	[super dealloc];
	
}

@end
