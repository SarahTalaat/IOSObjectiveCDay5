//
//  ViewController.m
//  IOSObjectiveCDay5
//
//  Created by Sara Talat on 18/04/2024.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)AsynchButton:(id)sender {
}

- (IBAction)synchButton:(UIButton *)sender {
    
    NSURL *url = [[NSURL alloc] initWithString:@""];
    NSString *str = [[NSString alloc] initWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
}
@end
