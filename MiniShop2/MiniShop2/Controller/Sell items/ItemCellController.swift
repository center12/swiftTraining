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
  
  var product: Products?{
    didSet {
      bindingValueForCell()
    }
  }
  
  private func bindingValueForCell(){
    guard let product = self.product else {
      return
    }
    
    if let _ = productImageView?.image, let imageData = product.image{
      productImageView.image = UIImage(data: imageData as Data)
    }
    if let _ = descriptionLabel?.text{
      let sellPrice = product.sellPrice
      let quantity = product.quantity
      descriptionLabel.text = "Price: \(sellPrice) x \(quantity) = \(sellPrice * quantity)"
    }
    if let _ = productNameLabel?.text, let name = product.name{
      productNameLabel.text = name
    }
    
  }
		
}
