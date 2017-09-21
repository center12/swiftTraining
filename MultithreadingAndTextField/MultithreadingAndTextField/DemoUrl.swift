//
//  DemoUrl.swift
//  MultithreadingAndTextField
//
//  Created by center12 on 9/15/17.
//  Copyright © 2017 center12. All rights reserved.
//

import Foundation

struct DemoUrl {
  static let stanford = URL(string: "https://images.pexels.com/photos/39317/chihuahua-dog-puppy-cute-39317.jpeg")
  
  static var NASA: Dictionary<String, URL> = {
    let NASAURLStrings = [
      "Cassini": "http://topanhdep.net/wp-content/uploads/2015/08/hinh-dai-dien-cute.jpg",
      "Earth": "http://topanhdep.net/wp-content/uploads/2015/08/anh-avatar-de-thuong-cute.jpg",
      "Saturn": "http://topanhdep.net/wp-content/uploads/2015/08/avatar-de-thuong-facebook.jpg"
    ]
    var urls = Dictionary<String, URL>()
    for (key, value) in NASAURLStrings {
      urls[key] = URL(string: value)
    }
    
    return urls
  }()
  
}
