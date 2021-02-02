//
//  BuyViewController.swift
//  Coordinators
//
//  Created by Justyna Kowalkowska on 01/02/2021.
//

import UIKit

class BuyViewController: UIViewController, Storyboarded {

    weak var coordinator: BuyCoordinator?
    
    var productName: String = ""
    
    @IBOutlet weak var productLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productLabel.text = productName
    }
}
