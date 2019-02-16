//
//  VIPERViewInput.swift
//  PatternsHomeWork
//
//  Created by Александр Арсенюк on 16/02/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

protocol VIPERViewInput: AnyObject {
    
    func showMainDisplay(_ name: String?)
    
    func showMemDisplay(_ name: String?)
    
    func showAlert(_ name: String)
    
}
