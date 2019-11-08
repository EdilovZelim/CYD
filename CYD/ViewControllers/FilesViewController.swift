//
//  FilesViewController.swift
//  CYD
//
//  Created by MacBook on 25/07/2019.
//  Copyright © 2019 Зелимхан Эдилов. All rights reserved.
//

import UIKit



class FilesViewController: UIViewController {
    
    
    
    let filesName = ["Gallery", "Downloads", "Documents", "Images", "Cloud", "Music"]

    @IBOutlet weak var filesCollView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        setupCollViewDataSourseDelegate()
        
    }
    
    func setupCollViewDataSourseDelegate() {
        filesCollView.dataSource = self
        filesCollView.delegate = self
    }

}
extension FilesViewController: PushCellDelegate {
    func push() {
        let viewController2 = storyboard?.instantiateViewController(withIdentifier: String(describing: FeedViewController.self)) as! FeedViewController
        navigationController?.pushViewController(viewController2, animated: true)
    }
    
    
}

