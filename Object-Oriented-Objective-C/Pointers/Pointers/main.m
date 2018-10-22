//
//  main.m
//  Pointers
//
//  Created by Romell Bolton on 10/18/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

#import <Foundation/Foundation.h>

void increment (int *x);

int main(int argc, const char * argv[]) {
    
    int i = 5;
    NSLog(@"i value: %i \n", i);
    NSLog(@"i addy: %p \n", &i);
    
    increment(&i);
    
    NSLog(@"i value: %i \n", i);
    NSLog(@"i addy: %p \n", &i);
    
    return 0;
}

void increment (int *x){
    
    *x = *x + 1;
    NSLog(@"x val: %i \n", *x);
    NSLog(@"x add: %p \n", x);
    
}

