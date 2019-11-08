//
//  FilesCollectionView.swift
//  CYD
//
//  Created by MacBook on 03/08/2019.
//  Copyright © 2019 Зелимхан Эдилов. All rights reserved.
//

import Foundation
import UIKit

protocol PushCellDelegate: class {
    func push()
}

weak var delegate: PushCellDelegate!

extension FilesViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return filesName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! FilesCollectionViewCell
        cell.label.text = filesName[indexPath.row]
        cell.filesImage.image = UIImage(named: "ж")
        delegate = self
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

extension FilesViewController: UICollectionViewDelegate {
    
}
