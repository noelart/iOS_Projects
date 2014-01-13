//
//  User.m
//  LiteralsDemo
//
//  Created by Noel Zahra on 11/01/2014.
//  Copyright (c) 2014 Noel Zahra. All rights reserved.
//

#import "User.h"

@implementation User

- (NSString *)userWithName:(NSString *)newName
{
    return newName;
}

- (NSString *)userWithFirstName:(NSString *)firstName lastName:(NSString *)lastName
{
    return [NSString stringWithFormat:@"%@ %@", firstName, lastName];
}

@end
