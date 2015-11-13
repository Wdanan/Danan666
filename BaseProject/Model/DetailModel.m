//
//  DetailModel.m
//  BaseProject
//
//  Created by tarena on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "DetailModel.h"

@implementation DetailModel

@end
@implementation DetailDataModel

+ (NSDictionary *)objectClassInArray{
    return @{@"items" : [DetailDataItemsModel class]};
}

@end


@implementation DetailDataItemsModel

+ (NSDictionary *)objectClassInArray{
    return @{@"tags" : [DetailDataItemsTagsModel class]};
}


+(NSDictionary *)replacedKeyFromPropertyName{
    
    return @{@"ID":@"id"};
    
}


@end


@implementation DetailDataItemsTagsModel

@end


