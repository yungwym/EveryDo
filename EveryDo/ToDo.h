//
//  ToDo.h
//  EveryDo
//
//  Created by Alex Wymer  on 2017-07-11.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDo : NSObject

@property (nonatomic) NSString *title;
@property (nonatomic) NSString *taskDescription;
@property (nonatomic) NSString *priorityNum;
@property (nonatomic) BOOL completed;

- (instancetype)initWithTitle:(NSString *)title andTaskDescription:(NSString *)taskDescription andPriorityNum:(NSString *)priorityNum;


@end
