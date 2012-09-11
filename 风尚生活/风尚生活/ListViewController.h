//
//  ListViewController.h
//  风尚生活
//
//  Created by administrator on 12-9-11.
//  Copyright (c) 2012年 administrator. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MessageViewController.h"
@interface ListViewController : UITableViewController{
      MessageViewController *message;
}
@property (nonatomic, retain)  NSDictionary *result1;
@property (nonatomic, retain)  NSMutableArray *array;
@end
