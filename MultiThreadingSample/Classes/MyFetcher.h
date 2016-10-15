//
//  MyNewFetcher.h
//  MultiThreadingSample
//
//  Created by vodkhang on 12/08/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MyFetcher : NSObject {
  @private
    NSURLRequest *request;
    NSMutableData *data;
    UIImage *image;    
    NSURL *imageURL;
}

@property (nonatomic, strong) NSURLRequest *request;
@property (nonatomic, strong) NSMutableData *data;
@property (nonatomic, strong) IBOutlet UIImage *image;
@property (nonatomic, strong) NSURL *imageURL;

- (void)loadImageWithURL:(NSURL *)url;


@end