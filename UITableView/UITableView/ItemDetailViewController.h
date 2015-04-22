//
//  ItemDetailViewController.h
//  UITableView
//
//  Created by Nguyen Nam Long on 4/23/15.
//  Copyright (c) 2015 Nguyen Nam Long. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItemDetailViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *itemLabel;
@property (strong, nonatomic) IBOutlet UILabel *priceLabel;

@property (strong,nonatomic) NSString *itemName;
@property (strong,nonatomic) NSString *itemPrice;

@end
