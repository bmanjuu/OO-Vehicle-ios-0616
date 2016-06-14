//
//  FISCar.m
//  OO-Vehicle
//
//  Created by Betty Fung on 6/14/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISCar.h"

@implementation FISCar

-(instancetype) init{
    
    self = [self initWithcylinders:4 isAutomatic:YES];
    
    return self;
}


-(instancetype) initWithcylinders:(CGFloat)cylinders isAutomatic:(BOOL)isAutomatic{
    
//    self = [self initWithWeight:1270 TopSpeed:88 currentSpeed:0 currentDirection:0];
//    
//    if(self){
//        _cylinders = cylinders;
//        _isAutomatic = isAutomatic;
//    }
    
    return self;
}

-(instancetype) initWithWeight:(CGFloat)weight TopSpeed:(CGFloat)topSpeed currentSpeed:(CGFloat)currentSpeed currentDirection:(CGFloat)currentDirection cylinders:(CGFloat)cylinders isAutomatic:(BOOL)isAutomatic{
    
    return self; 
    
}

@end
