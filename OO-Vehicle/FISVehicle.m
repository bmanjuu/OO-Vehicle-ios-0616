//
//  FISVehicle.m
//  OO-Vehicle
//
//  Created by Betty Fung on 6/14/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISVehicle.h"

@implementation FISVehicle

-(void) increaseSpeed{
    
    self.currentSpeed = self.topSpeed;
    
}



-(void) brake{
    
    self.currentSpeed = 0;
    
}



-(void) turnLeft{
    
    self.currentDirection = self.currentDirection - 90;
    
    if(self.currentDirection < 0){
        self.currentDirection = self.currentDirection + 360;
    }
}



-(void) turnRight{
    
    self.currentDirection = self.currentDirection + 90;
    
}



-(instancetype)init{
    
    self = [self initWithWeight:200 TopSpeed:100 currentSpeed:0 currentDirection:0];
    
    return self;
}


-(instancetype)initWithWeight:(CGFloat)weight topSpeed:(CGFloat)topSpeed{
    
    self = [self initWithWeight:weight TopSpeed:topSpeed currentSpeed:0 currentDirection:0];
    
    return self;
    
}


-(instancetype)initWithWeight:(CGFloat)weight TopSpeed:(CGFloat)topSpeed currentSpeed:(CGFloat)currentSpeed currentDirection:(CGFloat)currentDirection{
    
    self = [super init];
    
    if(self){
        _weight = weight;
        _topSpeed = topSpeed;
        _currentSpeed = currentSpeed;
        _currentDirection = currentDirection;
    }
    
    return self;
}

@end
