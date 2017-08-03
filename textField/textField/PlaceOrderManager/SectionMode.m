//
//  SectionMode.m
//  textField
//
//  Created by 杨世擎 on 2017/7/25.
//  Copyright © 2017年 Lee. All rights reserved.
//

#import "SectionMode.h"

@implementation SectionMode

-(NSMutableArray *)rowArr
{
    if (!_rowArr) {
        _rowArr = [[NSMutableArray alloc]init];
    }
    return _rowArr;
}
@end
