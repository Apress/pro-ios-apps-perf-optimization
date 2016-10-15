//
//  UIUtilities.h
//  ImageCachingLibrary
//
//  Created by Vo Khang on 24/04/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface UIUtilities : NSObject {

}
+ (UITableViewCell *)getCellWithTableView:(UITableView *)tableView 
                           cellIdentifier:(NSString *)cellIdentifier 
                                  nibName:(NSString *)nibName;
@end
