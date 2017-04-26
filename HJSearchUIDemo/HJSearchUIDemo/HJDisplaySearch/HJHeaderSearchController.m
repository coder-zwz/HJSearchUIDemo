//
//  HJHeaderSearchController.m
//  HJSectionSearch
//
//  Created by zwz on 2017/4/26.
//  Copyright © 2017年 zwz. All rights reserved.
//

#import "HJHeaderSearchController.h"

@interface HJHeaderSearchController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@end

@implementation HJHeaderSearchController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"iOS分组搜索框--滚动搜索";
    self.view.backgroundColor = [UIColor whiteColor];
    self.searchBar.placeholder = @"iOS分组搜索框--滚动搜索";
    self.tableView.tableHeaderView = self.searchBar;
}
#pragma mark - UITableViewDataSource UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [NSString stringWithFormat:@"%ld",section];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"cellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%ld-%ld",indexPath.section,indexPath.row];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 30.f;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return CGFLOAT_MIN;
}


@end
