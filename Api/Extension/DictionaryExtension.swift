//
//  DictionaryExtension.swift
//  Mosaic
//
//  Created by Nguyen Van Dung on 5/22/17.
//  Copyright © 2017 Dht. All rights reserved.
//

import Foundation

public extension Dictionary {
    public func copy() -> Dictionary {
        var result = Dictionary()
        let keys = self.keys
        for key in keys {
            result[key] = self[key]
        }
        return result
    }

    public func intForKey(key: String) -> Int {
        if let akey = key as? Key {
            if let value = self[akey] as? Int {
                return value
            } else if let value = self[akey] as? String {
                return Int(value) ?? 0
            }
        }
        return 0
    }

    public func boolForKey(key: String) -> Bool {
        if let akey = key as? Key {
            return (self[akey] as? Bool) ?? false
        }
        return false
    }

    public func doubleForKey(key: String) -> Double {
        if let akey = key as? Key {
            return (self[akey] as? Double) ?? 0.0
        }
        return 0.0
    }

    public func stringForKey(key: String) -> String? {
        if let akey = key as? Key {
            if let value = (self[akey] as? String) {
                return value
            } else if let value = (self[akey] as? Int) {
                return value.toString()
            }
        }
        return nil
    }

    public func stringOrEmptyForKey(key: String) -> String {
        return self.stringForKey(key: key) ?? ""
    }

    public func parseApnsPayload() -> (String, String) {
        let key = "aps"
        if let akey = key as? Key {
            if let aps = self[akey] as? [String: Any] {
                if let alert = aps["alert"] as? [String: Any] {
                    let body = (alert["body"] as? String) ?? ""
                    let title = (alert["title"] as? String) ?? ""
                    return (title, body)
                }
            }
        }
        return ("", "")
    }
}
