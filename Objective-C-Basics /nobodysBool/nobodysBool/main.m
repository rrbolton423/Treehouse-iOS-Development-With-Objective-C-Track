//
//  main.m
//  nobodysBool
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
    
    bool hasLicense;
    //Has valid US drivers license
    hasLicense = FALSE;
    NSLog(@"has license: %i", hasLicense);
    return 0;
}
