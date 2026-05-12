# Swift Tip Calculator

A simple iOS app created as part of **Unit 1: Swift Basics** in the Swift Foundations course. This project demonstrates fundamental Swift programming concepts, user interface design in Xcode, and handling basic user input to calculate tips.

## Overview
The Tip Calculator app allows the user to:
- Input a bill amount.
- Select a tip percentage.
- Calculate the tip and total amount dynamically.

This project reinforces essential Swift programming topics, including variables, constants, optionals, arithmetic operations, and interaction with user interface elements. The app also introduces connecting UI elements through `IBOutlets` and `IBActions` in **Xcode**.

Reference materials for this session include the [Unit 1 Swift Basics slides](https://github.com/Swift-Club-at-FIU/swiftfoundations/blob/main/SPRING-2026/unit-1/Unit%20-1%20Slides%20-%20Swift%20basics.pdf).

## Features
- Bill Amount Input: Enter a numeric value for the bill.
- Tip Selection: Choose a tip percentage using a segmented control, slider, or buttons.
- Real-Time Calculation: Display calculated tip and total amount as input changes.
- Reset Functionality: Clear all inputs to start a new calculation.

## Requirements
- **Xcode** (latest stable version)
- iOS Simulator or physical iOS device
- Basic knowledge of Swift and Xcode interface

## Getting Started

### Cloning the Project
Clone the repository to your local machine using Git:
```bash
git clone [https://github.com/your-username/TipCalculatorSwift.git](https://github.com/your-username/TipCalculatorSwift.git)
Opening in Xcode
Navigate to the cloned folder. Open TipCalculatorSwift.xcodeproj in Xcode. Build and run the app on the iOS Simulator or a connected iOS device.

Implementation Details
The app consists of a single view controller that manages user input and performs calculations. The workflow is:

Read the bill amount from a UITextField.

Observe the tip percentage selected via UISegmentedControl or UISlider.

Perform arithmetic calculations to compute the tip and total amount.

Update the UI labels to display the results.

Example Swift Logic
Swift
// Read bill amount from text field
let billAmount = Double(billTextField.text ?? "") ?? 0.0

// Calculate tip
let tipPercentage = selectedTipSegment / 100.0
let tip = billAmount * tipPercentage

// Calculate total
let total = billAmount + tip

// Update labels
tipLabel.text = String(format: "$%.2f", tip)
totalLabel.text = String(format: "$%.2f", total)
Connecting UI Elements
IBOutlets: Connect UITextField and UILabel elements to the view controller.

IBActions: Connect UISegmentedControl or UISlider to trigger tip calculation when values change.

Keyboard Handling: Dismiss the keyboard when input is complete or when the user taps outside the field.

Learning Objectives
By completing this project, you will:

Understand Swift syntax, optionals, and type conversion.

Learn to connect UI components to code via IBOutlets and IBActions.

Handle user input and update the UI dynamically.

Implement simple arithmetic operations in a practical app.

Next Steps
After completing this project, possible enhancements include:

Add a split bill feature for multiple users.

Include tax calculation options.

Implement SwiftUI version for reactive UI updates.

Store user preferences for default tip percentages.

References
Unit 1: Swift Basics Slides

Swift Programming Guide and Xcode Documentation
