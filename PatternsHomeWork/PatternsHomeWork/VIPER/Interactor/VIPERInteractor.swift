//
//  VIPERInteractor.swift
//  PatternsHomeWork
//
//  Created by Александр Арсенюк on 16/02/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

class VIPERInteractor: VIPERInteractorInput {
    
    //MARK: - Constants -
    
    weak var output: VIPERInteractorOutput!
    
    var firstValue: String = ""
    var memoryValue: String = ""
    
    var lastOperation: String = ""
    
    
    //MARK: - Digits -
    
    func printOne() {
        if firstValue.count < 8 &&
            (firstValue.first != "0" || firstValue.contains(".")) {
            firstValue = firstValue + "1"
            output.didFinishedMainDisplay(firstValue)
        } else {output.showNewAlert("Ограничение ввода")}
    }
    
    func printTwo() {
        if firstValue.count < 8 &&
            (firstValue.first != "0" || firstValue.contains(".")) {
            firstValue = firstValue + "2"
            output.didFinishedMainDisplay(firstValue)
        } else {output.showNewAlert("Ограничение ввода")}
    }
    
    func printThree() {
        if firstValue.count < 8 &&
            (firstValue.first != "0" || firstValue.contains(".")) {
            firstValue = firstValue + "3"
            output.didFinishedMainDisplay(firstValue)
        } else {output.showNewAlert("Ограничение ввода")}
    }
    
    func printFour() {
        if firstValue.count < 8 &&
            (firstValue.first != "0" || firstValue.contains(".")) {
            firstValue = firstValue + "4"
            output.didFinishedMainDisplay(firstValue)
        } else {output.showNewAlert("Ограничение ввода")}
    }
    
    func printFive() {
        if firstValue.count < 8 &&
            (firstValue.first != "0" || firstValue.contains(".")) {
            firstValue = firstValue + "5"
            output.didFinishedMainDisplay(firstValue)
        } else {output.showNewAlert("Ограничение ввода")}
    }
    
    func printSix() {
        if firstValue.count < 8 &&
            (firstValue.first != "0" || firstValue.contains(".")) {
            firstValue = firstValue + "6"
            output.didFinishedMainDisplay(firstValue)
        } else {output.showNewAlert("Ограничение ввода")}
    }
    
    func printSeven() {
        if firstValue.count < 8 &&
            (firstValue.first != "0" || firstValue.contains(".")) {
            firstValue = firstValue + "7"
            output.didFinishedMainDisplay(firstValue)
        } else {output.showNewAlert("Ограничение ввода")}
    }
    
    func printEight() {
        if firstValue.count < 8 &&
            (firstValue.first != "0" || firstValue.contains(".")) {
            firstValue = firstValue + "8"
            output.didFinishedMainDisplay(firstValue)
        } else {output.showNewAlert("Ограничение ввода")}
    }
    
    func printNine() {
        if firstValue.count < 8 &&
            (firstValue.first != "0" || firstValue.contains(".")) {
            firstValue = firstValue + "9"
            output.didFinishedMainDisplay(firstValue)
        } else {output.showNewAlert("Ограничение ввода")}
    }
    
    func printZero() {
        if firstValue.count < 8 &&
            (firstValue.first != "0" || firstValue.contains(".")) {
            firstValue = firstValue + "0"
            output.didFinishedMainDisplay(firstValue)
        } else {output.showNewAlert("Ограничение ввода")}
    }
    
    //MARK: - Operations -
    
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
            output.didFinishedMainDisplay(result)
            output.didFinishedMemoryDisplay(memoryValue)
        }
            
        else {output.showNewAlert("Error")}
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
            else { output.showNewAlert("Error with \"Adding\" Operation") }
        }
        firstValue = ""
        output.didFinishedMainDisplay(firstValue)
        output.didFinishedMemoryDisplay(memoryValue)
        
        
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
            else { output.showNewAlert("Error with \"minus\" Operation") }
        }
        firstValue = ""
        output.didFinishedMainDisplay(firstValue)
        output.didFinishedMemoryDisplay(memoryValue)
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
            else { output.showNewAlert("Error with \"Multiply\" Operation") }
        }
        firstValue = ""
        output.didFinishedMainDisplay(firstValue)
        output.didFinishedMemoryDisplay(memoryValue)
        
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
            else { output.showNewAlert("Error with \"Devide\" Operation") }
        }
        firstValue = ""
        output.didFinishedMainDisplay(firstValue)
        output.didFinishedMemoryDisplay(memoryValue)
        
    }
    
    func clearAll() {
        firstValue = ""
        memoryValue = ""
        output.didFinishedMainDisplay(firstValue)
        output.didFinishedMemoryDisplay(memoryValue)
    }
    
    func changeSign() {
        
        if var value = Double(firstValue) {
            value = -value
            firstValue = String(value)
            if  (Double(firstValue)!.isWhole()) {
                let temp: Double = Double(firstValue)!
                firstValue = String(temp.toInt())
            }
            output.didFinishedMainDisplay(firstValue)
        }
        else { output.showNewAlert("Error with Changing Operation") }
    }
    
    func takePersent() {
       
        if let value = Double(firstValue) {
            firstValue = String(value / 100)
           output.didFinishedMainDisplay(firstValue)
        }
        else { output.showNewAlert("Error with persentage") }
    }
    
    func setDot() {
        if (firstValue.first != nil) &&
            !firstValue.contains(".") &&
            firstValue.count < 7 {
            firstValue = firstValue + "."
            output.didFinishedMainDisplay(firstValue)
        }
        else { output.showNewAlert("Error with dot") }
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
            else { output.showNewAlert("Error with \"Pow\" Operation") }
        }
        firstValue = ""
        output.didFinishedMainDisplay(firstValue)
        output.didFinishedMemoryDisplay(memoryValue)
        }
    }
    
    
    
    

