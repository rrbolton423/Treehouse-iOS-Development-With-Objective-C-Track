//
//  FactBook.h
//  FunFacts
//
//  Created by Romell Bolton on 10/20/18.
//  Copyright © 2018 Romell Bolton. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FactBook : NSObject

@property (strong, nonatomic) NSArray *facts;

- (NSString *)randomFact;

@end
