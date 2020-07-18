//
//  UIViewController+Ext.swift
//  designCode
//
//  Created by islam magdy on 7/18/20.
//  Copyright © 2020 islam magdy. All rights reserved.
//

import UIKit
extension UIViewController {
    func presentGFAlartOnMainThrad(title : String , message : String , buttonTitle : String )    {
        
        
        DispatchQueue.main.async {
            
            let alartVC = GFAlartVc(title: title, message  : message, buttonTitle: buttonTitle)

            alartVC.modalPresentationStyle = .overFullScreen
            alartVC.modalTransitionStyle  = .crossDissolve
            self.present(alartVC, animated: true)
            
        }
        
    }
}
