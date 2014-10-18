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
    //    x.autorelease()
    return x
}

/*
public func getImageWidth() -> Int {
    var imageProvider:AnyObject = MakeImageProvider()
    imageProvider.setCreateImage?(makeImage)
    imageProvider.imageWidth()
}
*/

public func getImageWidth2() -> Int {
    let imageProvider = ImageProvider2()
    imageProvider.createImage = makeImage
    return imageProvider.imageWidth()
}

// public class ClassMethodWrapper : NSObject {
@objc class ClassMethodWrapper {
    class func getImageWidth2() -> Int {
        let imageProvider = ImageProvider2()
        imageProvider.createImage = makeImage
        return imageProvider.imageWidth()
    }
    
    class func getImageWidth() -> Int {
        let imageProvider:CreateImageProtocol = MakeImageProvider()!
        imageProvider.createImage = makeImage
        return imageProvider.imageWidth()
    }
}
