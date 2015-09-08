//
//  Employee.m
//  ReplaceConditionalWithPolymorphism
//
//  Created by Wayne Hsiao on 9/8/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import "Employee.h"
#import "EmployeeType.h"

@interface Employee()
@property (nonatomic, strong) EmployeeType *employeeTypeInstance;
@end

@implementation Employee
- (instancetype)initWithType:(EmployeeTypeCondition)type
        employeeTypeInstance:(EmployeeType *)employeeTypeInstance
                      salary:(int)salary
                  commission:(int)commission
                       bonus:(int)bonus {
    self = [super init];
    if (self) {
        self.employeeType = type;
        self.employeeTypeInstance = employeeTypeInstance;
        self.salary = salary;
        self.commision = commission;
        self.bonus = bonus;
    }
    return self;
}

- (int)payAmountConditionVersion {
    switch (self.employeeType) {
        case ENGINEER:
            return self.salary;
            break;
        case SALSEMAN:
            return self.salary + self.commision;
            break;
        case MANAGER:
            return self.salary + self.bonus;
        default:
            return 0;
            break;
    }
}

- (int)payAmountPolymorphismVersion {
    return [self.employeeTypeInstance payAmount:self];
}
@end
