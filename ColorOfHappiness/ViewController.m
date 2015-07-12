//
//  ViewController.m
//  ColorOfHappiness
//
//  Created by John Tan on 12/7/15.
//  Copyright (c) 2015 John Tan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property NSArray *colorsArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIColor *red = [UIColor redColor];
    UIColor *green = [UIColor greenColor];
    UIColor *yellow = [UIColor yellowColor];
    UIColor *blue = [UIColor blueColor];
    UIColor *orange = [UIColor orangeColor];
    UIColor *purple = [UIColor purpleColor];
    
    self.colorsArray = [NSArray arrayWithObjects:red, green, yellow, blue, orange, purple,nil];

}



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.colorsArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell" forIndexPath:indexPath];
    
//    cell.textLabel.text = [NSString stringWithFormat:@"Row %li",indexPath.row];
    
//    if (indexPath.row == 0) {
//    cell.backgroundColor = [UIColor redColor];
//    
//    }
//    
//    else if (indexPath.row == 1) {
//        cell.backgroundColor = [UIColor greenColor];
//        
//    }
//    
//    else if (indexPath.row == 2) {
//        cell.backgroundColor = [UIColor yellowColor];
//        
//    }
//    
//    else if (indexPath.row == 3) {
//        cell.backgroundColor = [UIColor blueColor];
//        
//    }
//    else if (indexPath.row == 4) {
//        cell.backgroundColor = [UIColor orangeColor];
//        
//    }
//    else if (indexPath.row == 5) {
//        cell.backgroundColor = [UIColor purpleColor];
//        
//    }
    
    cell.backgroundColor = [self.colorsArray objectAtIndex:indexPath.row];
    
    return cell;
}
@end
