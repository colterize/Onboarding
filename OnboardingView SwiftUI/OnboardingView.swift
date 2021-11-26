//
//  OnboardingView.swift
//  OnboardingView SwiftUI
//
//  Created by Yani . on 03/08/21.
//

import SwiftUI

struct OnboardingView: View {
    var data: OnboardingData

    @State private var isAnimating: Bool = false
    @EnvironmentObject var viewRouter: ViewRouter

    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                Image(data.backgroundImage)
                    .resizable()
                    .scaledToFit()
                    .padding(.vertical)

                Image(data.objectImage)
                    .resizable()
                    .scaledToFit()
                    .offset(x: 0, y: 150)
                    .scaleEffect(isAnimating ? 1 : 0.9)
            }

            Spacer()
            Spacer()
//            Image(data.backgroundImage)
//                .resizable()
//                .scaledToFit()
//                .frame(maxWidth: 300, maxHeight: 400)
//                .padding(.vertical)

            Text(data.primaryText)
                .font(.title2)
                .bold()
                .foregroundColor(Color(#colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)))

            Text(data.secondaryText)
                .font(.headline)
                .multilineTextAlignment(.center)
                .frame(maxWidth: 250)
                .foregroundColor(Color(#colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1)))
                .shadow(color: Color.black.opacity(0.1), radius: 1, x: 2, y: 2)

            Spacer()

            Button(action: {
                withAnimation {
                    self.viewRouter.currentPage = "homeView"
                }
            }, label: {
                Text("Get Started")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.horizontal, 50)
                    .padding(.vertical, 16)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(
                                Color(#colorLiteral(red: 0, green: 0.4588235294, blue: 0.8901960784, alpha: 1))
                            )
                    )
            })
            .shadow(radius: 10)

            Spacer()

        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(data: OnboardingData.list.first!).environmentObject(ViewRouter())
    }
}
