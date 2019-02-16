//
//  MVPPresenter.swift
//  PatternsHomeWork
//
//  Created by Александр Арсенюк on 12/02/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

class MVPPresenter: MVPViewOutput {
    
    //MARK: - Constants -
    
    weak var view: MVPViewInput!
    
    var firstValue: String = ""
    var memoryValue: String = ""
    var lastOperation: String = ""
    
     //MARK: - MVP Operations -
    
    func clearAll() {
        firstValue = ""
        memoryValue = ""
        view.showMainDisplay(firstValue)
        view.showMemDisplay(memoryValue)
    }
    
    func adding() {
        
        lastOperation = "add"
        
        if memoryValue == "" {
            memoryValue = firstValue
        } else {
            if let first = Double(firstValue), let second = Double(memoryValue) {
                memoryValue = String(first+second)
                
                if  (Double(memoryValue)!.isWhole()) {
                    let temp: Double = Double(memoryValue)!
                    memoryValue = String(temp.toInt())
                }
            }
            else { view.showAlert("Error with \"Adding\" Operation") }
        }
        firstValue = ""
        view.showMainDisplay(firstValue)
        view.showMemDisplay(memoryValue)
     }
    
    func minus() {
        
        lastOperation = "minus"
        
        if memoryValue == "" {
            memoryValue = firstValue
        } else {
            if let first = Double(firstValue), let second = Double(memoryValue) {
                memoryValue = String(second-first)
                
                if  (Double(memoryValue)!.isWhole()) {
                    let temp: Double = Double(memoryValue)!
                    memoryValue = String(temp.toInt())
                }
            }
            else { view.showAlert("Error with \"minus\" Operation") }
        }
        firstValue = ""
        view.showMainDisplay(firstValue)
        view.showMemDisplay(memoryValue)
    }
    
    func multiply() {
        
        lastOperation = "multiply"
        
        if memoryValue == "" {
            memoryValue = firstValue
        } else {
            if let first = Double(firstValue), let second = Double(memoryValue) {
                memoryValue = String(first*second)
                
                if  (Double(memoryValue)!.isWhole()) {
                    let temp: Double = Double(memoryValue)!
                    memoryValue = String(temp.toInt())
                }
            }
            else { view.showAlert("Error with \"Multiply\" Operation") }
        }
        firstValue = ""
        view.showMainDisplay(firstValue)
        view.showMemDisplay(memoryValue)
    }
    
    func devide() {
       
        lastOperation = "devide"
        
        if memoryValue == "" {
            memoryValue = firstValue
        } else {
            if let first = Double(firstValue), let second = Double(memoryValue) {
                
                memoryValue = String(second/first)
                
                if  (Double(memoryValue)!.isWhole()) {
                    let temp: Double = Double(memoryValue)!
                    memoryValue = String(temp.toInt())
                }
            }
            else { view.showAlert("Error with \"Devide\" Operation") }
        }
        firstValue = ""
        view.showMainDisplay(firstValue)
        view.showMemDisplay(memoryValue)
    }
    
    func takePersent() {
        
        if let value = Double(firstValue)
        {
            firstValue = String(value / 100)
            view.showMainDisplay(firstValue)
        }
        else { view.showAlert("Error with persentage")}
    }
    
    func setDot() {
        
        if (firstValue.first != nil) &&
            !firstValue.contains(".") &&
            firstValue.count < 7  {
            
            firstValue = firstValue + "."
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
                let temp: Double = Double(firstValue)!
                firstValue = String(temp.toInt())
            }
            view.showMainDisplay(firstValue)
        }
        else { view.showAlert("Error with Changing Operation") }
    }
    
    func setPow() {
        
        lastOperation = "pow"
        if memoryValue == "" {
            memoryValue = firstValue
        } else {
            if let first = Double(firstValue), let second = Double(memoryValue) {
                
                memoryValue = String(Foundation.pow(second, first))
                
                if  (Double(memoryValue)!.isWhole()) {
                    let temp: Double = Double(memoryValue)!
                    memoryValue = String(temp.toInt())
                }
            }
            else { view.showAlert("Error with \"Pow\" Operation") }
        }
        firstValue = ""
        view.showMainDisplay(firstValue)
        view.showMemDisplay(memoryValue)
    }
    
    func isEqual() {
        
        var result: String
        
        if let first = Double(firstValue), let second = Double(memoryValue) {
            
            switch lastOperation {
                
            case "add":
                result = String(first+second)
                
            case "minus":
                result = String(second-first)
                
            case "multiply":
                result = String(first*second)
                
            case "devide":
                result = String(second/first)
                
            case "pow":
                result = String(Foundation.pow(second, first))
                
            default:
                result = "inncorrect"
            }
            if  (Double(result)!.isWhole()) {
                let temp: Double = Double(result)!
                result = String(temp.toInt())
            }
            
            firstValue = result
            memoryValue = ""
            view.showMainDisplay(result)
            view.showMemDisplay(memoryValue)
        }   else {view.showAlert("Error")}
        
    }
    
    //MARK: - MVP Digits -
    
    func printOne() {
        if firstValue.count < 8 &&
            (firstValue.first != "0" || firstValue.contains(".")) {
            firstValue = firstValue + "1"
            view.showMainDisplay(firstValue)
        }   else { view.showAlert("Ограничение ввода") }
    }
    
    func printTwo() {
        if firstValue.count < 8 &&
            (firstValue.first != "0" || firstValue.contains(".")) {
            firstValue = firstValue + "2"
            view.showMainDisplay(firstValue)
        }   else { view.showAlert("Ограничение ввода") }
    }
    
    func printThree() {
        if firstValue.count < 8 &&
            (firstValue.first != "0" || firstValue.contains(".")) {
            firstValue = firstValue + "3"
            view.showMainDisplay(firstValue)
        }   else { view.showAlert("Ограничение ввода") }
    }
    
    func printFour() {
        if firstValue.count < 8 &&
            (firstValue.first != "0" || firstValue.contains(".")) {
            firstValue = firstValue + "4"
            view.showMainDisplay(firstValue)
        }   else { view.showAlert("Ограничение ввода") }
    }
    
    func printFive() {
        if firstValue.count < 8 &&
            (firstValue.first != "0" || firstValue.contains(".")) {
            firstValue = firstValue + "5"
            view.showMainDisplay(firstValue)
        }   else { view.showAlert("Ограничение ввода") }
    }
    
    func printSix() {
        if firstValue.count < 8 &&
            (firstValue.first != "0" || firstValue.contains(".")) {
            firstValue = firstValue + "6"
            view.showMainDisplay(firstValue)
        }   else { view.showAlert("Ограничение ввода") }
    }
    
    func printSeven() {
        if firstValue.count < 8 &&
            (firstValue.first != "0" || firstValue.contains(".")) {
            firstValue = firstValue + "7"
            view.showMainDisplay(firstValue)
        }   else { view.showAlert("Ограничение ввода") }
    }
    
    func printEight() {
        if firstValue.count < 8 &&
            (firstValue.first != "0" || firstValue.contains(".")) {
            firstValue = firstValue + "8"
            view.showMainDisplay(firstValue)
        }   else { view.showAlert("Ограничение ввода") }
    }
    
    func printNine() {
        if firstValue.count < 8 &&
            (firstValue.first != "0" || firstValue.contains(".")) {
            firstValue = firstValue + "9"
            view.showMainDisplay(firstValue)
        }   else { view.showAlert("Ограничение ввода") }
    }
    
    func printZero() {
        if firstValue.count < 8 &&
            (firstValue.first != "0" || firstValue.contains(".")) {
            firstValue = firstValue + "0"
            view.showMainDisplay(firstValue)
        }   else { view.showAlert("Ограничение ввода") }
    }
    
    
}



