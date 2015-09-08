//
//  main.m
//  ReplaceConditionalWithPolymorphism
//
//  Created by Wayne Hsiao on 9/8/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Engineer.h"
#import "Salseman.h"
#import "Manager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Salseman *employeeInstance = [[Salseman alloc] init];
        Employee *employee = [[Employee alloc] initWithType:SALSEMAN
                                       employeeTypeInstance:employeeInstance
                                                     salary:60000
                                                 commission:30000
                                                      bonus:0];
        int monthlySalaryConditionVersion = [employee payAmountConditionVersion];
        int monthlySalaryPolymorphismVersion = [employee payAmountPolymorphismVersion];
        NSLog(@"Monthly salary condition version:%d\nMonthly salary polymorphism version:%d", monthlySalaryConditionVersion, monthlySalaryPolymorphismVersion);
    }
    return 0;
}
