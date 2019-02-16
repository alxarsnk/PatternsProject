//
//  VIPERPresenter.swift
//  PatternsHomeWork
//
//  Created by Александр Арсенюк on 16/02/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import Foundation

class VIPERPresenter: VIPERViewOutput, VIPERInteractorOutput {
    
    //MARK: - Constants -
    
    weak var view: VIPERViewInput!
    
    var interactor: VIPERInteractorInput!
    var router: VIPERRouterInput!
    
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
        interactor.printOne()
    }
    
    func printTwo() {
        interactor.printTwo()
    }
    
    func printThree() {
        interactor.printThree()
    }
    
    func printFour() {
        interactor.printFour()
    }
    
    func printFive() {
        interactor.printFive()
    }
    
    func printSix() {
        interactor.printSix()
    }
    
    func printSeven() {
        interactor.printSeven()
    }
    
    func printEight() {
        interactor.printEight()
    }
    
    func printNine() {
        interactor.printNine()
    }
    
    func printZero() {
        interactor.printZero()
    }
    
    //MARK: - VIPERInteractorOutput -
    
    func didFinishedMainDisplay(_ name: String?) {
        view.showMainDisplay(name)
    }
    
    func showNewAlert(_ name: String?) {
        router.showAlert(name!)
    }
    
    func didFinishedMemoryDisplay(_ name: String?) {
        view.showMemDisplay(name)
    }
    


}

