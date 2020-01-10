//
//  StaticExtern.m
//  Effective OC 2.0
//
//  Created by DuBenben on 2020/1/9.
//  Copyright © 2020 CNKI. All rights reserved.
//

#import "StaticExtern.h"


//命名规则：不公开的常量或者常值变量（即用static声明的）前缀用k，公开的（即用extern声明的）前缀使用类名

//static保证该变量只在定义它的编译单元（.m文件）中可见（仍可可在其他类中定义名为kAnimationDuring的变、常量，若不用static则不行，编译报错）
static NSTimeInterval kAnimationDuring = 0.3;
//const修饰的变量，值不可更改，否则编译报错
const NSTimeInterval kSleep = 5;
//二者连用，效果等同于#define，但是这里带有类型信息（会进行类型检查）；而#define则没有，只是纯粹的替换
static const NSInteger kCount = 100;

//extern声明的常量必须定义，且只能定义一次，定义通常放在声明该常量的头文件（.h）的实现文件里（.m）
NSString *const StaticExternLoginNotification = @"login";


@implementation StaticExtern


@end
