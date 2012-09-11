//
//  FoodViewController.h
//  风尚生活
//
//  Created by administrator on 12-9-10.
//  Copyright (c) 2012年 administrator. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AibangApi.h"
#import "ListViewController.h"
@interface FoodViewController : UIViewController{
    AibangApi * api;
    ListViewController *list;
}


- (IBAction)searchButton:(UIButton *)sender;

@end
