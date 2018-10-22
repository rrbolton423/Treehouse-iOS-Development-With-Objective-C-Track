//
//  CateringOrder.m
//  dalesDiner
//
//  Created by Romell Bolton on 10/18/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

#import "CateringOrder.h"

@implementation CateringOrder

-(id)init{
    self = [super init];
    
    if (self) {
        self.orderFormDict = [[NSMutableDictionary alloc]init];
    }
    
    return self;
}

-(void)addMenuChoice:(MenuItem*)menuItem{
    [self.orderFormDict addEntriesFromDictionary:@{menuItem.itemName:@0}];
}

-(void)setItemQty:(MenuItem*)menuItem withQty:(int)qty{
    [self.orderFormDict setValue:@(qty) forKey:menuItem.itemName];
}

@end
