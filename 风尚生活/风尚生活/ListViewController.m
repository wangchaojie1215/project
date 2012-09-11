//
//  ListViewController.m
//  风尚生活
//
//  Created by administrator on 12-9-11.
//  Copyright (c) 2012年 administrator. All rights reserved.
//

#import "ListViewController.h"

@interface ListViewController ()

@end

@implementation ListViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.array count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    cell.textLabel.text = [[self.array objectAtIndex:indexPath.row] objectForKey:@"name"] ;

    // Configure the cell...
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    message = [[MessageViewController alloc] initWithNibName:@"MessageViewController" bundle:nil];
    message.arr = [[NSMutableArray alloc]init];
    NSLog(@"%@",[[self.array objectAtIndex:indexPath.row] objectForKey:@"addr"]);
    
    message.title = [[self.array objectAtIndex:indexPath.row] objectForKey:@"name"] ;
    message.arr = [NSMutableArray arrayWithObjects:[[self.array objectAtIndex:indexPath.row] objectForKey:@"name"], [[self.array objectAtIndex:indexPath.row] objectForKey:@"cate"],[[self.array objectAtIndex:indexPath.row] objectForKey:@"desc"],[[self.array objectAtIndex:indexPath.row] objectForKey:@"rate"],[[self.array objectAtIndex:indexPath.row] objectForKey:@"addr"],[[self.array objectAtIndex:indexPath.row] objectForKey:@"tel"],[[self.array objectAtIndex:indexPath.row] objectForKey:@"img_url"],nil];
    NSLog(@"%@",message.arr);
    //    message.lb1.text = [[self.array objectAtIndex:indexPath.row] objectForKey:@"name"] ;
    //    message.lb1.text = [NSString stringWithFormat: @"ewfwe"];
    //    message.lb2.text = [[self.array objectAtIndex:indexPath.row] objectForKey:@"cate"] ;
    //    message.lb3.text = [[self.array objectAtIndex:indexPath.row] objectForKey:@"desc"] ;
    //    message.lb4.text = [[self.array objectAtIndex:indexPath.row] objectForKey:@"rate"] ;
    //    message.lb5.text = [[self.array objectAtIndex:indexPath.row] objectForKey:@"addr"] ;
    //    message.lb6.text = [[self.array objectAtIndex:indexPath.row] objectForKey:@"tel"] ;
    
    [self.navigationController pushViewController:message animated:YES ];}

@end
