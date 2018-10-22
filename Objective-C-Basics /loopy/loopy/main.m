//
//  main.m
//  loopy
//
//  Created by Romell Bolton on 10/13/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    int runningTotal = 0;
    
    for (int i = 1; i <= 50; i++) {
        runningTotal = runningTotal + 1;
        NSLog(@"i = %i", i);
    }
   
    return 0;
}
