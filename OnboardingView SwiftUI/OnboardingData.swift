//
//  OnboardingData.swift
//  OnboardingView SwiftUI
//
//  Created by Yani . on 03/08/21.
//

import Foundation
import SwiftUI

struct OnboardingData: Hashable, Identifiable {
    let id: Int
    let backgroundImage: String
    let objectImage: String
    let primaryText: String
    let secondaryText: String

    static let list: [OnboardingData] = [
        OnboardingData(id: 0, backgroundImage: "onboarding-bg-1", objectImage: "onboarding-object-1", primaryText: "TITLE-1", secondaryText: "Description 🥳"),
        OnboardingData(id: 1, backgroundImage: "onboarding-bg-2", objectImage: "onboarding-object-2", primaryText: "TITLE-2", secondaryText: "Description 😇"),
        OnboardingData(id: 2, backgroundImage: "onboarding-bg-3", objectImage: "onboarding-object-3", primaryText: "TITLE-3", secondaryText: "Description 🤩")
    ]
}
