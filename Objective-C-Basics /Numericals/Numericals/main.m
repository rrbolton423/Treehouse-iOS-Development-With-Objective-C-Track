//
//  main.m
//  Numericals
//
//  Created by Romell Bolton on 10/9/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
    int currentAge;
    currentAge = 36;
    
    float currentWeight;
    currentWeight = 124.75;
    
    float currentHeight;
    currentHeight = 66.0;
    
    double currentWeightPerInch;
    
    currentWeightPerInch = currentWeight / currentHeight;
    
    NSLog(@"currentHeight is: %f", currentHeight);
    NSLog(@"currentWeight is: %f", currentWeight);
    NSLog(@"currentWeightPerInch is: %f", currentWeightPerInch);

    return 0;
}
