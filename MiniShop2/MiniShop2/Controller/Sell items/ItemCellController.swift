//
//  ItemCell.swift
//  MiniShop2
//
//  Created by Admin on 9/20/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class ItemCellController: UITableViewCell {
  //MARK: UI elements
  @IBOutlet weak var productImageView: UIImageView!
  
  @IBOutlet weak var descriptionLabel: UILabel!
  @IBOutlet weak var productNameLabel: UILabel!
  
  var product: ItemCellModel?{
    didSet {
      bindingValueForCell()
    }
  }
  
  private func bindingValueForCell(){
    guard let product = self.product else {
      return
    }
    
    if let _ = productImageView?.image, let imageData = product.productImageData{
      productImageView.image = UIImage(data: imageData)
    }
    if let _ = descriptionLabel?.text, let desc = product.description{
      descriptionLabel.text = desc
    }
    if let _ = productNameLabel?.text, let name = product.productName{
      productNameLabel.text = name
    }
    
  }
		
}
