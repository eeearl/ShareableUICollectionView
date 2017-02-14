//
//  FirstViewController.swift
//  CollectionViewPoo
//
//  Created by ParkHanul on 14/2/17.
//  Copyright © 2017 eeearl. All rights reserved.
//

import Foundation
import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var provider = CollectionViewProvider(dataProvider: FirstDataProvider())
    
    override func viewDidLoad() {
        provider.registerCells(collectionView: collectionView)
        collectionView.delegate = provider
        collectionView.dataSource = provider
        
        collectionView.reloadData()
    }
}
