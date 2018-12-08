//
//  MajorOrMinor.swift
//  Terminal
//
//  Created by Apple on 08/12/18.
//  Copyright © 2018 Kumar Utsav. All rights reserved.
//

import UIKit


func majorOrMinor(scale: [String]) -> String {
    
    
    let dictionary = ["C" : 1, "C#" : 2, "D" : 3, "D#" : 4, "E" : 5 , "F" : 6, "F#" : 7, "G" : 8, "G#" : 9, "A" : 10, "A#" : 11, "B" : 12]
    
    let t2 :String = String(scale[2].dropLast())
    let t1 : String = String(scale[1].dropLast())
    print(t2)
    print(t1)
    
    //dictionary[t2]
    
    
    let that = dictionary[t2]
    let this = dictionary[t1]
    if abs(that! - this!) % 2 == 0 {
        return "major"
    }else {
        return "minor"
    }
    
}

majorOrMinor(scale: ["G#1",
                     "A#1",
                     "C2",
                     "C#2",
                     "D#2",
                     "F2",
                     "G2",
                     "G#2"])
