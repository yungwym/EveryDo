//
//  NewItemViewController.h
//  EveryDo
//
//  Created by Alex Wymer  on 2017-07-11.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"

@protocol NewTaskDelegate <NSObject>

-(void)addNewTask:(ToDo *)newtask;

@end

@interface NewItemViewController : UIViewController

@property (nonatomic, weak) id <NewTaskDelegate> taskDelegate;

@end
