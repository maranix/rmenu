// Diet.swift
// RestarauntMenu
//
// Created by Raman Verma on 22/07/23.

import Foundation

// An enumeration representing different diet options available for restaurant menu items.
enum Diet: String, Codable {
    // Vegetarian diet option.
    case vegetarian = "🥦 Vegetarian"
    
    // Vegan diet option.
    case vegan = "🌱 Vegan"
    
    // Gluten-free diet option.
    case glutenFree = "🚫 Gluten-Free"
    
    // Dairy-free diet option.
    case dairyFree = "🥛 Dairy-Free"
    
    // Paleo diet option.
    case paleo = "🦴 Paleo"
    
    // Ketogenic (Keto) diet option.
    case ketogenic = "🥑 Ketogenic (Keto)"
    
    // Mediterranean diet option.
    case mediterranean = "🍅 Mediterranean"
    
    // Flexitarian diet option.
    case flexitarian = "🌿 Flexitarian"
    
    // Pescatarian diet option.
    case pescatarian = "🐟 Pescatarian"
    
    // Low-carb diet option.
    case lowCarb = "🍽️ Low Carb"
    
    // Low-fat diet option.
    case lowFat = "🍎 Low Fat"
    
    // Low-sodium diet option.
    case lowSodium = "🧂 Low Sodium"
    
    // Raw food diet option.
    case rawFood = "🥗 Raw Food"
    
    // Whole30 diet option.
    case whole30 = "🔴 Whole30"
    
    // Specific Carbohydrate Diet (SCD) option.
    case specificCarbDiet = "🍞 Specific Carbohydrate Diet (SCD)"
    
    // Anti-Inflammatory Diet option.
    case antiInflammatoryDiet = "🌿 Anti-Inflammatory Diet"
    
    // FODMAP diet option.
    case fodmap = "🍎 FODMAP"
    
    // Kosher diet option.
    case kosher = "✡️ Kosher"
    
    // Halal diet option.
    case halal = "☪️ Halal"
    
    // Organic diet option.
    case organic = "🌱 Organic"
    
    // DASH Diet option.
    case dashDiet = "🥗 DASH Diet"
    
    // Weight Watchers (WW) diet option.
    case weightWatchers = "🍽️ Weight Watchers (WW)"
    
    // Zone Diet option.
    case zoneDiet = "🎯 Zone Diet"
    
    // Carnivore Diet option.
    case carnivoreDiet = "🥩 Carnivore Diet"
    
    // Intermittent Fasting option.
    case intermittentFasting = "⏲️ Intermittent Fasting"
    
    // The Whole30 diet option.
    case theWhole30 = "🔴 The Whole30"
    
    // Other diet option.
    case other = ""
}

// A struct representing a diet option with its name and description.
struct DietOption: Codable, Hashable, Identifiable {
    var id = UUID()
    var name: Diet
    var description: String
    
    init(id: UUID = UUID()) {
        self.id = id
        self.name = Diet.other
        self.description = ""
    }
    
    init(id: UUID = UUID(), name: Diet, description: String) {
        self.id = id
        self.name = name
        self.description = description
    }
    
    // Converts the DietOption instance to Data using the provided JSONEncoder.
    func toData(_ encoder: JSONEncoder) -> Data? {
        do {
            let encoded = try encoder.encode(self)
            
            return encoded
        } catch let err {
            print("Failed to encode object to Data : \(self) \(err)")
        }
        
        return nil
    }
    
    // Decodes a DietOption instance from Data using the provided JSONDecoder.
    static func fromData(_ decoder: JSONDecoder, _ data: Data) -> Self? {
        do {
            let decoded = try decoder.decode(DietOption.self, from: data)
            
            return decoded
        } catch let err {
            print("Failed to decode Data to \(DietOption.self) : \(data) \(err)")
        }
        
        return nil
    }
}

