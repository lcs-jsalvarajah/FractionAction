//
//  main.swift
//  ChipsFastFoodEmporium
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// INPUT
// Collect and filter user input here

//The user input.
var RawUserInput = readLine()

var validNumeratorInput = 0
while 1==1 {
    guard let givenInput = readLine() else {
        print("Insert Numerator Integer")
        continue
    }
    
    guard let integerInput = Int(givenInput) else {
        print("Insert Numerator Integer")
        continue
    }
    if integerInput <= 0 {
        print("Insert Numerator Integer")
        continue
    }
   validNumeratorInput = integerInput
    break
}

var validDenominatorInput = 0
while 1==1 {
    guard let givenInput = readLine() else {
        print("Insert Denominator Integer")
        continue
    }
    guard let integerInput = Int(givenInput) else {
        print("Insert Denominator Integer")
        continue
    }
    if integerInput <= 0 {
        print("Insert Denominator Integer")
        continue
    }
    validDenominatorInput = integerInput
    break
}


// PROCESS
// Implement the primary logic of the problem here

while 1==1 {
   let unreducedOutputNumerator = validNumeratorInput % validDenominatorInput
    let quotient = validNumeratorInput / validDenominatorInput
    if unreducedOutputNumerator == 0 {
        print("Result is", quotient)
    } else if validDenominatorInput % unreducedOutputNumerator == 0 { // when the unreduced numerator is a factor of the
                                                                      // original denominator (e.g.: 5 / 10 )
        let reducedOutputNumerator = 1
        let reducedOutputDenominator = validDenominatorInput / unreducedOutputNumerator
        print("\(quotient) \(reducedOutputNumerator) \(reducedOutputDenominator)")
        break
        
} else {
        var GCF = 1
        for mixedValues in stride(from: unreducedOutputNumerator/2, to: 2, by: -1) {
            if unreducedOutputNumerator % mixedValues == 0 && validDenominatorInput % mixedValues == 0 {
                GCF = mixedValues
                break
            }
            
        }
        // Get the parts of the reduced fraction
        let reducedOutputNumerator = validNumeratorInput / GCF
        let reducedOutputDenominator = validDenominatorInput / GCF
        
        // Print the reduced fraction
        print("\(quotient) \(reducedOutputNumerator)/\(reducedOutputDenominator)")
        break
    }
}

// Remember it is for i in stride not just for stride.


//else if validNumeratorInput % validDenominatorInput != 0 {







// OUTPUT
// Report results to the user here

