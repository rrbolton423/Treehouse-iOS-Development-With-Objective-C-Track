//
//  main.m
//  historyClass
//
//  Created by Romell Bolton on 10/14/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    //Quiz scores: 100, 94, 83, 77, 72
    
    NSArray *quizArray = @[@100, @94, @83, @77, @72];
    
    float scoreTotal = 0;
    
    for (NSNumber *quizScore in quizArray) {
        scoreTotal = scoreTotal + [quizScore intValue];
    }
    
    float average = scoreTotal / [quizArray count];
    
    NSMutableArray *seatingArray = [NSMutableArray arrayWithObjects:@"Page", @"Chris", @"Ernest", @"Mike", @"Jon", nil];
    
    //[seatingArray removeObjectAtIndex:3];
    [seatingArray removeObjectIdenticalTo:@"Mike"];
    
    [seatingArray insertObject:@"Phil" atIndex:1];
    
    return 0;
}
