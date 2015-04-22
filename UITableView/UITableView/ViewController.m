//
//  ViewController.m
//  UITableView
//
//  Created by Nguyen Nam Long on 4/14/15.
//  Copyright (c) 2015 Nguyen Nam Long. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    NSArray *tableData;
    NSArray *mobilePrice;
    NSArray *mobileimage;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    tableData = [NSArray arrayWithObjects:@"vang",@"hong",@"tim",@"xanh",@"xanh duong", nil];
    mobilePrice = [NSArray arrayWithObjects:@"$1",@"$2",@"$3",@"$4",@"$5", nil];
    mobileimage = [NSArray arrayWithObjects:@"vang",@"hong",@"tim",@"xanh",@"xanhduong", nil];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [tableData count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    //Image
    UIImageView *image = (UIImageView*) [cell.contentView viewWithTag:10];
    image.image = [UIImage imageNamed:[mobileimage objectAtIndex:indexPath.row]];
    
    //Name
    UILabel *itemName = (UILabel*) [cell.contentView viewWithTag:11];
    itemName.text = [tableData objectAtIndex:indexPath.row];
    
    
    //Price
    UILabel *price = (UILabel*) [cell.contentView viewWithTag:12];
    price.text = [mobilePrice objectAtIndex:indexPath.row];
//    [self tableView:tableView didDeselectRowAtIndexPath:indexPath];
    return cell;
}
//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    UIAlertView *messageAlert = [[UIAlertView alloc] initWithTitle:[tableData objectAtIndex:indexPath.row] message:[mobilePrice objectAtIndex:indexPath.row] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
//    
//    // Display Alert Message
//    [messageAlert show];
//    
//}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIAlertView *messageAlert = [[UIAlertView alloc] initWithTitle:[tableData objectAtIndex:indexPath.row] message:[mobilePrice objectAtIndex:indexPath.row] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [messageAlert show];
}
@end
