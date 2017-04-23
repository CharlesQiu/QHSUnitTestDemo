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
            let nested = key.contains(nestedKeyDelimiter)
            let map: Map = self[key, nested: nested]
            print("===== key: \(key) currentValue: \(currentValue ?? "blank") =====")
            if currentValue != nil {
                if let str = currentValue as? String {
                    if !str.isBlank {
                        return map
                    }
                }
            }
        }
        return self[keys.last!, ignoreNil: true]
    }
}
