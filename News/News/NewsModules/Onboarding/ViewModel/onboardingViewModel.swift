//
//  onboardingViewModel.swift
//  News
//
//  Created by Dalia on 13/01/2024.
//

import Foundation
import UIKit

class onboardingViewModel {
    private let coordinator: onboardingCoordinator
    
    var pages = [
        Page(image: "NewsImages1", title: "Stay Informed, Anytime, Anywhere", description: "Welcome to our news app, your go-to source for breaking news, exclusive stories, and a personalized content experience."),
        Page(image: "NewsImages2", title: "Be a Knowledgeable Global Citizen", description: "Unlock a tailor-made news experience that aligns with your interests and preferences. Your news, your way!"),
        Page(image: "NewsImages3", title: "Elevate Your News Experience Now!", description: "Join our vibrant community of news enthusiasts. Share your thoughts, and engage in meaningful discussions.")
    ]
    
    init(coordinator: onboardingCoordinator) {
        self.coordinator = coordinator
    }
}

