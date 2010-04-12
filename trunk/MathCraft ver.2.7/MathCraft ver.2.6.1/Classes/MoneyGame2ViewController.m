//
//  MoneyGame2ViewController.m
//  MathCraft_Login

/* 
 * Project Name: Bororolomon
 * Version: 3
 * Group Number: 1
 * Course: CMPT 275
 */

#import "MoneyGame2ViewController.h"
#import "MathCraft_Music.h"
#import "ManageProfile.h"

@implementation MoneyGame2ViewController



-(void)hide{
	one1.hidden = YES;
	one2.hidden = YES;
	one3.hidden = YES;
	one4.hidden = YES;
	one5.hidden = YES;
	
	two1.hidden = YES;
	two2.hidden = YES;
	two3.hidden = YES;
	two4.hidden = YES;
	two5.hidden = YES;
	
	quarter1.hidden = YES;
	quarter2.hidden = YES;
	quarter3.hidden = YES;
	quarter4.hidden = YES;
	quarter5.hidden = YES;	
	
}

-(void)resetCount{
	count_1 = 0;
	count_2 = 0;
	count_3 = 0;
}


- (void)viewDidLoad {
	Timer = [NSTimer scheduledTimerWithTimeInterval:(1.0) target:self selector:@selector(updateLabel) userInfo:nil repeats:YES];
	timeLable.text = @"60";
	timeLeft = 60;
	score.text = @"0";
	totalScore = 0;
	current = 0;
	
	[self resetCount];
	[self hide];
	
	[super viewDidLoad];
	
	five.hidden = YES;
	ten.hidden = YES;
	twenty.hidden = YES;
	
	int number1 = 1 + arc4random() % 9;
	int number2 = 25 * (0 + arc4random() % 4);
	
	A.text = [NSString stringWithFormat:@"%ld", number1];
	B.text = [NSString stringWithFormat:@"%02d", number2];
	
	NSString *Avalue = A.text;
	double AvalueNumber = [Avalue doubleValue];
	NSString *Bvalue = B.text;
	double BvalueNumber = [Bvalue doubleValue];
	
	price = AvalueNumber + (BvalueNumber / 100.0);
	
	if ( price <= 5.0){
		five.hidden = NO;
	}
	else if ( price >= 10.0){
		twenty.hidden = NO;
	}
	else{
		ten.hidden = NO;
	}
	
	
}



-(void)updateLabel {
	if (timeLeft != 0) {
		timeLeft = timeLeft--;
		timeLable.text = [NSString stringWithFormat:@"%02d",timeLeft];
	}
	
	else {
		
		A.hidden = YES;
		B.hidden = YES;
		dollarSign.hidden = YES;
		dot.hidden = YES;
		
		[self hide];
		
		Finished.text = @"F I N I S H E D !";
	}
}


-(IBAction)addTwo:(id)sender{ 
	if (count_2 < 5){ 
		current = 2; 
		count_2++;
		answer = answer +2;
	}
	
	if(timeLeft != 0){
		if (count_2 == 1)
			two1.hidden = NO;
		if (count_2 == 2)
			two2.hidden = NO;
		if (count_2 == 3)
			two3.hidden = NO;
		if (count_2 == 4)
			two4.hidden = NO;
		if (count_2 == 5)
			two5.hidden = NO;
	}
	
}

-(IBAction)addOne:(id)sender{
	if(count_1 < 5){
		current = 1;
		count_1++;
		answer = answer++;
	}
	
	if(timeLeft != 0){
		if (count_1 == 1)
			one1.hidden = NO;
		if (count_1 == 2)
			one2.hidden = NO;
		if (count_1 == 3)
			one3.hidden = NO;
		if (count_1 == 4)
			one4.hidden = NO;
		if (count_1 == 5)
			one5.hidden = NO;
	}
}

-(IBAction)addQuarter:(id)sender{
	if (count_3 < 5){
		current = 3;
		count_3++;
		answer = answer+ 0.25;
	}
	
	if(timeLeft != 0){
		if (count_3 == 1)
			quarter1.hidden = NO;
		if (count_3 == 2)
			quarter2.hidden = NO;
		if (count_3 == 3)
			quarter3.hidden = NO;
		if (count_3 == 4)
			quarter4.hidden = NO;
		if (count_3 == 5)
			quarter5.hidden = NO;
	}
}

-(IBAction)cancel:(id)sender{
	if(current == 3 && count_3 > 0){
		if (count_3 == 1)
			quarter1.hidden = YES;
		if (count_3 == 2)
			quarter2.hidden = YES;
		if (count_3 == 3)
			quarter3.hidden = YES;
		if (count_3 == 4)
			quarter4.hidden = YES;
		if (count_3 == 5)
			quarter5.hidden = YES;
		count_3--;
		answer = answer - 0.25;
	}
	
	else if(current == 2 && count_2 > 0){
		if (count_2 == 1)
			two1.hidden = YES;
		if (count_2 == 2)
			two2.hidden = YES;
		if (count_2 == 3)
			two3.hidden = YES;
		if (count_2 == 4)
			two4.hidden = YES;
		if (count_2 == 5)
			two5.hidden = YES;
		count_2 --;
		answer = answer - 2.0;
	}
	else if(current == 1 && count_1 > 0){
		if (count_1 == 1)
			one1.hidden = YES;
		if (count_1 == 2)
			one2.hidden = YES;
		if (count_1 == 3)
			one3.hidden = YES;
		if (count_1 == 4)
			one4.hidden = YES;
		if (count_1 == 5)
			one5.hidden = YES;
		count_1--;
		answer = answer - 1.0;
	}
}



-(IBAction)reset:(id)sender{
	[self hide];
	[self resetCount];
	answer = 0.0;
}


-(IBAction)submission:(id)sender{
	if(timeLeft != 0){
		five.hidden = YES;
		ten.hidden =YES;
		current = 0;
		
		if(10 - answer == price ||  5 - answer == price ||  20 - answer == price){
			totalScore++;
			score.text = [NSString stringWithFormat:@"%ld", totalScore];
		}
		else if(totalScore > 0){
			totalScore--;
			score.text = [NSString stringWithFormat:@"%ld", totalScore];
		}
		
		int number1;
		int number2;
		
		if (totalScore > 6){ 
			number1 = 10 + arc4random() % 9;
			number2 = 25 * (0 + arc4random() % 4);
		}
		
		else{
			number1 = 1 + arc4random() % 9;
			number2 = 25 * (0 + arc4random() % 4);
		}
		
		A.text = [NSString stringWithFormat:@"%ld", number1];
		B.text = [NSString stringWithFormat:@"%02d", number2];
		
		NSString *Avalue = A.text;
		double AvalueNumber = [Avalue doubleValue];
		NSString *Bvalue = B.text;
		double BvalueNumber = [Bvalue doubleValue];
		
		price = AvalueNumber + (BvalueNumber / 100.0);
		
		if (price <= 5.0){
			five.hidden = NO;
		}
		else if(price >= 10.0){
			twenty.hidden = NO;
		}
		else{
			ten.hidden = NO;
		}
		
		[self hide];
		[self resetCount];
		answer = 0.0;
		
		
		
	}
	
}

-(IBAction) back_button {
	MathCraft_Music *player = [MathCraft_Music sharedManager];
	if (player.sound == [NSNumber numberWithInt:1]) {
		[player stop];
		[player changeTrack:0];
		[player play];
	}
	
	if (timeLeft == 0) {
	
		profile = [ManageProfile sharedManager];
		if (totalScore > profile.LoggedinUser.MoneyGame2Score) {
			profile.LoggedinUser.MoneyGame2Score = totalScore;
		}
		
		profile.LoggedinUser.MoneyGame2Average = 
			((profile.LoggedinUser.MoneyGame2Average*(float)profile.LoggedinUser.MoneyGame2Played) + (float)totalScore) / ((float)profile.LoggedinUser.MoneyGame2Played+1);
		profile.LoggedinUser.MoneyGame2Played++;
		[profile saveUserProfile];
		
	}
	
	
	
	
	[player release];
	[self dismissModalViewControllerAnimated:YES];
}

/*
 -(void) touchesBegan:(NSSet*) touches withEvent:(UIEvent*)event{
 
 UITouch *touch =[[event allTouches] anyObject];	
 CGPoint location = [touch locationInView:self.view];
 one.center = location;	
 
 }*/






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
	[timeLable release];
	[Finished release];
	[score release];
	[A release];
	[B release];
	[dollarSign release];
	[dot release];
	
	[okBbutton release];
	[cancelBbutton release];
	[resetButton release];
	[buttonTwo release];
	[buttonOne release];
	[buttonQuarter release];
	[back_button release];
	
	[one1 release];
	[one2 release];
	[one3 release];
	[one4 release];
	[one5 release];
	
	[two1 release];
	[two2 release];
	[two3 release];
	[two4 release];
	[two5 release];
	
	[quarter1 release];
	[quarter2 release];
	[quarter3 release];
	[quarter4 release];
	[quarter5 release];
	
	[five release];
	[ten release];
	[twenty release];
	
	[Timer release];
	[profile release];
    [super dealloc];
}

@end
