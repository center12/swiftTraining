//
//  AlertCommon.swift
//  ZineSpots
//
//  Created by Nguyen Van Dung on 9/8/17.
//  Copyright © 2017 com.pets.shop. All rights reserved.
//

import Foundation
import UIKit

class AlertCommon {
    class func showAlertMessage(presentViewController: UIViewController, title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        let action = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: { (cancelAction) in
        })
        alertController.addAction(action)
        presentViewController.present(alertController, animated: true, completion: nil)
    }
}
