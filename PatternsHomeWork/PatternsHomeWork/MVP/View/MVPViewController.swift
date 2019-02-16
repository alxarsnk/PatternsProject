//
//  MVPViewController.swift
//  PatternsHomeWork
//
//  Created by Александр Арсенюк on 11/02/2019.
//  Copyright © 2019 Александр Арсенюк. All rights reserved.
//

import UIKit

class MVPViewController: UIViewController, MVPViewInput {
    
    //MARK: - Constants -
    
    @IBOutlet weak var mainDisplayLabel: UILabel!
    
    @IBOutlet weak var memoryDisplayLabel: UILabel!
    
    var presenter: MVPViewOutput!
    
    var actionManager: UIActionManagerProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    //MARK: - MVPViewInput -
    
    func showMainDisplay(_ name: String?) {
         mainDisplayLabel.text = String((name?.prefix(8))!)
        
    }
    func showMemDisplay(_ name: String?) {
        memoryDisplayLabel.text = name
    }
    
    func showAlert(_ name: String) {
        present(actionManager.showAlert(name), animated: true, completion: nil)
    }
    
    //MARK: - Actions -
    
    //MARK: Digits
    
    @IBAction func oneButtonPressed(_ sender: Any) {
        presenter.printOne()
    }
    
    @IBAction func twoButtonPressed(_ sender: Any) {
        presenter.printTwo()
    }
    
    @IBAction func threeButtonPressed(_ sender: Any) {
        presenter.printThree()
    }
    
    @IBAction func fourButtonPressed(_ sender: Any) {
        presenter.printFour()
    }
    
    @IBAction func fiveButtonPressed(_ sender: Any) {
        presenter.printFive()
    }
    
    @IBAction func sixButtonPressed(_ sender: Any) {
        presenter.printSix()
    }
    
    @IBAction func sevenButtonPressed(_ sender: Any) {
        presenter.printSeven()
    }
    
    @IBAction func eightButtonPressed(_ sender: Any) {
        presenter.printEight()
    }
    
    @IBAction func nineButtonPressed(_ sender: Any) {
        presenter.printNine()
    }
   
    @IBAction func zeroButtonPressed(_ sender: Any) {
        presenter.printZero()
    }
    
    //MARK: Operations
    
    @IBAction func clearButtonPressed(_ sender: Any) {
        presenter.clearAll()
    }
    
    @IBAction func addButtonPressed(_ sender: Any) {
        presenter.adding()
    }
    
    @IBAction func minusButtonPressed(_ sender: Any) {
        presenter.minus()
    }
    
    @IBAction func multiplyButtonPressed(_ sender: Any) {
        presenter.multiply()
    }
    
    @IBAction func devideButtonPressed(_ sender: Any) {
        presenter.devide()
    }
    
    @IBAction func equalButtonPressed(_ sender: Any) {
        presenter.isEqual()
    }
    
    @IBAction func pointButtonPressed(_ sender: Any) {
        presenter.setDot()
    }
    
    @IBAction func persentButtonPressed(_ sender: Any) {
        presenter.takePersent()
    }
    
    @IBAction func powButtonPressed(_ sender: Any) {
        presenter.setPow()
    }
   
    @IBAction func signButtonPressed(_ sender: Any) {
        presenter.changeSign()
    }
}

