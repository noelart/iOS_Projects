//
//  PlayersViewController.h
//  Ratings
//
//  Created by Noel Zahra on 13/01/2014.
//  Copyright (c) 2014 Noel Zahra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerDetailsViewController.h"

@interface PlayersViewController : UITableViewController<PlayerDetailsViewControllerDelegate>

@property(nonatomic, strong) NSMutableArray *players;

@end
