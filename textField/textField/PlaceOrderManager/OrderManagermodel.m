//
//  OrderManagermodel.m
//  textField
//
//  Created by 杨世擎 on 2017/7/25.
//  Copyright © 2017年 Lee. All rights reserved.
//

#import "OrderManagermodel.h"
#import "SectionMode.h"
#import "RowModel.h"
@implementation OrderManagermodel


-(NSMutableArray *)ordermanager
{
    if (!_ordermanager) {
        _ordermanager = [[NSMutableArray alloc]init];
        NSArray *sectiontitleArr = @[@"联系人",@"发货地址",@"货物详情",@"基础信息",@"备注"];
        NSArray *sectionContentArr = @[@[@"姓名",@"手机"],@[@"省市区",@"详细地址"],@[@"货物名称"],@[@"门店",@"车牌号"],@[@"备注"]];
        
        for (int i = 0; i<sectiontitleArr.count; i++) {
            SectionMode *secM = [[SectionMode  alloc]init];
            secM.sectionTitle = sectiontitleArr[i];
            //第二层
            NSArray *contentArr = sectionContentArr[i];
            for (int j = 0; j<contentArr.count; j++) {
                RowModel *rowM = [[RowModel alloc]init];
                rowM.keyTitle = contentArr[j];
                if (i == 2) {//货物详情
                    rowM.rowH = 91;
                }else{
                    rowM.rowH = 44;
                }
                [secM.rowArr addObject:rowM];
            }
            [_ordermanager addObject:secM];
        }
        
        
    }
    return  _ordermanager;
}

@end
