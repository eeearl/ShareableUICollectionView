//
//  Provideable.swift
//  CollectionViewPoo
//
//  Created by ParkHanul on 14/2/17.
//  Copyright © 2017 eeearl. All rights reserved.
//

import Foundation
import UIKit

protocol Proviable {
    var items: Int { get }
    
    func registerCells(collectionView: UICollectionView)
    func cellLayout() -> UICollectionViewLayout
    func cellForItemAt(indexPath: IndexPath) -> UICollectionViewCell
}
