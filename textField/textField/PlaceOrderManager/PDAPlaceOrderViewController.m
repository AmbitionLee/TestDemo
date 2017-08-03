//
//  PDAPlaceOrderViewController.m
//  PdaHuaMaster
//
//  Created by 岳俊杰 on 2017/7/21.
//  Copyright © 2017年 tdhy. All rights reserved.
//

#import "PDAPlaceOrderViewController.h"
#import "PDAPlaceOrderTableViewCell.h"
#import "PDAPlaceOrderModel.h"
#import "PDAAddGoodsName.h"
#import "OrderManagermodel.h"
#import "SectionMode.h"
#import "RowModel.h"
@interface PDAPlaceOrderViewController ()<UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate,UIScrollViewDelegate>

@property(nonatomic,strong)UITableView *placeOrderTableView;
@property (nonatomic,strong) OrderManagermodel *orderModel;

@end

@implementation PDAPlaceOrderViewController
-(OrderManagermodel *)orderModel{
    if (!_orderModel) {
        _orderModel = [[OrderManagermodel alloc]init];
    }
    return _orderModel;
}
-(UITableView *)placeOrderTableView
{
    if (!_placeOrderTableView)
    {
        _placeOrderTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
        _placeOrderTableView.delegate = self;
        _placeOrderTableView.dataSource = self;
        _placeOrderTableView.tableFooterView = [UIView new];
    }
    return _placeOrderTableView;
}
#pragma mark+++++viewDidLoad
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"下单管理";
    [self.view addSubview:self.placeOrderTableView];
    self.placeOrderTableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 18)];
    
    [self.placeOrderTableView reloadData];
   

    
}

#pragma mark+++UITableView代理
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SectionMode *secM = self.orderModel.ordermanager[indexPath.section];
    
        return [secM.rowArr[indexPath.row] rowH];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.orderModel.ordermanager.count;
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
     SectionMode *secM = self.orderModel.ordermanager[section];
    return secM.rowArr.count;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 20;
}
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
     SectionMode *secM = self.orderModel.ordermanager[section];
    return secM.sectionTitle;
}

-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    if (section == 2)
    {
        PDAAddGoodsName *view =   [PDAAddGoodsName instanceFooterView];
        [view.goodsName addTarget:self action:@selector(addGoodsNameClick:) forControlEvents:UIControlEventTouchUpInside];
        return view;
    }
    return nil;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return section == 2?44:10;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SectionMode *secM = self.orderModel.ordermanager[indexPath.section];
    RowModel *rowM = secM.rowArr[indexPath.row];
    rowM.indexP = indexPath;
    if (indexPath.section == 4)
    {
        PDAPlaceOrderTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"remarkCell"];
        if (!cell)
        {
            cell = [[NSBundle mainBundle] loadNibNamed:[NSString stringWithFormat:@"%@",NSStringFromClass([PDAPlaceOrderTableViewCell class])] owner:nil options:nil][2];
        }
        
        cell.data = rowM;
        return cell;
    }
 else  if (indexPath.section==2)
    {
        PDAPlaceOrderTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"goodsCell"];
        if (!cell)
        {
            cell = [[NSBundle mainBundle] loadNibNamed:[NSString stringWithFormat:@"%@",NSStringFromClass([PDAPlaceOrderTableViewCell class])] owner:nil options:nil][1];
        }
         cell.data = rowM;
        return cell;
    }
    else
    {
        PDAPlaceOrderTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"orderCell"];
        if (!cell)
        {
            cell = [[NSBundle mainBundle] loadNibNamed:[NSString stringWithFormat:@"%@",NSStringFromClass([PDAPlaceOrderTableViewCell class])] owner:nil options:nil][0];
            
        }
         cell.data = rowM;
        return cell;
    }
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
   
}
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 2)
    {
        return   UITableViewCellEditingStyleDelete;

    }
    return UITableViewCellEditingStyleNone;
}

/*改变删除按钮的title*/
-(NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return @"删除";
}

/*删除用到的函数*/
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
//    if (editingStyle ==UITableViewCellEditingStyleDelete)
//    {
//        if (self.thirdDetailsArray.count == 1)
//        {
//            NSLog(@"货物zuishaoyige");
//            return;
//        }
//        [self.thirdDetailsArray   removeObjectAtIndex:indexPath.row];  //删除数组里的数据
//        [self.placeOrderTableView   deleteRowsAtIndexPaths:[NSMutableArray arrayWithObject:indexPath]withRowAnimation:UITableViewRowAnimationAutomatic];  //删除对应数据的cell
//    }
}
#pragma mark++++其他方法
//添加model
-(void)addGoodsNameClick:(UIButton *)button
{
    
    
//    PDAPlaceOrderModel *orderModel = [[PDAPlaceOrderModel alloc]init];
////    [self.thirdDetailsArray addObject:orderModel];
//    
//
//    
//    NSIndexSet *indexSetA = [[NSIndexSet alloc]initWithIndex:2];
//    [self.placeOrderTableView  reloadSections:indexSetA withRowAnimation:UITableViewRowAnimationAutomatic];
    
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    [self.view endEditing:YES];
}


@end
