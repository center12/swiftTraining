//
//  UI.swift
//  MiniShop2
//
//  Created by Admin on 9/20/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class UI {

  //Add done keyboard
  static func addDoneBtnForTextField(view: UIViewController, textFields: [UITextField?]){
    for textField in textFields {

      let keyToolBar = UIToolbar()
      
      keyToolBar.items = [
        UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: view, action: nil),
        UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.done, target: view, action: #selector(UITextField.resignFirstResponder))
      ]
      keyToolBar.sizeToFit()
      
      textField?.inputAccessoryView = keyToolBar
    }
  }
}
