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
    
    var product: String
    
    init(navigationController: UINavigationController, product: String) {
        self.navigationController = navigationController
        self.product = product
    }
    
    func start() {
        let vc = BuyViewController.instantiate()
        vc.productName = product
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
//    func didFinishBuying() {
//        parentCoordinator?.childDidFinish(self)
//    }
}
