//
//  Error+Extension.swift
//  Mosaic
//
//  Created by Nguyen Van Dung on 5/22/17.
//  Copyright © 2017 Dht. All rights reserved.
//

import Foundation

extension Error {
    func nserror() -> NSError {
        return ((self as Any) as? NSError) ?? NSError(domain: "Unknown error", code: 900, userInfo: nil)
    }
}
