//
//  PlayerCell.h
//  Ratings
//
//  Created by Noel Zahra on 15/01/2014.
//  Copyright (c) 2014 Noel Zahra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *gameLabel;
@property (nonatomic, weak) IBOutlet UIImageView *ratingImageView;

@end
