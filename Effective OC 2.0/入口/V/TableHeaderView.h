//
//  TableHeaderView.h
//  Effective OC 2.0
//
//  Created by DuBenben on 2020/1/6.
//  Copyright © 2020 CNKI. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableHeaderView : UITableViewHeaderFooterView

- (void)bangdingWithTitle:(NSString *)title refresh:(void(^)(void))refreshUI;

@end

NS_ASSUME_NONNULL_END
