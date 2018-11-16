//
//  rotateImage.swift
//  Terminal
//
//  Created by Apple on 16/11/18.
//  Copyright © 2018 Kumar Utsav. All rights reserved.
//

import Foundation

func rotateImage(arr: [[Int]]) -> [[Int]] {
    
    var finalOutput: [[Int]] = Array(repeating: [], count: arr.count)
    
    var randomArrayFirst  = [Int]()
    var randomArraySecond = [Int]()
    var randomArrayThird  = [Int]()
    
    for row in arr {
        for col in row {
            print(col)
            if col % row.count == 1 {
                randomArrayFirst.append(col)
            }
            if col % row.count == 2 {
                randomArraySecond.append(col)
            }
            if col % row.count == 0 {
                randomArrayThird.append(col)
            }
        }
    }
    
    for (index, valueList) in arr.enumerated() {
        
        
        
        if index == 0 {
            finalOutput[index].append(contentsOf: randomArrayFirst.reversed())
        }
        if index == 1 {
            finalOutput[index].append(contentsOf: randomArraySecond.reversed())
        }
        if index == 2 {
            finalOutput[index].append(contentsOf: randomArrayThird.reversed())
        }
        
    }
    //print(randomArray)
    print("the value of random array \(randomArrayFirst)")
    print("the value of random array \(randomArraySecond)")
    print("the value of random array \(randomArrayThird)")
    
    
    for (row,value) in finalOutput.enumerated() {
        for (column, value) in finalOutput[row].enumerated() {
            print("the row \(row) and the column \(column)  is \(finalOutput[row][column])")
        }
    }
    
    return finalOutput
    
}

/*
rotateImage(arr: [[1,2,3],
                  [4,5,6],
                  [7,8,9]])

*/
