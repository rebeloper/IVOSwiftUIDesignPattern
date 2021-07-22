//
//  Profile.swift
//  IVOSwiftUIDesignPattern
//
//  Created by Alex Nagy on 22.07.2021.
//

import SwiftUI

struct Profile: Identifiable {
    
    var id = UUID().uuidString
    var createdAt: Date
    var name: String
    
    init(createdAt: Date? = nil,
         name: String? = nil) {
        self.createdAt = createdAt ?? Date()
        self.name = name ?? ""
    }
    
}
