//
//  AppCoordinator.swift
//  News
//
//  Created by Dalia on 13/01/2024.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController { get }
    func start()
}

final class AppCoordinator {
    private let window: UIWindow
    private var children: [Coordinator] = []
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        displayNewsFlow()
    }
}
private extension AppCoordinator {
    func displayNewsFlow() {
        let navigationController = UINavigationController()
        let coordinator = onboardingCoordinator(navigationController: navigationController)
        coordinator.start()
        children.append(coordinator)
        replaceRootViewController(navigationController)
    }
}
private extension AppCoordinator {
    func replaceRootViewController(_ viewController: UIViewController) {
        window.rootViewController = viewController
        window.makeKeyAndVisible()
    }
}
