//
//  RowModel.h
//  textField
//
//  Created by 杨世擎 on 2017/7/25.
//  Copyright © 2017年 Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface RowModel : NSObject
@property (nonatomic,copy) NSString *keyTitle;
@property (nonatomic,strong) NSArray *keyTitleArr;
@property (nonatomic,copy) NSString *content;
@property (nonatomic,strong) NSArray *contentArr;
@property (nonatomic,assign)  CGFloat rowH;
@property (nonatomic,strong) NSIndexPath *indexP;

@property (nonatomic,copy) NSString *weight;
@property (nonatomic,copy) NSString *volume;
@property (nonatomic,copy) NSString *num;
@end
