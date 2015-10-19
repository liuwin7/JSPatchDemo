//
//  Person.m
//  JSPatchDemo
//
//  Created by tropsci on 15/10/19.
//  Copyright © 2015年 topsci. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name withAge:(int)age {
    self = [super init];
    if (self) {
        self.personName = name;
        self.personAge = age;
    }
    return self;
}

@end
