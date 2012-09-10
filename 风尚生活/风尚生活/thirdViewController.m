//
//  thirdViewController.m
//  风尚生活
//
//  Created by administrator on 12-9-10.
//  Copyright (c) 2012年 administrator. All rights reserved.
//

#import "thirdViewController.h"

@interface thirdViewController ()

@end

@implementation thirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.root=[[FoodViewController alloc]init];
        self=(thirdViewController *)[[UINavigationController alloc]initWithRootViewController:self.root];
        self.title=@"饮食";
        self.tabBarItem.image=[UIImage imageNamed:@"饮食"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
