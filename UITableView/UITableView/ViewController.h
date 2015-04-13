//
//  ViewController.h
//  UITableView
//
//  Created by Nguyen Nam Long on 4/14/15.
//  Copyright (c) 2015 Nguyen Nam Long. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITabBarDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;


@end

