//
//  NextMatrix.swift
//  Terminal
//
//  Created by Kumar Utsav on 30/10/18.
//  Copyright © 2018 Kumar Utsav. All rights reserved.
//

import Foundation

//
//  main.swift
//  Popa
//
//  Created by Kumar Utsav on 30/10/18.
//  Copyright © 2018 Kumar Utsav. All rights reserved.
//

import Foundation

public struct Array2D {
    public let columns: Int
    public let rows:    Int
    fileprivate var array: [Int]
    
    public init(columns: Int, rows: Int , initialValue: Int){
        self.columns = columns
        self.rows = rows
        array = Array(repeating: initialValue, count: rows * columns)
    }
    
    public subscript(column: Int, row: Int) -> Int {
        get {
            return array[row * columns + column]
        }
        
        set {
            array[row * columns + column] = newValue
        }
    }
}



func matrixElementsSum(matrix: [[Int]]) -> Int {
    let diz = Array2D(columns: matrix.first?.count ?? 0, rows: matrix.count, initialValue: 0)
    print(diz)
    
    var sum = 0
    
    for digit  in matrix {
        
        
        for tick in 0..<(digit.count) {
            // print("the value of this tick is \(tick)")
            sum = sum + digit[tick]
            // print("the value of this sum is \(sum)")
            
        }
    }
    
    
    for digit  in matrix {
        
        for tick in 0..<(digit.count) {
            if tick == 0 {
                print(tick)
                print("the digit is \(digit)")
            }
            
            // 0,0  0,1  0,2  0,3
            // 1,0  1,1  1,2  1,3
            // 2,0  2,1  2,2  2,3
            // 3,0  3,1  3,2  3,3
            
        }
    }
    
    
    
    
    
    return sum
}

matrixElementsSum(matrix: [[0,1,1,2],
                           [0,5,0,0],
                           [2,1,3,3],
                           [0,5,0,0]])



