//
//  NewItemViewController.m
//  EveryDo
//
//  Created by Alex Wymer  on 2017-07-11.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "NewItemViewController.h"
#import "MasterViewController.h"


@interface NewItemViewController ()

@property (nonatomic) ToDo *toDo;
@property (nonatomic) MasterViewController *mVC;

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextField *descriptionTextField;
@property (weak, nonatomic) IBOutlet UITextField *numberTextField;


@end

@implementation NewItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)doneTapped:(UIButton *)sender {
    
    ToDo *newTask = [[ToDo alloc] initWithTitle:self.titleTextField.text andTaskDescription:self.descriptionTextField.text andPriorityNum:self.numberTextField.text];
    
    [self.taskDelegate addNewTask:newTask];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
