//
//  AddItemController.swift
//  MiniShop2
//
//  Created by Admin on 9/20/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class AddItemController: UIViewController {
  //MARK: UI Elements
  @IBOutlet weak var quantityTextField: UITextField!
  
  @IBOutlet weak var itemPickerView: UIPickerView!
  //MARK: Data model
  
  //MARK: Local variables
  
  //MARK: ViewController
  override func viewDidLoad() {
    super.viewDidLoad()
    //add done keyboard
    self.hideKeyboardWhenTappedAround()
    
  }
  
  //MARK: UI events
  @IBAction func addItemButton_Tapped(_ sender: UIButton) {
    addItemForSell()
  }
  
  //add item for sell
  private func addItemForSell(){
    guard let quantityTF = quantityTextField?.text, let itemPV = itemPickerView else {
      return
    }
    let product = itemPV.selectedRow(inComponent: 0)
    print("text field: \(quantityTF) | produc: \(product)")
  }
}
