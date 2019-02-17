//
//  MVPPresenter.swift
//  PatternsHomeWork
//
//  Created by Александр Арсенюк on 12/02/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

class MVPPresenter: MVPViewOutputProtocol {
    
    //MARK: - Constants -
    
    weak var view: MVPViewInputProtocol!
    
    var arythmeticManager: ArythmeticManagerProtocol!
    
    var firstValue: String = ""
    var memoryValue: String = ""
    var temp: Double = 0
    
    var lastOperation: Operations?
    
    let maxLengthMainDisplay = 8
    let clearValue = ""
    let dotSymbol = "."
    
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
            view.showMainDisplay(firstValue)
        } else {view.showAlert("Ограничение ввода")}
    }
    
     //MARK: - MVP Operations -
    
    func clearAll() {
        firstValue = clearValue
        memoryValue = clearValue
        view.showMainDisplay(firstValue)
        view.showMemDisplay(memoryValue)
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
            else { view.showAlert("Error with \"Adding\" Operation") }
        }
        firstValue = clearValue
        view.showMainDisplay(firstValue)
        view.showMemDisplay(memoryValue)
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
            else { view.showAlert("Error with \"minus\" Operation") }
        }
        firstValue = clearValue
        view.showMainDisplay(firstValue)
        view.showMemDisplay(memoryValue)
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
            else { view.showAlert("Error with \"Multiply\" Operation") }
        }
        firstValue = clearValue
        view.showMainDisplay(firstValue)
        view.showMemDisplay(memoryValue)
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
            else { view.showAlert("Error with \"Devide\" Operation") }
        }
        firstValue = clearValue
        view.showMainDisplay(firstValue)
        view.showMemDisplay(memoryValue)
    }
    
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
                temp = Double(result)!
                result = String(temp.toInt())
            }
            
            firstValue = result
            memoryValue = clearValue
            view.showMainDisplay(result)
            view.showMemDisplay(memoryValue)
        }
        else if let first = Double(firstValue) {
            
            firstValue = String(first/100)
            if  (Double(firstValue)!.isWhole()) {
                temp = Double(firstValue)!
                firstValue = String(temp.toInt())
            }
            view.showMainDisplay(firstValue)
            
        } else {view.showAlert("Error with \"result\" operation")}
    }
    
    func setDot() {
        
        if (firstValue.first != nil) &&
            !firstValue.contains(dotSymbol) &&
            firstValue.count < maxLengthMainDisplay - 1  {
            
            firstValue = firstValue + dotSymbol
            view.showMainDisplay(firstValue)
        }
        else { view.showAlert("Error with dot") }
    }
    
    func changeSign() {
       
        if var value = Double(firstValue)
        {
            value = -value
            firstValue = String(value)
            if  (Double(firstValue)!.isWhole()) {
                temp = Double(firstValue)!
                firstValue = String(temp.toInt())
            }
            view.showMainDisplay(firstValue)
        }
        else { view.showAlert("Error with Changing Operation") }
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
            else { view.showAlert("Error with \"Pow\" Operation") }
        }
        firstValue = clearValue
        view.showMainDisplay(firstValue)
        view.showMemDisplay(memoryValue)
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
            view.showMainDisplay(result)
            view.showMemDisplay(memoryValue)
        }  
        
    }
    
    //MARK: - MVP Digits -
    
    func printOne() {
       
        addValueToString("1")
    }
    
    func printTwo() {
  
        addValueToString("2")
        }
    
    func printThree() {
        
       addValueToString("3")
    }
    
    func printFour() {
        
        addValueToString("4")
    }
    
    func printFive() {
        
        addValueToString("5")
    }
    
    func printSix() {
        
        addValueToString("6")
    }
    
    func printSeven() {
        
        addValueToString("7")
    }
    
    func printEight() {
        
       addValueToString("8")
    }
    
    func printNine() {
        
        addValueToString("9")
    }
    
    func printZero() {
        
        addValueToString("0")
    }
    
    
}



