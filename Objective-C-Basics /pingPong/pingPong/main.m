//
//  main.m
//  pingPong
//
//  Created by Romell Bolton on 10/14/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    int kyleScore = 0;
    int nateScore = 0;
    
    BOOL gamePlaying = YES;
    
    int pointWinner;
    
    NSString *gameWinner;
    
    while (gamePlaying) {
        
        pointWinner = arc4random()%2;
        
        if (pointWinner == 0) {
            kyleScore++;
        } else {
            nateScore++;
        }
        
        if ((kyleScore >= 21 || nateScore >= 21) && ((kyleScore - nateScore >= 2) || (nateScore - kyleScore >= 2))) {
            
            gameWinner = kyleScore > nateScore ? @"Kyle": @"Nate";
            gamePlaying = NO;
        }
    }
    
    NSLog(@"%@ is the greatest of all-time!", gameWinner);
    
    return 0;
}
