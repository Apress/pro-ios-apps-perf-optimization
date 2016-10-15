//
//  ImageFetcher.h
//  ImageCachingLibrary
//
//  Created by Vo Khang on 24/04/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ImageFetcherDelegate;

@interface ImageFetcher : NSObject {
  @private
    NSURLRequest *request;
    NSMutableData *data;
    UIImage *image;
    
    id <ImageFetcherDelegate> __unsafe_unretained delegate;
    BOOL isCacheImage;
    
    NSURL *imageURL;
}

@property (nonatomic, strong) UIImage *image;

+ (void)loadImageWithURL:(NSURL *)url delegate:(id)delegate;
+ (void)loadImageWithURL:(NSURL *)url delegate:(id)delegate isCache:(BOOL)isCache;

@end

@protocol ImageFetcherDelegate

- (void)finishLoadingImageWithFetcher:(ImageFetcher *)fetcher;
- (void)imageFetcherFinished:(ImageFetcher *)fetcher;
@end