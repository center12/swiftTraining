//
//  DB.swift
//  MiniShop2
//
//  Created by Admin on 9/19/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import CoreData

class DB {
  
  static var context = persistentContainer.viewContext
  
  // MARK: - Core Data stack
  
  static var persistentContainer: NSPersistentContainer = {
    
    let container = NSPersistentContainer(name: "MiniShop2")
    container.loadPersistentStores(completionHandler: { (storeDescription, error) in
      if let error = error as NSError? {
        fatalError("Unresolved error \(error), \(error.userInfo)")
      }
    })
    return container
  }()
  
  // MARK: - Core Data Saving support
  
  class func saveContext () {
    if context.hasChanges {
      do {
        try context.save()
      } catch {
        let nserror = error as NSError
        fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
      }
    }
  }
}
