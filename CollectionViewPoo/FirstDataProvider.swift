//
//  FirstDataProvider.swift
//  CollectionViewPoo
//
//  Created by ParkHanul on 14/2/17.
//  Copyright © 2017 eeearl. All rights reserved.
//

import Foundation
import UIKit

class FirstDataProvider: Proviable {
    private var collectionView: UICollectionView!
    private let cellIdentifier = "Cell1"
    
    var items: Int {
        return 10
    }
    
    func registerCells(collectionView: UICollectionView) {
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellIdentifier)
        
        self.collectionView = collectionView
    }
    
    func cellLayout() -> UICollectionViewLayout {
        let flowLayout = UICollectionViewFlowLayout()
        
        // Now setup the flowLayout required for drawing the cells
        let space: CGFloat = 5.0
        
        // Set view cell size
        flowLayout.itemSize = CGSize(width: 50, height: 50)
        
        // Set left and right margins
        flowLayout.minimumInteritemSpacing = space
        
        // Set top and bottom margins
        flowLayout.minimumLineSpacing = space
        
        return flowLayout
    }
    
    func cellForItemAt(indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath)
        cell.contentView.backgroundColor = .black
        
        return cell
    }
}
