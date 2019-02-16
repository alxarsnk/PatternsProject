//
//  VIPERInteractorOutput.swift
//  PatternsHomeWork
//
//  Created by Александр Арсенюк on 16/02/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

protocol VIPERInteractorOutput: AnyObject {
    
    func didFinishedMainDisplay(_ name: String?)
    
    func didFinishedMemoryDisplay(_ name: String?)
    
    func showNewAlert(_ name: String?)
}
