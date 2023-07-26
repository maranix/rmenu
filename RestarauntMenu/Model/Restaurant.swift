// Restaurant.swift
// RestarauntMenu
//
// Created by Raman Verma on 23/07/23.

import Foundation

// A struct representing a restaurant and its details.
struct Restaurant {
    var id = UUID()
    var name: String
    var description: String
    var image: String
    var address: String
    var rating: Double
    var menu: [MenuItem]
    
    // Default initializer with empty values.
    init(id: UUID = UUID()) {
        self.id = id
        self.name = ""
        self.description = ""
        self.image = ""
        self.address = ""
        self.rating = 0
        self.menu = []
    }
    
    // Custom initializer to set all properties.
    init(id: UUID = UUID(), name: String, description: String, image: String, address: String, rating: Double, menu: [MenuItem]) {
        self.id = id
        self.name = name
        self.description = description
        self.image = image
        self.address = address
        self.rating = rating
        self.menu = menu
    }
}
