//
//  EmployeeType.h
//  ReplaceConditionalWithPolymorphism
//
//  Created by Wayne Hsiao on 9/9/15.
//  Copyright (c) 2015 Wayne Hsiao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

@interface EmployeeType : NSObject
- (int)payAmount:(Employee *)employee;
@end
