//
//  MenuItem.h
//  dalesDiner
//
//  Created by Romell Bolton on 10/16/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MenuItem : NSObject

@property (nonatomic, strong) NSString *itemName;
@property (nonatomic) float itemPrice;
@property (nonatomic) bool isBeverage;

@end
