#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface MainView : UIView {
    //IBOutlet id delegate;
    IBOutlet UIImageView *two;
    IBOutlet UIImageView *twoEnd;
    IBOutlet UIImageView *twoStart;
}
@property (nonatomic, retain) UIImageView *two;
@property (nonatomic, retain) UIImageView *twoEnd;
@property (nonatomic, retain) UIImageView *twoStart;

- (IBAction)moveUp;
@end
