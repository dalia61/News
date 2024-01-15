//
//  onboardingCollectionViewCell.swift
//  News
//
//  Created by Dalia on 15/01/2024.
//

import UIKit

class onboardingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var onboardingImage: UIImageView!
    @IBOutlet weak var onboardingTitle: UILabel!
    @IBOutlet weak var onboardingDes: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(with viewModel: onboardingCollectionViewCellModel) {
        onboardingImage.image = UIImage(named: viewModel.image ?? "")
        onboardingTitle.text = viewModel.title
        onboardingDes.text = viewModel.description
    }
}
