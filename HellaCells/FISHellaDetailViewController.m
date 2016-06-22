//
//  FISHellaDetailViewController.m
//  HellaCells
//
//  Created by Lloyd W. Sykes on 6/22/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISHellaDetailViewController.h"
#import "FISHellaMasterTableViewController.h"

@interface FISHellaDetailViewController ()

@end

@implementation FISHellaDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   self.displayNumber.accessibilityLabel = @"bigNumber";
   self.displayNumber.text = [NSString stringWithFormat:@"%lu", self.numberToDisplay];
    // These two need to be defined in order for the correct information to be displayed on the FISHellaDetailViewController
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
