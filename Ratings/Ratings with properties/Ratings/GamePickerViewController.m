//
//  GamePickerViewController.m
//  Ratings
//
//  Created by Noel Zahra on 16/01/2014.
//  Copyright (c) 2014 Noel Zahra. All rights reserved.
//

#import "GamePickerViewController.h"

@interface GamePickerViewController ()

@property (nonatomic, strong) NSArray *games;
@property (nonatomic, assign) NSUInteger selectedIndex;


@end

@implementation GamePickerViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {

        self.game = _game;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = NSLocalizedString(@"Choose Game", nil);

    self.games = @[@"Angry Birds", @"Chess", @"Black Jack", @"Poker", @"Tic-Tac-Toe", @"Roulette"];
    self.selectedIndex = [self.games indexOfObject:self.game];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TableView data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.games count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GameCell"];
    
    cell.textLabel.text = self.games[indexPath.row];
    
    if (indexPath.row == self.selectedIndex) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }

    return cell;
}


#pragma mark - TableView delegate

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (self.selectedIndex != NSNotFound) {
        UITableViewCell *cell = [tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:self.selectedIndex inSection:0]];
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    self.selectedIndex = indexPath.row;
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    
    NSString *game = self.games[indexPath.row];
    [self.delegate gamePickerViewController:self didSelectGame:game];
}

@end
