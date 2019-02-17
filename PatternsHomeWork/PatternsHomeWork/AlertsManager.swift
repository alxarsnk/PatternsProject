//
//  AlertsManager.swift
//  PatternsHomeWork
//
//  Created by Александр Арсенюк on 15/02/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation
import UIKit

/// protocol for working wit alerts
protocol AlertsManagerProtocol: AnyObject {
    
    /// to show alert
    ///
    /// - Parameter text: the body of alert
    /// - Returns: alert 
    func showErrorAlert(_ text: String) -> UIAlertController
}

class AlertsManager: AlertsManagerProtocol {
    
    func showErrorAlert(_ text: String) -> UIAlertController {
        
        let pending = UIAlertController(title: "Error", message: text, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        pending.addAction(ok)
        return pending
    }
}
