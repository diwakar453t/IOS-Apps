//
//  Item.swift
//  BirthdayToMyFriend
//
//  Created by Diwakar patel on 21/06/24.
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
