//
//  MasterViewController.m
//  EveryDo
//
//  Created by Alex Wymer  on 2017-07-11.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "NewItemViewController.h"

#import "ToDoTableViewCell.h"

@interface MasterViewController ()

@property (nonatomic) ToDo *toDo;



@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    self.navigationItem.rightBarButtonItem = addButton;
    
    self.toDoArray = [self setupTasks];
    [self.tableView reloadData];

}


- (void)viewWillAppear:(BOOL)animated {
}



- (void)insertNewObject:(id)sender {
    
    [self performSegueWithIdentifier:@"newItem" sender:nil];

}


#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"showDetail"]) {
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        self.toDo = self.toDoArray[indexPath.row];
        DetailViewController *detailVC = [segue destinationViewController];
        [detailVC setDetailItem:self.toDo];
    } else if ([segue.identifier isEqualToString:@"newItem"]) {
        
        NewItemViewController *newVC = [segue destinationViewController]; 
        newVC.taskDelegate = self;
        
    }
}


#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.toDoArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ToDoTableViewCell *todoCell = [tableView dequeueReusableCellWithIdentifier:@"toDoCell" forIndexPath: indexPath];
    todoCell.toDo = self.toDoArray[indexPath.row];
    [todoCell taskDisplay];
    return todoCell;
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.toDoArray removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}


#pragma mark - To Do 


-(NSMutableArray *) setupTasks {
    
    ToDo *task1 = [[ToDo alloc] initWithTitle:@"Clean Room" andTaskDescription:@"Have to clean my room" andPriorityNum:@"1"];
    ToDo *task2 = [[ToDo alloc] initWithTitle:@"Wasp Nest" andTaskDescription:@"Destroy wasp nest" andPriorityNum:@"2"];
    ToDo *task3 = [[ToDo alloc] initWithTitle:@"Write Code" andTaskDescription:@"Write more code" andPriorityNum:@"3"];
    ToDo *task4 = [[ToDo alloc] initWithTitle:@"Wash Dog" andTaskDescription:@"Wash my stanky dog" andPriorityNum:@"4"];
    ToDo *task5 = [[ToDo alloc] initWithTitle:@"Wash Car" andTaskDescription:@"Wash my dirty car" andPriorityNum:@"5"];
    
    return [[NSMutableArray <ToDo*> alloc] initWithObjects:task1,task2,task3,task4,task5, nil]; 

    
    
    
}


-(void)addNewTask:(ToDo *)newtask {
    
    [self.toDoArray addObject:newtask]; 
    
    
    [self.tableView reloadData]; 
}



































@end
