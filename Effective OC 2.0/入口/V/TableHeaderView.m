//
//  TableHeaderView.m
//  Effective OC 2.0
//
//  Created by DuBenben on 2020/1/6.
//  Copyright © 2020 CNKI. All rights reserved.
//

#import "TableHeaderView.h"


@interface TableHeaderView () {
    void(^_refreshUI)(void);
}
@property (weak, nonatomic) IBOutlet UILabel *titleLab;

@end


@implementation TableHeaderView

- (void)awakeFromNib {
    
    [super awakeFromNib];
    
    self.contentView.backgroundColor = [UIColor brownColor];
}

- (void)bangdingWithTitle:(NSString *)title refresh:(void (^)(void))refreshUI {
    _titleLab.text = title;
    _refreshUI = refreshUI;
}

- (IBAction)showMore:(id)sender {
    if (_refreshUI) {
        _refreshUI();
    }
}

@end
