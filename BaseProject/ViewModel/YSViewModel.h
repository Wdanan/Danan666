//
//  YSViewModel.h
//  BaseProject
//
//  Created by tarena on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseViewModel.h"
#import "YSNetManager.h"
@interface YSViewModel : BaseViewModel


-(id)initWithYSListType:(YSListType)type;

@property(nonatomic)YSListType type;

@property(nonatomic)NSInteger rowNumber;


-(NSURL *)coverSmallForRow:(NSInteger)row;
-(NSString *)titleForRow:(NSInteger)row;
//-(NSNumber *)IDforRow:(NSInteger)ID;
- (NSInteger)IDForRow:(NSInteger)row;
//通过滚动展示栏的索引值，获取对应的数据ID
- (NSNumber *)adIDForRow:(NSInteger)row;
@property (nonatomic, strong)NSString *publishTime;
@property (nonatomic)NSInteger channel_id;

@property(nonatomic)NSInteger page_index;

@end
