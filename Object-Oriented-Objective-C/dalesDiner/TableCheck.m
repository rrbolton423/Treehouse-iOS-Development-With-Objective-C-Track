//
//  TableCheck.m
//  dalesDiner
//
//  Created by Romell Bolton on 10/15/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

#import "TableCheck.h"
float taxRate = .08;

@implementation TableCheck

-(id)init{
    self = [super init];
    
    if (self) {
        self.itemsOrdered = [[NSMutableArray alloc]init];
    }
    
    return self;
}

-(void)addTax{
    
    self.total = self.subtotal * (1 + taxRate);
    
}

-(void)addMenuItem:(MenuItem*)menuItem{
    
    [self.itemsOrdered addObject:menuItem.itemName];
    self.subtotal += menuItem.itemPrice;
    
}

@end
