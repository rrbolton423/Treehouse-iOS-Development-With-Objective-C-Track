//
//  main.m
//  dalesDiner
//
//  Created by Romell Bolton on 10/15/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TableCheck.h"
#import "MenuItem.h"
#import "GroupTableCheck.h"
#import "CateringOrder.h"

int main(int argc, const char * argv[]) {
   
    //create dummy table check
    TableCheck *table1 = [[TableCheck alloc]init];
    //table1.tip = 5.00;
    table1.isTakeOut = YES;
    float savedTip = table1.tip;
    
    //create grilled cheese menuItem
    MenuItem *grilledCheese = [[MenuItem alloc]init];
    grilledCheese.itemName = @"Grilled Cheese";
    grilledCheese.itemPrice = 4.50;
    
    //create soup du jour menu item
    MenuItem *soupDuJour = [[MenuItem alloc]init];
    soupDuJour.itemName = @"Soup du Jour";
    soupDuJour.itemPrice = 3.25;
    
    /*
    //adding item 1 (grilled cheese)
    [table1.itemsOrdered addObject:grilledCheese];
    table1.subtotal += grilledCheese.itemPrice;
    
    //adding item 1 (soup)
    [table1.itemsOrdered addObject:soupDuJour];
    table1.subtotal += soupDuJour.itemPrice;
    */
    
    [table1 addMenuItem:grilledCheese];
    [table1 addMenuItem:soupDuJour];
    [table1 addTax];
    
    GroupTableCheck *group1 = [[GroupTableCheck alloc]init];
    [group1 addMenuItem:grilledCheese];
    [group1 addTip];
    
    CateringOrder *catering1 = [[CateringOrder alloc]init];
    [catering1 addMenuChoice:grilledCheese];
    [catering1 addMenuChoice:soupDuJour];

    [catering1 setItemQty:grilledCheese withQty:4];
    
    return 0;
}
