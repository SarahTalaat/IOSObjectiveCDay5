//
//  ViewController.h
//  IOSObjectiveCDay5
//
//  Created by Sara Talat on 18/04/2024.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextView *textView;

- (IBAction)synchButton:(UIButton *)sender;
- (IBAction)AsynchButton:(id)sender;

@end

