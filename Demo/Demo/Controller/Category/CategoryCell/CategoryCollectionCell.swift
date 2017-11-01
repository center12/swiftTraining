//
//  CategoryCollectionCell.swift
//  Demo
//
//  Created by center12 on 9/26/17.
//  Copyright © 2017 center12. All rights reserved.
//

import Foundation
import UIKit

class CategoryCollectionCell: UICollectionViewCell {
  //MARK: UI elements
  @IBOutlet weak var categoryImageView: UIImageView!
  
  //MARK: Local variables
  var categoryImage: UIImage? {
    didSet {
      guard let categoryImg = self.categoryImage else {
        return
      }
      
      categoryImageView?.image = categoryImg
    }
  }
  var chekSelected: Bool = false
		
}
