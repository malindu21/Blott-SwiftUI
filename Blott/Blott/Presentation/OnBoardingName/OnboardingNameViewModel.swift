//
//  OnboardingNameViewModel.swift
//  Blott
//
//  Created by Doc990 App on 2024-01-03.
//

import Foundation
import SwiftUI

class OnboardingNameViewModel: ObservableObject {
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var isValidationPassed = false

    func areVariablesEmpty() -> Bool {
        return !firstName.isEmpty && !lastName.isEmpty
    }

    func buttonBackgroundColor() -> Color {
        return areVariablesEmpty() ? Color(red: 0.32, green: 0.23, blue: 0.89) : Color(red: 203 / 255.0, green: 195 / 255.0, blue: 227 / 255.0)

    }

    func validateAndProceed() {
        if areVariablesEmpty() {
            isValidationPassed = true
        }
    }
}
