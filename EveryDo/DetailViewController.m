//
//  DetailViewController.m
//  EveryDo
//
//  Created by Alex Wymer  on 2017-07-11.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "DetailViewController.h"


@interface DetailViewController ()



@property (weak, nonatomic) IBOutlet UILabel *detailTitle;
@property (weak, nonatomic) IBOutlet UILabel *detailDescrip;
@property (weak, nonatomic) IBOutlet UILabel *detailPriority;
@property (weak, nonatomic) IBOutlet UISwitch *detailSwitch;


@end

@implementation DetailViewController

#pragma mark - Managing the detail item


- (void)setDetailItem:(ToDo *)newDetailItem {
    
    if (_detailItem != newDetailItem) {
        
        _detailItem = newDetailItem;
    }
    
    
    [self configureView];
    
}


- (void)configureView {
    // Update the user interface for the detail item.
    
    if (self.detailItem) {
       
        self.detailTitle.text = self.detailItem.title;
        self.detailDescrip.text = self.detailItem.taskDescription;
        self.detailPriority.text = self.detailItem.priorityNum;
        
    }
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self configureView];
    
}


@end
