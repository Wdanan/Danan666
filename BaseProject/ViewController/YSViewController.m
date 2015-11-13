//
//  YSViewController.m
//  BaseProject
//
//  Created by tarena on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "YSViewController.h"
#import "YSCell.h"
#import "YSViewModel.h"
#import "DetailYSViewController.h"
#import "ScrollDisplayViewController.h"
@interface YSViewController ()<UITableViewDelegate,UITableViewDataSource,ScrollDisplayViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong)YSViewModel *ysVM;

@property(nonatomic,strong) ScrollDisplayViewController *sdVC;
@end

@implementation YSViewController

- (YSViewModel *)ysVM {
    if(_ysVM == nil) {
        _ysVM = [[YSViewModel alloc] initWithYSListType:_type];
    }
    return _ysVM;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    //_tableView.contentOffset = CGPointMake(0, 0);
    _tableView.header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
       [self.ysVM refreshDataCompletionHandle:^(NSError *error) {
           [_tableView.header endRefreshing];
           [_tableView reloadData];
           if (error) {
               [self showErrorMsg:error.description];
           }
           //[self configTableHeader];
       }];
    }];
        _tableView.footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock:^{
           [self.ysVM getMoreDataCompletionHandle:^(NSError *error) {
               if (error) {
                   [self showErrorMsg:error.description];
               }
               [_tableView.footer endRefreshing];
               [_tableView reloadData];
           }];
        }];
    [_tableView.header beginRefreshing];
}


//-(void)configTableHeader{
//    
//    if (self.ysVM) {
//        <#statements#>
//    }
//    
//}


- (void)scrollDisplayViewController:(ScrollDisplayViewController *)scrollDisplayViewController didSelectedIndex:(NSInteger)index{
    DDLogVerbose(@"%ld", index);
}



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.ysVM.rowNumber;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    YSCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.titleLb.text = [self.ysVM titleForRow:indexPath.row];
    [cell.coverSmallIV sd_setImageWithURL:[self.ysVM coverSmallForRow:indexPath.row]];
    return cell;
    
    
    
}
//让分割线左侧无空隙
kRemoveCellSeparator

//松手后，去掉高亮状态
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
   DetailYSViewController *vc = [[DetailYSViewController alloc]initWithID:[self.ysVM IDForRow:indexPath.row]];
   [self.navigationController pushViewController:vc animated:YES];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/





@end
