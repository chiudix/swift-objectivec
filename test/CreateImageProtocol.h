//
//  CreateImageProtocol.h
//  test
//
//  Created by Kevin Meaney on 17/10/2014.
//  Copyright (c) 2014 Kevin Meaney. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CreateImageProtocol <NSObject>

-(NSInteger)imageWidth;
-(NSInteger)imageWidthOptional;

@property (nonatomic, copy) CGImageRef(^createImage)(NSDictionary *);

@optional
@property (nonatomic, copy) CGImageRef(^optionalCreateImage)(NSDictionary *);
@end

id<CreateImageProtocol>MakeImageProvider();
