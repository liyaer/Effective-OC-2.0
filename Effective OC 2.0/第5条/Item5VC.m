//
//  Item5VC.m
//  Effective OC 2.0
//
//  Created by DuBenben on 2020/1/10.
//  Copyright © 2020 CNKI. All rights reserved.
//

#import "Item5VC.h"


typedef NS_ENUM(NSInteger, Person) {
    PersonMan = 1,
    PersonWomen
};

typedef NS_OPTIONS(NSInteger, Derection) {
    DerectionNone   = 0, //不是必须的，根据需要决定是否设定
    DerectionUp     = 1 << 0,
    DerectionLeft   = 1 << 1,
    DerectionBotton = 1 << 2,
    DerectionRight  = 1 << 3,
};



@interface Item5VC ()

@end

@implementation Item5VC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"使用NS_ENUM、NS_OPTIONS来定义枚举，会根据编译器是否支持新枚举特性自动判断使用新语法还是老语法定义枚举，最重要的一点，对于NS_OPTIONS类型的若用C++(或者OC++)模式编译会报错，因为C++不允许底层类型(上例中的NSInteger)隐式转换为枚举类型本身(上例中的Derection)，而NS_OPTIONS解决了这一问题");
    
    NSLog(@"switch语句中处理枚举时，最好不要写default分支，这样新增加枚举选项时，若没有处理该选项，编译器会提示未处理所有枚举项；若写了default分支，则不会提示");
}

@end
