//
//  MessageViewController.m
//  风尚生活
//
//  Created by administrator on 12-9-11.
//  Copyright (c) 2012年 administrator. All rights reserved.
//

#import "MessageViewController.h"

@interface MessageViewController ()

@end

@implementation MessageViewController
@synthesize _image;
@synthesize lb1;
@synthesize lb2;
@synthesize lb3;

@synthesize lb4;
@synthesize lb5;
@synthesize lb6;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"地图" style:UIBarButtonItemStyleBordered target:self action:@selector(map)];
    NSLog(@"%d",[self.arr count]);
    // Do any additional setup after loading the view from its nib.
    self.lb1.text = [self.arr objectAtIndex:0];
    self.lb2.text = [self.arr objectAtIndex:1];
    if ([self.arr objectAtIndex:2]==@"") {
        self.lb3.text = @"无";
    }else{
        self.lb3.text = [self.arr objectAtIndex:2];
    }
    NSLog(@"----%@",[self.arr objectAtIndex:3]);
    self.lb4.text = [NSString stringWithFormat:@"%@",[self.arr objectAtIndex:3]];
    self.lb5.text = [self.arr objectAtIndex:4];
    self.lb2.text = [self.arr objectAtIndex:1];
    if ([self.arr objectAtIndex:5]==@"") {
        self.lb6.text = @"无";
    }else{
        self.lb6.text = [self.arr objectAtIndex:5];
    }
    NSURL*url =[NSURL URLWithString:[self.arr objectAtIndex:6]];
    NSLog(@"%@",url);
    NSData *data = [NSData dataWithContentsOfURL:url];
    self._image.image = [UIImage imageWithData:data];

    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setLb1:nil];
    [self setLb2:nil];
    [self setLb4:nil];
    [self setLb5:nil];
    [self setLb6:nil];
    
    [self setLb3:nil];
    [self set_image:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
