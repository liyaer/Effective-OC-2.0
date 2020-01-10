//
//  Item1VC.m
//  Effective OC 2.0
//
//  Created by DuBenben on 2020/1/8.
//  Copyright © 2020 CNKI. All rights reserved.
//

#import "Item1VC.h"

@interface Item1VC ()

@end

@implementation Item1VC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"消息结构型语言（OC）和函数调用型语言（C++、Java）的关键区别：前者运行时所应该执行的代码由运行环境决定；后者由编译器决定");
    
    NSLog(@"OC重要工作都由“运行期组件”（包含使用OC的面向对象特性所需的全部 数据结构 和 函数）完成而非编译器。举例来说，运行期组件中包含全部的内存管理。本质上是一种与开发者所编代码相连接的“动态库”，其代码能把开发者所编写的所有程序粘合起来。这样一来，只需要更新运行期组件就可以提升程序性能；而那些许多工作都在编译期完成的语言，若想获得类似的提升，则需要重新编译程序");
    
    //指针变量someString（分配在栈上）指向NSString对象的一个实例（分配在堆上）。分配在堆上的内存需手动管理，分配在栈上用于保存（指针）变量的内存系统会在其栈帧弹出时自动清理
    NSString *someString = @"day day up";
    NSLog(@"所有的OC对象(可以粗略的理解为带*的变量)所占的内存总是分配在“堆”上，而绝不会分配在“栈”上；而不带*的变量可能会使用栈空间，这些变量保存的不是OC对象，比如CGRect");
    
    NSLog(@"结构体开销比对象小（对象还要考虑内存的分配和释放），如果只需保存int、float等“非对象对类型”，优先使用结构体");
}


@end
