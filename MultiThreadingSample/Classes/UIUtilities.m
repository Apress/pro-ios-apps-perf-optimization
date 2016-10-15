//
//  UIUtilities.m
//  ImageCachingLibrary
//
//  Created by Vo Khang on 24/04/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "UIUtilities.h"


@implementation UIUtilities

+ (UITableViewCell *)getCellWithTableView:(UITableView *)tableView cellIdentifier:(NSString *)cellIdentifier nibName:(NSString *)nibName {
    UITableViewCell *textCell =  [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (textCell == nil) {
        NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:nibName
                                                                 owner:nil
                                                               options:nil];
        
        for (id currentObject in topLevelObjects) {
            if ([currentObject isKindOfClass:[UITableViewCell class]]) {
                textCell = (UITableViewCell *)currentObject;
                break;
            }
        }
    }
    return textCell;
    
}


@end
