//
//  exstension.swift
//  CYD
//
//  Created by MacBook on 02/08/2019.
//  Copyright © 2019 Зелимхан Эдилов. All rights reserved.
//

import Foundation
import UIKit


// TableView
extension FeedViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return download.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! FeedTableViewCell
        cell.imageView?.image = UIImage(named: download[indexPath.row])
        cell.textLabel?.text = download[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "downloadShow" {
            if let indexPath = self.feedTabView.indexPathForSelectedRow {
                let downloadVC = segue.destination as! DownloadViewController
                downloadVC.name = download[indexPath.row]
            }
        }
    }
}

extension FeedViewController: UITableViewDelegate {
    
}


