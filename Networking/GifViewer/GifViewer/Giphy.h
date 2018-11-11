//
//  Giphy.h
//  GifViewer
//
//  Created by Romell Bolton on 11/11/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Giphy : NSObject

@property (nonatomic, strong) NSURL *stillImageUrl;
@property (nonatomic, strong) NSURL *animatedGifUrl;

+ (instancetype) giphyWithDictionary:(NSDictionary *) dictionary;

@end
