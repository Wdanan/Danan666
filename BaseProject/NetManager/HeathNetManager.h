//
//  HeathNetManager.h
//  BaseProject
//
//  Created by tarena on 15/11/5.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseNetManager.h"
#import "HeathBaseModel.h"
@interface HeathNetManager : BaseNetManager


+(id)getPage:(NSInteger)page completionHandle:(void(^)(HeathBaseModel *model, NSError *error))completionHandle;

@end
