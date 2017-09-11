//
//  ListViewControllerExtension.swift
//  TableView
//
//  Created by center12 on 9/11/17.
//  Copyright © 2017 center12. All rights reserved.
//

import UIKit

//MARK extension uitTableViewDelegate

extension ListViewController: UITableViewDelegate {
  
    
}


//MARK extension uiTableViewDataSource

extension ListViewController: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = self.tblView?.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    return cell!
  }
  
}
