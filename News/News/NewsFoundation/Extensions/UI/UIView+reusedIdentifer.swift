//
//  UIView+reusedIdentifer.swift
//  News
//
//  Created by Dalia on 15/01/2024.
//

import Foundation
import UIKit

extension UIView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
