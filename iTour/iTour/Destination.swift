//
//  Destination.swift
//  iTour
//
//  Created by Kevin Martinez on 10/13/23.
//

import Foundation
import SwiftData

@Model
class Destination {
    var name: String
    var details: String
    var date: Date
    var priority: Int
    // this delate all the sights when the destination is deleted 
    @Relationship(deleteRule: .cascade) var sights = [Sight]()
   
    
    init(name: String = "", details: String = "", date: Date = .now, priority: Int = 2) {
        self.name = name
        self.details = details
        self.date = date
        self.priority = priority
    }
    
    
    
    
}
