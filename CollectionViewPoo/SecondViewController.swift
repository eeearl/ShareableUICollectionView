//
//  SecondViewController.swift
//  CollectionViewPoo
//
//  Created by ParkHanul on 14/2/17.
//  Copyright © 2017 eeearl. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var provider = CollectionViewProvider(dataProvider: SecondDataProvider())
    
    override func viewDidLoad() {
        provider.registerCells(collectionView: collectionView)
        collectionView.delegate = provider
        collectionView.dataSource = provider
        
        collectionView.reloadData()
    }
}
