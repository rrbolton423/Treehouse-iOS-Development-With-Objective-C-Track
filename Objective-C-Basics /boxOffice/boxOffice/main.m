//
//  main.m
//  boxOffice
//
//  Created by Romell Bolton on 10/11/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

enum popcornSizes {
    kidsPopcorn = 1,
    smallPopcorn = 2,
    mediumPopcorn = 3,
    largePopcorn = 4,
    tubPopcorn = 5
};

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
    //Reg Price $10
    //Senior Price $5
    //Matinee Price $4
    /*
    bool isMatinee = NO;
    
    float regPrice = 10;
    float seniorPrice = 5;
    float matPrice = 4;
    
    int minAge = 60;
    int custAge = 15;
    
    float custPrice;
           
    if (isMatinee) {
        custPrice = matPrice;
    }
    
    else if (custAge >= minAge) {
        custPrice = seniorPrice;
    }
    
    else {
        custPrice = regPrice;
    }
     */
    
    //Popcorn sizes and prices
    //Kids - $1.50
    //Small - $3.00
    //Medium - $4.25
    //Large  - $5.25
    //Tub    - $6.00
    
    float popcornPrice;
    int popcornSize = tubPopcorn;
    
    switch (popcornSize) {
        case kidsPopcorn:
            popcornSize = 1.5;
            break;
            
        case smallPopcorn:
            popcornSize = 3;
            break;
            
        case mediumPopcorn:
            popcornSize = 4.25;
            break;
            
        case largePopcorn:
            popcornSize = 5.25;
            break;
            
        case tubPopcorn:
            popcornSize = 6;
            break;
            
        default:
            NSLog(@"No valid size entered");
            break;
    }
    
    

    return 0;
}
