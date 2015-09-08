//
//  Employee.h
//  ReplaceConditionalWithPolymorphism
//
//  Created by Wayne Hsiao on 9/8/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, EmployeeTypeCondition) {
    ENGINEER,
    SALSEMAN,
    MANAGER,
};

@class EmployeeType;

@interface Employee : NSObject
@property (nonatomic) EmployeeTypeCondition employeeType;
@property (nonatomic) int salary;
@property (nonatomic) int commision;
@property (nonatomic) int bonus;

- (instancetype)initWithType:(EmployeeTypeCondition)type
        employeeTypeInstance:(EmployeeType *)employeeTypeInstance
                      salary:(int)salary
                  commission:(int)commission
                       bonus:(int)bonus;

- (int)payAmountConditionVersion;
- (int)payAmountPolymorphismVersion;
@end
