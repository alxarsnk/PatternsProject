//
//  VIPERInteractorInput.swift
//  PatternsHomeWork
//
//  Created by Александр Арсенюк on 16/02/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

protocol VIPERInteractorInput: AnyObject  {
    
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
    
    //MARK: Operations
    
    func isEqual()
    
    func adding()
    
    func minus()
    
    func multiply()
    
    func devide()
    
    func clearAll()
    
    func changeSign()

    func takePersent()
    
    func setDot()
    
    func setPow()
    
    
    
}
