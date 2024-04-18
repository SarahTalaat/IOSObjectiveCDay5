//
//  ViewController.h
//  IOSObjectiveCDay5
//
//  Created by Sara Talat on 18/04/2024.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <NSURLConnectionDelegate,NSURLConnectionDataDelegate>

@property NSMutableData *finalData;

@property (strong, nonatomic) IBOutlet UITextView *textView;
- (IBAction)synchButton:(UIButton *)sender;
- (IBAction)asynchButton:(UIButton *)sender;


@end

