// DietaryOptionsView.swift
// RestarauntMenu
//
// Created by Raman Verma on 22/07/23.

import SwiftUI

// The main view responsible for displaying the dietary preferences.
struct DietPreferenceView: View {
    @StateObject var viewModel = DietPreferenceVM()
    
    // The title of the navigation bar.
    var navigationTitle = "Diet Style"
    
    var body: some View {
        // Display the list of dietary options using DietListView.
        DietListView()
            .navigationTitle(navigationTitle)
            .environmentObject(viewModel)
    }
}

// A preview provider for displaying the DietaryOptionsView in previews.
struct DietaryOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            // Preview the DietPreferenceView inside a NavigationView.
            DietPreferenceView()
        }
    }
}
