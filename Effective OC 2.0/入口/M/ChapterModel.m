//
//  ChapterModel.m
//  Effective OC 2.0
//
//  Created by DuBenben on 2020/1/8.
//  Copyright © 2020 CNKI. All rights reserved.
//

#import "ChapterModel.h"

@implementation ChapterModel

- (instancetype)initWithDict:(NSDictionary *)dict {
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (instancetype)chapterWithDict:(NSDictionary *)dict {
    return [[self alloc] initWithDict:dict];
}

@end
