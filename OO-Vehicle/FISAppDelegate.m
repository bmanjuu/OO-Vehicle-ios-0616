//
//  FISAppDelegate.m
//  OO-Vehicle
//
//  Created by Chris Gonzales on 4/30/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISAppDelegate.h"
#import "FISVehicle.h"
#import "FISCar.h"
#import "FISPlane.h"
#import "FISRaceCar.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    FISVehicle *newVehicle = [[FISVehicle alloc] initWithWeight:3400 TopSpeed:90 currentSpeed:10 currentDirection:90];
    NSLog(@"new vehicle weight: %f   top speed: %f   current speed: %f   current direction: %f", newVehicle.weight, newVehicle.topSpeed, newVehicle.currentSpeed, newVehicle.currentDirection);
    
    
    FISCar *newCar = [[FISCar alloc] initWithcylinders:6 isAutomatic:YES];
    newCar.currentDirection = 180; // override initial/default of 0
    NSLog(@"new car weight: %f   top speed: %f   current speed: %f   current direction: %f   cylinders: %f   isAutomatic: %d", newCar.weight, newCar.topSpeed, newCar.currentSpeed, newCar.currentDirection, newCar.cylinders, newCar.isAutomatic);
    [newCar turnLeft];
    NSLog(@"after turning left, direction is: %f", newCar.currentDirection);
    
    for(NSUInteger i = 0; i < 3; i++){
        [newCar turnLeft];
        NSLog(@"turn %lu: %f", i+1, newCar.currentDirection);
    }
    NSLog(@"after turning left 3 times, direction changes from 90 to: %f", newCar.currentDirection);
    
    for(NSUInteger i = 0; i < 385; i++){
        [newCar turnRight]; //donuts? :)
    }
    NSLog(@"after turning right 385 times, direction changes from 180 to: %f", newCar.currentDirection);
    
    newCar.milesPerGallon = 20;
    NSLog(@"MPG for this car is: %f", newCar.milesPerGallon);
    
    [newCar increaseSpeed];
    NSLog(@"after accelerating, the current speed of the car went from 10 to: %f", newCar.currentSpeed);
    
    newCar.topSpeed = 250;
    [newCar increaseSpeed];
    NSLog(@"added booster things to car like in the F&F movies, so now upon pressing the button, the car now accelerates to: %2f ... VROOM VROOM!", newCar.currentSpeed);
    
    [newCar brake];
    NSLog(@"the race is over! Current speed of the car is now: %f", newCar.currentSpeed);
    
    FISRaceCar *vinDieselsCar = [[FISRaceCar alloc] initWithSponsors:@[@"secret service"]];
    vinDieselsCar.topSpeed = 300;
    NSLog(@"There's a new mission! Vin Diesel needs to rescue the President, who is currently stuck on a plane. There are some secret service guys with him who will assist him with the jump and dive into Vin Diesel's car through the sun roof. Vin Diesel's current speed is %f--he needs to start moving, fast!!", vinDieselsCar.currentSpeed);
    
    FISPlane *presidentsPlane = [[FISPlane alloc] initWithCurrentAltitude:1500 topAltitude:20000];
    [vinDieselsCar increaseSpeed];
    presidentsPlane.currentSpeed = vinDieselsCar.topSpeed;
    
    if(vinDieselsCar.currentSpeed == presidentsPlane.currentSpeed){
        NSLog(@"The president took the dive and is now safely in Vin Diesel's car!! MISSION ACCOMPLISHED");
    }

    return YES;
}


@end
