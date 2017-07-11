//
//  ToDoTableViewCell.m
//  EveryDo
//
//  Created by Alex Wymer  on 2017-07-11.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "ToDoTableViewCell.h"


@interface ToDoTableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descripLabel;
@property (weak, nonatomic) IBOutlet UILabel *priorityLabel;
@property (weak, nonatomic) IBOutlet UISwitch *completedSwitch;




@end

@implementation ToDoTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(void) taskDisplay {
    
    self.titleLabel.text = self.toDo.title;
    self.descripLabel.text = self.toDo.taskDescription;
    self.priorityLabel.text = self.toDo.priorityNum;
    [self.titleLabel sizeToFit];
    [self.descripLabel sizeToFit];
    [self.priorityLabel sizeToFit];
    
}


- (IBAction)completedSwitch:(UISwitch *)sender {
    
    if (self.completedSwitch.on) {
        
        [self.toDo setCompleted:YES];
        
        NSMutableAttributedString *strikeString = [[NSMutableAttributedString alloc] initWithString:self.titleLabel.text];
        [strikeString addAttribute:NSStrikethroughStyleAttributeName value:@2 range:NSMakeRange(0, [strikeString length])];
        
        self.titleLabel.attributedText = strikeString;
    }
}

@end
