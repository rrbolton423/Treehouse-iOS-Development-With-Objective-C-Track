//
//  NSArray+Movies.m
//  Categories
//
//  Created by Romell Bolton on 10/18/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

#import "NSArray+Movies.h"

@implementation NSArray (Movies)

-(NSArray*)dedupe{
    
    NSMutableArray *dedupedArray = [[NSMutableArray alloc]init];
    
    for (NSString *name in self) {
        if (![dedupedArray containsObject:name]) {
            [dedupedArray addObject:name];
        }
    }
    return dedupedArray;
}

@end
