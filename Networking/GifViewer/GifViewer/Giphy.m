//
//  Giphy.m
//  GifViewer
//
//  Created by Romell Bolton on 11/11/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

#import "Giphy.h"

@implementation Giphy

// Convenience initializer takes in a dictionary and return back an instance of Giphy
+ (instancetype) giphyWithDictionary:(NSDictionary *) dictionary {
    
    // Create an instance of Giphy
    Giphy *giphy = [[Giphy alloc] init];
    
    // If we have a valid instance of Giphy
    if ( giphy ) {
        
        // Get the animated gif url and assign it to the instance's property
        giphy.animatedGifUrl = [NSURL URLWithString:[dictionary valueForKeyPath:@"images.original.url"]];
        
        // Get the still gif url and assign it to the instance's property
        giphy.stillImageUrl = [NSURL URLWithString:[dictionary valueForKeyPath:@"images.downsized_still.url"]];
    }
    
    // Return the Giphy instance
    return giphy;
}

@end
