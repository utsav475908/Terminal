//
//  File.swift
//  Terminal
//
//  Created by Apple on 01/11/18.
//  Copyright © 2018 Kumar Utsav. All rights reserved.
//

import Foundation


import UIKit




func reverseParentheses(s: String) -> String {
    var kar = [Character]()
    var brackets = [Int]()
    
    for (index, value) in s.enumerated() {
        if value == "(" {
            brackets.append(index)
        } else if value == ")" {
            brackets.append(index)
        }
        print("char is \(value) at index \(index)")
        kar.append(value)
    }
    
    kar
    print(kar[2])
    
    //let dt = s.index(<#T##i: String.Index##String.Index#>, offsetBy: <#T##String.IndexDistance#>)
    let start = s.index(s.startIndex, offsetBy: brackets.first! + 1)
    let end = s.index(s.startIndex, offsetBy: brackets.last!)
    let myRange = start..<end
    let reversedBrackets =  String(s[myRange].reversed())
    
    var reverseKar = [Character]()
    
    for (index, value) in reversedBrackets.enumerated() {
        reverseKar.append(value)
        reverseKar
    }
    
    var charArray = [Character]()
    print(brackets.first!)
    print(brackets.last!)
    var counter = brackets.last! - brackets.first!
    
    
    
    for  digit in  stride(from: 0, to: brackets.first!, by: 1){
        charArray.append(kar[digit])
    }
    
    var looper = 0
    while looper != counter - 1  {
        charArray.append(reverseKar[looper])
        looper = looper + 1
    }
    
    // print(charArray)
    
    for digit in stride(from: brackets.last! + 1, to: s.count, by: 1) {
        charArray.append(kar[digit])
    }
    
    print(charArray)
    return String(charArray)
    
}


// reverseParentheses(s: "a(bc)de")






