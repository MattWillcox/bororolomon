//
//  CheckAnswer.h
//  Equation_Game
//
//  Created by Matt Willcox on 10-03-05.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CheckAnswer : NSObject {
	int number1;
	int number2;
}

@property int number1;
@property int number2;

-(bool)equals;
	

@end
