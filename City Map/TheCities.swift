//
//  TheCities.swift
//  City Map
//
//  Created by Tiffany Diamanta on 9/30/15.
//  Copyright © 2015 Tiffany Diamanta. All rights reserved.
//

import Foundation

class TheCities {
    var name:String = ""
    var type:String = ""
    var location:String = ""
    var image:String = ""
    var isVisited:Bool = false
    
    init(name:String, type:String, location:String, image:String, isVisited:Bool) {
        self.name = name
        self.type = type
        self.location = location
        self.image = image
        self.isVisited = isVisited
    }
}
