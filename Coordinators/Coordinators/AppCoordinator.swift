//
//  AppCoordinator.swift
//  Coordinators
//
//  Created by Justyna Kowalkowska on 02/02/2021.
//

import UIKit

final class AppCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let navigationController = UINavigationController()
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        let mainCoordinator = MainCoordinator(navigationController: navigationController)
        mainCoordinator.start()
    }   
}
