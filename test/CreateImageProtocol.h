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

// @optional
@property (nonatomic, copy) CGImageRef(^createImage)(NSDictionary *);
@end

id<CreateImageProtocol>MakeImageProvider();
