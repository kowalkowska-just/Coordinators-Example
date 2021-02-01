//
//  BuyCoordinator.swift
//  Coordinators
//
//  Created by Justyna Kowalkowska on 02/02/2021.
//

import UIKit

class BuyCoordinator: Coordinator {
    
    weak var parentCoordinator: MainCoordinator?
    
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func didFinishBuying() {
        parentCoordinator?.childDidFinish(self)
    }
}
