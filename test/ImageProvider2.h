//
//  ImageProvider2.h
//  test
//
//  Created by Kevin Meaney on 17/10/2014.
//  Copyright (c) 2014 Kevin Meaney. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ImageProvider2 : NSObject

-(NSInteger)imageWidth;

@property (nonatomic, copy) CGImageRef(^createImage)(NSDictionary *);

@end
