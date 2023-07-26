// DietListView.swift
// RestarauntMenu
//
// Created by Raman Verma on 22/07/23.

import SwiftUI

// The view responsible for displaying the list of dietary options.
struct DietListView: View {
    @EnvironmentObject var viewModel: DietPreferenceVM
    
    // Function to set the background color of a row based on the selection state of the diet option.
    func setRowBackgroundColor(_ diet: DietOption) -> Color {
        if viewModel.selectedDiets.contains(diet) {
            // If the diet option is selected, set the background color to gray.
            return Color.gray
        }
        
        // Otherwise, set the background color to the system background color.
        return Color(UIColor.systemBackground)
    }
    
    var body: some View {
        // Display a List of dietary options with selection binding to track the selected diets.
        List(selection: $viewModel.selectedDiets) {
            ForEach(viewModel.dietOptions, id: \.id) { diet in
                // Display each diet option using DietListView_Item and set the row background color based on selection.
                DietListView_Item(diet: diet)
                    .listRowBackground(setRowBackgroundColor(diet))
            }
        }
        .toolbar {
            // Add a toolbar item to display "Done" button when the state is "SELECTING".
            if case .SELECTING = viewModel.state {
                ToolbarItem(placement: .bottomBar) {
                    NavigationLink(
                        destination: RestarauntMenuView()
                            .onAppear() {
                                viewModel.onDone()
                            },
                        label: {
                            Text("Done")
                        }
                    )
                }
            }
        }
    }
}

// A preview provider for displaying the DietListView in previews.
struct DietListView_Previews: PreviewProvider {
    static var previews: some View {
        DietListView()
    }
}
