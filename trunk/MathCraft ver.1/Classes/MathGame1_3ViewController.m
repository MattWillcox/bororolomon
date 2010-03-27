//
//  MathGame1_3ViewController.m
//  MathGame1.3
//
//  Created by Joanna So on 10年3月9日.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "MathGame1_3ViewController.h"

@implementation MathGame1_3ViewController
@synthesize score;
@synthesize A;
@synthesize B;
@synthesize C;

-(IBAction)back_Pressed{
	[self dismissModalViewControllerAnimated:YES];
}

- (void)viewDidLoad {
	timeLable.text = @"60";
	timeLeft = 60;
	score.text = @"0";
	totalScore = 0;
	
	[super viewDidLoad];
	
	int number1 = 1 + arc4random() % 9;
	int number2 = 1 + arc4random() % 9;
	
	while(number1 ==2 && number2 ==2 || number1 ==4 && number2 ==2){
		number1 = 1 + arc4random() % 9;
		number2 = 1 + arc4random() % 9;
	}
	
	int Operand = 1 + arc4random() % 4;
	
	switch(Operand){
		case 1:
			Answer = number1 + number2;
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
		case 2:
			Answer = number1 - number2; 
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
		case 3:
			Answer = number1 * number2;
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
		case 4:
			while (number1 == 2  && number2 == 2) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			while (number1 == 4  && number2 == 2) {
				number1 = 2 + arc4random() % 9;
				number2 = 2 + arc4random() % 9;
			}
			int number3 = number1 * number2;
			Answer = number2;
			A.text = [NSString stringWithFormat:@"%ld", number3];
			B.text = [NSString stringWithFormat:@"%ld", number1];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
	}
}



-(void)updateLabel {
	if (timeLeft != 0) {
		timeLeft = timeLeft--;
	}
	else {
		A.text = @"";
		B.text = @"";
		C.text = @"";
		questionMark.text = @"";
		equalSign.text =@"";
		Finished.text = @"F I N I S H E D !";
	}
	timeLable.text = [NSString stringWithFormat:@"%02d",timeLeft];
}



-(IBAction)addition:(id)sender
{
	
	NSString *Avalue = A.text;
	int AvalueNumber = [Avalue intValue];
	NSString *Bvalue = B.text;
	int BvalueNumber = [Bvalue intValue];
	
	if(Answer == AvalueNumber + BvalueNumber  && timeLeft != 0){		
		totalScore++;
		score.text = [NSString stringWithFormat:@"%ld", totalScore];
	}

	else if(Answer != AvalueNumber + BvalueNumber  && timeLeft != 0  && totalScore >0){
		totalScore--;
		score.text = [NSString stringWithFormat:@"%ld", totalScore];
	}
	
	

	if (timeLeft != 0){
		int number1 = 1 + arc4random() % 9;
		int number2 = 1 + arc4random() % 9;
		int Operand = 1 + arc4random() % 4;
		
		while(number1 ==2 && number2 ==2 || number1 ==4 && number2 ==2){
			number1 = 1 + arc4random() % 9;
			number2 = 1 + arc4random() % 9;
		}
	
		switch(Operand){
			case 1:
				Answer = number1 + number2;
				A.text = [NSString stringWithFormat:@"%ld", number1];
				B.text = [NSString stringWithFormat:@"%ld", number2];
				C.text = [NSString stringWithFormat:@"%ld", Answer];
				break;
			case 2:
				while(number1 < number2){
					number1 = 1 + arc4random() % 9;
					number2 = 1 + arc4random() % 9;
				}
				Answer = number1 - number2; 
				A.text = [NSString stringWithFormat:@"%ld", number1];
				B.text = [NSString stringWithFormat:@"%ld", number2];
				C.text = [NSString stringWithFormat:@"%ld", Answer];
				break;
			case 3:
				number1 = 2 + arc4random() % 9;
				number2 = 2 + arc4random() % 9;
				Answer = number1 * number2;
				A.text = [NSString stringWithFormat:@"%ld", number1];
				B.text = [NSString stringWithFormat:@"%ld", number2];
				C.text = [NSString stringWithFormat:@"%ld", Answer];
				break;
			case 4:
				number1 = 2 + arc4random() % 9;
				number2 = 2 + arc4random() % 9;
				int number3 = number1 * number2;
				Answer = number2;
				A.text = [NSString stringWithFormat:@"%ld", number3];
				B.text = [NSString stringWithFormat:@"%ld", number1];
				C.text = [NSString stringWithFormat:@"%ld", Answer];
				break;
		}
	}

}


-(IBAction)subtraction:(id)sender
{
	NSString *Avalue = A.text;
	int AvalueNumber = [Avalue intValue];
	NSString *Bvalue = B.text;
	int BvalueNumber = [Bvalue intValue];
	
	if(Answer == AvalueNumber - BvalueNumber  && timeLeft != 0){		
		totalScore++;
		score.text = [NSString stringWithFormat:@"%ld", totalScore];
	}
	
	else if(Answer != AvalueNumber - BvalueNumber  && timeLeft != 0  && totalScore >0){
		totalScore--;
		score.text = [NSString stringWithFormat:@"%ld", totalScore];
	}
	

	
	if (timeLeft != 0){
		int number1 = 1 + arc4random() % 9;
		int number2 = 1 + arc4random() % 9;
		int Operand = 1 + arc4random() % 4;
		
		while(number1 ==2 && number2 ==2 || number1 ==4 && number2 ==2){
			number1 = 1 + arc4random() % 9;
			number2 = 1 + arc4random() % 9;
		}
		
		switch(Operand){
			case 1:
				while (number1 == 2  && number2 == 2) {
					number1 = 1 + arc4random() % 9;
					number2 = 1 + arc4random() % 9;
				}
				Answer = number1 + number2;
				A.text = [NSString stringWithFormat:@"%ld", number1];
				B.text = [NSString stringWithFormat:@"%ld", number2];
				C.text = [NSString stringWithFormat:@"%ld", Answer];
				break;
			case 2:
				while(number1 < number2){
					number1 = 1 + arc4random() % 9;
					number2 = 1 + arc4random() % 9;
				}
				Answer = number1 - number2; 
				A.text = [NSString stringWithFormat:@"%ld", number1];
				B.text = [NSString stringWithFormat:@"%ld", number2];
				C.text = [NSString stringWithFormat:@"%ld", Answer];
				break;
			case 3:
				number1 = 2 + arc4random() % 9;
				number2 = 2 + arc4random() % 9;
				Answer = number1 * number2;
				A.text = [NSString stringWithFormat:@"%ld", number1];
				B.text = [NSString stringWithFormat:@"%ld", number2];
				C.text = [NSString stringWithFormat:@"%ld", Answer];
				break;
			case 4:
				number1 = 2 + arc4random() % 9;
				number2 = 2 + arc4random() % 9;
				int number3 = number1 * number2;
				Answer = number2;
				A.text = [NSString stringWithFormat:@"%ld", number3];
				B.text = [NSString stringWithFormat:@"%ld", number1];
				C.text = [NSString stringWithFormat:@"%ld", Answer];
				break;
		}

	switch(Operand){
		case 1: 
			while (number1 == 2  && number2 == 2) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			Answer = number1 + number2;
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
		case 2:
			while (number1 < number2 || number1/number2 == 2 || number2/number1 == 2) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			Answer = number1 - number2; 
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
		case 3:
			number1 = 2 + arc4random() % 9;
			number2 = 2 + arc4random() % 9;
			Answer = number1 * number2;
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
		case 4:
			number1 = 2 + arc4random() % 9;
			number2 = 2 + arc4random() % 9;
			while (number1 == 4  && number2 == 2) {
				number1 = 2 + arc4random() % 9;
				number2 = 2 + arc4random() % 9;
			}
			int number3 = number1 * number2;
			Answer = number2;
			A.text = [NSString stringWithFormat:@"%ld", number3];
			B.text = [NSString stringWithFormat:@"%ld", number1];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
	}

	}
	
}

-(IBAction)multiplication:(id)sender{
	
	NSString *Avalue = A.text;
	int AvalueNumber = [Avalue intValue];
	NSString *Bvalue = B.text;
	int BvalueNumber = [Bvalue intValue];
	
	if (Answer == AvalueNumber * BvalueNumber && timeLeft != 0){
		totalScore++;
		score.text = [NSString stringWithFormat:@"%ld", totalScore];
	}

	else if(Answer != AvalueNumber * BvalueNumber  && timeLeft != 0 && totalScore >0){
		totalScore--;
		score.text = [NSString stringWithFormat:@"%ld", totalScore];
	}
	
	

	if (timeLeft != 0){
		int number1 = 1 + arc4random() % 9;
		int number2 = 1 + arc4random() % 9;
		int Operand = 1 + arc4random() % 4;
		
		while(number1 ==2 && number2 ==2 || number1 ==4 && number2 ==2){
			number1 = 1 + arc4random() % 9;
			number2 = 1 + arc4random() % 9;
		}
		
		switch(Operand){
			case 1:
				Answer = number1 + number2;
				A.text = [NSString stringWithFormat:@"%ld", number1];
				B.text = [NSString stringWithFormat:@"%ld", number2];
				C.text = [NSString stringWithFormat:@"%ld", Answer];
				break;
			case 2:
				while(number1 < number2){
					number1 = 1 + arc4random() % 9;
					number2 = 1 + arc4random() % 9;
				}
				Answer = number1 - number2; 
				A.text = [NSString stringWithFormat:@"%ld", number1];
				B.text = [NSString stringWithFormat:@"%ld", number2];
				C.text = [NSString stringWithFormat:@"%ld", Answer];
				break;
			case 3:
				Answer = number1 * number2;
				A.text = [NSString stringWithFormat:@"%ld", number1];
				B.text = [NSString stringWithFormat:@"%ld", number2];
				C.text = [NSString stringWithFormat:@"%ld", Answer];
				break;
			case 4:
				while (number1 == 2  && number2 == 2) {
					number1 = 1 + arc4random() % 9;
					number2 = 1 + arc4random() % 9;
				}
				int number3 = number1 * number2;
				Answer = number2;
				A.text = [NSString stringWithFormat:@"%ld", number3];
				B.text = [NSString stringWithFormat:@"%ld", number1];
				C.text = [NSString stringWithFormat:@"%ld", Answer];
				break;
		}

	switch(Operand){
		case 1:
			while (number1 == 2  && number2 == 2) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			Answer = number1 + number2;
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
		case 2:
			while (number1 < number2 || number1/number2 == 2 || number2/number1 == 2) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			Answer = number1 - number2; 
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
		case 3:
			number1 = 2 + arc4random() % 9;
			number2 = 2 + arc4random() % 9;
			Answer = number1 * number2;
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
		case 4:
			number1 = 2 + arc4random() % 9;
			number2 = 2 + arc4random() % 9;
			while (number1 == 4  && number2 == 2) {
				number1 = 2 + arc4random() % 9;
				number2 = 2 + arc4random() % 9;
			}
			int number3 = number1 * number2;
			Answer = number2;
			A.text = [NSString stringWithFormat:@"%ld", number3];
			B.text = [NSString stringWithFormat:@"%ld", number1];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
	}

	}
} 

-(IBAction)division:(id)sender
{
	
	NSString *Avalue = A.text;
	int AvalueNumber = [Avalue intValue];
	NSString *Bvalue = B.text;
	int BvalueNumber = [Bvalue intValue];
	
	if(timeLeft != 0 && Answer == AvalueNumber / BvalueNumber){
		totalScore++;
		score.text = [NSString stringWithFormat:@"%ld", totalScore ];
	}
	else if(timeLeft != 0  && totalScore >0){
		if(Answer != AvalueNumber / BvalueNumber){
		totalScore--;
		score.text = [NSString stringWithFormat:@"%ld", totalScore];
		}
	}
	

	if(timeLeft != 0){
		int number1 = 1 + arc4random() % 9;
		int number2 = 1 + arc4random() % 9;
		int Operand = 1 + arc4random() % 4;
		
		while(number1 ==2 && number2 ==2 || number1 ==4 && number2 ==2){
			number1 = 1 + arc4random() % 9;
			number2 = 1 + arc4random() % 9;
		}
		
		switch(Operand){
			case 1:
				Answer = number1 + number2;
				A.text = [NSString stringWithFormat:@"%ld", number1];
				B.text = [NSString stringWithFormat:@"%ld", number2];
				C.text = [NSString stringWithFormat:@"%ld", Answer];
				break;
			case 2:
				while(number1 < number2){
					number1 = 1 + arc4random() % 9;
					number2 = 1 + arc4random() % 9;
				}
				Answer = number1 - number2; 
				A.text = [NSString stringWithFormat:@"%ld", number1];
				B.text = [NSString stringWithFormat:@"%ld", number2];
				C.text = [NSString stringWithFormat:@"%ld", Answer];
				break;
			case 3:
				Answer = number1 * number2;
				A.text = [NSString stringWithFormat:@"%ld", number1];
				B.text = [NSString stringWithFormat:@"%ld", number2];
				C.text = [NSString stringWithFormat:@"%ld", Answer];
				break;
			case 4:
				while (number1 == 2  && number2 == 2) {
					number1 = 1 + arc4random() % 9;
					number2 = 1 + arc4random() % 9;
				}
				int number3 = number1 * number2;
				Answer = number2;
				A.text = [NSString stringWithFormat:@"%ld", number3];
				B.text = [NSString stringWithFormat:@"%ld", number1];
				C.text = [NSString stringWithFormat:@"%ld", Answer];
				break;
		}

	number1 = 1 + arc4random() % 9;
	number2 = 1 + arc4random() % 9;
	Operand = 1 + arc4random() % 4;

	switch(Operand){
		case 1:
			while (number1 == 2  && number2 == 2) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			Answer = number1 + number2;
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
		case 2:
			while (number1 < number2 || number1/number2 == 2 || number2/number1 == 2) {
				number1 = 1 + arc4random() % 9;
				number2 = 1 + arc4random() % 9;
			}
			Answer = number1 - number2; 
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
		case 3:
			number1 = 2 + arc4random() % 9;
			number2 = 2 + arc4random() % 9;
			Answer = number1 * number2;
			A.text = [NSString stringWithFormat:@"%ld", number1];
			B.text = [NSString stringWithFormat:@"%ld", number2];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
		case 4:
			number1 = 2 + arc4random() % 9;
			number2 = 2 + arc4random() % 9;
			while (number1 == 4  && number2 == 2) {
				number1 = 2 + arc4random() % 9;
				number2 = 2 + arc4random() % 9;
			}
			int number3 = number1 * number2;
			Answer = number2;
			A.text = [NSString stringWithFormat:@"%ld", number3];
			B.text = [NSString stringWithFormat:@"%ld", number1];
			C.text = [NSString stringWithFormat:@"%ld", Answer];
			break;
			
	}

	}
} 

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation 
{
    return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}
	
- (void)didReceiveMemoryWarning {
		// Releases the view if it doesn't have a superview.
	[super didReceiveMemoryWarning];
}
	
- (void)dealloc {
		[Finished release];
		[timeLable release];
		[score release];
		[button1 release];
		[button2 release];
		[button3 release];
		[button4 release];
		[A release];
		[B release];
		[C release];
		[questionMark release];
		[equalSign release];
		[super dealloc];
	}
	
@end	


