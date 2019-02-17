//
//  VIPERInteractor.swift
//  PatternsHomeWork
//
//  Created by Александр Арсенюк on 16/02/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

class VIPERInteractor: VIPERInteractorInputProtocol {
    
    //MARK: - Constants -
    
    weak var output: VIPERInteractorOutputProtocol!
    
    var arythmeticManager: ArythmeticManagerProtocol!
    
    let clearValue = ""
    let dotSymbol = "."
    let maxLengthMainDisplay = 8
    
    
    var firstValue: String = ""
    var memoryValue: String = ""
    var temp: Double = 0
    
    var lastOperation: Operations?
    
    enum Operations {
        
        case add
        case minus
        case multiply
        case devide
        case pow
    }
    
    /// function is adding value to string value
    ///
    /// - Parameter value: value wich will be added to string
    func addValueToString(_ value: String) {
        
        if firstValue.count < maxLengthMainDisplay &&
            (firstValue.first != "0" || firstValue.contains(dotSymbol)) {
            firstValue = firstValue + value
            output.didFinishedMainDisplay(firstValue)
        } else {output.showNewAlert("Ограничение ввода")}
    }
    
    //MARK: - Digits -
    
    func addToValueStringOne() {
        addValueToString("1")
    }
    
    func addToValueStringTwo() {
        addValueToString("2")
    }
    
    func addToValueStringThree() {
       addValueToString("3")
    }
    
    func addToValueStringFour() {
        addValueToString("4")
    }
    
    func addToValueStringFive() {
        addValueToString("5")
    }
    
    func addToValueStringSix() {
        addValueToString("6")
    }
    
    func addToValueStringSeven() {
        addValueToString("7")
    }
    
    func addToValueStringEight() {
       addValueToString("8")
    }
    
    func addToValueStringNine() {
        addValueToString("9")
    }
    
    func addToValueStringZero() {
        addValueToString("0")
    }
    
    //MARK: - Operations -
    
    func takePersent() {
        
        var result: String
        
        if let first = Double(firstValue), let second = Double(memoryValue) {
            
            switch lastOperation {
            
            /// add to first value(memoryValue) second(firstValue) persentages
            /// from first
            /// (add to 105 + 5% = 110,25)
            case .add?:
                result = String(second / 100 * first + second)
           
            /// first value(memoryValue) minus second(firstValue) persentages
            /// from first value(memoryValue)
            /// ( 105 - 5% = 99,75)
            case .minus?:
                result = String(second / 100 * first - second)
                
            /// first value(memoryValue) multiply second(firstValue) persentages
            /// ( 105 * 5% = 5,25)
            case .multiply?:
                result = String(second / 100 * first)
                
            /// first value(memoryValue) devide second(firstValue) persentages
            /// ( 105 / 5% = 2100)
            case .devide?:
                result = String(second * 100 / first)
            
            /// first value(memoryValue) in  second(firstValue) persentages pow
            /// ( 105 / 5% = 2100)
            case .pow?:
                result = String(Foundation.pow(second, first/100))
                
            default:
                result = "inncorrect"
            }
            
            if  (Double(result)!.isWhole()) {
                let temp: Double = Double(result)!
                result = String(temp.toInt())
            }
            
            firstValue = result
            memoryValue = clearValue
            output.didFinishedMainDisplay(result)
            output.didFinishedMemoryDisplay(memoryValue)
        }
        else if let first = Double(firstValue) {
            
            firstValue = String(first/100)
            if  (Double(firstValue)!.isWhole()) {
                temp = Double(firstValue)!
                firstValue = String(temp.toInt())
            }
            output.didFinishedMainDisplay(firstValue)
        
        } else {output.showNewAlert("Error with \"result\" operation")}
    }
    
    
    func isEqual() {
        
        var result: String
        
        if let first = Double(firstValue), let second = Double(memoryValue) {
            
            switch lastOperation {
                
            case .add?:
                result = String(first+second)
                
            case .minus?:
                result = String(second-first)
                
            case .multiply?:
                result = String(first*second)
                
            case .devide?:
                result = String(second/first)
                
            case .pow?:
                result = String(Foundation.pow(second, first))
                
            default:
                result = "inncorrect"
            }
            if  (Double(result)!.isWhole()) {
                temp = Double(result)!
                result = String(temp.toInt())
            }
            
            firstValue = result
            memoryValue = clearValue
            output.didFinishedMainDisplay(result)
            output.didFinishedMemoryDisplay(memoryValue)
        } 
            
    
    }
    
    func adding() {
       
        isEqual()
        
        lastOperation = Operations.add
        
        if memoryValue == clearValue {
            memoryValue = firstValue
        } else {
            
            if let first = Double(firstValue), let second = Double(memoryValue) {
                
                memoryValue = arythmeticManager.adding(first, second)
            }
            else { output.showNewAlert("Error with \"Adding\" Operation") }
        }
        firstValue = clearValue
        output.didFinishedMainDisplay(firstValue)
        output.didFinishedMemoryDisplay(memoryValue)
        
        
    }
    
    func minus() {
        
        isEqual()
        
        lastOperation = Operations.minus
       
        if memoryValue == clearValue {
            memoryValue = firstValue
        } else {
            
            
            if let first = Double(firstValue), let second = Double(memoryValue) {
                
                memoryValue = arythmeticManager.minusing(first, second)
            }
            else { output.showNewAlert("Error with \"minus\" Operation") }
        }
        firstValue = clearValue
        output.didFinishedMainDisplay(firstValue)
        output.didFinishedMemoryDisplay(memoryValue)
    }
    
    func multiply() {
        
        isEqual()
        
        lastOperation = Operations.multiply
        
        if memoryValue == clearValue {
            memoryValue = firstValue
        } else {
            if let first = Double(firstValue), let second = Double(memoryValue) {
                
                memoryValue = arythmeticManager.multiplying(first, second)
            }
            else { output.showNewAlert("Error with \"Multiply\" Operation") }
        }
        firstValue = clearValue
        output.didFinishedMainDisplay(firstValue)
        output.didFinishedMemoryDisplay(memoryValue)
        
    }
    
    func devide() {
        
        isEqual()
        
        lastOperation = Operations.devide
       
        if memoryValue == clearValue {
            memoryValue = firstValue
        } else {
            if let first = Double(firstValue), let second = Double(memoryValue) {
                
                memoryValue = arythmeticManager.deviding(first, second)
            }
            else { output.showNewAlert("Error with \"Devide\" Operation") }
        }
        firstValue = clearValue
        output.didFinishedMainDisplay(firstValue)
        output.didFinishedMemoryDisplay(memoryValue)
        
    }
    
    func clearAll() {
        
        firstValue = clearValue
        memoryValue = clearValue
        output.didFinishedMainDisplay(firstValue)
        output.didFinishedMemoryDisplay(memoryValue)
    }
    
    func changeSign() {
        
        if var value = Double(firstValue) {
            value = -value
            firstValue = String(value)
            if  (Double(firstValue)!.isWhole()) {
                temp = Double(firstValue)!
                firstValue = String(temp.toInt())
            }
            output.didFinishedMainDisplay(firstValue)
        }
        else { output.showNewAlert("Error with Changing Operation") }
    }
    
    func setDot() {
       
        if (firstValue.first != nil) &&
            !firstValue.contains(dotSymbol) &&
            firstValue.count < maxLengthMainDisplay - 1 {
            firstValue = firstValue + dotSymbol
            output.didFinishedMainDisplay(firstValue)
        }
        else { output.showNewAlert("Error with dot") }
    }
    
    func setPow() {
        
        isEqual()
        
        lastOperation = Operations.pow
        
        if memoryValue == clearValue {
            memoryValue = firstValue
        } else {
            if let first = Double(firstValue), let second = Double(memoryValue) {
                
                memoryValue = arythmeticManager.powing(first, second)
            }
            else { output.showNewAlert("Error with \"Pow\" Operation") }
        }
        firstValue = clearValue
        output.didFinishedMainDisplay(firstValue)
        output.didFinishedMemoryDisplay(memoryValue)
        }
    }

    
    
    
    

