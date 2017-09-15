//
//  ViewController.swift
//  Emergency info
//
//  Created by center12 on 9/13/17.
//  Copyright © 2017 center12. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  //MARK: local variable
  var contactIndex = -1
  
  //MARK: UI element
  
  @IBOutlet weak var txtName: UITextField!
  @IBOutlet weak var txtAdress: UITextField!
  @IBOutlet weak var txtPhone: UITextField!
  @IBOutlet weak var txtAltPhone: UITextField!
  @IBOutlet weak var txtNote: UITextView!
  
  //MARK: UI events
  @IBAction func btnSave_Tapped(_ sender: UIButton) {
  }

  @IBAction func btnContact_Tapped(_ sender: UIButton) {
    contactIndex = sender.tag
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func addDoneButtonForTextField(textField: UITextField) {
    let toolbar = UIToolbar()
    toolbar.items = [
      UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil),
      UIBarButtonItem(title: "Done", style: .done, target: textField, action: #selector(UITextField.resignFirstResponder))
    ]
  }
}

