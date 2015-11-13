//
//  DetailModel.h
//  BaseProject
//
//  Created by tarena on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseModel.h"

@class DetailDataModel,DetailDataItemsModel,DetailDataItemsTagsModel;
@interface DetailModel : BaseModel

@property (nonatomic, strong) DetailDataModel *data;

@end
@interface DetailDataModel : NSObject

@property (nonatomic, strong) NSArray<DetailDataItemsModel *> *items;

@end

@interface DetailDataItemsModel : NSObject

@property (nonatomic, assign) NSInteger ID;

@property (nonatomic, copy) NSString *author_avatar;

@property (nonatomic, copy) NSString *author;

@property (nonatomic, copy) NSString *cover_small;

@property (nonatomic, copy) NSString *author_url;

@property (nonatomic, strong) NSArray<DetailDataItemsTagsModel *> *tags;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, assign) NSInteger author_id;

@property (nonatomic, copy) NSString *cover;

@property (nonatomic, copy) NSString *author_remarks;

@property (nonatomic, copy) NSString *publish_time;

@property (nonatomic, copy) NSString *content;

@end

@interface DetailDataItemsTagsModel : NSObject

@property (nonatomic, copy) NSString *tag_uri;

@property (nonatomic, copy) NSString *tag_name;

@property (nonatomic, assign) NSInteger tag_type;

@property (nonatomic, copy) NSString *tag_type_name;

@property (nonatomic, assign) NSInteger tag_id;

@end

