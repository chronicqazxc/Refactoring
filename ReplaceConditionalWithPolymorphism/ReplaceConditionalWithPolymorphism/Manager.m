//
//  Manager.m
//  ReplaceConditionalWithPolymorphism
//
//  Created by Wayne Hsiao on 9/9/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import "Manager.h"

@implementation Manager
- (int)payAmount:(Employee *)employee {
    return employee.salary + employee.bonus;
}
@end
