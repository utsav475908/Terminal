//
//  sortByHeight.swift
//  Terminal
//
//  Created by Apple on 31/10/18.
//  Copyright © 2018 Kumar Utsav. All rights reserved.
//

import Foundation

func sortByHeight(a: [Int]) -> [Int] {
    
    var dict = [Int: Int]()
    var mylist = [Int]()
    
    for (index, value) in a.enumerated()  {
        if value == -1 {
            
            dict.updateValue(value, forKey: index)
        }else {
            mylist.append(value)
            
        }
        
    }
    
    var sortedList = mylist.sorted()
    var createdList = [Int]()
    print(sortedList)
    //print(dict)
    let sortedDict = dict.keys.sorted()
    print(sortedDict)
    var counter = 0
    for i in 0...a.count - 1  {
        
        if sortedDict.contains(i) {
            
            createdList.append(-1)
            continue
        }else {
            
            print(sortedList[counter])
            createdList.append(sortedList[counter])
            counter = counter + 1
        }
    }
    print("the final destiny of created List is \(createdList)")
    
    return createdList
    
}


// sortByHeight(a: [-1, 150, 190, 170, -1, -1, 160, 180])
