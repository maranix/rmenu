# Restaurant Menu App

This is a Restaurant Menu App that allows users to explore a restaurant's menu items, view dietary options, and select their preferred diet for personalized recommendations. The app provides a user-friendly interface and follows the Apple Human Interface Guidelines.

<p align="center">
  <img width="32%" src="Screenshots/1.png?raw=true">
  <img width="32%" src="Screenshots/2.png?raw=true">
  <img width="32%" src="Screenshots/3.png?raw=true">
  <img width="32%" src="Screenshots/4.png?raw=true">
  <img width="32%" src="Screenshots/5.png?raw=true">
</p>

## Features

- View restaurant details, including name, description, address, and rating.
- Browse the restaurant's menu items categorized by Appetizer, Main Course, Dessert, Starters, and Others.
- Get personalized recommendations based on the user's selected diet preferences.

## Technologies Used

- SwiftUI: For building the user interface.
- Combine: For handling data and state management.
- Codable: For parsing JSON data and encoding/decoding data models.
- UserDefaults: For persisting user's diet preferences.

## Requirements

- Xcode 12 or later
- iOS 14 or later
- Swift 5.0 or later

## Installation

1. Clone the repository to your local machine using:

```bash
git clone https://github.com/maranix/rmenu.git
```

2. Open the project in Xcode:

```bash
cd rmenu
open RestaurantMenu.xcodeproj
```

3. Build and run the app on the simulator or a physical device.

## How to Use

1. When the app starts, it checks if the user has selected any dietary preferences before. If yes, it shows the restaurant's menu items categorized by diet preferences. If not, it displays the Diet Preferences screen.

2. On the Diet Preferences screen, the user can select their preferred dietary options by tapping on the diet options they want to include.

3. Once the user has selected their preferred dietary options, they can tap on the "Done" button at the bottom to save the preferences.

4. After saving the diet preferences, the app will display the restaurant's menu items based on the selected diet preferences. Users can expand/collapse the menu categories to view the items in each category.

> Note: If for some reason the recommendations always come up empty. Please try to restart the application, For some reason fetching the Diet Choices from UserDefaults after saving them always returns nil. I am hoping to debug it further and fix it.

## Contributing

Contributions to improve the app or add new features are welcome. To contribute, follow these steps:

1. Fork the repository.
2. Create a new branch for your feature/bug fix.
3. Make your changes and commit them.
4. Push the changes to your forked repository.
5. Create a pull request against the main repository.

## Acknowledgement

This project was a rather simple one and fun to do in general.

However there is a bug which I could not fix or figure out the reason behind it. The DisclosureGroup used in the RestaurantMenuView causes the whole View to rebuilt rather than just that specific UI Element.


## Credits

This project uses mock data for the restaurant's details and menu items. The images used in the app are for demonstration purposes only and belong to their respective owners.
