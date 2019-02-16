//
//  Extensions.swift
//  PatternsHomeWork
//
//  Created by Александр Арсенюк on 16/02/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

extension Double {
    
    
    func isWhole () -> Bool {
        
        if String(self) != "inf" && String(self) != "nan" {
            if (self - Double(Int(self))) == 0 {
                return true
            } else {return false}
        } else {return false}
    }
    
    func toInt() -> Int
    {
        return Int(self)
    }
}
