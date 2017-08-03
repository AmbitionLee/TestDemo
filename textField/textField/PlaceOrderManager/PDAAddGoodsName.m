//
//  PDAAddGoodsName.m
//  PdaHuaMaster
//
//  Created by 岳俊杰 on 2017/7/24.
//  Copyright © 2017年 tdhy. All rights reserved.
//

#import "PDAAddGoodsName.h"

@implementation PDAAddGoodsName
+ (PDAAddGoodsName *)instanceFooterView
{
    NSArray* nibView =  [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([PDAAddGoodsName class]) owner:nil options:nil];
    return [nibView objectAtIndex:0];
}
@end
