//
//  UIActionManager.swift
//  PatternsHomeWork
//
//  Created by Александр Арсенюк on 15/02/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation
import UIKit

protocol UIActionManagerProtocol: AnyObject {
    
    func showAlert(_ text: String) -> UIAlertController

}
class UIActionManager: UIActionManagerProtocol {
    
    func showAlert(_ text: String) -> UIAlertController {
        let pending = UIAlertController(title: "Error", message: text, preferredStyle: .alert)
        let indicator = UIActivityIndicatorView()
        pending.view.addSubview(indicator)
        indicator.isUserInteractionEnabled = false
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        pending.addAction(ok)
        return pending
    }
    
    
}
