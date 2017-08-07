//
//  DataModel.swift
//  Youtube HomeFeed
//
//  Created by Sai Sandeep on 31/07/17.
//  Copyright © 2017 Sai Sandeep. All rights reserved.
//

import Foundation

class DataModel {
    
    var originalImageName : String?
    var thumbnailImageName : String?
    var title : String?
    
    
    init(originalImage: String, thumbnailImage: String, titleStr: String ) {
        originalImageName = originalImage
        thumbnailImageName = thumbnailImage
        title = titleStr
    }
}


