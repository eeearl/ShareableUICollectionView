//
//  CollectionViewProvider.swift
//  CollectionViewPoo
//
//  Created by ParkHanul on 14/2/17.
//  Copyright © 2017 eeearl. All rights reserved.
//

import Foundation
import UIKit

class CollectionViewProvider: NSObject {
    
    var dataProvider: Proviable!
    
    init(dataProvider: Proviable) {
        self.dataProvider = dataProvider
    }
    
    func registerCells(collectionView: UICollectionView) {
        collectionView.collectionViewLayout = dataProvider.cellLayout()
        dataProvider.registerCells(collectionView: collectionView)
    }
}

extension CollectionViewProvider: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.dataProvider.items
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return dataProvider.cellForItemAt(indexPath: indexPath)
    }
}
