//
//  TopicTableViewCell.m
//  Big Think
//
//  Created by Richard Kirk on 2/16/12.
//  Copyright (c) 2012 Home. All rights reserved.
//

#import "TopicTableViewCell.h"

@implementation TopicTableViewCell
@synthesize label;
@synthesize iconImageView;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
