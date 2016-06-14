//
//  FISCar.h
//  OO-Vehicle
//
//  Created by Betty Fung on 6/14/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISVehicle.h"

@interface FISCar : FISVehicle

@property (nonatomic) BOOL isAutomatic;
@property (nonatomic) CGFloat milesPerGallon;
@property (nonatomic) CGFloat cylinders;

-(instancetype) init;
-(instancetype) initWithcylinders:(CGFloat)cylinders isAutomatic:(BOOL)isAutomatic;
-(instancetype) initWithWeight:(CGFloat)weight TopSpeed:(CGFloat)topSpeed currentSpeed:(CGFloat)currentSpeed currentDirection:(CGFloat)currentDirection cylinders:(CGFloat)cylinders isAutomatic:(BOOL)isAutomatic; 

@end
