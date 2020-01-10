//
//  Dad.h
//  Effective OC 2.0
//
//  Created by DuBenben on 2020/1/8.
//  Copyright © 2020 CNKI. All rights reserved.
//

#import <Foundation/Foundation.h>

//#import "Son.h"
@class Son;


NS_ASSUME_NONNULL_BEGIN

@interface Dad : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) Son *son;

@end

NS_ASSUME_NONNULL_END
