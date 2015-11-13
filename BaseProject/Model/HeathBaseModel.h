//
//  HeathBaseModel.h
//  BaseProject
//
//  Created by tarena on 15/11/5.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseModel.h"


@class LiveInfo;
@interface HeathBaseModel : BaseModel

@property (nonatomic, strong) NSArray *t1414389941036;


@end


@interface T1414389941036 : BaseModel

@property (nonatomic, strong) NSString *alias;
@property (nonatomic, assign) double replyCount;
@property (nonatomic, assign) BOOL hasCover;
@property (nonatomic, strong) NSString *lmodify;
@property (nonatomic, strong) NSString *subtitle;
@property (nonatomic, assign) double imgType;

@property (nonatomic, strong) NSString *url;

@property (nonatomic, strong) NSString *ptime;
@property (nonatomic, strong) NSString *speciallogo;
@property (nonatomic, strong) NSArray *editor;
@property (nonatomic, assign) double votecount;
@property (nonatomic, assign) double hasHead;
@property (nonatomic, assign) double priority;
@property (nonatomic, strong) NSString *specialID;
@property (nonatomic, strong) NSString *tname;

@property (nonatomic, strong) NSString *template;


@property (nonatomic, assign) double hasAD;
@property (nonatomic, strong) NSString *skipType;

@property (nonatomic, strong) NSString *digest;

@property (nonatomic, strong) NSString *imgsrc;
@property (nonatomic, strong) NSString *source;
@property (nonatomic, strong) NSString *ename;
@property (nonatomic, strong) NSString *photosetID;
@property (nonatomic, strong) NSArray *imgextra;
@property (nonatomic, strong) NSString *specialadlogo;
@property (nonatomic, assign) BOOL hasIcon;
@property (nonatomic, assign) double order;
@property (nonatomic, strong) NSString *url3w;
@property (nonatomic, strong) NSString *cid;
@property (nonatomic, strong) NSString *boardid;
@property (nonatomic, strong) NSString *docid;
@property (nonatomic, strong) NSArray *specialextra;
@property (nonatomic, strong) NSString *tAG;
@property (nonatomic, assign) double hasImg;
@property (nonatomic, strong) LiveInfo *liveInfo;
@property (nonatomic, strong) NSString *specialtip;

@property (nonatomic, strong) NSString *title;

@property (nonatomic, strong) NSString *tAGS;
@property (nonatomic, strong) NSString *skipID;

@end

@interface LiveInfo : BaseModel


@property (nonatomic, assign) double roomId;
@property (nonatomic, assign) double userCount;
@property (nonatomic, strong) NSString *endTime;
@property (nonatomic, strong) NSString *startTime;
@property (nonatomic, assign) double remindTag;
@property (nonatomic, assign) double type;
@property (nonatomic, assign) BOOL video;


@end

@interface Specialextra :BaseModel

@property (nonatomic, strong) NSString *url3w;
@property (nonatomic, strong) NSString *digest;
@property (nonatomic, strong) NSString *subtitle;
@property (nonatomic, strong) NSString *imgsrc;
@property (nonatomic, strong) NSString *lmodify;
@property (nonatomic, assign) double priority;
@property (nonatomic, strong) NSString *source;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *boardid;
@property (nonatomic, assign) double votecount;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) NSString *docid;
@property (nonatomic, strong) NSString *ptime;
@property (nonatomic, assign) double replyCount;

@end


@interface Imgextra :BaseModel

@property (nonatomic, strong) NSString *imgsrc;

@end




