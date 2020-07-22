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
          
    var isUsernameEntered :Bool{
        !usernameTextField.text!.isEmpty
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
      configureLogoImageView()
        congigerTextField()
        configureCallToActionButton()
        createDismissKeyboardTapGesture()
        
        
            }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
      navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    
    
    func createDismissKeyboardTapGesture() {
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }
    
    
 
    
     @objc func pushFollowerListVC(){
        guard isUsernameEntered else  { 
            presentGFAlartOnMainThrad(title: "empty username hey ", message: "please enter a user name", buttonTitle: " ok ")
            
            return
            
        }
        let followerlistVC = FollowerListVC()
        followerlistVC.username = usernameTextField.text
        followerlistVC.title = usernameTextField.text
        navigationController?.pushViewController(followerlistVC, animated: true)
        
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
        
        usernameTextField.delegate = self
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
      

        callToActionButton.addTarget(self, action: #selector(pushFollowerListVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
        
            callToActionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            callToActionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            callToActionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            callToActionButton.heightAnchor.constraint(equalToConstant: 50)
            
        
        
        ])
    }

}



extension SearchVC : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        pushFollowerListVC()
        return true
    }
    
}
