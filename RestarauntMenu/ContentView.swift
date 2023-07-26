// ContentView.swift
// RestarauntMenu
//
// Created by Raman Verma on 22/07/23.

import SwiftUI

struct ContentView: View {
    // Boolean flag indicating whether dietary options are selected.
    private var isDietaryOptionsSelected: Bool = false
    
    // Default initializer.
    init() {
        self.isDietaryOptionsSelected = isDietPlanSelected()
    }
    
    // Function to check if a diet plan is selected.
    func isDietPlanSelected() -> Bool {
        let userDefaults = UserDefaults()
        
        let diet = userDefaults.array(forKey: UserDefaultsKeys.Diet.preference)
        
        guard let _ = diet else {
            return false
        }
        
        return true
    }
    
    var body: some View {
        NavigationView {
            // If dietary options are selected, show the restaurant menu view, else show the diet preference view.
            if (isDietaryOptionsSelected) {
                RestarauntMenuView()
            } else {
                DietPreferenceView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

