//
//  UIImageView+Network.m
//  ImageCachingLibrary
//
//  Created by Vo Khang on 24/04/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "UIImageView+Network.h"
#import "ImageFetcher.h"

@implementation UIImageView (Network)

- (void)finishLoadingImageWithFetcher:(ImageFetcher *)fetcher {
}

- (void)imageFetcherFinished:(ImageFetcher *)fetcher {
    self.image = fetcher.image;
}

- (void)displayImageWithURL:(NSURL *)url {
    self.image = nil;
    if (url) {
        [ImageFetcher loadImageWithURL:url delegate:self];
    }
}

@end
