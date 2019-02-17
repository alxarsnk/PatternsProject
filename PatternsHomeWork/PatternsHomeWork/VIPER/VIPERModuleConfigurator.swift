//
//  VIPERModuleConfigurator.swift
//  PatternsHomeWork
//
//  Created by Александр Арсенюк on 16/02/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

import UIKit

class VIPERModuleConfigurator: NSObject {
    
    @IBOutlet weak var viewController: UIViewController!
    
    override func awakeFromNib() {
        
        configureModule()
    }
    
    func configureModule() {
        
        guard let view = viewController as? VIPERViewController else { fatalError() }
        
        let presenter = VIPERPresenter()
        let interactor = VIPERInteractor()
        let router = VIPERRouter()
        let alertManager: AlertsManagerProtocol = AlertsManager()
        let arythmeticManager: ArythmeticManagerProtocol = ArythmeticManager()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.output = presenter
        interactor.arythmeticManager = arythmeticManager
        
        
        router.view = view
        router.alertManager = alertManager
        
    }
}
