//
//  VIPERViewOutputProtocol.swift
//  PatternsHomeWork
//
//  Created by Александр Арсенюк on 16/02/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

/// Prorocol to notify interactor about any actions
protocol VIPERViewOutputProtocol: AnyObject {
    
    //MARK: Operations
    
    /// notify interactor of clear area
    func clearAll()
    
    /// notify interactor to add values
    func adding()
    
    /// notify interactor to get difference between values
    func minus()
    
    /// notify interactor of multyipling values
    func multiply()
    
    /// notify interactor of deviding values
    func devide()
    
    /// notify interactor to know persentage value from value
    func takePersent()
    
    /// notify interactor to set a decimal value
    func setDot()
    
    /// notify interactor to change value's sign
    func changeSign()
    
    /// notify interactor to set value in some pow
    func setPow()
    
    /// notify interactor to know the result about operations
    func isEqual ()
    
    //MARK: Digits
    
    /// notify interactor to print "1"
    func printOne()
    
    /// notify interactor of print "2"
    func printTwo()
    
    ///  notify interactor of print "3"
    func printThree()
    
    ///  notify interactor of print "4"
    func printFour()
    
    /// notify interactor of print "5"
    func printFive()
    
    /// notify interactor of print "6"
    func printSix()
    
    /// notify interactor of print "7"
    func printSeven()
    
    ///  notify interactor of print "8"
    func printEight()
    
    /// notify interactor of print "9"
    func printNine()
    
    ///  notify interactor of print "0"
    func printZero()

    
    
}
