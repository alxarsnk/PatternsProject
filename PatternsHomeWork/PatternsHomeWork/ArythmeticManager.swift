//
//  ArythmeticManager.swift
//  PatternsHomeWork
//
//  Created by Александр Арсенюк on 17/02/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation


/// protocol of arytmetic operations
protocol ArythmeticManagerProtocol {
    
    /// summ of two values
    ///
    /// - Parameters:
    ///   - firstValue: first sum value
    ///   - memoryValue: second some value
    /// - Returns: result of operation at string type
    func adding(_ firstValue: Double,_ memoryValue: Double) -> String
    
    /// difference of two values
    ///
    /// - Parameters:
    ///   - firstValue: first difference value
    ///   - memoryValue: second differnce value
    /// - Returns: result of operation at string type
    func minusing(_ firstValue: Double,_ memoryValue: Double) -> String
    
    /// multiply of two values
    ///
    /// - Parameters:
    ///   - firstValue: first multiplaying value
    ///   - memoryValue: second multiplaying value
    /// - Returns: result of operation at string type
    func multiplying(_ firstValue: Double,_ memoryValue: Double) -> String
    
    /// devide two values
    ///
    /// - Parameters:
    ///   - firstValue: first devide value
    ///   - memoryValue: second devide value
    /// - Returns: result of operation at string type
    func deviding(_ firstValue: Double,_ memoryValue: Double) -> String
    
    /// set value in some pow
    ///
    /// - Parameters:
    ///   - firstValue: first  value
    ///   - memoryValue: second  value of pow
    /// - Returns: result of operation at string type
    func powing(_ firstValue: Double,_ memoryValue: Double) -> String
}

class ArythmeticManager: ArythmeticManagerProtocol {
    

    let maxLengthMainDisplay = 8
    var temp: Double = 0
    
    weak var interactor: VIPERInteractor!
   
   func adding(_ firstValue: Double, _ memoryValue: Double) -> String {
       
        var string = String(firstValue + memoryValue)
                if  (Double(string)!.isWhole()) {
                    temp = Double(string)!
                    string = String(temp.toInt())
        }
        return string
    }
    
    func minusing(_ firstValue: Double, _ memoryValue: Double) -> String {
        
        var string = String(memoryValue - firstValue)
            if  (Double(string)!.isWhole()) {
            temp = Double(string)!
            string = String(temp.toInt())
        }
        return string
    }
    
    func multiplying(_ firstValue: Double, _ memoryValue: Double) -> String {
        
        var string = String(firstValue * memoryValue)
            if  (Double(string)!.isWhole()) {
            temp = Double(string)!
            string = String(temp.toInt())
        }
        return string
    }
    
    func deviding(_ firstValue: Double, _ memoryValue: Double) -> String {
        
        var string = String(memoryValue / firstValue)
            if  (Double(string)!.isWhole()) {
            temp = Double(string)!
            string = String(temp.toInt())
        }
        return string
    }
    
    func powing(_ firstValue: Double, _ memoryValue: Double) -> String {
        
        var string = String(pow(memoryValue, firstValue))
            if  (Double(string)!.isWhole()) {
            temp = Double(string)!
            string = String(temp.toInt())
        }
        return string
    }
    
    
    
   
    
}
