//
//  CodeViewController.swift
//  CYD
//
//  Created by MacBook on 03/11/2019.
//  Copyright © 2019 Зелимхан Эдилов. All rights reserved.
//

import UIKit

class CodeViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var viewOutlet: UIView!
    
    @IBOutlet weak var naviBar: UINavigationBar!
    
//    var textField1 = UITextField() 414 416 480
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        naviBar.setBackgroundImage(UIImage(), for: .default)
        naviBar.shadowImage = UIImage()
        
        setupViews()
        frameTextFields()
        configureTextField()
        configTapGesture2()
    }
    
    func configureTextField() {
        textField1.delegate = self
        textField2.delegate = self
        textField3.delegate = self
        textField4.delegate = self
    }
    
    func setupViews() {
        viewOutlet.addSubview(textField1)
        viewOutlet.addSubview(textField2)
        viewOutlet.addSubview(textField3)
        viewOutlet.addSubview(textField4)
    }
   
    
   let textField1: UITextField = {
    
        let tf = UITextField()

        tf.borderStyle = .roundedRect
        tf.textAlignment = .center
        tf.contentVerticalAlignment = .center
        tf.placeholder = "."
        tf.translatesAutoresizingMaskIntoConstraints = false
    
        return tf
    }()
    
    let textField2: UITextField = {
        
        let tf = UITextField()
        
        tf.borderStyle = .roundedRect
        tf.textAlignment = .center
        tf.contentVerticalAlignment = .center
        tf.placeholder = "."
        tf.translatesAutoresizingMaskIntoConstraints = false
        
        return tf
    }()
    
    let textField3: UITextField = {
        
        let tf = UITextField()
        
        tf.borderStyle = .roundedRect
        tf.textAlignment = .center
        tf.contentVerticalAlignment = .center
        tf.placeholder = "."
        tf.translatesAutoresizingMaskIntoConstraints = false
        
        return tf
    }()
    
    let textField4: UITextField = {
        
        let tf = UITextField()
        
        tf.borderStyle = .roundedRect
        tf.textAlignment = .center
        tf.contentVerticalAlignment = .center
        tf.placeholder = "."
        tf.translatesAutoresizingMaskIntoConstraints = false
        
        return tf
    }()
    
    
    func frameTextFields() {
        
        textField1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 130).isActive = true
        textField1.topAnchor.constraint(equalTo: view.topAnchor, constant: 500).isActive = true
        textField1.heightAnchor.constraint(equalToConstant: 31).isActive = true
        textField1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/12).isActive = true
        
        textField2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 170).isActive = true
        textField2.topAnchor.constraint(equalTo: view.topAnchor, constant: 500).isActive = true
        textField2.heightAnchor.constraint(equalToConstant: 31).isActive = true
        textField2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/12).isActive = true
        
        textField3.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 210).isActive = true
        textField3.topAnchor.constraint(equalTo: view.topAnchor, constant: 500).isActive = true
        textField3.heightAnchor.constraint(equalToConstant: 31).isActive = true
        textField3.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/12).isActive = true
        
        textField4.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 250).isActive = true
        textField4.topAnchor.constraint(equalTo: view.topAnchor, constant: 500).isActive = true
        textField4.heightAnchor.constraint(equalToConstant: 31).isActive = true
        textField4.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/12).isActive = true

    }
    
    
    private func configTapGesture2() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(CodeViewController.handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap() {
        view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == textField1 {
            
            textField.resignFirstResponder()
            textField2.becomeFirstResponder()
            
        } else if textField == textField2 {
            
            textField.resignFirstResponder()
            textField3.becomeFirstResponder()
            
        } else if textField == textField3 {
            
            textField.resignFirstResponder()
            textField4.becomeFirstResponder()
        } else if textField == textField4 {
            textField.resignFirstResponder()
        }
        
        return true
    }
}

//// func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//if textField == txtFieldName {
//    textField.resignFirstResponder()
//    txtFieldEmail.becomeFirstResponder()
//} else if textField == txtFieldEmail {
//    textField.resignFirstResponder()
//    txtFieldPassword.becomeFirstResponder()
//} else if textField == txtFieldPassword {
//    textField.resignFirstResponder()
//}
//return true
//}
