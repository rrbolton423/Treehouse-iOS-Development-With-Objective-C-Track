//
//  main.m
//  burgerBarn
//
//  Created by Romell Bolton on 10/14/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSDictionary *orderDict = @{
                                    @"burgers": @5,
                                    @"shakes": @3,
                                    @"customers": @4,
                                    @"isTakeout": @NO,
                                    @"subtotal": @0.0,
                                    };
        
        float burgerPrice = 4;
        float shakePrice = 3;
        float subtotal;
        
        subtotal =
        (burgerPrice * [[orderDict valueForKey:@"burgers"]intValue]) +
        (shakePrice * [[orderDict valueForKey:@"shakes"]intValue]);
        
        NSMutableDictionary *outputDict = [NSMutableDictionary dictionaryWithDictionary:orderDict];
        
        [outputDict setValue:@(subtotal) forKey:@"subtotal"];
    }
    return 0;
}

//the # of burgers
//the # of shakes
//the number of customers
//if the order was for take-out
//the order subtotal
