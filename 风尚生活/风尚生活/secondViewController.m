//
//  secondViewController.m
//  风尚生活
//
//  Created by administrator on 12-9-9.
//  Copyright (c) 2012年 administrator. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()

@end

@implementation secondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.root=[[WeatherViewController alloc]init];
        self=(secondViewController *)[[UINavigationController alloc]initWithRootViewController:self.root];
        self.title=@"天气";
        self.tabBarItem.image=[UIImage imageNamed:@"天气"];
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
