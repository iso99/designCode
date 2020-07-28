//
//  UIHelper.swift
//  designCode
//
//  Created by islam magdy on 7/28/20.
//  Copyright © 2020 islam magdy. All rights reserved.
//

import UIKit
struct UIHelper {
  static  func CreateThreeColumFlowLayout(in view : UIView) -> UICollectionViewFlowLayout {
        let width = view.bounds.width
        let padding :  CGFloat = 12
        let minimumItemSpacing : CGFloat = 10
        let avalibleWidth = width - (padding * 2 ) - (minimumItemSpacing * 2)
        let itemWidth = avalibleWidth / 3
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 40)
        return flowLayout
        
    }
}
