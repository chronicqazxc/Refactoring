//
//  Salseman.m
//  ReplaceConditionalWithPolymorphism
//
//  Created by Wayne Hsiao on 9/9/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import "Salseman.h"

@implementation Salseman
- (int)payAmount:(Employee *)employee {
    return employee.salary + employee.commision;
}
@end
