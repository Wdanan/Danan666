//
//  HeathNetManager.m
//  BaseProject
//
//  Created by tarena on 15/11/5.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "HeathNetManager.h"

@implementation HeathNetManager

+(id)getPage:(NSInteger)page completionHandle:(void(^)(HeathBaseModel *model, NSError *error))completionHandle{
    NSString *path = [NSString stringWithFormat:@"http://c.m.163.com/nc/article/list/T1414389941036/%ld-20.html", page];
    return [self GET:path parameters:nil completionHandler:^(id responseObj, NSError *error) {
        completionHandle([HeathBaseModel objectWithKeyValues:responseObj],error);
    }];
    
}


@end
