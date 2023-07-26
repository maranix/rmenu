// DietPreferenceVM.swift
// RestarauntMenu
//
// Created by Raman Verma on 22/07/23.

import Foundation

// The ViewModel for managing diet preferences.
final class DietPreferenceVM: ObservableObject {
    // Enumeration representing different states of the diet preference.
    enum State {
        case INITIAL
        case SELECTING
        case SAVING
        case DONE
    }
    
    // Published properties to observe changes.
    @Published var selectedDiets: Set<DietOption>
    @Published var dietOptions: [DietOption]
    @Published var state: State
    
    // Initialize the ViewModel with default values.
    init() {
        self.selectedDiets = []
        self.dietOptions = MockData.dietOptions
        self.state = .INITIAL
    }
    
    // Update the selected diet based on user interaction.
    func updateDietSelection(_ diet: DietOption) {
        if self.selectedDiets.contains(diet) {
            self.selectedDiets.remove(diet)
        } else {
            self.selectedDiets.insert(diet)
        }
        
        updateState()
    }
    
    // Called when the user is done selecting diet preferences.
    func onDone() {
        saveDietPreference()
        clearDietSelection()
    }
    
    // Save the diet preference to UserDefaults.
    private func saveDietPreference() {
        let userDefaults = UserDefaults.standard
        let encoder = JSONEncoder()
        
        let data = selectedDiets.compactMap { diet in
            diet.toData(encoder)
        }
        
        userDefaults.set(data, forKey: "DietPreference")
    }
    
    // Clear the diet selection and update the state to DONE.
    private func clearDietSelection() {
        if self.selectedDiets.isEmpty {
            return
        }
        
        self.selectedDiets.removeAll()
        self.state = .DONE
    }
    
    // Update the state based on the selected diets.
    private func updateState() {
        if self.selectedDiets.isEmpty {
            self.state = .DONE
        } else {
            self.state = .SELECTING
        }
    }
}

