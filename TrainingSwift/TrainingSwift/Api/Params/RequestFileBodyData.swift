//
//  RequestFileBodyData.swift
//  Mosaic
//
//  Created by Nguyen Van Dung on 5/22/17.
//  Copyright © 2017 Dht. All rights reserved.
//

import Foundation

class RequestFileBodyData: RequestBodyData {
    var mineType = ""
    var filename = ""
    
    public convenience init(name: String?, data: Data, mintype: String?, filename: String?) {
        self.init()
        self.name = name
        self.data = data
        self.mineType = mintype ?? ""
        self.filename = filename ?? ""
    }
    
    override open func isFileData() -> Bool {
        return true
    }
}
