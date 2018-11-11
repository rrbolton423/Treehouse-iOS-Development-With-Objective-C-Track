//
//  CollectionViewCell.m
//  GifViewer
//
//  Created by Romell Bolton on 11/10/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

#import "CollectionViewCell.h"
#import "Giphy.h"

@implementation CollectionViewCell

- (void)setGiphy:(Giphy *)giphy {
    
    // Assign the Gif as a stored property
    _giphy = giphy;
    
    // Download the still image of the Gif
    [self downloadImageWithURL:giphy.stillImageUrl];
}

- (void)downloadImageWithURL:(NSURL*)url {
    
    // Create a URLSession instance
    NSURLSession *session = [NSURLSession sharedSession];
    
    // Create NSURLRequest, passing the url and a cache policy
    // The "NSURLRequestReturnCacheDataElseLoad" cache policy uses existing cache data, regardless or age or expiration date, loading from originating source only if there is no cached data.
    NSURLRequest *request = [NSURLRequest requestWithURL:url cachePolicy:NSURLRequestReturnCacheDataElseLoad timeoutInterval:60];
    
    // Create a DownloadTask, passing the request
    NSURLSessionDownloadTask *task = [session downloadTaskWithRequest:request completionHandler:^(NSURL * _Nullable location, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        // Create NSData object from the data response "location"
        NSData *data = [NSData dataWithContentsOfURL:location];
        
        // Create UIImage from the data
        UIImage *image = [UIImage imageWithData:data];
        
        // Execute on main thread
        dispatch_async(dispatch_get_main_queue(), ^{
            
            // Set the image
            self.imageView.image = image;
        });
    }];
    
    // Execute the task
    [task resume];
}

@end
