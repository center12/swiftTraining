//
//  CassiniViewController.swift
//  MultithreadingAndTextField
//
//  Created by center12 on 9/15/17.
//  Copyright © 2017 center12. All rights reserved.
//

import UIKit

class CassiniViewController: UIViewController {
  
  override func awakeFromNib() {
    super.awakeFromNib()
    self.splitViewController?.delegate = self
  }
  
  func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
    if primaryViewController.contents == self {
      if let ivc = secondaryViewController.contents as? ImageViewController, ivc.imageUrl == nil {
        return true
      }
    }
    return false
  }
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if let url = DemoUrl.NASA[segue.identifier ?? ""] {
        if let imageVC = (segue.destination.contents as? ImageViewController){
          imageVC.imageUrl = url
          imageVC.title = (sender as? UIButton)?.currentTitle
        }
      }
    }
 

}


extension UIViewController {
  var contents: UIViewController {
    if let navcon = self as? UINavigationController {
      return navcon.visibleViewController ?? self
    }else{
      return self
    }
  }
}

extension CassiniViewController: UISplitViewControllerDelegate {
  
}
