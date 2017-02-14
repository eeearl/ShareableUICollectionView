//
//  SecondDataProvider.swift
//  CollectionViewPoo
//
//  Created by ParkHanul on 14/2/17.
//  Copyright © 2017 eeearl. All rights reserved.
//

import Foundation
import UIKit

class SecondDataProvider: Proviable {
    private var collectionView: UICollectionView!
    private let cellIdentifier = "Cell1"
    
    var items: Int {
        return 20
    }
    
    func registerCells(collectionView: UICollectionView) {
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell2")
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell3")
        
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
        
        let cell: UICollectionViewCell = {
            if indexPath.row % 2 == 0 {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell2", for: indexPath)
                cell.contentView.backgroundColor = .red
                return cell
            } else {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell3", for: indexPath)
                cell.contentView.backgroundColor = .blue
                return cell
            }
        }()
    
        return cell
    }
}
