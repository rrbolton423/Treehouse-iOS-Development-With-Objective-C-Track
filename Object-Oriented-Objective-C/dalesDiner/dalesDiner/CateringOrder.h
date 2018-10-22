//
//  CateringOrder.h
//  dalesDiner
//
//  Created by Romell Bolton on 10/18/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TableCheck.h"
#import "MenuItem.h"

@interface CateringOrder : NSObject

@property (nonatomic, strong) NSString *deliveryAddress;
@property (nonatomic, strong) NSString *contactPhone;
@property (nonatomic, strong) NSMutableDictionary *orderFormDict;
@property (nonatomic, strong) TableCheck *tableCheck;

-(void)addMenuChoice:(MenuItem*)menuItem;
-(void)setItemQty:(MenuItem*)menuItem withQty:(int)qty;

@end
