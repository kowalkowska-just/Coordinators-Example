//
//  CreateAccountViewController.swift
//  Coordinators
//
//  Created by Justyna Kowalkowska on 01/02/2021.
//

import UIKit

class CreateAccountViewController: UIViewController, Storyboarded {
    
    weak var coordinator: CreateAccountCoordinator?
    
    var selectedAccount = 0
    
    @IBOutlet weak var selectedAccountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        selectedAccountLabel.text = String(selectedAccount + 1)
    }
    
}
