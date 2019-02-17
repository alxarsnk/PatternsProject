//
//  VIPERPresenter.swift
//  PatternsHomeWork
//
//  Created by Александр Арсенюк on 16/02/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

class VIPERPresenter: VIPERViewOutputProtocol, VIPERInteractorOutputProtocol {
    
    //MARK: - Constants -
    
    weak var view: VIPERViewInputProtocol!
    
    var interactor: VIPERInteractorInputProtocol!
    var router: VIPERRouterInputProtocol!
    
    //MARK: - VIPERViewOutput -
    
    //MARK:  Operations
    
    func clearAll() {
        interactor.clearAll()
    }
    
    func adding() {
        interactor.adding()
    }
    
    func minus() {
        interactor.minus()
    }
    
    func multiply() {
        interactor.multiply()
    }
    
    func devide() {
        interactor.devide()
    }
    
    func takePersent() {
        interactor.takePersent()
    }
    
    func setDot() {
        interactor.setDot()
    }
    
    func changeSign() {
        interactor.changeSign()
    }
    
    func setPow() {
        interactor.setPow()
    }
    
    func isEqual() {
        interactor.isEqual()
    }
    
    //MARK: Digits
    
    func printOne() {
        interactor.addToValueStringOne()
    }
    
    func printTwo() {
        interactor.addToValueStringTwo()
    }
    
    func printThree() {
        interactor.addToValueStringThree()
    }
    
    func printFour() {
        interactor.addToValueStringFour()
    }
    
    func printFive() {
        interactor.addToValueStringFive()
    }
    
    func printSix() {
        interactor.addToValueStringSix()
    }
    
    func printSeven() {
        interactor.addToValueStringSeven()
    }
    
    func printEight() {
        interactor.addToValueStringEight()
    }
    
    func printNine() {
        interactor.addToValueStringNine()
    }
    
    func printZero() {
        interactor.addToValueStringZero()
    }
    
    //MARK: - VIPERInteractorOutput -
    
    func didFinishedMainDisplay(_ name: String?) {
        view.showMainDisplay(name)
    }
    
    func showNewAlert(_ name: String) {
        router.showAlert(name)
    }
    
    func didFinishedMemoryDisplay(_ name: String?) {
        view.showMemDisplay(name)
    }
    


}

