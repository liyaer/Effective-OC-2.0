//
//  Item3VC.m
//  Effective OC 2.0
//
//  Created by DuBenben on 2020/1/9.
//  Copyright © 2020 CNKI. All rights reserved.
//

#import "Item4VC.h"
#import "StaticExtern.h"


@interface Item4VC ()

@end


@implementation Item4VC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"#define 定义的常量（#define kTime 3.0）只是简单的替换，没有类型信息，编译器不会进行类型检查；若定义在某个头文件1中，头文件1又被文件2引入，若文件2内有kTime，也会被替换掉");
    
    NSLog(@"static const NSTimeInterval kTime = 3.0 效果和 #define kTime 3.0一样，但是有类型信息，编译器会进行类型检查");
    
    NSLog(@"%@", StaticExternLoginNotification);
}


@end
