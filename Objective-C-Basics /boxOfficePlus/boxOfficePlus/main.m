//
//  main.m
//  boxOfficePlus
//
//  Created by Romell Bolton on 10/11/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *empMessage;

void printTicket() {
    empMessage = @"printed message";
    NSLog(@"%@", empMessage);
}

int main(int argc, const char * argv[]) {
    
    //AND &&
    //OR ||
    //NOT !
    
    //Is the customer either under 13 years old, or 65 or over, if so, they get an "ageDiscount"
    //Is the movie a matinee, as in, the first showing of the day?
    //Is the customer also a theatre employee
    
    bool ageDiscount;
    bool isMatinee = true;
    bool isEmployee = true;
    
    //Full price ticket  = $10
    //For a non-employee with an age discount AND attending a matinee = $6.50
    //For a non-employee with an age discount AOR attending a matinee = $8
    //For an employee attending a non-matinee = $4.50
    //For an employee attending a matinee = $0.0 (FREE)
    
    float regularPrice = 10;
    float ageOrMatineePrice = 8.5;
    float ageAndMatineePrice = 6.5;
    float employeeRegPrice = 4.5;
    float employeeMatineePrice = 0;
    
    int customerAge;
    float customerPrice;
    
    int youthAge = 13;
    int seniorAge = 65;
    
    float subtotal = 0;
    float taxRate = 0.5;
    float grandTotal = 0;
    
    NSArray *agesArray = @[@5, @5, @14, @42, @77];
    
    for (NSNumber *age in agesArray) {
        
        customerAge = [age intValue];
        
        if ((customerAge < youthAge) || (customerAge >= seniorAge)) {
            ageDiscount = YES;
        } else {
            ageDiscount = NO;
        }
        
        ageDiscount = ((customerAge < youthAge) || (customerAge >= seniorAge)) ? YES : NO;
        
        if (ageDiscount && isMatinee && !isEmployee) {
            customerAge = ageAndMatineePrice;
        }
        
        else if ((ageDiscount || isMatinee) && !isEmployee) {
            customerPrice = ageOrMatineePrice;
        }
        
        else if (isEmployee && !isMatinee) {
            customerPrice = employeeRegPrice;
            empMessage = @"Thanks for being part of the team. Enjoy your movie!";
            NSLog(@"%@", empMessage);
        }
        
        else if (isEmployee && isMatinee) {
            customerPrice = employeeMatineePrice;
            empMessage = @"Thanks for  being part of the team. Enjoy your FREE movie!";
            NSLog(@"%@", empMessage);
        }
        
        else {
            customerPrice = regularPrice;
        }
        
        subtotal = subtotal + customerPrice;
        NSLog(@"age: %i customer price: %f current subtotal: %f \n", customerAge, customerPrice, subtotal);
    }
    
    grandTotal = subtotal + (subtotal * taxRate);
    
    printTicket();
    
    return 0;
}
