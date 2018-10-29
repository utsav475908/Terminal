import Foundation

func almostIncreasingSequence(sequence: [Int]) -> Bool {
    
   var scannedSet = Set<[Int]>()
    for some in sequence {
        scannedSet.insert([some])
    }
    print(scannedSet)
    if sequence.count - scannedSet.count >= 2 {
      return false
    }
    
    var originalSeq = sequence
    var workout = [Int: Int]()
    var counter = 0
    print(sequence)
    var dropSeq = sequence.dropLast()
    
    for (index,value) in dropSeq.enumerated() {
       // if sequence.last! != sequence[index] {
            if sequence[index] < sequence[index + 1] {
                continue
                
            }else {
                counter = counter + 1
                print("this value is not good \(index) and \(value)")
                workout.updateValue(value, forKey: index)
            }
            
            if counter >= 2 {
                print("counter value is here is \(counter)")
                 return false
            } else if counter == 0 {
                return true
            }
        
    }
    print("counter value in this loop is \(counter)")
    var ticker = 0
                for keys in workout.keys {
                    // do something
                   // return true
                    if sequence.contains(workout[keys]!) {
                      originalSeq.remove(at: keys)
                        if !strictlyIncreasingFunction(seq: originalSeq) {
                          ticker = ticker + 1
                        }
            }
    }
    if ticker < 2 && furtherCheck(se: sequence){
      return true
    }else {
       return false
      }
            
        //}
    //}
    
   // strictlyIncreasingFunction(seq: [0,2,3,9])
    //return true
}

func furtherCheck(se:[Int]) ->Bool {
     let counter = (se.count / 2) - 1
    guard counter >= 0 else {
       return true
    }
    var firtHalf : Int = 0
    var secondHalf: Int = 0
    
    for some in 0...(se.count/2 - 1) {
        
       firtHalf = firtHalf + se[some]
    }
    
    for some in se.count/2 ... se.count - 1 {
       secondHalf = secondHalf + se[some]
    }
    
    print("the value of first half is \(firtHalf) vs second \(secondHalf)")
    return firtHalf <= secondHalf
    
}

func strictlyIncreasingFunction(seq:[Int]) -> Bool {
    var counter = 0
    
    for (index, value) in seq.enumerated() {
        print( index, value)
        if seq.last != seq[index] {
            if seq[index] < seq[index + 1] {
                continue
            }else {
                counter = counter + 1
                print(counter)
            }
        }
        
    }
    if counter >= 1 {
        print(counter)
        return false
    }else {
        return true
    }
    
}

let this = almostIncreasingSequence(sequence: [123, -17, -5, 1, 2, 3, 12, 43, 45])
print("the final result is \(this)")


/*
 
 almostIncreasingSequence
 CLOSE
 PREV
 NEXT
 Easy
 
 Codewriting
 
 300
 
 Given a sequence of integers as an array, determine whether it is possible to obtain a strictly increasing sequence by removing no more than one element from the array.
 
 Example
 
 For sequence = [1, 3, 2, 1], the output should be
 almostIncreasingSequence(sequence) = false.
 
 There is no one element in this array that can be removed in order to get a strictly increasing sequence.
 
 For sequence = [1, 3, 2], the output should be
 almostIncreasingSequence(sequence) = true.
 
 You can remove 3 from the array to get the strictly increasing sequence [1, 2]. Alternately, you can remove 2 to get the strictly increasing sequence [1, 3].
 
 Input/Output
 
 [execution time limit] 20 seconds (swift)
 
 [input] array.integer sequence
 
 Guaranteed constraints:
 2 ≤ sequence.length ≤ 105,
 -105 ≤ sequence[i] ≤ 105.
 
 [output] boolean
 
 Return true if it is possible to remove one element from the array in order to get a strictly increasing sequence, otherwise return false.
 [Swift3] Syntax Tips
 
 // Prints help message to the console
 // Returns a string
 func helloWorld(name: String) -> String {
 print("This prints to the console when you Run Tests");
 return "Hello, " + name;
 }
 
 */
