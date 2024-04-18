//
//  NewsViewController.h
//  IOSObjectiveCDay5
//
//  Created by Sara Talat on 18/04/2024.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NewsViewController : UIViewController <UITableViewDelegate,UITableViewDataSource, NSURLConnectionDelegate,NSURLConnectionDataDelegate>

@property (strong, nonatomic) IBOutlet UITableView *newsTable;
@property NSMutableArray *jsonArray;
@property NSMutableData *finalDataFromJson;
@property NSString *textFromJSON;
@property NSString *imageFromJson;
@property NSMutableDictionary *dictionaryFromJson;


@end

NS_ASSUME_NONNULL_END
