//
//  PDAPlaceOrderModel.h
//  PdaHuaMaster
//
//  Created by 岳俊杰 on 2017/7/24.
//  Copyright © 2017年 tdhy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PDAPlaceOrderModel : NSObject
@property(nonatomic,copy)NSString *goodsName;
@property(nonatomic,copy)NSString *weight;
@property(nonatomic,copy)NSString *volume;
@property(nonatomic,assign)NSInteger num;

@end
