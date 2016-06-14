//
//  FISPlane.m
//  OO-Vehicle
//
//  Created by Betty Fung on 6/14/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISPlane.h"

@implementation FISPlane

-(instancetype)init{
    
    self = [self initWithCurrentAltitude:0 topAltitude:30000];
    
    return self;
}



-(instancetype)initWithCurrentAltitude:(CGFloat)currentAltitude topAltitude:(CGFloat)topAltitude{
    
    self = [super initWithWeight:255000 TopSpeed:614 currentSpeed:0 currentDirection:0];
    
    if(self){
        _currentAltitude = currentAltitude;
        _topAltitude = topAltitude;
    }
    
    return self;
}



-(void)increaseAltitude{
    
    self.currentAltitude = self.topAltitude;
    
}



-(void)decreaseAltitude{
    
    self.currentAltitude = 0; 
    
}


@end
