//
//  onboardingCoordinator.swift
//  News
//
//  Created by Dalia on 13/01/2024.
//

import UIKit

protocol onboardingCoordinatorProtocol: AnyObject {
    func navigateToLogin()
}

final class onboardingCoordinator: Coordinator {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let onboardingViewModel = onboardingViewModel(coordinator: self)
        let onboardingViewController = onboardingViewController(viewModel: onboardingViewModel)
        navigationController.setViewControllers([onboardingViewController], animated: false)
    }
}

extension onboardingCoordinator: onboardingCoordinatorProtocol {
    func navigateToLogin() {
        // let loginCoordinator = LoginCoordinator(navigationController: navigationController)
        // loginCoordinator.start()
    }
}
