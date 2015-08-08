//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"


@implementation Barracks

-(instancetype)init{
    _gold = 1000;
    _food = 80;
    
    
    return self;
}

- (Footman *)trainFootman {
    
    if (self.canTrainFootman) {
        Footman *footman = [[Footman alloc]init];
        self.gold -= 135;
        self.food -= 2;
        return footman;
    } else {
        
        return nil;
    }
  
   
    
}

- (BOOL)canTrainFootman {
    if (self.food >= 2 && self.gold >= 135) {
        return YES;
    }else {
        return NO;
    }
}

- (Peasant *)trainPeasant {
    
    if (self.canTrainPeasant) {
        Peasant *peasant = [[Peasant alloc]init];
        self.gold -= 90;
        self.food -= 5;
        return peasant;
    } else {
        
        return nil;
    }
    
    
    
}

- (BOOL)canTrainPeasant {
    if (self.food >= 5 && self.gold >= 90) {
        return YES;
    }else {
        return NO;
    }
}


@end
