//
//  RequestBodyData.swift
//  Mosaic
//
//  Created by Nguyen Van Dung on 5/22/17.
//  Copyright © 2017 Dht. All rights reserved.
//

import Foundation

class RequestBodyData: NSObject {
    var data: Data?
    var name: String?

    convenience init(name: String?, data: Data) {
        self.init()
        self.name = name
        self.data = data
    }

    func isFileData() -> Bool {
        return false
    }
}
