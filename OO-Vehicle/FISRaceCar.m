//
//  FISRaceCar.m
//  OO-Vehicle
//
//  Created by Betty Fung on 6/14/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISRaceCar.h"

@implementation FISRaceCar

-(instancetype) init{
    
    self = [self initWithSponsors:@[@"KFC", @"Taco Bell", @"Pizza Hut"]]; 
    
    return self;
}



-(instancetype) initWithSponsors:(NSArray *)sponsors{
    
    self = [super initWithcylinders:8 isAutomatic:NO];
    
    if(self){
        
        _sponsors = sponsors;
        self.weight = 1270; // this is not different from parent class, still need to set?
        self.topSpeed = 615;
        
    }
    
    return self;
}

@end
