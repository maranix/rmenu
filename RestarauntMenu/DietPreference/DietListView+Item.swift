// DietListView_Item.swift
// RestarauntMenu
//
// Created by Raman Verma on 22/07/23.

import SwiftUI

// The view responsible for displaying each individual diet option in the DietListView.
struct DietListView_Item: View {
    @EnvironmentObject var viewModel: DietPreferenceVM
    @State private var isExpanded: Bool = false
    
    private var diet: DietOption
    
    // Initialize the view with a DietOption.
    init(diet: DietOption) {
        self.diet = diet
    }
    
    // Get the name of the image icon based on the expansion state.
    func getExpandedImageIcon() -> String {
        if isExpanded {
            // If expanded, return the arrow down icon.
            return RMIcons.arrowDown
        }
        
        // Otherwise, return the arrow right icon.
        return RMIcons.arrowRight
    }
    
    var body: some View {
        VStack {
            HStack {
                // Display the name of the diet option with a title 2 font.
                Text(diet.name.rawValue)
                    .font(.title2)
                
                Spacer()
                
                // Display an arrow icon that changes based on the expansion state.
                Image(systemName: getExpandedImageIcon())
                    .foregroundColor(.blue)
                    .onTapGesture {
                        // Toggle the expansion state on tap.
                        withAnimation(.easeInOut) {
                            isExpanded.toggle()
                        }
                    }
            }
            .contentShape(Rectangle())
            .onTapGesture {
                // Update the selected diet when the user taps the row.
                viewModel.updateDietSelection(diet)
            }
            .animation(nil, value: isExpanded)
            
            // Display the description of the diet option if expanded.
            if isExpanded {
                Text(diet.description)
                    .padding(.top, 2)
                    .font(.body)
            }
        }
    }
}

// A preview provider for displaying the DietListView_Item in previews.
struct DietList_Item_Previews: PreviewProvider {
    static var previews: some View {
        DietListView_Item(diet: DietOption())
    }
}

