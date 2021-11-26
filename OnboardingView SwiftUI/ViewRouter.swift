//
//  ViewRouter.swift
//  OnboardingView SwiftUI
//
//  Created by Yani . on 03/08/21.
//

import Foundation
import SwiftUI

class ViewRouter: ObservableObject {

    init() {
        if !UserDefaults.standard.bool(forKey: "didLaunchBefore") {
            UserDefaults.standard.setValue(true, forKey: "didLaunchBefore")
            currentPage = "onboardingView"
        } else {
            currentPage = "homeView"
        }
    }

    @Published var currentPage: String
}
