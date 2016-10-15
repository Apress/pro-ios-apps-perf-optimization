//
//  RootViewController.h
//  SQLiteExample
//
//  Created by vodkhang on 12/07/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sqlite3.h>


@interface RootViewController : UITableViewController {
  @private
    sqlite3 *database;
    NSArray *namesArray;
}

@property (nonatomic, strong) NSArray *namesArray;

@end
