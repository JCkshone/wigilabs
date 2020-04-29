//
//  HomeVC.swift
//  Wigilabs-test
//
//  Created by Jc on 29/04/20.
//  Copyright © 2020 Jc. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var headerView: UIView!
    
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    private typealias homeItemCell = HomeItemCollectionViewCell
    
    struct Constants {
        static let cellId = "HomeItemCollectionViewCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initCollectionView()
    }
    
    func initCollectionView() {
        collectionView.register(UINib(nibName: Constants.cellId, bundle: nil), forCellWithReuseIdentifier: Constants.cellId)
    }
}

extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        16
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.cellId, for: indexPath) as! homeItemCell
        cell.addShadow()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: (UIScreen.main.bounds.width / 2) - 8, height: (UIScreen.main.bounds.height / 4) - 40)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let y = 160 - (scrollView.contentOffset.y + 160)
        let h = max(60, y)
        //headerView.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: h)
        
        UIView.animate(withDuration: 0.3) {
            self.heightConstraint.constant = h
        }
    }
}
