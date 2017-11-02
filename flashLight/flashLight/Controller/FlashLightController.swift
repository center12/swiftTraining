//
//  FlashLightController.swift
//  flashLight
//
//  Created by center12 on 11/2/17.
//  Copyright © 2017 center12. All rights reserved.
//

import Foundation
import UIKit

class FlashLightController: UIViewController {
  //MARK: UI elements
  @IBOutlet weak var colorView: UIView!
  @IBOutlet weak var txtRed: UITextField!
  @IBOutlet weak var sliderRed: UISlider!
  @IBOutlet weak var txtGreen: UITextField!
  @IBOutlet weak var sliderGreen: UISlider!
  @IBOutlet weak var txtBlue: UITextField!
  @IBOutlet weak var sliderBlue: UISlider!
  @IBOutlet weak var txtAlpha: UITextField!
  @IBOutlet weak var sliderAlpha: UISlider!
  
  //MARK: action
  @IBAction func sliderRed_ValueChange(_ sender: UISlider) {
    
  }
  @IBAction func sliderGreen_ValueChange(_ sender: UISlider) {
    
  }
  @IBAction func sliderBlue_ValueChange(_ sender: UISlider) {
  
  }
  @IBAction func sliderAlpha_ValueChange(_ sender: UISlider) {
    
  }
  
  //MARK: ViewController
  override func viewDidLoad() {
    super.viewDidLoad()
  }
}
