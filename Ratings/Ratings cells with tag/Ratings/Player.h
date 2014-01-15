//
//  Player.h
//  Ratings
//
//  Created by Noel Zahra on 13/01/2014.
//  Copyright (c) 2014 Noel Zahra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property(nonatomic, copy) NSString *name;
@property(nonatomic, copy) NSString *game;
@property(nonatomic, assign) NSUInteger rating;

@end
