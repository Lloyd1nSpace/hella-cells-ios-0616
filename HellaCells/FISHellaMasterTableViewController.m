//
//  FISHellaMasterTableViewController.m
//  HellaCells
//
//  Created by Lloyd W. Sykes on 6/22/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISHellaMasterTableViewController.h"
#import "FISHellaDetailViewController.h"
// Had to import the FISHellaDetailViewController header in order to have access to some of its properties & ensure the segue was done correctly.

@interface FISHellaMasterTableViewController ()

@end

@implementation FISHellaMasterTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   self.tableView.accessibilityIdentifier = @"Table";
    // The instructions specifically wanted us to modify the FISHellaMasterTableViewController's accessibilityIdentifier instead of it's label (which can be done in the storyboard).
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    
    return 1;
    // This method is very straightforward, we only have 1 section since it's dynamic (it can contain different information) & we're only utilizing one format style.

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    
    return 100;
    // The one section we defined above will have 100 rows associated with it, this is how we can lay out the foundation of our table view.

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Table"];
    // In the cell in storyboard, I was able to set the accessibility identifier to @"Table" which made said cell searchable & modifiable.

    cell.textLabel.text = [NSString stringWithFormat:@"%lu", indexPath.row + 1];
    // This ensures the cell label reads out the index number + 1 (because our index always starts at 0).
    
    // Configure the cell...
    
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    FISHellaDetailViewController *detail = segue.destinationViewController;
    // Defining the FISHellaDetailViewController class object *detail (which I just created) to equal to the segue going to the destinationViewController (which in this case is FISHellaDetailViewController)
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    // Had to look up NSIndexPath which essentially defines our index in regards to views.
    
    detail.numberToDisplay = indexPath.row + 1;
    // This completes our segue to ensure that when a cell is tapped, it will showcase the indexPath + 1 making it equivalant to the number tapped!
    
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
