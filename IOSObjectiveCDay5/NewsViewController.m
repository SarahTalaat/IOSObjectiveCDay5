//
//  NewsViewController.m
//  IOSObjectiveCDay5
//
//  Created by Sara Talat on 18/04/2024.
//

#import "NewsViewController.h"

@interface NewsViewController ()

@end

@implementation NewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.newsTable.delegate = self;
    self.newsTable.dataSource = self;
    
    _finalDataFromJson = [NSMutableData new];
    _jsonArray = [NSMutableArray new];
    _dictionaryFromJson = [NSMutableDictionary new];

    [self asynchTask];


}

-(void) asynchTask{
    //1-URL:
    NSURL *url = [[NSURL alloc] initWithString:@"https://raw.githubusercontent.com/DevTides/NewsApi/master/news.json"];
    //2-Request
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    //3-Connection
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [connection start];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return  1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  [_jsonArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(_jsonArray!=nil){
      _dictionaryFromJson = _jsonArray[indexPath.row];
    NSString *title = [_dictionaryFromJson objectForKey:@"title"];
    cell.textLabel.text = title;
    }
   
    
    return cell;
    
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    printf("didReceiveData\n");
    [self.finalDataFromJson appendData:data];
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    printf("didReceiveResponse\n");
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    printf("didFailWithError\n");
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    printf("connectionDidFinishLoading\n");
    _jsonArray = [NSJSONSerialization JSONObjectWithData:self.finalDataFromJson options:NSJSONReadingAllowFragments error:nil];
    
    [_newsTable reloadData];

    

        
}
@end
