// MenuVM.swift
// RestarauntMenu
//
// Created by Raman Verma on 23/07/23.

import Foundation

// The ViewModel for managing the restaurant menu and diet preferences.
final class RestarauntMenuVM: ObservableObject {
    // Enumeration representing different states of the menu.
    enum State {
        case INITIAL
        case LOADING
        case LOADED
        case FAILED
    }
    
    // Published properties to observe changes.
    @Published var state: State = .INITIAL
    @Published var dietPreferences: [Diet] = []
    @Published var restaurant: Restaurant = Restaurant()
    
    // Initialize the ViewModel with default values and load the data.
    init() {
        self.state = .LOADING
        self.dietPreferences = getDietPreferences()
        self.restaurant = getRestaurant()
    }
    
    // Load the restaurant data from MockData (to be replaced with actual data source).
    private func getRestaurant() -> Restaurant {
        return MockData.restaurant
    }
    
    // Retrieve the user's saved diet preferences from UserDefaults.
    private func getDietPreferences() -> [Diet] {
        let userDefaults = UserDefaults.standard
        let decoder = JSONDecoder()
        
        guard let data = userDefaults.array(forKey: UserDefaultsKeys.Diet.preference) as? [Data] else {
            return []
        }
        
        // Convert the saved data back to DietOption objects and extract the diet names.
        let diets = data.compactMap { dietData in
            if let dietOption = DietOption.fromData(decoder, dietData) {
                return dietOption.name
            }
            
            return nil
        }
        
        return diets
    }
}

