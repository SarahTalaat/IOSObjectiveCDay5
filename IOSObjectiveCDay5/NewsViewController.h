//
//  NewsViewController.h
//  IOSObjectiveCDay5
//
//  Created by Sara Talat on 18/04/2024.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NewsViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *newsTable;

@end

NS_ASSUME_NONNULL_END
