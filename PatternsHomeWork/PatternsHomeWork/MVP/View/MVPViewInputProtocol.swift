//
//  MVPViewInputProtocol.swift
//  PatternsHomeWork
//
//  Created by Александр Арсенюк on 12/02/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

/// Protocol to Display any states
protocol MVPViewInputProtocol: AnyObject {
    
    /// Show on Main Display
    ///
    /// - Parameter name: text will display on Main Dipslay
    func showMainDisplay(_ name: String?)
    
    /// Show on Memory Display
    ///
    /// - Parameter name: text will display on Memory Display
    func showMemDisplay(_ name: String?)
    
    /// show alert
    ///
    /// - Parameter name: body of alert
    func showAlert(_ name: String)
    
    }
