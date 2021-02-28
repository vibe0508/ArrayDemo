//
//  GetArray.swift
//  ST
//
//  Created by Vyacheslav Beltyukov on 25.02.2021.
//

import Foundation

extension NSArray {
    static func trueArray() -> NSArray {
        var arr: NSArray?
        let url = URL(fileURLWithPath: FileManager.default.currentDirectoryPath).appendingPathComponent("array.plist")
        autoreleasepool {
            arr = NSArray(contentsOf: url) ?? []
        }

        return arr!
    }
}

extension Array where Element == Data {
    static func trueArray() -> Self {
        var arr: Self?
        autoreleasepool {
            arr = Array(ContiguousArray(NSArray.trueArray() as! [Data]))
        }
        return arr!
    }
}
