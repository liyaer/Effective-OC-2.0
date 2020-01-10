//
//  Son.h
//  Effective OC 2.0
//
//  Created by DuBenben on 2020/1/8.
//  Copyright © 2020 CNKI. All rights reserved.
//

#import <Foundation/Foundation.h>

//#import "Dad.h"
@class Dad;


NS_ASSUME_NONNULL_BEGIN

@interface Son : NSObject

@property (nonatomic, strong) Dad *dad;

@end

NS_ASSUME_NONNULL_END
