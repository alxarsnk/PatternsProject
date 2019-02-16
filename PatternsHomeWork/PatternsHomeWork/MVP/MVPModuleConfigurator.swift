//
//  MVPModuleConfigurator.swift
//  PatternsHomeWork
//
//  Created by Александр Арсенюк on 12/02/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation
import UIKit

class MVPModuleConfigurator: NSObject {
    
    @IBOutlet weak var viewController: UIViewController!
    
    override func awakeFromNib() {
        
        configureModule()
    }
    
    func configureModule() {
        
        guard let view = viewController as? MVPViewController else { fatalError() }
        
        let presenter = MVPPresenter()
        let actionManager: UIActionManagerProtocol = UIActionManager()
        
        view.presenter = presenter
        view.actionManager = actionManager
        
        presenter.view = view
   
    }
}

