//
//  UIViewControllerExtension.swift
//  MiniShop2
//
//  Created by Admin on 9/21/17.
//  Copyright © 2017 Admin. All rights reserved.
//

extension UIViewController {
  func hideKeyboardWhenTappedAround() {
    let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
    tap.cancelsTouchesInView = false
    view.addGestureRecognizer(tap)
  }
  
  func dismissKeyboard() {
    view.endEditing(true)
  }
  
  func setupSideMenu (menuButton: UIBarButtonItem?){
    if let _ = revealViewController(){
      menuButton?.target = self.revealViewController()
      menuButton?.action = #selector((SWRevealViewController.revealToggle(_:)))
      self.navigationItem.setLeftBarButton(menuButton, animated: true)
      self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
  }

}
