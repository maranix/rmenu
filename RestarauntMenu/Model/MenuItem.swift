// MenuItem.swift
// RestarauntMenu
//
// Created by Raman Verma on 23/07/23.

import Foundation

// A struct representing a menu item in the restaurant's menu.
struct MenuItem: Codable, Hashable, Identifiable {
    // Enum defining the category of the menu item.
    enum Category: String, Codable, CaseIterable {
        case appetizer = "Appetizer"
        case mainCourse = "Main Course"
        case dessert = "Dessert"
        case starters = "Starters"
        case others = "Others"
    }
    
    var id: UUID
    var name: String
    var description: String
    var image: String
    var price: Double
    var category: Category
    var diet: [Diet]
    
    // Default initializer with empty values.
    init (id: UUID = UUID()) {
        self.id = id
        self.name = ""
        self.description = ""
        self.image = ""
        self.price = 0
        self.category = Category.others
        self.diet = []
    }
    
    // Custom initializer to set all properties.
    init(id: UUID = UUID(), name: String, description: String, image: String, price: Double, category: Category, diet: [Diet]) {
        self.id = id
        self.name = name
        self.description = description
        self.image = image
        self.price = price
        self.category = category
        self.diet = diet
    }
}
