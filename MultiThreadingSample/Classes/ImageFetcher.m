//
//  ImageFetcher.m
//  ImageCachingLibrary
//
//  Created by Vo Khang on 24/04/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "ImageFetcher.h"

@interface ImageFetcher ()

@property (nonatomic, unsafe_unretained) id delegate;
@property (nonatomic, strong) NSMutableData *data;
@property (nonatomic, strong) NSURLRequest *request;
@property (nonatomic, assign) BOOL isCacheImage;
@property (nonatomic, strong) NSURL *imageURL;

+ (NSString *)getMemoryAddressForDelegate:(id)delegate;
@end


@implementation ImageFetcher

@synthesize image;
@synthesize delegate;
@synthesize data;
@synthesize request;
@synthesize isCacheImage;
@synthesize imageURL;

static NSMutableDictionary *imageViewDictionary;

+ (void)initImageViewDictionary {
    if (!imageViewDictionary) {
        @synchronized (self) {
            if (!imageViewDictionary) {
                imageViewDictionary = [[NSMutableDictionary alloc] init];
            }        
        }
    } else {
    }
}

#pragma mark Multi-threading
- (void)getImageCacheByThread {
    @autoreleasepool {
        
        NSString *key = [ImageFetcher getMemoryAddressForDelegate:self.delegate];
        if ([[imageViewDictionary objectForKey:key] isEqual:self.imageURL]) {
            [imageViewDictionary removeObjectForKey:key];
            [self.delegate imageFetcherFinished:self];
            [self.delegate finishLoadingImageWithFetcher:self];
        } else {
            self.image = nil;
        }
        
    }
}

#pragma mark Main Interface
+ (NSString *)getMemoryAddressForDelegate:(id)delegate {
    return [NSString stringWithFormat:@"%p", delegate];
}

+ (void)loadImageWithURL:(NSURL *)url delegate:(id)delegate {
    [ImageFetcher loadImageWithURL:url delegate:delegate isCache:YES];
}

+ (void)loadImageWithURL:(NSURL *)url delegate:(id)delegate isCache:(BOOL)isCache {
    [self initImageViewDictionary];
    NSString *key = [self getMemoryAddressForDelegate:delegate];
    [imageViewDictionary setObject:url forKey:key];
    
    ImageFetcher *fetcher = [[ImageFetcher alloc] init];
    fetcher.request = [NSURLRequest requestWithURL:url];
	fetcher.delegate = delegate;
    fetcher.imageURL = url;


    NSURLConnection *connection = [NSURLConnection connectionWithRequest:fetcher.request delegate:fetcher];
    if (connection) {
        fetcher.data = [NSMutableData data];
    }
}

- (void)connection:(NSURLConnection *)conn didReceiveResponse:(NSURLResponse *)response_ {
    [data setLength:0]; 
}

- (void)connection:(NSURLConnection *)conn didReceiveData:(NSData *)data_ {
    [data appendData:data_];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {    

    NSString *key = [ImageFetcher getMemoryAddressForDelegate:self.delegate];
    if ([[imageViewDictionary objectForKey:key] isEqual:self.imageURL]) {
        self.image = [UIImage imageWithData:self.data];        
        [imageViewDictionary removeObjectForKey:key];
        [self.delegate imageFetcherFinished:self];
    }
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    self.data = nil;
    self.image = nil;
    [self.delegate imageFetcherFinished:self];
    [self.delegate finishLoadingImageWithFetcher:self];
}



@end