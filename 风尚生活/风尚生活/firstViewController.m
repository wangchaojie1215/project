//
//  firstViewController.m
//  风尚生活
//
//  Created by administrator on 12-9-10.
//  Copyright (c) 2012年 administrator. All rights reserved.
//

#import "firstViewController.h"

@interface firstViewController ()

@end

@implementation firstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.root=[[HomePageViewController alloc]init];
        self=(firstViewController *)[[UINavigationController alloc]initWithRootViewController:self.root];
        self.title=@"首页";
        self.tabBarItem.image=[UIImage imageNamed:@"首页"];
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
