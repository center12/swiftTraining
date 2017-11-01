//
//  CategoryViewController.swift
//  Demo
//
//  Created by center12 on 9/26/17.
//  Copyright © 2017 center12. All rights reserved.
//

import Foundation
import UIKit

class CategoryViewController: UITableViewController {
  
  //MARK: Local variables
  let categorys: [String] = ["Sale", "Housing", "Community", "Personals", "Jobs", "Services", "Gigs", "Resumes"]
  
  //MARK: view controller
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  //MARK: Table view
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath)
    if let categoryCell = cell as? CategoryCell {
      categoryCell.categorys = self.categorys
    }
    return cell
  }
  
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 200
  }
}
