//
//  Map+Extension.swift
//  QHSUnitTestDemo
//
//  Created by david on 2017/4/22.
//  Copyright © 2017年 Charles. All rights reserved.
//

import ObjectMapper

extension Map {
    public subscript(keys: [String]) -> Map {
        for key in keys {
            let nested = key.contains(".")
            self[key, nested: nested]
            if currentValue != nil {
                if let str = currentValue as? String {
                    if !str.isBlank {
                        break
                    }
                }
//                break
            }
        }
        return self
    }
}
