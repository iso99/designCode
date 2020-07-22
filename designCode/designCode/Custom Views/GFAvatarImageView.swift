//
//  GFAvatarImageView.swift
//  designCode
//
//  Created by islam magdy on 7/22/20.
//  Copyright © 2020 islam magdy. All rights reserved.
//

import UIKit

class GFAvatarImageView: UIImageView {

 let placeholderImage = UIImage(named: "icons8-github-48")

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func configure () {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
        
    }
    
}
