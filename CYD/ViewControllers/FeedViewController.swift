//
//  ViewController.swift
//  CYD
//
//  Created by MacBook on 23/07/2019.
//  Copyright © 2019 Зелимхан Эдилов. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {
    
    @IBOutlet weak var feedTabView: UITableView!
    
    let download = ["ЭдСпец"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9898225665, green: 0.7668563128, blue: 0, alpha: 1)
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        
        setupTableViewDataSourseDelegate()
        
    }
    
    func setupTableViewDataSourseDelegate() {
        feedTabView.dataSource = self
        feedTabView.delegate = self
    }
    
}

