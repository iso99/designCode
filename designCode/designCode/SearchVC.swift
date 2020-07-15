//
//  SearchVC.swift
//  designCode
//
//  Created by islam magdy on 7/14/20.
//  Copyright © 2020 islam magdy. All rights reserved.
//

import UIKit

class SearchVC: UIViewController {
    
    
    
    let logoImageView = UIImageView()
          let usernameTextField = GFTextField()
          let callToActionButton = GFButton(backgroundColor: .systemGreen, title: "follwers")
          
          

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
      configureLogoImageView()
        congigerTextField()
        configureCallToActionButton()
        
        
            }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    
    func configureLogoImageView () {
        view.addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = UIImage(named: "icons8-github-48")!
        
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80) ,
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 200) ,
            logoImageView.widthAnchor.constraint(equalToConstant: 200)
        
        
        
        ])
    }
    
    
    func congigerTextField () {
        view.addSubview(usernameTextField)
        NSLayoutConstraint.activate([
            usernameTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 48),
            
            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50) ,
            usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50) ,
            usernameTextField.heightAnchor.constraint(equalToConstant: 50)
            
        
            
            
            
            ]
        )
    }
    
    func configureCallToActionButton () {
        view.addSubview(callToActionButton)
        NSLayoutConstraint.activate([
        
            callToActionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            callToActionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            callToActionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            callToActionButton.heightAnchor.constraint(equalToConstant: 50)
            
        
        
        ])
    }

}
