//
//  AutViewController.swift
//  CYD
//
//  Created by MacBook on 03/11/2019.
//  Copyright © 2019 Зелимхан Эдилов. All rights reserved.
//

import UIKit

class AutViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var navBar: UINavigationBar!
    @IBOutlet weak var tf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navBar.setBackgroundImage(UIImage(), for: .default)
        navBar.shadowImage = UIImage()
        
        tf.delegate = self
    
        configTapGesture1()
    }
    
    private func configTapGesture1() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(AutViewController.handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap() {
        view.endEditing(true)
    }
    

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}
