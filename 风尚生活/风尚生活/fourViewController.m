//
//  fourViewController.m
//  风尚生活
//
//  Created by administrator on 12-9-10.
//  Copyright (c) 2012年 administrator. All rights reserved.
//

#import "fourViewController.h"

@interface fourViewController ()

@end

@implementation fourViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.root=[[FilmViewController alloc]init];
        self=(fourViewController *)[[UINavigationController alloc]initWithRootViewController:self.root];
        self.title=@"影视";
        self.tabBarItem.image=[UIImage imageNamed:@"影视"];
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
