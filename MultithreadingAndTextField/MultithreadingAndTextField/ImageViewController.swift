//
//  ImageViewController.swift
//  MultithreadingAndTextField
//
//  Created by center12 on 9/15/17.
//  Copyright © 2017 center12. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
  
  @IBOutlet weak var spinner: UIActivityIndicatorView!
  //MARK: Model
  
  var imageUrl: URL? {
    didSet {
      image = nil
      if view.window != nil {
        fetchImage()
      }
      
    }
  }
  
  //MARK: Private Implementation
  
  private func fetchImage() {
    if let url = imageUrl {
      spinner.startAnimating()
      DispatchQueue.global(qos: .userInitiated).async { [weak self] in
        let urlContents = try? Data(contentsOf: url)
        if let imageData = urlContents, url == self?.imageUrl {
          DispatchQueue.main.async {
            self?.image = UIImage(data: imageData)
          } 
        }
      }
      
    }
  }
  
  // MARK: View Controller Lifecycle
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    if image == nil {
      fetchImage()
    }
  }
  
  @IBOutlet weak var scrollView: UIScrollView!{
    didSet {
      scrollView.delegate = self
      scrollView.minimumZoomScale = 0.05
      scrollView.maximumZoomScale = 1.0
      scrollView.contentSize = imageView.frame.size
      scrollView.addSubview(imageView)
      spinner?.stopAnimating()
    }
  }
  
  fileprivate var imageView = UIImageView()

  private var image: UIImage?{
    get {
      return imageView.image
    }
    set {
      imageView.image = newValue
      imageView.sizeToFit()
      scrollView?.contentSize = imageView.frame.size
    }
  }

}

extension ImageViewController: UIScrollViewDelegate {
  func viewForZooming(in scrollView: UIScrollView) -> UIView? {
    return imageView
  }
}
