//
//  Item2VC.m
//  Effective OC 2.0
//
//  Created by DuBenben on 2020/1/8.
//  Copyright © 2020 CNKI. All rights reserved.
//

#import "Item2VC.h"

@interface Item2VC ()

@end

@implementation Item2VC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"在.h中使用@class(向前声明)尽量延后引入（#import）头文件的时机，可减少编译时间");
    
    NSLog(@"@class也可以解决两个类相互引用导致无法编译的问题，使用#import而非#include虽然不会导致死循环，但是却意味着两个类中有一个无法被正确编译");
}


@end
