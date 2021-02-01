//
//  MainCoordinator.swift
//  Coordinators
//
//  Created by Justyna Kowalkowska on 01/02/2021.
//

import UIKit

class MainCoordinator: Coordinator {
    
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        navigationController.pushViewController(vc, animated: false)
        
    }
    
    
}
