//
//  VIPERRouter.swift
//  PatternsHomeWork
//
//  Created by Александр Арсенюк on 16/02/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

import UIKit

class VIPERRouter: VIPERRouterInput {
    
    weak var view: UIViewController!
    
    func showAlert(_ text: String) {
        
        let alert = UIAlertController(title: "Error", message: text, preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "Ok", style: .default) { (action) in
            
        }
        
        alert.addAction(okButton)
        view.present(alert, animated: true, completion: nil)
        
        
    }
}

