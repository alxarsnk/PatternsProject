//
//  VIPERViewInputProtocol.swift
//  PatternsHomeWork
//
//  Created by Александр Арсенюк on 16/02/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

/// prorocol to display any values
protocol VIPERViewInputProtocol: AnyObject {
    
    ///  to show on Main Display
    ///
    /// - Parameter name: valuw which will be displayed
    func showMainDisplay(_ name: String?)
    
    /// to show on Memory Display
    ///
    /// - Parameter name: value which will be displayed
    func showMemDisplay(_ name: String?)
    
    /// to show alert in specials cases
    ///
    /// - Parameter name: the body of Alert
    func showAlert(_ name: String)
    
}
