//
//  MasterViewController.h
//  EveryDo
//
//  Created by Alex Wymer  on 2017-07-11.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"
#import "NewItemViewController.h"

@class DetailViewController;

@interface MasterViewController : UITableViewController <NewTaskDelegate> 

@property (nonatomic) NSMutableArray <ToDo*> *toDoArray;

@end

