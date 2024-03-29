//
//  SupplyCreateImage.swift
//  test
//
//  Created by Kevin Meaney on 17/10/2014.
//  Copyright (c) 2014 Kevin Meaney. All rights reserved.
//

import Foundation

public func makeImage(dict : [ NSObject:AnyObject]! ) -> Unmanaged<CGImageRef>! {
    let thePath = dict["imagefilepath"]! as String
    let jpegURL = NSURL.fileURLWithPath(thePath, isDirectory: false)
    let imageSource = CGImageSourceCreateWithURL(jpegURL, nil)!
    let theImage = CGImageSourceCreateImageAtIndex(imageSource, 0, nil)
    let x = Unmanaged.passUnretained(theImage);
    return x
}

// The following function not part of a class is unused, as I can't assign to it.
public func getImageWidth() -> Int {
    var imageProvider:CreateImageProtocol = MakeImageProvider()
    imageProvider.createImage = makeImage
    return imageProvider.imageWidth()
}

@objc class ClassMethodWrapper {
    class func getImageWidth() -> Int {
        let imageProvider:CreateImageProtocol = MakeImageProvider()!
        imageProvider.createImage = makeImage
        return imageProvider.imageWidth()
    }

    class func getImageWidthOptional() -> Int {
        let imageProvider:CreateImageProtocol = MakeImageProvider()!
        // imageProvider.optionalCreateImage = makeImage
        return imageProvider.imageWidthOptional()
    }

    class func getImageWidth2() -> Int {
        let imageProvider = ImageProvider2()
        imageProvider.createImage = makeImage
        return imageProvider.imageWidth()
    }
    
}
