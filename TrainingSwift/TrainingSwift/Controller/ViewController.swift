//
//  ViewController.swift
//  TrainingSwift
//
//  Created by Admin on 9/10/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

  //MARK: Events
  
  @IBAction func btnApi_Tapped(_ sender: Any) {
    guard let viewController = UIStoryboard.main().instantiateViewController(withIdentifier: "ListViewController") as? ListViewController else { return }
    self.navigationController?.pushViewController(viewController, animated: true)
  }
  
  @IBAction func btnCoreData_Tapped(_ sender: Any) {
  }
  
  @IBAction func btnRealm_Tapped(_ sender: Any) {
  }
  
}
