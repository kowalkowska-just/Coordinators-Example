//
//  ViewController.swift
//  Coordinators
//
//  Created by Justyna Kowalkowska on 01/02/2021.
//

import UIKit

class MainViewController: UIViewController, Storyboarded {
    
    @IBOutlet weak var account: UISegmentedControl!
    @IBOutlet weak var product: UITextField!
    
    var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideKeyboardWhenTappedAround()
    }
    
    @IBAction func buyTapped(_ sender: UIButton) {
        guard let productText = product.text else { return }
        coordinator?.buySubscription(to: productText)
    }
    
    @IBAction func createAccountTapped(_ sender: UIButton) {
        coordinator?.createAccount(to: account.selectedSegmentIndex)
    }
    
}

