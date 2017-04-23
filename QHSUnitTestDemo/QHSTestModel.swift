//
//  QHSTestModel.swift
//  QHSUnitTestDemo
//
//  Created by david on 2017/4/22.
//  Copyright © 2017年 Charles. All rights reserved.
//

import ObjectMapper

class QHSTestModel: Mappable {

    var longitude: String = "0.0"
//    var lantitude: String = "0.0"
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        longitude <- map[["longitude0", "longitude1"]]
//        lantitude <- map[["lantitude0", "lantitude1"]]
    }
}
