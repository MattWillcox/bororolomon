//
//  NumberGenerate.m
//  MathCraft_Login
//
//  Created by Matt Willcox on 10-03-17.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "NumberGenerate.h"

@implementation NumberGenerate

-(void) Generate {
	
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
	
	firstNumberLabel.text = [NSString stringWithFormat:@"%ld", Num1]; //Equation number #1
	secondNumberLabel.text = [NSString stringWithFormat:@"%ld", Num2]; //Equation number #2
	
	while (Answer == Num3 || Answer == Num4 || Answer == Num5 || Num3 == Num4 || Num3 == Num5
		   || Num4 == Num5) // This while loop ensures there are no duplicate answers
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

@end
