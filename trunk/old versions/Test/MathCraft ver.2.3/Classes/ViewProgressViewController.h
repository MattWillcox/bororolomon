//
//  ViewProgressViewController.h
//  ViewProgress
//
//  Created by Matt Willcox on 10-04-02.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewProgressViewController : UIViewController {

	
	IBOutlet UILabel *equationGame1ScoreLabel;
	IBOutlet UILabel *equationGame2ScoreLabel;
	IBOutlet UILabel *moneyGame1ScoreLabel;
	IBOutlet UILabel *moneyGame2ScoreLabel;
	IBOutlet UILabel *clockGame1ScoreLabel;
	IBOutlet UILabel *clockGame2ScoreLabel;
	IBOutlet UILabel *mirrorGame1ScoreLabel;
	IBOutlet UILabel *mirrorGame2ScoreLabel;	
		
}

-(IBAction)back_Pressed;

@end

