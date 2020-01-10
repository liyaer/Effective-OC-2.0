//
//  Item6VC.m
//  Effective OC 2.0
//
//  Created by DuBenben on 2020/1/10.
//  Copyright © 2020 CNKI. All rights reserved.
//

#import "Item6VC.h"


@interface Item6VC ()

//属性特质：会影响编译器所生成的存取方法
@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;

@end


@implementation Item6VC

//通过@synthesize可修改属性默认生成的实例变量名称
@synthesize firstName = _myFirstName;

//若不想编译器自动合成存取方法，可以自己实现。如果只实现了其中一个，那么编译器还是会自动合成另外一个。
//@dynamic 告诉编译器，不要为该属性自动生成实例变量和存取方法。但是，你仍然可以使用 .语法访问属性，即使编译器发现没有定义存取方法，也不会报错，它相信这些方法能在运行期找到。当然如果运行期未找到则会crash
@dynamic lastName;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"对象是基本构造单元，可以通过对象来存储（通过属性完成，属性用于封装对象中的数据；对象通常会把所需要的数据保存为各种实例变量）并传递数据");
    NSLog(@"消息传递：在对象之间传递数据并执行任务的过程");
    NSLog(@"Runtime：程序运行起来之后，为其提供相关支持的代码（它提供了一些使得对象之间能够传递消息的重要函数，并且包含创建类实例所用的全部逻辑）");
    
    NSLog(@"属性 = 实例变量 + 存取方法（setter、getter），等号右边二者由编译器在编译时期执行，在编辑器内看不到源代码");
    _myFirstName = @"du";
    NSLog(@"self.firstName = %@", self.firstName);
    NSLog(@"属性点语法调用本质：编译器会把 . 转化为对存取方法的调用");
    self.lastName = @"ben";
}


@end
