//
//  TabBarCoordinator.swift
//  Coordinators
//
//  Created by Justyna Kowalkowska on 03/02/2021.
//

import UIKit

class TabBarCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let tabBarController = TabBarController()
        tabBarController.coordinator = self
        
        let mainNavigationController = UINavigationController()
        mainNavigationController.tabBarItem = UITabBarItem(title: "Main View", image: UIImage(systemName: "house"), tag: 0)
        let mainCoordinator = MainCoordinator(navigationController: mainNavigationController)
        
        let buyNavigationController = UINavigationController()
        buyNavigationController.tabBarItem = UITabBarItem(title: "Buy", image: UIImage(systemName: "cart"), tag: 1)
        let buyCoordinator = BuyCoordinator(navigationController: buyNavigationController, product: "")
        
        let createAccountNavigationController = UINavigationController()
        createAccountNavigationController.tabBarItem = UITabBarItem(title: "Create Account", image: UIImage(systemName: "person"), tag: 2)
        let createAccountCoordinator = CreateAccountCoordinator(navigationController: createAccountNavigationController, accountType: 0)
        
        tabBarController.viewControllers = [mainNavigationController, buyNavigationController, createAccountNavigationController]
        tabBarController.modalPresentationStyle = .fullScreen
        navigationController.present(tabBarController, animated: false, completion: nil)
        
        mainCoordinator.start()
        buyCoordinator.start()
        createAccountCoordinator.start()
    }
}
