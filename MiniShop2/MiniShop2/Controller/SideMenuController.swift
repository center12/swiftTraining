//
//  SideMenuController.swift
//  MiniShop2
//
//  Created by Admin on 9/20/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class SideMenuController: UIViewController {
  
  fileprivate let menuArray = ["SellCellID", "ProductCellID", "StatisticCellID"]
 
}

//MARK: UITableViewDelegate
extension SideMenuController: UITableViewDelegate {
  
}

//MARK: UITableViewDataSource
extension SideMenuController: UITableViewDataSource {
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return menuArray.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: menuArray[indexPath.row], for: indexPath)
    
    return cell
  }
}
