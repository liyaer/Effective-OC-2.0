//
//  ChapterModel.h
//  Effective OC 2.0
//
//  Created by DuBenben on 2020/1/8.
//  Copyright © 2020 CNKI. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChapterModel : NSObject

@property (nonatomic, copy) NSString *chapterName;
@property (nonatomic, strong) NSArray *lists;
@property (nonatomic, strong) NSArray *VCNames;
@property (nonatomic, assign) BOOL isShow;


- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)chapterWithDict:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END
