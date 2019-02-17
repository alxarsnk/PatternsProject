//
//  VIPERRouter.swift
//  PatternsHomeWork
//
//  Created by Александр Арсенюк on 16/02/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

import UIKit

class VIPERRouter: VIPERRouterInputProtocol {
    
    weak var view: UIViewController!
    var alertManager: AlertsManagerProtocol!
    
    func showAlert(_ text: String) {
      
        let alert = alertManager.showErrorAlert(text)
        view.present(alert, animated: true, completion: nil)
        
    }
}

