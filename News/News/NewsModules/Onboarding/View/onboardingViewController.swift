//
//  onboardingViewController.swift
//  News
//
//  Created by Dalia on 13/01/2024.
//

import UIKit

class onboardingViewController: UIViewController {
    @IBOutlet weak var onboardingCollectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    var viewModel: onboardingViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
        onboardingCollectionView.register(onboardingCollectionViewCell.self, forCellWithReuseIdentifier: "onboardingCollectionViewCell")
    }
    
    func configureCollectionView() {
        onboardingCollectionView.dataSource = self
        onboardingCollectionView.delegate = self
        onboardingCollectionView.backgroundColor = .white
        onboardingCollectionView.register(onboardingCollectionViewCell.self, forCellWithReuseIdentifier: "OnboardingCollectionViewCell")
    }
    
    func loadPages(pages: [Page]?) {
        guard let pages = pages else { return }
        self.viewModel.pages = pages
        DispatchQueue.main.async {
            self.onboardingCollectionView.reloadData()
        }
    }
}

extension onboardingViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.pages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "onboardingCollectionViewCell", for: indexPath) as! onboardingCollectionViewCell
                let page = viewModel.pages[indexPath.item]
                let cellModel = onboardingCollectionViewCellModel(page: page)
                cell.configure(with: cellModel)
                return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:
                        UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = collectionView.bounds.width
        let cellHeight = collectionView.bounds.height
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.frame.width)
    }
}
