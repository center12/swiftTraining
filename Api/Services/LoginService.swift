//
//  LoginService.swift
//  ApiService
//
//  Created by Nguyen Van Dung on 9/9/17.
//  Copyright © 2017 Dht. All rights reserved.
//

import Foundation

class LoginService: ApiService {
    override func onFinish(_ response: Any?, statusCode: Int, error: ErrorInfo?, completion: NetworkServiceCompletion?) {
        let result = response
        super.onFinish(result, error: error, completion: completion)
    }
}
