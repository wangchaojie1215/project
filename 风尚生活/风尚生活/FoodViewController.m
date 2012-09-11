//
//  FoodViewController.m
//  风尚生活
//
//  Created by administrator on 12-9-10.
//  Copyright (c) 2012年 administrator. All rights reserved.
//

#import "FoodViewController.h"
#import "AppDelegate.h"
#import "JSONKit.h"
@interface FoodViewController ()

@end

@implementation FoodViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title=@"饮食";
        api = [[AibangApi alloc] init];
        api.delegate = self;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)searchButton:(UIButton *)sender {
    NSString *cityName = @"苏州";
    NSString *bizName = @"餐馆";
    NSString *Radius1 = @"50";
        list = [[ListViewController alloc]init];
    
    list.array = [[NSMutableArray alloc]init];
    list.result1 = [[NSDictionary alloc]init];

    [api searchBizWithCity:cityName Query:bizName Address:@"" Category:@"" Lng:@"120.7419874" Lat:@"31.2755008" Radius:Radius1 Rankcode:@"0" From:@"1" To:@"300"];
}
-(void) requestDidFinishWithData:(NSData*)data aibangApi:(id)aibangApi{
//    [cityTextField resignFirstResponder];
//    [bizNameTextField resignFirstResponder];
    
    NSString* result = [[NSString alloc] initWithData:data
                                             encoding:NSUTF8StringEncoding];
    //    NSLog(@"%@",result);
    NSDictionary *resultData=[result objectFromJSONStringWithParseOptions:JKParseOptionLooseUnicode];
    NSDictionary *resultSecData=[resultData objectForKey:@"bizs"];
    list.array = [resultSecData objectForKey:@"biz"];
    //    for (int i=0; i<30; i++) {
    //        list.result1 = [list.array objectAtIndex:i];
    //        NSLog(@"地址:%@",[list.result1 objectForKey:@"addr"]);
    //        NSLog(@"店名:%@",[list.result1 objectForKey:@"name"]);
    //        NSLog(@"电话:%@",[list.result1 objectForKey:@"tel"]);
    //        NSLog(@"美食:%@",[list.result1 objectForKey:@"cate"]);
    //        NSLog(@"星级:%@",[list.result1 objectForKey:@"rate"]);
    //        NSLog(@"简介:%@",[list.result1 objectForKey:@"desc"]);
    //        NSLog(@"图片:%@",[list.result1 objectForKey:@"img_url"]);
    
    //    }
    [self.navigationController pushViewController:list animated:YES];
}






@end
