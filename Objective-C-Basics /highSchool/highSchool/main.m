//
//  main.m
//  highSchool
//
//  Created by Romell Bolton on 10/14/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    /*
     
     Dear Gabe Nadel,
     
     We look forward to seeing you at summer school, beginning July 1st!
     
     ///
     
     Dear Gabe Nadel,

     Congratulations! You've graduated High School! Don't forget to come back and visit.
     
     ///
     
     Dear Gabe Nadel,
     
     Congratulations on a great year! We'll see you on September 1st for the start of Xth grade!
     */
    
    NSString *firstName = @"Gabe";
    NSString *lastName = @"Nadel";
    float finalAverage = .98;
    int currentGradeLevel = 9;
    NSString *messageBody;

    if (finalAverage < .70) {
        messageBody = @"We look forward to seeing you at summer school, beginning July 1st!";
    } else {
        
        switch (currentGradeLevel) {
            case 9:
                messageBody = @"Congratulations on a great year! We'll see you on September 1st for the start of 10th grade!";
                break;
                
            case 10:
                messageBody = @"Congratulations on a great year! We'll see you on September 1st for the start of 11th grade!";
                break;
                
            case 11:
                messageBody = @"Congratulations on a great year! We'll see you on September 1st for the start of 12th grade!";
                break;
                
            case 12:
                messageBody = @" Congratulations! You've graduated High School! Don't forget to come back and visit.";
                break;
                
            default:
                
                messageBody = @"NO valid grade given";
                
                break;
        }
        
    }
    
    NSLog(@"Dear %@ %@, \n\n %@", firstName, lastName, messageBody);
    
    return 0;
}
