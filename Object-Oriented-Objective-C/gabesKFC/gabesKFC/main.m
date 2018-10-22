//
//  main.m
//  gabesKFC
//
//  Created by Romell Bolton on 10/14/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    //Chicken Bucket  - price $10.00, cost $3.75
    //Chicken Sandwich - price $3.25, cost $1.25
    //Soda - price $2.00, cost $0.25
    
    //Next, let’s talk about the coupons. We offered three separate deals:
    
    //Family Deal - 1 Bucket, 4 Sodas - price $15.00, cost $4.75 ( and in case you’re curious, the cost of 4.75 is the same as just adding up the individual items from above)
    //Double Trouble - 2 Sandwiches, 2 Sodas - price $9.50, cost $4.50
    //Lonely Bird - 1 Sandwich, 1 Soda - price $5.00, cost $1.50
    
    //East side profit = $710
    
    typedef enum orderItem {
        Bucket = 1,
        Sandwich = 2,
        Soda = 3,
        FamilyDeal = 4,
        DoubleTrouble = 5,
        LonelyBird = 6
        
    }orderItem;
    
    NSArray *orderArray = @[ @(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda),@(Soda), @(Sandwich), @(Sandwich), @(Bucket), @(FamilyDeal), @(Sandwich), @(DoubleTrouble), @(LonelyBird), @(DoubleTrouble), @(Soda)];
    
    float costTotal = 0;
    float revenueTotal = 0;
    
    float bucketPrice = 10.00;
    float bucketCost = 3.75;
    float sandwichPrice = 3.25;
    float sandwichCost = 1.25;
    float sodaPrice = 2.00;
    float sodaCost = 0.25;
    
    float familyPrice = 15.00;
    float familyCost = 4.75;
    float doublePrice = 9.50;
    float doubleCost = 4.50;
    float lonelyPrice = 5.00;
    float lonelyCost = 1.50;

    
    for (NSNumber *orderItem in orderArray) {
        
        switch ([orderItem integerValue]) {
            case Bucket:
                
                revenueTotal = revenueTotal + bucketPrice;
                costTotal = costTotal + bucketCost;
                
                break;
                
            case Sandwich:
                
                revenueTotal = revenueTotal + sandwichPrice;
                costTotal = costTotal + sandwichCost;
                
                break;
            
            case Soda:
                
                revenueTotal = revenueTotal + sodaPrice;
                costTotal = costTotal + sodaCost;
                
                break;
                
            case FamilyDeal:
                
                revenueTotal = revenueTotal + familyPrice;
                costTotal = costTotal + familyCost;
                
                break;
                
            case DoubleTrouble:
                
                revenueTotal = revenueTotal + doublePrice;
                costTotal = costTotal + doubleCost;
                
                break;
                
            case LonelyBird:
                
                revenueTotal = revenueTotal + lonelyPrice;
                costTotal = costTotal + lonelyCost;
                
                break;
                
            default:
                break;
        }
    }
    
    float profit = revenueTotal - costTotal;
    
    return 0;
}
