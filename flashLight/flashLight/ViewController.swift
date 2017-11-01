//
//  ViewController.swift
//  flashLight
//
//  Created by center12 on 11/1/17.
//  Copyright © 2017 center12. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  //MARK: UI elements
  @IBOutlet weak var color_preview: UIView!
  @IBOutlet weak var textField_red: UITextField!
  @IBOutlet weak var slider_red: UISlider!
  @IBOutlet weak var textField_green: UITextField!
  @IBOutlet weak var slider_green: UISlider!
  @IBOutlet weak var textField_blue: UITextField!
  @IBOutlet weak var slider_blue: UISlider!
  @IBOutlet weak var textField_alpha: UITextField!
  @IBOutlet weak var slider_alpha: UISlider!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

}
