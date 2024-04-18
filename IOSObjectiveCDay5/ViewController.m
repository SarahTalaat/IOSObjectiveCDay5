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
    _finalData = [NSMutableData new];
}


- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    printf("connectionDidFinishLoading\n");
    
    NSString *str = [[NSString alloc] initWithData:self.finalData encoding:NSUTF8StringEncoding];

    self.textView.text = str;

    
//    NSMutableArray *arr = [NSJSONSerialization JSONObjectWithData:self.finalData options:NSJSONReadingAllowFragments error:nil];
//    if(arr!=nil){
//        NSDictionary *dict = arr[0];
//        NSString *str = [dict objectForKey:@"title"];
//        _textView.text = str;
//    }
    
    
}


- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    printf("didReceiveData\n");
    [self.finalData appendData:data];
}


- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    printf("didReceiveResponse\n");
}


- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    printf("didFailWithError\n");
}



- (IBAction)asynchButton:(UIButton *)sender {
    //1-URL:
    NSURL *url = [[NSURL alloc] initWithString:@"https://www.yahoo.com/"];
                                                
    
    //2-Request
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    //3-Connection
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [connection start];
}

- (IBAction)synchButton:(UIButton *)sender {
    
    NSURL *url = [[NSURL alloc] initWithString:@"https://www.yahoo.com/"];
    NSString *str = [[NSString alloc] initWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    _textView.text = str;
}

@end
