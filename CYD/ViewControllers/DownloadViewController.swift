//
//  DownloadViewController.swift
//  CYD
//
//  Created by MacBook on 31/07/2019.
//  Copyright © 2019 Зелимхан Эдилов. All rights reserved.
//

import UIKit

class DownloadViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        image.image = UIImage(named:name)
        label.text = name
        label.numberOfLines = 0
    }

}
