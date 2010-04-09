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
	IBOutlet UILabel *equationGame1AverageLabel;
	IBOutlet UILabel *equationGame2AverageLabel;
	IBOutlet UILabel *moneyGame1AverageLabel;
	IBOutlet UILabel *moneyGame2AverageLabel;
	IBOutlet UILabel *clockGame1AverageLabel;
	IBOutlet UILabel *clockGame2AverageLabel;
	IBOutlet UILabel *mirrorGame1AverageLabel;
	IBOutlet UILabel *mirrorGame2AverageLabel;
	IBOutlet UILabel *equationGame1TotalLabel;
	IBOutlet UILabel *equationGame2TotalLabel;
	IBOutlet UILabel *moneyGame1TotalLabel;
	IBOutlet UILabel *moneyGame2TotalLabel;
	IBOutlet UILabel *clockGame1TotalLabel;
	IBOutlet UILabel *clockGame2TotalLabel;
	IBOutlet UILabel *mirrorGame1TotalLabel;
	IBOutlet UILabel *mirrorGame2TotalLabel;
	IBOutlet UILabel *totalScoreLabel;
	float totalScore;
	
		
}
-(NSString *) submitHighScore:(NSString *)name score:(float) score url:(NSString *) url;

-(IBAction)back_Pressed;
-(IBAction)score_Pressed;

@end

