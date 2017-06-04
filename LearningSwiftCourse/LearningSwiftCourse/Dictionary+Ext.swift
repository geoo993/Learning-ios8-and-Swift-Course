//
//  Dictionary+Ext.swift
//  LearningSwiftCourse
//
//  Created by GEORGE QUENTIN on 03/06/2017.
//  Copyright © 2017 LEXI LABS. All rights reserved.
//

import Foundation

extension Dictionary where Value: Equatable {
    func firstKeyForValue(forValue val: Value) -> Key? {
        return first(where: { $1 == val })?.0
    }
    func allKeysForValue(val : Value) -> [Key] {
        return self.filter { $1 == val }.map { $0.0 }
    }
    
    func getKeyString(index : Int) -> String{
        return Array(self)[index].key as? String ?? ""
    }
    
    func getKeyInt(index : Int) -> Int{
       return Array(self)[index].key as? Int ?? 0
    }
    
    func getValueString(index : Int) -> String{
        return Array(self)[index].value as? String ?? ""
    }
    
    func getValueInt(index : Int) -> Int {
        return Array(self)[index].value as? Int ?? 0
    }
}
