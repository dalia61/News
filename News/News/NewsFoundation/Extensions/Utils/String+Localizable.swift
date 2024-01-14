//
//  String+Localizable.swift
//  News
//
//  Created by Dalia on 13/01/2024.
//

import Foundation

extension String {
    
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
    
}
