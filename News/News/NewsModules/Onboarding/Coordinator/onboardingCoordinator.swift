//
//  onboardingCoordinator.swift
//  News
//
//  Created by Dalia on 13/01/2024.
//

import Foundation
import UIKit

protocol OnboardingCoordinatorProtocol: AnyObject {
    func navigateToLogin()
}

final class OnboardingCoordinator: Coordinator {
    let navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    func start() {
        let onBoardingViewModel = onboardingViewModel()
        let onBoardingViewControoler = onboardingViewController()
        navigationController.setViewControllers([onBoardingViewControoler], animated: false)
    }
}

extension OnboardingCoordinator: OnboardingCoordinatorProtocol {
    func navigateToLogin() {
        //let loginCoordinator = LoginCoordinator(navigationController: navigationController)
        //loginCoordinator.start()
    }
}
