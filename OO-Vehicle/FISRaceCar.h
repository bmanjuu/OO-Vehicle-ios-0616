//
//  FISRaceCar.h
//  OO-Vehicle
//
//  Created by Betty Fung on 6/14/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISCar.h"

@interface FISRaceCar : FISCar

@property (strong, nonatomic) NSArray *sponsors;

-(instancetype) init;
-(instancetype) initWithSponsers:(NSArray *)sponsors;

@end
