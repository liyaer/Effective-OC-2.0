//
//  StaticExtern.h
//  Effective OC 2.0
//
//  Created by DuBenben on 2020/1/9.
//  Copyright © 2020 CNKI. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


//extern声明常量，告诉编译器，在 全局符号表 中有一个名叫LegsLoginNotification的符号，可以在定义该常量的编译单元之外使用
extern NSString *const StaticExternLoginNotification;


@interface StaticExtern : NSObject

@end

NS_ASSUME_NONNULL_END
