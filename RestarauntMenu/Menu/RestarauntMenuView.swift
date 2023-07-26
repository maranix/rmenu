// RestarauntMenuView.swift
// RestarauntMenu
//
// Created by Raman Verma on 23/07/23.

import SwiftUI

struct RestarauntMenuView: View {
    @StateObject private var viewModel = RestarauntMenuVM()
    
    // Function to format the rating to display as a string
    private func formatRating(_ number: Double) -> String {
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 1
        
        if let formattedString = formatter.string(from: NSNumber(value: number)) {
            return formattedString
        } else {
            return String(number)
        }
    }
    
    var body: some View {
        List {
            VStack(alignment: .leading) {
                // Display the restaurant image using AsyncImage
                AsyncImage(url: URL(string: viewModel.restaurant.image)) { image in
                    image.image?.resizable()
                        .aspectRatio(contentMode: .fit)
                }
                
                HStack {
                    // Display the restaurant address and rating
                    Text(viewModel.restaurant.address)
                    Spacer()
                    HStack {
                        Text("\(formatRating(viewModel.restaurant.rating))")
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                }
                .padding(.top)
                Text(viewModel.restaurant.description)
                    .font(.body)
                    .padding(.vertical)
                
                // Display the recommended items
                RecommendedView()
                    .frame(maxHeight: 300)
                
                // Display the menu items categorized by their categories
                MenuView()
            }
        }
        .navigationTitle(viewModel.restaurant.name)
        .environmentObject(viewModel)
    }
}

struct RecommendedView: View {
    @EnvironmentObject var viewModel: RestarauntMenuVM
    
    // Function to get the recommended items based on the user's diet preference
    private func getRecommendedItems() -> [MenuItem] {
        // Filter the restaurant menu based on the user's diet preference
        return viewModel.restaurant.menu.filter { menuItem in
            menuItem.diet.contains(where: { viewModel.dietPreferences.contains($0) })
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Section("Recommended") {
                if getRecommendedItems().isEmpty {
                    // If there are no recommended items, display a message
                    Text("No recommended items for your diet preference.")
                        .font(.headline)
                        .foregroundColor(.gray)
                } else {
                    // If there are recommended items, display them in a horizontal ScrollView
                    ScrollView(.horizontal) {
                        LazyHStack {
                            ForEach(getRecommendedItems(), id: \.id) { menuItem in
                                RecommendedMenuItemRow(menuItem: menuItem).frame(width: 250)
                            }
                        }
                    }
                }
            }
            .font(.largeTitle)
            .bold()
        }
        .padding(.top)
    }
}


struct MenuView: View {
    @EnvironmentObject var viewModel: RestarauntMenuVM
    
    // Function to get the unique categories of menu items
    private func getUniqueCategories() -> [MenuItem.Category] {
        let categories = Set(viewModel.restaurant.menu.map { $0.category })
        return categories.sorted(by: { $0.rawValue < $1.rawValue })
    }
    
    // Function to get the menu items for a specific category
    private func getMenuItems(for category: MenuItem.Category) -> [MenuItem] {
        return viewModel.restaurant.menu.filter { $0.category == category }
    }
    
    var body : some View {
        Section("Menu") {
            ForEach(getUniqueCategories(), id: \.self) { category in
                // Display menu items for each category using DisclosureGroup
                DisclosureGroup(
                    content: {
                        VStack(alignment: .leading, spacing: 8) {
                            ForEach(getMenuItems(for: category), id: \.id) { menuItem in
                                MenuItemRow(menuItem: menuItem)
                                    .padding(.top)
                            }
                        }
                    },
                    label: {
                        Text(category.rawValue)
                            .font(.headline)
                    }
                )
            }
        }
        .bold()
        .font(.largeTitle)
    }
}

struct RecommendedMenuItemRow: View {
    @EnvironmentObject var viewModel: RestarauntMenuVM
    
    let menuItem: MenuItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            AsyncImage(url: URL(string: menuItem.image)) { content in
                content.image?.resizable()
            }
            
            Text(menuItem.name)
                .font(.body)
            Text(menuItem.description)
                .lineLimit(1)
                .font(.body)
            HStack {
                Text(String(format: "$%.2f", menuItem.price))
                    .font(.body)
                Spacer()
                if !menuItem.diet.isEmpty {
                    HStack(spacing: 4) {
                        ForEach(menuItem.diet, id: \.rawValue) { diet in
                            Text(diet.rawValue)
                                .font(.caption)
                                .padding(.horizontal, 6)
                                .padding(.vertical, 2)
                                .background(Color.blue.opacity(0.3))
                                .cornerRadius(8)
                        }
                    }
                }
            }
        }
    }
}

struct MenuItemRow: View {
    @EnvironmentObject var viewModel: RestarauntMenuVM
    
    let menuItem: MenuItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            AsyncImage(url: URL(string: menuItem.image)) { content in
                content.image?.resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
            Text(menuItem.name)
                .font(.body)
            Text(menuItem.description)
                .lineLimit(1)
                .font(.body)
            HStack {
                Text(String(format: "$%.2f", menuItem.price))
                    .font(.body)
                Spacer()
                if !menuItem.diet.isEmpty {
                    HStack(spacing: 4) {
                        ForEach(menuItem.diet, id: \.rawValue) { diet in
                            Text(diet.rawValue)
                                .font(.caption)
                                .padding(.horizontal, 6)
                                .padding(.vertical, 2)
                                .background(Color.blue.opacity(0.3))
                                .cornerRadius(8)
                        }
                    }
                }
            }
        }
    }
}

struct RestarauntMenuView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RestarauntMenuView()
        }
    }
}

