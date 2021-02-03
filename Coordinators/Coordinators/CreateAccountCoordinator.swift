//
//  CreateAccountCoordinator.swift
//  Coordinators
//
//  Created by Justyna Kowalkowska on 03/02/2021.
//

import UIKit

class CreateAccountCoordinator: Coordinator {
    
    weak var parentCoordinator: MainCoordinator?
    
    var childCoordinators =  [Coordinator]()
    
    var navigationController: UINavigationController
    
    var account: Int
    
    init(navigationController: UINavigationController, accountType: Int) {
        self.navigationController = navigationController
        self.account = accountType
    }
    
    func start() {
        let vc = CreateAccountViewController.instantiate()
        vc.coordinator = self
        vc.selectedAccount = account
        navigationController.pushViewController(vc, animated: false)
    }
}
