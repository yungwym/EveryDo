//
//  ToDo.m
//  EveryDo
//
//  Created by Alex Wymer  on 2017-07-11.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "ToDo.h"

@interface ToDo ()



@end

@implementation ToDo


- (instancetype)initWithTitle:(NSString *)title andTaskDescription:(NSString *)taskDescription andPriorityNum:(NSString *)priorityNum
{
    self = [super init];
    if (self) {
        
        _title = title;
        _taskDescription = taskDescription;
        _priorityNum = priorityNum;
        _completed = NO;
        
    }
    return self;
}

@end
