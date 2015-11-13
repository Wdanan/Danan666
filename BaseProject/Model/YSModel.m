//
//  YSModel.m
//  BaseProject
//
//  Created by tarena on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "YSModel.h"

@implementation YSModel

@end
@implementation YSDataModel

+ (NSDictionary *)objectClassInArray{
    return @{@"items" : [YSDataItemsModel class]};
}

@end


@implementation YSDataItemsModel

+(NSDictionary *)replacedKeyFromPropertyName{
    
    return @{@"ID":@"id"};
    
}


@end


