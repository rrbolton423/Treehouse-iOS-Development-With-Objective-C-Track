//
//  GroupTableCheck.m
//  dalesDiner
//
//  Created by Romell Bolton on 10/18/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

#import "GroupTableCheck.h"

@implementation GroupTableCheck

-(void)addTip{
    float tipRate = .2;
    self.tip = self.subtotal * tipRate;
    self.total = self.subtotal + self.tip;
}

-(void)checkMinimum{
    
    if (self.itemsOrdered.count < self.numberOfCustomers) {
        
        MenuItem *feeItem = [[MenuItem alloc]init];
        feeItem.itemPrice = 3.00;
        feeItem.itemName = @"Group Minimum Fee";
        int numberOfFees = self.numberOfCustomers - self.itemsOrdered.count;
        
        for (int i = numberOfFees; i > 0; i--) {
            
            [self addMenuItem:feeItem];
        }
    }
}

@end
