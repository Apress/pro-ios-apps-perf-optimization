//
//  UIImageView+Network.h
//  ImageCachingLibrary
//
//  Created by Vo Khang on 24/04/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ImageFetcher.h"

@interface UIImageView (Network) <ImageFetcherDelegate>

- (void)displayImageWithURL:(NSURL *)url;

@end
