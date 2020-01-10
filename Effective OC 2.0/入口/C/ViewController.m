//
//  ViewController.m
//  Effective OC 2.0
//
//  Created by DuBenben on 2020/1/6.
//  Copyright © 2020 CNKI. All rights reserved.
//

#import "ViewController.h"

#import "ChapterModel.h"
#import "TableHeaderView.h"
#import "SimpleCell.h"


#warning 探索先后顺序的差别（确定有差别）
static NSString *const simpleCellRid = @"simple";
static NSString *const sectionHeaderViewRid = @"header";


@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

#warning collectionView的代码片段
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataArray;

@end


@implementation ViewController

#pragma mark - 懒加载

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        
        _tableView.backgroundColor = [UIColor redColor];
    }
    return _tableView;
}

- (NSMutableArray *)dataArray {
    if (!_dataArray) {
        _dataArray = [NSMutableArray arrayWithCapacity:9];
    }
    return _dataArray;
}

#pragma mark - 初始化

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *dataPath = [[NSBundle mainBundle] pathForResource:@"dataSource" ofType:@"plist"];
    NSArray *localData = [NSArray arrayWithContentsOfFile:dataPath];
    for (NSDictionary *dict in localData) {
        [self.dataArray addObject:[ChapterModel chapterWithDict:dict]];
    }
#warning 检查dic,arr有效性空处理（主要是服务器下来的数据处理）；插入nil处理（写）；数组越界处理（读）
    
    [self.view addSubview:self.tableView];
}

#pragma mark - tableView dateSource and delegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _dataArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    ChapterModel *model = _dataArray[section];
    if (model.isShow) {
        return model.lists.count;
    } else {
        return 0;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SimpleCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleCellRid];
    if (!cell) {
        cell = (SimpleCell *)[[NSBundle mainBundle] loadNibNamed:@"SimpleCell" owner:self options:nil][0];
    }
    cell.itemLab.text = [(ChapterModel *)_dataArray[indexPath.section] lists][indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    TableHeaderView *header = [tableView dequeueReusableHeaderFooterViewWithIdentifier:sectionHeaderViewRid];
    if (!header) {
        header = (TableHeaderView *)[[NSBundle mainBundle] loadNibNamed:@"TableHeaderView" owner:self options:nil][0];
    }
    __weak typeof(tableView) weakTableView = tableView;
    ChapterModel *model = _dataArray[section];
    [header bangdingWithTitle:model.chapterName refresh:^{
        model.isShow = !model.isShow;
        [weakTableView reloadSections:[NSIndexSet indexSetWithIndex:section] withRowAnimation:UITableViewRowAnimationFade];
    }];
    return header;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 80;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.1;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    ChapterModel *model = _dataArray[indexPath.section];
    NSString *vcName = model.VCNames[indexPath.row];
    UIViewController *vc = [NSClassFromString(vcName) new];
    if (vc) {
        vc.view.backgroundColor = [UIColor whiteColor];
        [self.navigationController pushViewController:vc animated:YES];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Warning" message:@"there is nothing......" delegate:self cancelButtonTitle:@"I get it" otherButtonTitles:nil];
        [alert show];
    }
}

@end
