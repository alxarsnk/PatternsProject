//
//  VIPERViewOutput.swift
//  PatternsHomeWork
//
//  Created by Александр Арсенюк on 16/02/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

protocol VIPERViewOutput: AnyObject {
    
    //MARK: Operations
    
    func clearAll()
    
    func adding()
    
    func minus()
    
    func multiply()
    
    func devide()
    
    func takePersent()
    
    func setDot()
    
    func changeSign()
    
    func setPow()
    
    func isEqual()
    
    //MARK: Digits
    
    func printOne()
    
    func printTwo()
    
    func printThree()
    
    func printFour()
    
    func printFive()
    
    func printSix()
    
    func printSeven()
    
    func printEight()
    
    func printNine()
    
    func printZero()
    
    
}
