//
//  Item.swift
//  CSE335-Project
//
//  Created by Preston Wilson on 3/20/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
