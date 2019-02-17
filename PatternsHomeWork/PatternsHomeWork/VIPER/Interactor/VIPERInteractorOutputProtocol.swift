//
//  VIPERInteractorOutputProtocol.swift
//  PatternsHomeWork
//
//  Created by Александр Арсенюк on 16/02/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

/// protocol to send data from interactor to presenter
protocol VIPERInteractorOutputProtocol: AnyObject {
    
    /// function is sending value from interactor
    /// to presenter for Main Display
    /// - Parameter name: value which will be sent
    func didFinishedMainDisplay(_ name: String?)
    
    /// function is sending value from interactor
    /// to presenter for Memory Display
    /// - Parameter name: value which will be sent
    func didFinishedMemoryDisplay(_ name: String?)
    
    /// function is sending name for body of
    /// alert to presenter
    /// - Parameter name: is body for Alert
    func showNewAlert(_ name: String)
}
