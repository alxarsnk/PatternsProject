//
//  Extensions.swift
//  PatternsHomeWork
//
//  Created by Александр Арсенюк on 16/02/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

extension Double {
    
    /// if value has decimal part "0" (eg. 12.0)
    ///
    /// - Returns: true if decimal part is 0; false if decimal part is not 0;
    func isWhole () -> Bool {
        
        if String(self) != "inf" && String(self) != "nan" {
            if (self - Double(Int(self))) == 0 {
                return true
            } else {return false}
        } else {return false}
    }
    
    /// function to get Int type from Double type vlaue
    ///
    /// - Returns: Int type value
    func toInt() -> Int {
        return Int(self)
    }
}
