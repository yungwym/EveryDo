//
//  ToDoTableViewCell.h
//  EveryDo
//
//  Created by Alex Wymer  on 2017-07-11.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"

@interface ToDoTableViewCell : UITableViewCell

@property (nonatomic) ToDo *toDo;

-(void) taskDisplay;

@end
