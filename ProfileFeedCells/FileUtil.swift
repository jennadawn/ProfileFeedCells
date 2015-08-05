//
//  FileUtil.swift
//  ProfileFeedCells
//
//  Created by Jenna Sampson on 8/4/15.
//  Copyright (c) 2015 Jenna Sampson. All rights reserved.
//

import Foundation

// Utilities for accessing documents and stuff on the iPhone.
class FileUtil {
    class func itemsInSoundDir() -> [String] {
        var dirPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
        var docsDir = dirPath[0] as! String
        let filemanager = NSFileManager.defaultManager()
        return filemanager.contentsOfDirectoryAtPath(docsDir, error: nil) as! [String]
        // TODO: Figure out if we need to convert [NSString] return value to [String]
    }
}