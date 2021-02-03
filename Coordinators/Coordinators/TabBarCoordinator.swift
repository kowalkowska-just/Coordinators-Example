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
        
        
        tabBarController.viewControllers = [mainNavigationController]
        tabBarController.modalPresentationStyle = .fullScreen
        navigationController.present(tabBarController, animated: false, completion: nil)
        
        mainCoordinator.start()
    }
}
