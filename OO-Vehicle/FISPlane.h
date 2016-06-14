//
//  FISPlane.h
//  OO-Vehicle
//
//  Created by Betty Fung on 6/14/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISVehicle.h"

@interface FISPlane : FISVehicle

@property (nonatomic) CGFloat topAltitude;
@property (nonatomic) CGFloat currentAltitude;

-(instancetype)init;
-(instancetype)initWithCurrentAltitude:(CGFloat)currentAltitude topAltitude:(CGFloat)topAltitude;

-(void)increaseAltitude;
-(void)decreaseAltitude;

@end
