//
//  User.h
//  LiteralsDemo
//
//  Created by Noel Zahra on 11/01/2014.
//  Copyright (c) 2014 Noel Zahra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

- (NSString *)userWithName:(NSString *)newName;

- (NSString *)userWithFirstName:(NSString *)firstName lastName:(NSString *)lastName;

@end
