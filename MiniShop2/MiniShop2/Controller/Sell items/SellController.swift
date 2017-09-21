//
//  SellController.swift
//  MiniShop2
//
//  Created by Admin on 9/20/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class SellController: UIViewController {
  //MARK: Data model
  
  //MARK: Local variables
  
  //MARK: UI element
  @IBOutlet weak var menuButton: UIBarButtonItem!
  @IBOutlet weak var sellDateLabel: UILabel!
  @IBOutlet weak var totalPriceLabel: UILabel!
  
  //MARK: UiViewController
  override func viewDidLoad() {
    super.viewDidLoad()
    //setup menu
    self.setupSideMenu(menuButton: menuButton)
  }
  

  
  //MARK: UI events
  @IBAction func saveButton_Tapped(_ sender: UIButton) {
  }
  
}
