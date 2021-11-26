//
//  ContentView.swift
//  OnboardingView SwiftUI
//
//  Created by Yani . on 03/08/21.
//

import SwiftUI

struct ContentView: View {
    @State private var currentTab = 0
    @EnvironmentObject var viewRouter: ViewRouter

    var body: some View {
        TabView(selection: $currentTab,
                content:  {
                    ForEach(OnboardingData.list) { viewData in
                        OnboardingView(data: viewData)
                            .tag(viewData.id)
                    }
                })
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ViewRouter())
    }
}
