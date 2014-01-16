//
//  GamePickerViewController.h
//  Ratings
//
//  Created by Noel Zahra on 16/01/2014.
//  Copyright (c) 2014 Noel Zahra. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GamePickerViewController;

@protocol GamePickerViewControllerDelegate <NSObject>

- (void)gamePickerViewController:(GamePickerViewController *)controller didSelectGame:(NSString *)game;


@end

@interface GamePickerViewController : UITableViewController

@property (nonatomic, weak) id<GamePickerViewControllerDelegate> delegate;
@property (nonatomic, strong) NSString *game;

@end
