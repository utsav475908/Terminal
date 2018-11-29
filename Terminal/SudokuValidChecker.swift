//
//  SudokuValidChecker.swift
//  Terminal
//
//  Created by Apple on 29/11/18.
//  Copyright © 2018 Kumar Utsav. All rights reserved.
//

import Foundation


public struct Array2D<T> {
    public let columns: Int
    public let rows: Int
    fileprivate var array: [T]
    
    public init(columns: Int, rows: Int, initialValue: T) {
        self.columns = columns
        self.rows = rows
        array = .init(repeating: initialValue, count: rows*columns)
    }
    
    public subscript(column: Int, row: Int) -> T {
        get {
            precondition(column < columns, "Column \(column) Index is out of range. Array<T>(columns: \(columns), rows:\(rows))")
            precondition(row < rows, "Row \(row) Index is out of range. Array<T>(columns: \(columns), rows:\(rows))")
            return array[row*columns + column]
        }
        set {
            precondition(column < columns, "Column \(column) Index is out of range. Array<T>(columns: \(columns), rows:\(rows))")
            precondition(row < rows, "Row \(row) Index is out of range. Array<T>(columns: \(columns), rows:\(rows))")
            array[row*columns + column] = newValue
        }
    }
}

var rowCollection  = [[Int]]()
var rowCollectionFirst  = [Int]()
var rowCollectionSecond  = [Int]()
var rowCollectionThird = [Int]()
var rowCollectionFourth  = [Int]()
var rowCollectionFifth  = [Int]()
var rowCollectionSixth  = [Int]()
var rowCollectionSeventh  = [Int]()
var rowCollectionEight  = [Int]()
var rowCollectionNinth  = [Int]()


var colCollection  = [[Int]]()
var colCollectionFirst  = [Int]()
var colCollectionSecond  = [Int]()
var colCollectionThird = [Int]()
var colCollectionFourth  = [Int]()
var colCollectionFifth  = [Int]()
var colCollectionSixth  = [Int]()
var colCollectionSeventh  = [Int]()
var colCollectionEight  = [Int]()
var colCollectionNinth  = [Int]()


var gridCollector  = [[Int]]()
var gridCollectionFirst  = [Int]()
var gridCollectionSecond  = [Int]()
var gridCollectionThird = [Int]()
var gridCollectionFourth  = [Int]()
var gridCollectionFifth  = [Int]()
var gridCollectionSixth  = [Int]()
var gridCollectionSeventh  = [Int]()
var gridCollectionEight  = [Int]()
var gridCollectionNinth  = [Int]()

func checkForDuplicateInTheCollection(collection: [Int]) -> Bool {
    let arrayCount = collection.count
    let setCount = Set(collection).count
    return arrayCount - setCount != 0
}


func sudoku2(grid: [[Character]]) -> Bool {
    
    var boolArray: Array2D = Array2D(columns: 9, rows: 9, initialValue: 0)
    // dimArray will hold the proper number
    var dimArray: Array2D =   Array2D(columns: 9, rows: 9, initialValue: 0)
    for (index2d, horizontalCollection) in grid.enumerated() {
        for(index, each)  in horizontalCollection.enumerated() {
            
            if let digit = Int(String(each)){
                print(digit)
                print("at row, \(index2d + 1) and col, \(index + 1)")
                dimArray[index2d, index] = digit
                
                
                
                
                
                switch (index2d, index) {
                    
                case (0...2,0...2):
                    gridCollectionFirst.append(digit)
                    
                // fallthrough
                case (0...2,3...5):
                    gridCollectionSecond.append(digit)
                    
                //fallthrough
                case (0...2,6...8):
                    gridCollectionThird.append(digit)
                    
                    //fallthrough
                    
                case (3...5,0...2):
                    gridCollectionFourth.append(digit)
                // fallthrough
                case (3...5,3...5):
                    gridCollectionFifth.append(digit)
                //fallthrough
                case (3...5,6...8):
                    gridCollectionSixth.append(digit)
                    //fallthrough
                    
                case (6...8,0...2):
                    gridCollectionSeventh.append(digit)
                //fallthrough
                case (6...8,3...5):
                    gridCollectionEight.append(digit)
                //fallthrough
                case (6...8,6...8):
                    gridCollectionNinth.append(digit)
                //fallthrough
                case (_, _):
                    print("boring")
                }
                switch (index2d, index) {
                    
                // for all columns
                case (0...8,0):
                    colCollectionFirst.append(digit)
                //fallthrough
                case (0...8,1):
                    colCollectionSecond.append(digit)
                //fallthrough
                case (0...8,2):
                    colCollectionThird.append(digit)
                //fallthrough
                case (0...8,3):
                    colCollectionFourth.append(digit)
                //fallthrough
                case (0...8,4):
                    colCollectionFifth.append(digit)
                //fallthrough
                case (0...8,5):
                    colCollectionSixth.append(digit)
                //fallthrough
                case (0...8,6):
                    colCollectionSeventh.append(digit)
                //fallthrough
                case (0...8,7):
                    colCollectionEight.append(digit)
                //fallthrough
                case (0...8,8):
                    colCollectionNinth.append(digit)
                //fallthrough
                case (_, _):
                    print("nothing")
                }
                switch (index2d, index) {
                    
                // for all rows
                case (0,0...8):
                    rowCollectionFirst.append(digit)
                //fallthrough
                case (1,0...8):
                    rowCollectionSecond.append(digit)
                //fallthrough
                case (2,0...8):
                    rowCollectionThird.append(digit)
                //fallthrough
                case (3,0...8):
                    rowCollectionFourth.append(digit)
                //fallthrough
                case (4,0...8):
                    rowCollectionFifth.append(digit)
                //fallthrough
                case (5,0...8):
                    rowCollectionSixth.append(digit)
                //fallthrough
                case (6,0...8):
                    rowCollectionSeventh.append(digit)
                //fallthrough
                case (7,0...8):
                    rowCollectionEight.append(digit)
                //fallthrough
                case (8,0...8):
                    rowCollectionNinth.append(digit)
                    //fallthrough
                    
                default:
                    //
                    print("wow")
                }
                print("nothing")
                // rowCollection.append(digit)
            }
            
            
        }
        
        // print(xyz)
    }
    //    rowCollection += rowCollectionFirst, rowCollectionSecond, rowCollectionThird, rowCollectionFourth, rowCollectionFifth, rowCollectionSixth, rowCollectionSeventh, rowCollectionEight, rowCollectionNinth
    
    gridCollector.append(gridCollectionFirst)
    gridCollector.append(gridCollectionSecond)
    gridCollector.append(gridCollectionThird)
    gridCollector.append(gridCollectionFourth)
    gridCollector.append(gridCollectionFifth)
    gridCollector.append(gridCollectionSixth)
    gridCollector.append(gridCollectionSeventh)
    gridCollector.append(gridCollectionEight)
    gridCollector.append(gridCollectionNinth)
    
    rowCollection.append(rowCollectionFirst)
    rowCollection.append(rowCollectionSecond)
    rowCollection.append(rowCollectionThird)
    rowCollection.append(rowCollectionFourth)
    rowCollection.append(rowCollectionFifth)
    rowCollection.append(rowCollectionSixth)
    rowCollection.append(rowCollectionSeventh)
    rowCollection.append(rowCollectionEight)
    rowCollection.append(rowCollectionNinth)
    
    colCollection.append(colCollectionFirst)
    colCollection.append(colCollectionSecond)
    colCollection.append(colCollectionThird)
    colCollection.append(colCollectionFourth)
    colCollection.append(colCollectionFifth)
    colCollection.append(colCollectionSixth)
    colCollection.append(colCollectionSeventh)
    colCollection.append(colCollectionEight)
    colCollection.append(colCollectionNinth)
    print(colCollectionEight)
    
    
    var resultIsvalidSudokuForGrid: Bool = true
    for gridCollective in gridCollector {
        if checkForDuplicateInTheCollection(collection: gridCollective) {
            resultIsvalidSudokuForGrid = false
        }
    }
    print(resultIsvalidSudokuForGrid)
    
    var resultIsvalidSudokuForCol: Bool = true
    for colCollective in colCollection {
        if checkForDuplicateInTheCollection(collection: colCollective) {
            resultIsvalidSudokuForCol = false
        }
    }
    print(resultIsvalidSudokuForCol)
    
    
    var resultIsvalidSudokuForRow: Bool = true
    for rowCollective in rowCollection {
        if checkForDuplicateInTheCollection(collection: rowCollective) {
            resultIsvalidSudokuForRow = false
        }
    }
    print(resultIsvalidSudokuForRow)
    print(resultIsvalidSudokuForGrid)
    print(resultIsvalidSudokuForCol)
    
    print(dimArray[0,4])
    print(resultIsvalidSudokuForRow && resultIsvalidSudokuForCol && resultIsvalidSudokuForGrid)
    
    return resultIsvalidSudokuForRow && resultIsvalidSudokuForCol && resultIsvalidSudokuForGrid
}



let ha = checkForDuplicateInTheCollection(collection: [0,0])
ha

sudoku2(grid:  [[".",".",".","2",".",".","6",".","."],
                [".",".",".","1",".",".",".",".","."],
                [".",".",".",".",".",".",".",".","."],
                [".",".",".","5",".","1",".",".","8"],
                [".","3",".",".",".",".",".",".","."],
                [".",".",".","9",".",".",".",".","3"],
                ["4",".",".",".",".",".",".",".","."],
                [".",".",".",".",".",".","3","8","."],
                [".",".",".",".",".",".",".",".","4"]])

//enum Mode: Int {
//    case Favourite
//    case Recent
//    case Contacts
//}
//
//guard let m = Mode(rawValue: contactViewMode) else { /* handle the situation */ }
//switch m {
//case .Favourite: /* handle case */
//case .Recent: /* handle case */
//case .Contacts: /* handle case */
//}



