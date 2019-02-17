//
//  VIPERInteractorInputProtocol.swift
//  PatternsHomeWork
//
//  Created by Александр Арсенюк on 16/02/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

/// protocol of working with data in interactor
protocol VIPERInteractorInputProtocol: AnyObject  {
    
    //MARK: Digits
    
    /// adding to string value "1"
    func addToValueStringOne()
    
    /// adding to string value "2"
    func addToValueStringTwo()
    
    /// adding to string value "3"
    func addToValueStringThree()
    
    /// adding to string value "4"
    func addToValueStringFour()
    
    /// adding to string value "5"
    func addToValueStringFive()
    
    /// adding to string value "6"
    func addToValueStringSix()
    
    /// adding to string value "7"
    func addToValueStringSeven()
    
    /// adding to string value "8"
    func addToValueStringEight()
    
    /// adding to string value "9"
    func addToValueStringNine()
    
    /// adding to string value "0"
    func addToValueStringZero()
    
    //MARK: Operations
    
    /// final operation to know the result of operations
    func isEqual()
    
    /// adding values
    func adding()
    
    /// this is difference between values
    func minus()
    
    /// multiply  values
    func multiply()
    
    /// devide values
    func devide()
    
    /// clear all area of values
    func clearAll()
    
    /// change values's sign
    func changeSign()

    /// to know about perstange value
    func takePersent()
    
    /// set decimal value
    func setDot()
    
    /// to set value into some pow
    func setPow()
    
    
    
}
