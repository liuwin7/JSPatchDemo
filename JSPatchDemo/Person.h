//
//  Person.h
//  JSPatchDemo
//
//  Created by tropsci on 15/10/19.
//  Copyright © 2015年 topsci. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property(nonatomic, copy)NSString *personName;
@property(nonatomic, assign)int personAge;

- (instancetype)initWithName:(NSString *)name withAge:(int)age;

@end
