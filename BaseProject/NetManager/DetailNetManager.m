//
//  DetailNetManager.m
//  BaseProject
//
//  Created by tarena on 15/11/4.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "DetailNetManager.h"

@implementation DetailNetManager

+(id)getID:(NSInteger)ID completionHandle:(void(^)(DetailModel *model, NSError *error))completionHandle{
    NSString *path = [NSString stringWithFormat:@"http://dxy.com/app/i/columns/article/single?ac=1d6c96d5-9a53-4fe1-9537-85a33de916f1&id=%ld&mc=dba8c7dc895b07672eba0b3a7d657d025093dbce&vc=4.0.8",ID];
    return [self GET:path parameters:nil completionHandler:^(id responseObj, NSError *error) {
        completionHandle([DetailModel objectWithKeyValues:responseObj],error);
    }];
    
}


@end
