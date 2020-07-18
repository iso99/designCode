//
//  GFAlartVc.swift
//  designCode
//
//  Created by islam magdy on 7/17/20.
//  Copyright © 2020 islam magdy. All rights reserved.
//

import UIKit

class GFAlartVc: UIViewController {
    let containerView = UIView()
    let titleLable = GFTitelLable(textAligment: .center, fontSize: 20)
    let messageLable = GFBodyLable(textAlignment: .center)
    let actionButton = GFButton(backgroundColor: .systemPink, title: "ok")
    
    var alartTitel : String?
    var message : String?
    var buttonTitle : String?
    let padding : CGFloat = 20
    
    
    init(title : String , message : String , buttonTitle : String ) {
        super.init(nibName : nil, bundle : nil)
        
        self.alartTitel = title
        self.message = message
        self.buttonTitle = buttonTitle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:  0 , green: 0, blue: 0, alpha: 0.75)
      configerContainerView()
        configureTitleLable()
        configerActionButton()
        configureMessageLable()
    
        
    }
    
    func configerContainerView () {
        view.addSubview(containerView)
        containerView.backgroundColor = .systemBackground
        containerView.layer.cornerRadius = 16
        containerView.layer.borderWidth = 2
        containerView.layer.borderColor = UIColor.white.cgColor
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.widthAnchor.constraint(equalToConstant: 280),
            containerView.heightAnchor.constraint(equalToConstant: 220)
            
            ]
        )
        
        
    }
    
    func configureTitleLable (){
        containerView.addSubview(titleLable)
        titleLable.text = alartTitel ?? "something want wromg"
        NSLayoutConstraint.activate([
            titleLable.topAnchor.constraint(equalTo: containerView.topAnchor, constant: padding) ,
            titleLable.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding) ,
            titleLable.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: padding) ,
            titleLable.heightAnchor.constraint(equalToConstant: 28)
        
        
        ])
    }
    
    
    func configerActionButton () {
        containerView.addSubview(actionButton)
        actionButton.setTitle(buttonTitle ?? "ok", for: .normal)
        actionButton.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            actionButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant:  -padding) ,
            actionButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            actionButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding) ,
            actionButton.heightAnchor.constraint(equalToConstant:   44)
            
            
            ]
        
        
        )
        
    }
    
    func configureMessageLable() {
        containerView.addSubview(messageLable)
        messageLable.text = message ?? "un complete request "
        messageLable.numberOfLines = 4
        
        NSLayoutConstraint.activate([
            
            
            messageLable.topAnchor.constraint(equalTo: titleLable.bottomAnchor, constant: 8),
            messageLable.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding) ,
            messageLable.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding) ,
            messageLable.bottomAnchor.constraint(equalTo: actionButton.topAnchor, constant: -12)
            
          
            
            
            ]
        )
    }
    
    
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }
    
    
}
