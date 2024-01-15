//
//  onboardingCollectionViewCellModel.swift
//  News
//
//  Created by Dalia on 15/01/2024.
//

import Foundation
import UIKit

class onboardingCollectionViewCellModel {
    var title: String?
    var description: String?
    var image: String?
    
    init(page: Page) {
        self.title = page.title
        self.description = page.description
        self.image = page.image
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
