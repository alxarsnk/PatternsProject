//
//  MVPViewOutputProtocol.swift
//  PatternsHomeWork
//
//  Created by Александр Арсенюк on 12/02/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

/// Prorocol to notify about any actions
protocol MVPViewOutputProtocol: AnyObject {
    
    //MARK: Operations
   
    /// Clear all area and all values
    func clearAll()
    
    /// function to add values
    func adding()
    
    /// function to get difference between values
    func minus()
    
    /// function multyiply values
    func multiply()
    
    /// function to devide values
    func devide()
    
    /// function to know persentage value from value
    func takePersent()
    
    /// set a decimal value
    func setDot()
    
    /// change value's sign
    func changeSign()
    
    /// function to set value in some pow
    func setPow()
    
    /// final operation to know the result about operations
    func isEqual ()
    
    //MARK: Digits
    
    /// print "1"
    func printOne()
    
    /// print "2"
    func printTwo()
    
    /// print "3"
    func printThree()
    
    /// print "4"
    func printFour()
    
    /// print "5"
    func printFive()
    
    /// print "6"
    func printSix()
    
    /// print "7"
    func printSeven()
    
    /// print "8"
    func printEight()
    
    /// print "9"
    func printNine()
    
    /// print "0"
    func printZero()

    
}
