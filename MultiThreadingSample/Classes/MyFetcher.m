//
//  MyNewFetcher.m
//  MultiThreadingSample
//
//  Created by vodkhang on 12/08/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "MyFetcher.h"


@implementation MyFetcher
@synthesize request;
@synthesize data;
@synthesize image;
@synthesize imageURL;

- (void)loadImageWithURL:(NSURL *)url {
    self.request = [NSURLRequest requestWithURL:url];
    NSURLConnection *connection = [NSURLConnection connectionWithRequest:self.request delegate:self];
    if (connection) {
        self.data = [NSMutableData data];
    }
}

- (void)connection:(NSURLConnection *)conn didReceiveResponse:(NSURLResponse *)response_ {
    [data setLength:0]; 
}

- (void)connection:(NSURLConnection *)conn didReceiveData:(NSData *)data_ {
    [data appendData:data_];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {    
    self.image = [UIImage imageWithData:self.data];        
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    self.data = nil;
    self.image = nil;
}



@end